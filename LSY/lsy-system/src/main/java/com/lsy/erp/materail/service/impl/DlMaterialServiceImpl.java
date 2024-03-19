package com.lsy.erp.materail.service.impl;

import java.util.List;

import com.lsy.erp.materail.domain.DlMaterial;
import com.lsy.erp.materail.mapper.DlMaterialMapper;
import com.lsy.erp.materail.service.IDlMaterialService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.lsy.common.core.text.Convert;

/**
 * 物料管理Service业务层处理
 *
 * @author ruoyi
 * @date 2024-03-19
 */
@Service
public class DlMaterialServiceImpl implements IDlMaterialService
{
    @Autowired
    private DlMaterialMapper dlMaterialMapper;

    /**
     * 查询物料管理
     *
     * @param id 物料管理主键
     * @return 物料管理
     */
    @Override
    public DlMaterial selectDlMaterialById(Long id)
    {
        return dlMaterialMapper.selectDlMaterialById(id);
    }

    /**
     * 查询物料管理列表
     *
     * @param dlMaterial 物料管理
     * @return 物料管理
     */
    @Override
    public List<DlMaterial> selectDlMaterialList(DlMaterial dlMaterial)
    {
        return dlMaterialMapper.selectDlMaterialList(dlMaterial);
    }

    /**
     * 新增物料管理
     *
     * @param dlMaterial 物料管理
     * @return 结果
     */
    @Override
    public int insertDlMaterial(DlMaterial dlMaterial)
    {
        return dlMaterialMapper.insertDlMaterial(dlMaterial);
    }

    /**
     * 修改物料管理
     *
     * @param dlMaterial 物料管理
     * @return 结果
     */
    @Override
    public int updateDlMaterial(DlMaterial dlMaterial)
    {
        return dlMaterialMapper.updateDlMaterial(dlMaterial);
    }

    /**
     * 批量删除物料管理
     *
     * @param ids 需要删除的物料管理主键
     * @return 结果
     */
    @Override
    public int deleteDlMaterialByIds(String ids)
    {
        return dlMaterialMapper.deleteDlMaterialByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除物料管理信息
     *
     * @param id 物料管理主键
     * @return 结果
     */
    @Override
    public int deleteDlMaterialById(Long id)
    {
        return dlMaterialMapper.deleteDlMaterialById(id);
    }
}
