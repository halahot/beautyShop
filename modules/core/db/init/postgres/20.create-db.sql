-- begin BEAUTYSHOP_SUB_CATEGORY
alter table BEAUTYSHOP_SUB_CATEGORY add constraint FK_BEAUTYSHOP_SUB_CATEGORY_CATEGORY foreign key (CATEGORY_ID) references BEAUTYSHOP_CATEGORY(ID)^
create index IDX_BEAUTYSHOP_SUB_CATEGORY_CATEGORY on BEAUTYSHOP_SUB_CATEGORY (CATEGORY_ID)^
-- end BEAUTYSHOP_SUB_CATEGORY
-- begin BEAUTYSHOP_BRAND
alter table BEAUTYSHOP_BRAND add constraint FK_BEAUTYSHOP_BRAND_PRODUCT foreign key (PRODUCT_ID) references BEAUTYSHOP_PRODUCT(ID)^
create index IDX_BEAUTYSHOP_BRAND_PRODUCT on BEAUTYSHOP_BRAND (PRODUCT_ID)^
-- end BEAUTYSHOP_BRAND
-- begin BEAUTYSHOP_PRODUCT
alter table BEAUTYSHOP_PRODUCT add constraint FK_BEAUTYSHOP_PRODUCT_CATEGORY foreign key (CATEGORY_ID) references BEAUTYSHOP_CATEGORY(ID)^
alter table BEAUTYSHOP_PRODUCT add constraint FK_BEAUTYSHOP_PRODUCT_SUB_CATEGORY foreign key (SUB_CATEGORY_ID) references BEAUTYSHOP_SUB_CATEGORY(ID)^
create index IDX_BEAUTYSHOP_PRODUCT_CATEGORY on BEAUTYSHOP_PRODUCT (CATEGORY_ID)^
create index IDX_BEAUTYSHOP_PRODUCT_SUB_CATEGORY on BEAUTYSHOP_PRODUCT (SUB_CATEGORY_ID)^
-- end BEAUTYSHOP_PRODUCT
-- begin BEAUTYSHOP_ORDER
alter table BEAUTYSHOP_ORDER add constraint FK_BEAUTYSHOP_ORDER_GOODS foreign key (GOODS_ID) references BEAUTYSHOP_PRODUCT(ID)^
create index IDX_BEAUTYSHOP_ORDER_GOODS on BEAUTYSHOP_ORDER (GOODS_ID)^
-- end BEAUTYSHOP_ORDER
-- begin BEAUTYSHOP_DELIVERY
alter table BEAUTYSHOP_DELIVERY add constraint FK_BEAUTYSHOP_DELIVERY_GOODS foreign key (GOODS_ID) references BEAUTYSHOP_PRODUCT(ID)^
create index IDX_BEAUTYSHOP_DELIVERY_GOODS on BEAUTYSHOP_DELIVERY (GOODS_ID)^
-- end BEAUTYSHOP_DELIVERY