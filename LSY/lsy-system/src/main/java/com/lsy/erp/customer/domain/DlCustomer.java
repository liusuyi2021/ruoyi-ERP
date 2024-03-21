package com.lsy.erp.customer.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.lsy.common.annotation.Excel;
import com.lsy.common.core.domain.BaseEntity;

/**
 * 客户管理对象 dl_customer
 * 
 * @author ruoyi
 * @date 2024-03-21
 */
public class DlCustomer extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 代理人 */
    @Excel(name = "代理人")
    private String agenter;

    /** 收货人 */
    @Excel(name = "收货人")
    private String receiver;

    /** 客户名称 */
    @Excel(name = "客户名称")
    private String company;

    public void setId(Long id) 
    {
        this.id = id;
    }

    public Long getId() 
    {
        return id;
    }
    public void setAgenter(String agenter) 
    {
        this.agenter = agenter;
    }

    public String getAgenter() 
    {
        return agenter;
    }
    public void setReceiver(String receiver) 
    {
        this.receiver = receiver;
    }

    public String getReceiver() 
    {
        return receiver;
    }
    public void setCompany(String company) 
    {
        this.company = company;
    }

    public String getCompany() 
    {
        return company;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("agenter", getAgenter())
            .append("receiver", getReceiver())
            .append("company", getCompany())
            .toString();
    }
}
