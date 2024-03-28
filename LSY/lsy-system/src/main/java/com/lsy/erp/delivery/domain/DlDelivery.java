package com.lsy.erp.delivery.domain;

import java.math.BigDecimal;
import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.lsy.common.annotation.Excel;
import com.lsy.common.core.domain.BaseEntity;

/**
 * 发货管理对象 dl_delivery
 *
 * @author ruoyi
 * @date 2024-03-19
 */
public class DlDelivery extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** 主键 */
    private Long id;

    /** 省份 */
    @Excel(name = "省份")
    private String region;

    /** 业务员 */
    @Excel(name = "业务员")
    private String saler;

    /** 代理人 */
    @Excel(name = "代理人")
    private String agenter;

    /** 收货人 */
    @Excel(name = "收货人")
    private String receiver;

    /** 物流单号 */
    @Excel(name = "物流单号")
    private String trackingNumber;

    /** 客户名称 */
    @Excel(name = "客户名称")
    private String customer;

    /** 付款日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "付款日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date paymentDate;

    /** 物料名称 */
    @Excel(name = "物料名称")
    private String material;

    /** 规格 */
    @Excel(name = "规格")
    private String spec;

    /** 订单数量 */
    @Excel(name = "订单数量")
    private Long orderNumber;

    /** 订单单价 */
    @Excel(name = "订单单价")
    private BigDecimal orderUnitPrice;

    /** 订单金额 */
    @Excel(name = "订单金额")
    private BigDecimal orderAmount;

    /** 底价 */
    @Excel(name = "底价")
    private BigDecimal basePrice;

    /** 底价金额 */
    @Excel(name = "底价金额")
    private BigDecimal baseAmount;

    /** 税率 */
    @Excel(name = "税率")
    private BigDecimal taxRate;

    /** 税金 */
    @Excel(name = "税金")
    private BigDecimal taxAmount;

    /** 差额 */
    @Excel(name = "差额")
    private BigDecimal diffAmount;

    /** 返款金额 */
    @Excel(name = "返款金额")
    private BigDecimal refundAmount;

    /** 是否提供发票 */
    @Excel(name = "是否提供发票", readConverterExp = "true=是,false=否")
    private Boolean invoiceProvide;

    /** 返款申请日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "返款申请日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date refundRequestDate;

    /** 返款发工厂日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "返款发工厂日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date refundToFactoryDate;

    /** 返款日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "返款日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date refundDate;

    /** 批号 */
    @Excel(name = "批号")
    private String batchNumber;

    /** 生产日期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "生产日期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date productionDate;

    /** 有效期 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "有效期", width = 30, dateFormat = "yyyy-MM-dd")
    private Date expirationDate;

    /** 箱号 */
    @Excel(name = "箱号")
    private String boxNumber;

    public void setId(Long id)
    {
        this.id = id;
    }

    public Long getId()
    {
        return id;
    }
    public void setRegion(String region)
    {
        this.region = region;
    }

    public String getRegion()
    {
        return region;
    }
    public void setSaler(String saler)
    {
        this.saler = saler;
    }

    public String getSaler()
    {
        return saler;
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
    public void setTrackingNumber(String trackingNumber)
    {
        this.trackingNumber = trackingNumber;
    }

    public String getTrackingNumber()
    {
        return trackingNumber;
    }
    public void setCustomer(String customer)
    {
        this.customer = customer;
    }

    public String getCustomer()
    {
        return customer;
    }
    public void setPaymentDate(Date paymentDate)
    {
        this.paymentDate = paymentDate;
    }

    public Date getPaymentDate()
    {
        return paymentDate;
    }

    public String getMaterial() {
        return material;
    }

    public void setMaterial(String material) {
        this.material = material;
    }

    public void setSpec(String spec)
    {
        this.spec = spec;
    }

    public String getSpec()
    {
        return spec;
    }
    public void setOrderNumber(Long orderNumber)
    {
        this.orderNumber = orderNumber;
    }

    public Long getOrderNumber()
    {
        return orderNumber;
    }
    public void setOrderUnitPrice(BigDecimal orderUnitPrice)
    {
        this.orderUnitPrice = orderUnitPrice;
    }

    public BigDecimal getOrderUnitPrice()
    {
        return orderUnitPrice;
    }
    public void setOrderAmount(BigDecimal orderAmount)
    {
        this.orderAmount = orderAmount;
    }

    public BigDecimal getOrderAmount()
    {
        return orderAmount;
    }
    public void setBasePrice(BigDecimal basePrice)
    {
        this.basePrice = basePrice;
    }

    public BigDecimal getBasePrice()
    {
        return basePrice;
    }
    public void setBaseAmount(BigDecimal baseAmount)
    {
        this.baseAmount = baseAmount;
    }

    public BigDecimal getBaseAmount()
    {
        return baseAmount;
    }
    public void setTaxRate(BigDecimal taxRate)
    {
        this.taxRate = taxRate;
    }

    public BigDecimal getTaxRate()
    {
        return taxRate;
    }
    public void setTaxAmount(BigDecimal taxAmount)
    {
        this.taxAmount = taxAmount;
    }

    public BigDecimal getTaxAmount()
    {
        return taxAmount;
    }
    public void setDiffAmount(BigDecimal diffAmount)
    {
        this.diffAmount = diffAmount;
    }

    public BigDecimal getDiffAmount()
    {
        return diffAmount;
    }
    public void setRefundAmount(BigDecimal refundAmount)
    {
        this.refundAmount = refundAmount;
    }

    public BigDecimal getRefundAmount()
    {
        return refundAmount;
    }
    public void setInvoiceProvide(Boolean invoiceProvide)
    {
        this.invoiceProvide = invoiceProvide;
    }

    public Boolean getInvoiceProvide()
    {
        return invoiceProvide;
    }
    public void setRefundRequestDate(Date refundRequestDate)
    {
        this.refundRequestDate = refundRequestDate;
    }

    public Date getRefundRequestDate()
    {
        return refundRequestDate;
    }
    public void setRefundToFactoryDate(Date refundToFactoryDate)
    {
        this.refundToFactoryDate = refundToFactoryDate;
    }

    public Date getRefundToFactoryDate()
    {
        return refundToFactoryDate;
    }
    public void setRefundDate(Date refundDate)
    {
        this.refundDate = refundDate;
    }

    public Date getRefundDate()
    {
        return refundDate;
    }
    public void setBatchNumber(String batchNumber)
    {
        this.batchNumber = batchNumber;
    }

    public String getBatchNumber()
    {
        return batchNumber;
    }
    public void setProductionDate(Date productionDate)
    {
        this.productionDate = productionDate;
    }

    public Date getProductionDate()
    {
        return productionDate;
    }
    public void setExpirationDate(Date expirationDate)
    {
        this.expirationDate = expirationDate;
    }

    public Date getExpirationDate()
    {
        return expirationDate;
    }
    public void setBoxNumber(String boxNumber)
    {
        this.boxNumber = boxNumber;
    }

    public String getBoxNumber()
    {
        return boxNumber;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("region", getRegion())
            .append("saler", getSaler())
            .append("agenter", getAgenter())
            .append("receiver", getReceiver())
            .append("trackingNumber", getTrackingNumber())
            .append("customer", getCustomer())
            .append("paymentDate", getPaymentDate())
            .append("materail", getMaterial())
            .append("spec", getSpec())
            .append("orderNumber", getOrderNumber())
            .append("orderUnitPrice", getOrderUnitPrice())
            .append("orderAmount", getOrderAmount())
            .append("basePrice", getBasePrice())
            .append("baseAmount", getBaseAmount())
            .append("taxRate", getTaxRate())
            .append("taxAmount", getTaxAmount())
            .append("diffAmount", getDiffAmount())
            .append("refundAmount", getRefundAmount())
            .append("invoiceProvide", getInvoiceProvide())
            .append("refundRequestDate", getRefundRequestDate())
            .append("refundToFactoryDate", getRefundToFactoryDate())
            .append("refundDate", getRefundDate())
            .append("batchNumber", getBatchNumber())
            .append("productionDate", getProductionDate())
            .append("expirationDate", getExpirationDate())
            .append("boxNumber", getBoxNumber())
            .append("remark", getRemark())
            .toString();
    }
}
