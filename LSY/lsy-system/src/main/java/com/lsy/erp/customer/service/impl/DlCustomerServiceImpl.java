package com.lsy.erp.customer.service.impl;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lsy.erp.customer.mapper.DlCustomerMapper;
import com.lsy.erp.customer.domain.DlCustomer;
import com.lsy.erp.customer.service.IDlCustomerService;
import com.lsy.common.core.text.Convert;

/**
 * 客户管理Service业务层处理
 *
 * @author ruoyi
 * @date 2024-03-21
 */
@Service
public class DlCustomerServiceImpl implements IDlCustomerService
{
    @Autowired
    private DlCustomerMapper dlCustomerMapper;

    /**
     * 查询客户管理
     *
     * @param id 客户管理主键
     * @return 客户管理
     */
    @Override
    public DlCustomer selectDlCustomerById(Long id)
    {
        return dlCustomerMapper.selectDlCustomerById(id);
    }

    /**
     * 查询客户管理列表
     *
     * @param dlCustomer 客户管理
     * @return 客户管理
     */
    @Override
    public List<DlCustomer> selectDlCustomerList(DlCustomer dlCustomer)
    {
        return dlCustomerMapper.selectDlCustomerList(dlCustomer);
    }

    /**
     * 新增客户管理
     *
     * @param dlCustomer 客户管理
     * @return 结果
     */
    @Override
    public int insertDlCustomer(DlCustomer dlCustomer)
    {
        return dlCustomerMapper.insertDlCustomer(dlCustomer);
    }

    /**
     * 修改客户管理
     *
     * @param dlCustomer 客户管理
     * @return 结果
     */
    @Override
    public int updateDlCustomer(DlCustomer dlCustomer)
    {
        return dlCustomerMapper.updateDlCustomer(dlCustomer);
    }

    /**
     * 批量删除客户管理
     *
     * @param ids 需要删除的客户管理主键
     * @return 结果
     */
    @Override
    public int deleteDlCustomerByIds(String ids)
    {
        return dlCustomerMapper.deleteDlCustomerByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除客户管理信息
     *
     * @param id 客户管理主键
     * @return 结果
     */
    @Override
    public int deleteDlCustomerById(Long id)
    {
        return dlCustomerMapper.deleteDlCustomerById(id);
    }


}
