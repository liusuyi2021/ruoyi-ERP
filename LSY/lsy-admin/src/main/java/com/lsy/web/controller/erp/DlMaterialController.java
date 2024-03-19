package com.lsy.web.controller.erp;

import com.lsy.common.annotation.Log;
import com.lsy.common.core.controller.BaseController;
import com.lsy.common.core.domain.AjaxResult;
import com.lsy.common.core.page.TableDataInfo;
import com.lsy.common.enums.BusinessType;
import com.lsy.common.utils.poi.ExcelUtil;
import com.lsy.erp.materail.domain.DlMaterial;
import com.lsy.erp.materail.service.IDlMaterialService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import java.util.List;

/**
 * 物料管理Controller
 *
 * @author ruoyi
 * @date 2024-03-19
 */
@Controller
@RequestMapping("/erp/material")
public class DlMaterialController extends BaseController
{
    private String prefix = "erp/material";

    @Autowired
    private IDlMaterialService dlMaterialService;

    @RequiresPermissions("erp:material:view")
    @GetMapping()
    public String material()
    {
        return prefix + "/material";
    }

    /**
     * 查询物料管理列表
     */
    @RequiresPermissions("erp:material:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(DlMaterial dlMaterial)
    {
        startPage();
        List<DlMaterial> list = dlMaterialService.selectDlMaterialList(dlMaterial);
        return getDataTable(list);
    }

    /**
     * 导出物料管理列表
     */
    @RequiresPermissions("erp:material:export")
    @Log(title = "物料管理", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(DlMaterial dlMaterial)
    {
        List<DlMaterial> list = dlMaterialService.selectDlMaterialList(dlMaterial);
        ExcelUtil<DlMaterial> util = new ExcelUtil<DlMaterial>(DlMaterial.class);
        return util.exportExcel(list, "物料管理数据");
    }

    /**
     * 新增物料管理
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存物料管理
     */
    @RequiresPermissions("erp:material:add")
    @Log(title = "物料管理", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(DlMaterial dlMaterial)
    {
        return toAjax(dlMaterialService.insertDlMaterial(dlMaterial));
    }

    /**
     * 修改物料管理
     */
    @RequiresPermissions("erp:material:edit")
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        DlMaterial dlMaterial = dlMaterialService.selectDlMaterialById(id);
        mmap.put("dlMaterial", dlMaterial);
        return prefix + "/edit";
    }

    /**
     * 修改保存物料管理
     */
    @RequiresPermissions("erp:material:edit")
    @Log(title = "物料管理", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(DlMaterial dlMaterial)
    {
        return toAjax(dlMaterialService.updateDlMaterial(dlMaterial));
    }

    /**
     * 删除物料管理
     */
    @RequiresPermissions("erp:material:remove")
    @Log(title = "物料管理", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(dlMaterialService.deleteDlMaterialByIds(ids));
    }
}
