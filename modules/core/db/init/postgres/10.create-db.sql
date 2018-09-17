-- begin BEAUTYSHOP_CATEGORY
create table BEAUTYSHOP_CATEGORY (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    --
    primary key (ID)
)^
-- end BEAUTYSHOP_CATEGORY
-- begin BEAUTYSHOP_SUB_CATEGORY
create table BEAUTYSHOP_SUB_CATEGORY (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    DESCRIPTION text,
    CATEGORY_ID uuid,
    --
    primary key (ID)
)^
-- end BEAUTYSHOP_SUB_CATEGORY
-- begin BEAUTYSHOP_BRAND
create table BEAUTYSHOP_BRAND (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    PRODUCT_ID uuid,
    --
    primary key (ID)
)^
-- end BEAUTYSHOP_BRAND
-- begin BEAUTYSHOP_PRODUCT
create table BEAUTYSHOP_PRODUCT (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    NAME varchar(255),
    PRICE decimal(19, 2),
    BALANCE integer,
    CATEGORY_ID uuid,
    SUB_CATEGORY_ID uuid,
    ORDER_ID uuid,
    --
    primary key (ID)
)^
-- end BEAUTYSHOP_PRODUCT
-- begin BEAUTYSHOP_ORDER
create table BEAUTYSHOP_ORDER (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    SEQ_NO bigint,
    SUMMARY decimal(19, 2),
    DONE_TS date,
    PRICE decimal(19, 2),
    COUNT_ integer,
    --
    primary key (ID)
)^
-- end BEAUTYSHOP_ORDER
-- begin BEAUTYSHOP_DELIVERY
create table BEAUTYSHOP_DELIVERY (
    ID uuid,
    VERSION integer not null,
    CREATE_TS timestamp,
    CREATED_BY varchar(50),
    UPDATE_TS timestamp,
    UPDATED_BY varchar(50),
    DELETE_TS timestamp,
    DELETED_BY varchar(50),
    --
    GOODS_ID uuid,
    COUNT_ integer,
    DATE_OF_DELIVERY date,
    PRICE decimal(19, 2),
    SEQ_NO bigint,
    --
    primary key (ID)
)^
-- end BEAUTYSHOP_DELIVERY
