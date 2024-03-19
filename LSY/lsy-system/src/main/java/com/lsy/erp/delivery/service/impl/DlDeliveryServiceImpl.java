package com.lsy.erp.delivery.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lsy.erp.delivery.mapper.DlDeliveryMapper;
import com.lsy.erp.delivery.domain.DlDelivery;
import com.lsy.erp.delivery.service.IDlDeliveryService;
import com.lsy.common.core.text.Convert;

/**
 * 发货管理Service业务层处理
 * 
 * @author ruoyi
 * @date 2024-03-19
 */
@Service
public class DlDeliveryServiceImpl implements IDlDeliveryService 
{
    @Autowired
    private DlDeliveryMapper dlDeliveryMapper;

    /**
     * 查询发货管理
     * 
     * @param id 发货管理主键
     * @return 发货管理
     */
    @Override
    public DlDelivery selectDlDeliveryById(Long id)
    {
        return dlDeliveryMapper.selectDlDeliveryById(id);
    }

    /**
     * 查询发货管理列表
     * 
     * @param dlDelivery 发货管理
     * @return 发货管理
     */
    @Override
    public List<DlDelivery> selectDlDeliveryList(DlDelivery dlDelivery)
    {
        return dlDeliveryMapper.selectDlDeliveryList(dlDelivery);
    }

    /**
     * 新增发货管理
     * 
     * @param dlDelivery 发货管理
     * @return 结果
     */
    @Override
    public int insertDlDelivery(DlDelivery dlDelivery)
    {
        return dlDeliveryMapper.insertDlDelivery(dlDelivery);
    }

    /**
     * 修改发货管理
     * 
     * @param dlDelivery 发货管理
     * @return 结果
     */
    @Override
    public int updateDlDelivery(DlDelivery dlDelivery)
    {
        return dlDeliveryMapper.updateDlDelivery(dlDelivery);
    }

    /**
     * 批量删除发货管理
     * 
     * @param ids 需要删除的发货管理主键
     * @return 结果
     */
    @Override
    public int deleteDlDeliveryByIds(String ids)
    {
        return dlDeliveryMapper.deleteDlDeliveryByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除发货管理信息
     * 
     * @param id 发货管理主键
     * @return 结果
     */
    @Override
    public int deleteDlDeliveryById(Long id)
    {
        return dlDeliveryMapper.deleteDlDeliveryById(id);
    }
}
