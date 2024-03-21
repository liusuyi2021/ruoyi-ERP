package com.lsy.erp.customer.service;

import java.util.List;
import com.lsy.erp.customer.domain.DlCustomer;

/**
 * 客户管理Service接口
 * 
 * @author ruoyi
 * @date 2024-03-21
 */
public interface IDlCustomerService 
{
    /**
     * 查询客户管理
     * 
     * @param id 客户管理主键
     * @return 客户管理
     */
    public DlCustomer selectDlCustomerById(Long id);

    /**
     * 查询客户管理列表
     * 
     * @param dlCustomer 客户管理
     * @return 客户管理集合
     */
    public List<DlCustomer> selectDlCustomerList(DlCustomer dlCustomer);

    /**
     * 新增客户管理
     * 
     * @param dlCustomer 客户管理
     * @return 结果
     */
    public int insertDlCustomer(DlCustomer dlCustomer);

    /**
     * 修改客户管理
     * 
     * @param dlCustomer 客户管理
     * @return 结果
     */
    public int updateDlCustomer(DlCustomer dlCustomer);

    /**
     * 批量删除客户管理
     * 
     * @param ids 需要删除的客户管理主键集合
     * @return 结果
     */
    public int deleteDlCustomerByIds(String ids);

    /**
     * 删除客户管理信息
     * 
     * @param id 客户管理主键
     * @return 结果
     */
    public int deleteDlCustomerById(Long id);
}
