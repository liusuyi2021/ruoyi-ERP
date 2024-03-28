package com.lsy.web.controller.erp;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.stream.Collectors;

import com.lsy.common.utils.ShiroUtils;
import com.lsy.common.utils.StringUtils;
import com.lsy.erp.customer.domain.DlCustomer;
import com.lsy.erp.customer.service.IDlCustomerService;
import com.lsy.erp.materail.domain.DlMaterial;
import com.lsy.erp.materail.service.IDlMaterialService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.lsy.common.annotation.Log;
import com.lsy.common.enums.BusinessType;
import com.lsy.erp.delivery.domain.DlDelivery;
import com.lsy.erp.delivery.service.IDlDeliveryService;
import com.lsy.common.core.controller.BaseController;
import com.lsy.common.core.domain.AjaxResult;
import com.lsy.common.utils.poi.ExcelUtil;
import com.lsy.common.core.page.TableDataInfo;

/**
 * 发货管理Controller
 *
 * @author ruoyi
 * @date 2024-03-19
 */
@Controller
@RequestMapping("/erp/delivery")
public class DlDeliveryController extends BaseController {
    private String prefix = "erp/delivery";

    @Autowired
    private IDlMaterialService dlMaterialService;
    @Autowired
    private IDlDeliveryService dlDeliveryService;
    @Autowired
    private IDlCustomerService dlCustomerService;

    @RequiresPermissions("erp:delivery:view")
    @GetMapping()
    public String delivery(ModelMap mmap) {
        List<DlMaterial> dlMaterials = dlMaterialService.selectDlMaterialList(new DlMaterial());
        mmap.put("materials", dlMaterials);
        List<DlCustomer> dlCustomers = dlCustomerService.selectDlCustomerList(new DlCustomer());
        mmap.put("customers", dlCustomers);
        return prefix + "/delivery";
    }

    /**
     * 查询发货管理列表
     */
    @RequiresPermissions("erp:delivery:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(DlDelivery dlDelivery) {
        startPage();
        List<DlDelivery> list = dlDeliveryService.selectDlDeliveryList(dlDelivery);
        return getDataTable(list);
    }

    /**
     * 导出发货管理列表
     */
    @RequiresPermissions("erp:delivery:export")
    @Log(title = "发货管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(DlDelivery dlDelivery) {
        List<DlDelivery> list = dlDeliveryService.selectDlDeliveryList(dlDelivery);
        list.stream().forEach(a -> {
            a.setCustomer(dlCustomerService.selectDlCustomerById(Long.valueOf(a.getCustomer())).getCompany());
            a.setMaterial(dlMaterialService.selectDlMaterialById(Long.valueOf(a.getMaterial())).getName());
        });
        ExcelUtil<DlDelivery> util = new ExcelUtil<DlDelivery>(DlDelivery.class);
        return util.exportExcel(list, "发货管理数据");
    }

    /**
     * 导出数据
     */
    @PostMapping("/exportData")
    @ResponseBody
    public AjaxResult exportSelected(DlDelivery dlDelivery, String ids) {
        List<Long> idList = Arrays.stream(ids.split(","))
                .map(Long::valueOf)
                .collect(Collectors.toList());
        List<DlDelivery> list = dlDeliveryService.selectDlDeliveryList(dlDelivery);
        List<DlDelivery> newList  =  list.stream()
                .filter(a -> idList.contains(Long.valueOf(a.getId())))
                .map(a -> {
                    a.setCustomer(dlCustomerService.selectDlCustomerById(Long.valueOf(a.getCustomer())).getCompany());
                    a.setMaterial(dlMaterialService.selectDlMaterialById(Long.valueOf(a.getMaterial())).getName());
                    return a;
                }).collect(Collectors.toList());

        ExcelUtil<DlDelivery> util = new ExcelUtil<DlDelivery>(DlDelivery.class);
        return util.exportExcel(newList, "发货管理数据");
    }

    /**
     * 新增发货管理
     */
    @GetMapping("/add")
    public String add(ModelMap mmap) {
        List<DlMaterial> dlMaterials = dlMaterialService.selectDlMaterialList(new DlMaterial());
        mmap.put("materials", dlMaterials);
        List<DlCustomer> dlCustomers = dlCustomerService.selectDlCustomerList(new DlCustomer());
        mmap.put("customers", dlCustomers);
        return prefix + "/add";
    }

    /**
     * 新增保存发货管理
     */
    @RequiresPermissions("erp:delivery:add")
    @Log(title = "发货管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(DlDelivery dlDelivery) {
        return toAjax(dlDeliveryService.insertDlDelivery(dlDelivery));
    }

    /**
     * 修改发货管理
     */
    @RequiresPermissions("erp:delivery:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap) {
        DlDelivery dlDelivery = dlDeliveryService.selectDlDeliveryById(id);
        mmap.put("dlDelivery", dlDelivery);
        List<DlCustomer> dlCustomers = dlCustomerService.selectDlCustomerList(new DlCustomer());
        mmap.put("customers", dlCustomers);
        List<DlMaterial> dlMaterials = dlMaterialService.selectDlMaterialList(new DlMaterial());
        mmap.put("materials", dlMaterials);
        return prefix + "/edit";
    }

    /**
     * 修改保存发货管理
     */
    @RequiresPermissions("erp:delivery:edit")
    @Log(title = "发货管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(DlDelivery dlDelivery) {
        return toAjax(dlDeliveryService.updateDlDelivery(dlDelivery));
    }

    /**
     * 删除发货管理
     */
    @RequiresPermissions("erp:delivery:remove")
    @Log(title = "发货管理", businessType = BusinessType.DELETE)
    @PostMapping("/remove")
    @ResponseBody
    public AjaxResult remove(String ids) {
        return toAjax(dlDeliveryService.deleteDlDeliveryByIds(ids));
    }
}
