package com.ty.tianyu.shop.entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * 商品Entity
 * @author ty
 * @date 2014年11月24日 下午2:43:48
 */
@Entity
@Table(name = "product")
public class Product implements java.io.Serializable {

	// Fields

	private Integer id;
	private String name;
	private String icon;
	private Long price;
	private Long originalPrice;
	private String detials;
	private Integer views;

	// Constructors

	/** default constructor */
	public Product() {
	}

	/** minimal constructor */
	public Product(Integer id, String name, String icon, Long price,
			Long originalPrice) {
		this.id = id;
		this.name = name;
		this.icon = icon;
		this.price = price;
		this.originalPrice = originalPrice;
	}

	/** full constructor */
	public Product(Integer id, String name, String icon, Long price,
			Long originalPrice, String detials, Integer views) {
		this.id = id;
		this.name = name;
		this.icon = icon;
		this.price = price;
		this.originalPrice = originalPrice;
		this.detials = detials;
		this.views = views;
	}

	// Property accessors
	@Id
	@Column(name = "ID", unique = true, nullable = false)
	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	@Column(name = "NAME", nullable = false)
	public String getName() {
		return this.name;
	}

	public void setName(String name) {
		this.name = name;
	}

	@Column(name = "ICON", nullable = false)
	public String getIcon() {
		return this.icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	@Column(name = "PRICE", nullable = false, precision = 10, scale = 0)
	public Long getPrice() {
		return this.price;
	}

	public void setPrice(Long price) {
		this.price = price;
	}

	@Column(name = "ORIGINAL_PRICE", nullable = false, precision = 10, scale = 0)
	public Long getOriginalPrice() {
		return this.originalPrice;
	}

	public void setOriginalPrice(Long originalPrice) {
		this.originalPrice = originalPrice;
	}

	@Column(name = "DETIALS", length = 65535)
	public String getDetials() {
		return this.detials;
	}

	public void setDetials(String detials) {
		this.detials = detials;
	}

	@Column(name = "VIEWS")
	public Integer getViews() {
		return this.views;
	}

	public void setViews(Integer views) {
		this.views = views;
	}

}