package com.lsy.web.controller.erp;

import java.util.List;
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
import com.lsy.erp.customer.domain.DlCustomer;
import com.lsy.erp.customer.service.IDlCustomerService;
import com.lsy.common.core.controller.BaseController;
import com.lsy.common.core.domain.AjaxResult;
import com.lsy.common.utils.poi.ExcelUtil;
import com.lsy.common.core.page.TableDataInfo;

/**
 * 客户管理Controller
 *
 * @author ruoyi
 * @date 2024-03-21
 */
@Controller
@RequestMapping("/erp/customer")
public class DlCustomerController extends BaseController
{
    private String prefix = "erp/customer";

    @Autowired
    private IDlCustomerService dlCustomerService;

    @RequiresPermissions("erp:customer:view")
    @GetMapping()
    public String customer()
    {
        return prefix + "/customer";
    }

    /**
     * 查询客户管理列表
     */
    @RequiresPermissions("erp:customer:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(DlCustomer dlCustomer)
    {
        startPage();
        List<DlCustomer> list = dlCustomerService.selectDlCustomerList(dlCustomer);
        return getDataTable(list);
    }

    /**
     * 导出客户管理列表
     */
    @RequiresPermissions("erp:customer:export")
    @Log(title = "客户管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(DlCustomer dlCustomer)
    {
        List<DlCustomer> list = dlCustomerService.selectDlCustomerList(dlCustomer);
        ExcelUtil<DlCustomer> util = new ExcelUtil<DlCustomer>(DlCustomer.class);
        return util.exportExcel(list, "客户管理数据");
    }

    /**
     * 新增客户管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存客户管理
     */
    @RequiresPermissions("erp:customer:add")
    @Log(title = "客户管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(DlCustomer dlCustomer)
    {
        return toAjax(dlCustomerService.insertDlCustomer(dlCustomer));
    }

    /**
     * 修改客户管理
     */
    @RequiresPermissions("erp:customer:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        DlCustomer dlCustomer = dlCustomerService.selectDlCustomerById(id);
        mmap.put("dlCustomer", dlCustomer);
        return prefix + "/edit";
    }

    /**
     * 修改保存客户管理
     */
    @RequiresPermissions("erp:customer:edit")
    @Log(title = "客户管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(DlCustomer dlCustomer)
    {
        return toAjax(dlCustomerService.updateDlCustomer(dlCustomer));
    }

    /**
     * 删除客户管理
     */
    @RequiresPermissions("erp:customer:remove")
    @Log(title = "客户管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(dlCustomerService.deleteDlCustomerByIds(ids));
    }
}
