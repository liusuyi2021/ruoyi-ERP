package com.lsy.erp.materail.domain;

import java.math.BigDecimal;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.lsy.common.annotation.Excel;
import com.lsy.common.core.domain.BaseEntity;

/**
 * 物料管理对象 dl_material
 *
 * @author ruoyi
 * @date 2024-03-19
 */
public class DlMaterial extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 物料名称 */
    @Excel(name = "物料名称")
    private String name;

    /** 规格 */
    @Excel(name = "规格")
    private String spec;

    /** 单价 */
    @Excel(name = "单价")
    private BigDecimal unitPrice;

    /** 底价 */
    @Excel(name = "底价")
    private BigDecimal basePrice;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setName(String name)
    {
        this.name = name;
    }

    public String getName()
    {
        return name;
    }
    public void setSpec(String spec)
    {
        this.spec = spec;
    }

    public String getSpec()
    {
        return spec;
    }
    public void setUnitPrice(BigDecimal unitPrice)
    {
        this.unitPrice = unitPrice;
    }

    public BigDecimal getUnitPrice()
    {
        return unitPrice;
    }
    public void setBasePrice(BigDecimal basePrice)
    {
        this.basePrice = basePrice;
    }

    public BigDecimal getBasePrice()
    {
        return basePrice;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("spec", getSpec())
            .append("unitPrice", getUnitPrice())
            .append("basePrice", getBasePrice())
            .toString();
    }
}
