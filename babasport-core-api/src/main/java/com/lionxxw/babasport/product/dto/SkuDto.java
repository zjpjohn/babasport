package com.lionxxw.babasport.product.dto;

import lombok.Data;

import java.io.Serializable;
import java.util.Date;

@Data
public class SkuDto implements Serializable {

    private Integer id;

    private Integer productId;

    private Integer colorId;

    private String colorName; // 颜色名称

    private Integer sizeId;

    private String sizeName; // 尺寸名称

    private Double deliveFee;

    private Double skuPrice;

    private Integer stockInventory;

    private Integer stockUpperLimit;

    private String location;

    private String skuImg;

    private Integer skuSort;

    private String skuName;

    private Double marketPrice;

    private Date createTime;

    private Date updateTime;

    private String createUserId;

    private String updateUserId;

    private Integer lastStatus;

    private Integer skuType;

    private Integer sales;

    private ProductDto product;
}