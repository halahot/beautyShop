package com.company.beautyshop.entity;

import javax.persistence.Entity;
import javax.persistence.Table;
import java.math.BigDecimal;
import javax.persistence.Column;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import com.haulmont.cuba.core.entity.StandardEntity;
import com.haulmont.chile.core.annotations.NamePattern;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import java.util.List;
import javax.persistence.OneToMany;

@NamePattern("%s|seqNo")
@Table(name = "BEAUTYSHOP_ORDER")
@Entity(name = "beautyshop$Order")
public class Order extends StandardEntity {
    private static final long serialVersionUID = -1087739066467644663L;

    @Column(name = "SEQ_NO")
    protected Long seqNo;

    @Column(name = "SUMMARY")
    protected BigDecimal summary;

    @Temporal(TemporalType.DATE)
    @Column(name = "DONE_TS")
    protected Date doneTs;

    @OneToMany(mappedBy = "order")
    protected List<Product> goods;

    @Column(name = "PRICE")
    protected BigDecimal price;

    @Column(name = "COUNT_")
    protected Integer count;

    public void setSummary(BigDecimal summary) {
        this.summary = summary;
    }

    public BigDecimal getSummary() {
        return summary;
    }


    public List<Product> getGoods() {
        return goods;
    }

    public void setGoods(List<Product> goods) {
        this.goods = goods;
    }


    public void setDoneTs(Date doneTs) {
        this.doneTs = doneTs;
    }

    public Date getDoneTs() {
        return doneTs;
    }


    public void setSeqNo(Long seqNo) {
        this.seqNo = seqNo;
    }

    public Long getSeqNo() {
        return seqNo;
    }

    public void setPrice(BigDecimal price) {
        this.price = price;
    }

    public BigDecimal getPrice() {
        return price;
    }

    public void setCount(Integer count) {
        this.count = count;
    }

    public Integer getCount() {
        return count;
    }


}