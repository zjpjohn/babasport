package com.lionxxw.babasport.product.dao;

import com.lionxxw.babasport.product.dto.ProductDto;
import com.lionxxw.babasport.product.entity.Product;
import com.lionxxw.babasport.product.entity.ProductExample;
import com.lionxxw.babasport.product.entity.ProductWithBLOBs;
import com.lionxxw.babasport.product.mapper.ProductExMapper;
import com.lionxxw.babasport.product.mapper.ProductMapper;
import com.lionxxw.common.base.MyBatisBaseDao;
import com.lionxxw.common.model.PageQuery;
import com.lionxxw.common.utils.ObjectUtils;
import com.lionxxw.common.utils.StringUtils;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>Description: 产品dao层实现 </p>
 *
 * @author wangxiang
 * @version 1.0
 * @time 16/5/21 下午11:45
 */
@Repository
public class ProductDao extends MyBatisBaseDao<ProductWithBLOBs> {

    @Autowired
    @Getter
    private ProductMapper mapper;

    @Autowired
    private ProductExMapper exMapper;

    public List<ProductDto> queryByParam(ProductDto obj, PageQuery query) throws Exception{
        if (StringUtils.isTrimEmpty(obj.getOrderByClause())){
            obj.setOrderByClause(" p.create_time desc");
        }
        return exMapper.selectByParams(obj, query);
       /* ProductExample example = new ProductExample();
        ProductExample.Criteria criteria = example.createCriteria();
        assemblyParams(obj, criteria);
        if(null != query){
            example.setOrderByClause("create_time desc limit "+query.getStartNum() +"," + query.getPageSize());
        }else{
            example.setOrderByClause("create_time desc");
        }
        List<Product> results = mapper.selectByExample(example);
        return results;*/
    }

    public int countByParam(ProductDto obj) throws Exception{
        return exMapper.countByParams(obj);
       /* ProductExample example = new ProductExample();
        ProductExample.Criteria criteria = example.createCriteria();
        assemblyParams(obj, criteria);
        return mapper.countByExample(example);*/
    }

   /* private void assemblyParams(ProductDto params, ProductExample.Criteria criteria) {
        if (null != params) {
            if (ObjectUtils.notNull(params.getId())){
                criteria.andIdEqualTo(params.getId());
            }
            if (StringUtils.notTrimEmpty(params.getName())){
                criteria.andNameEqualTo(params.getName().trim());
            }
            if (StringUtils.notTrimEmpty(params.getCreateUserId())){
                criteria.andCreateUserIdEqualTo(params.getCreateUserId().trim());
            }
            if (null != params.getIsCommend()){
                criteria.andIsCommendEqualTo(params.getIsCommend());
            }
            if (null != params.getBrandId()){
                criteria.andBrandIdEqualTo(params.getBrandId());
            }
            if (null != params.getIsHot()){
                criteria.andIsHotEqualTo(params.getIsHot());
            }
            if (null != params.getIsShow()){
                criteria.andIsShowEqualTo(params.getIsShow());
            }
        }
    }*/
}
