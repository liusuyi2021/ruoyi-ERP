package com.lsy.erp.delivery.mapper;

import java.util.List;
import com.lsy.erp.delivery.domain.DlDelivery;

/**
 * 发货管理Mapper接口
 *
 * @author ruoyi
 * @date 2024-03-19
 */
public interface DlDeliveryMapper
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
    public List<Integer> selectDlDeliveryCountCurrentYear();
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
     * 删除发货管理
     *
     * @param id 发货管理主键
     * @return 结果
     */
    public int deleteDlDeliveryById(Long id);

    /**
     * 批量删除发货管理
     *
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteDlDeliveryByIds(String[] ids);
}
