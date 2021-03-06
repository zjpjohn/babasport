package com.lionxxw.babasport.product.dao;

import com.lionxxw.babasport.product.dto.SizeDto;
import com.lionxxw.babasport.product.entity.Size;
import com.lionxxw.babasport.product.entity.SizeExample;
import com.lionxxw.babasport.product.mapper.SizeMapper;
import com.lionxxw.common.base.MyBatisBaseDao;
import com.lionxxw.common.model.PageQuery;
import com.lionxxw.common.utils.ObjectUtils;
import com.lionxxw.common.utils.StringUtils;
import lombok.Getter;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>Description: 尺码dao层实现 </p>
 *
 * @author wangxiang
 * @version 1.0
 * @time 16/5/21 下午11:35
 */
@Repository
public class SizeDao extends MyBatisBaseDao<Size> {

    @Autowired
    @Getter
    private SizeMapper mapper;

    public List<Size> queryByParam(SizeDto obj, PageQuery query) throws Exception{
        SizeExample example = new SizeExample();
        SizeExample.Criteria criteria = example.createCriteria();
        assemblyParams(obj, criteria);
        if(null != query){
            example.setOrderByClause("is_display desc,id asc limit "+query.getStartNum() +"," + query.getPageSize());
        }else{
            example.setOrderByClause("is_display desc,id asc");
        }
        List<Size> results = mapper.selectByExample(example);
        return results;
    }

    public int countByParam(SizeDto obj) throws Exception{
        SizeExample example = new SizeExample();
        SizeExample.Criteria criteria = example.createCriteria();
        assemblyParams(obj, criteria);
        return mapper.countByExample(example);
    }

    private void assemblyParams(SizeDto params, SizeExample.Criteria criteria) {
        if (null != params) {
            if (ObjectUtils.notNull(params.getId())){
                criteria.andIdEqualTo(params.getId());
            }
            if (StringUtils.notTrimEmpty(params.getName())){
                criteria.andNameEqualTo(params.getName().trim());
            }
            if (null != params.getIsDisplay()){
                criteria.andIsDisplayEqualTo(params.getIsDisplay());
            }else{
                criteria.andIsDisplayEqualTo(true);
            }
        }else{
            criteria.andIsDisplayEqualTo(true);
        }

    }
}
