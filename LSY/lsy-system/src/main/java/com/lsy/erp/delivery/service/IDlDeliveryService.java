package com.lsy.erp.delivery.service;

import java.util.List;
import com.lsy.erp.delivery.domain.DlDelivery;

/**
 * 发货管理Service接口
 * 
 * @author ruoyi
 * @date 2024-03-19
 */
public interface IDlDeliveryService 
{
    /**
     * 查询发货管理
     * 
     * @param id 发货管理主键
     * @return 发货管理
     */
    public DlDelivery selectDlDeliveryById(Long id);

    /**
     * 查询发货管理列表
     * 
     * @param dlDelivery 发货管理
     * @return 发货管理集合
     */
    public List<DlDelivery> selectDlDeliveryList(DlDelivery dlDelivery);

    /**
     * 新增发货管理
     * 
     * @param dlDelivery 发货管理
     * @return 结果
     */
    public int insertDlDelivery(DlDelivery dlDelivery);

    /**
     * 修改发货管理
     * 
     * @param dlDelivery 发货管理
     * @return 结果
     */
    public int updateDlDelivery(DlDelivery dlDelivery);

    /**
     * 批量删除发货管理
     * 
     * @param ids 需要删除的发货管理主键集合
     * @return 结果
     */
    public int deleteDlDeliveryByIds(String ids);

    /**
     * 删除发货管理信息
     * 
     * @param id 发货管理主键
     * @return 结果
     */
    public int deleteDlDeliveryById(Long id);
}
