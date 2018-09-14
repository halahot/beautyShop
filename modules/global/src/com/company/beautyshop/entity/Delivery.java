package com.company.beautyshop.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.math.BigDecimal;
import java.util.Date;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;

@NamePattern("%s|seqNo")
@Table(name = "BEAUTYSHOP_DELIVERY")
@Entity(name = "beautyshop$Delivery")
public class Delivery extends StandardEntity {
    private static final long serialVersionUID = 5118918214907343089L;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "GOODS_ID")
    protected Product goods;

    @Column(name = "COUNT_")
    protected Integer count;

    @Temporal(TemporalType.DATE)
    @Column(name = "DATE_OF_DELIVERY")
    protected Date dateOfDelivery;

    @Column(name = "PRICE")
    protected BigDecimal price;

    @Column(name = "SEQ_NO")
    protected Long seqNo;

    public void setGoods(Product goods) {
        this.goods = goods;
    }

    public Product getGoods() {
        return goods;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Integer getCount() {
        return count;
    }

    public void setDateOfDelivery(Date dateOfDelivery) {
        this.dateOfDelivery = dateOfDelivery;
    }

    public Date getDateOfDelivery() {
        return dateOfDelivery;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setSeqNo(Long seqNo) {
        this.seqNo = seqNo;
    }

    public Long getSeqNo() {
        return seqNo;
    }


}