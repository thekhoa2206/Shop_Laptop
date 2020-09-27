package com.devpro.services;

import java.io.File;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.devpro.common.Utilities;
import com.devpro.entities.Product;
import com.devpro.entities.ProductImages;
import com.devpro.repositories.ProductRepo;

@Service
public class ProductService {

	@Autowired
	ProductRepo productRepo;
	@PersistenceContext
	protected EntityManager entityManager;

	@SuppressWarnings("unchecked")
	public List<Product> findProductByCategory(final String seo) {

		String jpql = "Select p from Product p where p.category.seo = '" + seo + "'";
		Query query = entityManager.createQuery(jpql, Product.class);

//		String sql = "select * from tbl_products where category_id = (select id from tbl_category where seo='" + seo
//				+ "')";
//		Query query = entityManager.createNativeQuery(sql, Product.class);
		return query.getResultList();
	}

	public Product findProductBySeo(final String seo) {

//		String jpql = "Select p from Product p where p.seo = '" + seo + "'";
//		Query query = entityManager.createQuery(jpql, Product.class);

		String sql = "select * from tbl_products where seo = '" + seo + "'";
		Query query = entityManager.createNativeQuery(sql, Product.class);
		return (Product) query.getSingleResult();
	}

	private boolean isEmptyUploadFile(MultipartFile[] images) {
		if (images == null || images.length <= 0)
			return true;
		if (images.length == 1 && images[0].getOriginalFilename().isEmpty())
			return true;
		return false;
	}

	@Transactional(rollbackOn = Exception.class)
	public void saveProduct(MultipartFile[] images, Product product) throws Exception {
		try {
			product.setSeo(Utilities.createSeoLink(product.getTitle()));

			if (product.getId() != null) { // chỉnh sửa
				// lấy dữ liệu cũ của sản phẩm
				Product productInDb = productRepo.findById(product.getId()).get();

				if (!isEmptyUploadFile(images)) { // nếu admin sửa ảnh sản phẩm
					// lấy danh sách ảnh của sản phẩm cũ
					List<ProductImages> productImages = productInDb.getProductImages();
					// xoá ảnh cũ đi
					for (ProductImages _images : productImages) {
						new File("D:/JavaWeb10_VuTheKhoa_Day27/com.devpro.shop/upload/" + _images.getPath()).delete();
					}
					product.clearProductImages();
				} else { // ảnh phải giữ nguyên
					product.setProductImages(productInDb.getProductImages());
				}

			}
			if (!isEmptyUploadFile(images)) { // nếu admin upload ảnh
				for (MultipartFile image : images) {
					// Lưu file vào host.
					image.transferTo(new File(
							"D:/JavaWeb10_VuTheKhoa_Day27/com.devpro.shop/upload/" + image.getOriginalFilename()));
					ProductImages productImages = new ProductImages();
					productImages.setTitle(image.getOriginalFilename());
					productImages.setPath(image.getOriginalFilename());

					// cho quan hệ 1 - n
					product.addProductImages(productImages);
				}
			}
			productRepo.save(product);
		} catch (Exception e) {
			throw e;
		}
	}

}
