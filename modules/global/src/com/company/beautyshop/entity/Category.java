package com.company.beautyshop.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import javax.persistence.Column;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import com.haulmont.chile.core.annotations.Composition;
import com.haulmont.cuba.core.entity.annotation.OnDelete;
import com.haulmont.cuba.core.global.DeletePolicy;
import java.util.List;
import javax.persistence.OneToMany;

@NamePattern("%s|name")
@Table(name = "BEAUTYSHOP_CATEGORY")
@Entity(name = "beautyshop$Category")
public class Category extends StandardEntity {
    private static final long serialVersionUID = 7211971849076009294L;

    @Column(name = "NAME")
    protected String name;

    @Composition
    @OnDelete(DeletePolicy.CASCADE)
    @OneToMany(mappedBy = "category")
    protected List<SubCategory> subCategory;

    @OneToMany(mappedBy = "category")
    protected List<Product> product;

    public void setSubCategory(List<SubCategory> subCategory) {
        this.subCategory = subCategory;
    }

    public List<SubCategory> getSubCategory() {
        return subCategory;
    }


    public List<Product> getProduct() {
        return product;
    }

    public void setProduct(List<Product> product) {
        this.product = product;
    }



    public void setName(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }


}