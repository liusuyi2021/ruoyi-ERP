package com.lsy.erp.materail.service;

import java.util.List;
import com.lsy.erp.materail.domain.DlMaterial;

/**
 * 物料管理Service接口
 *
 * @author ruoyi
 * @date 2024-03-19
 */
public interface IDlMaterialService
{
    /**
     * 查询物料管理
     *
     * @param id 物料管理主键
     * @return 物料管理
     */
    public DlMaterial selectDlMaterialById(Long id);

    /**
     * 查询物料管理列表
     *
     * @param dlMaterial 物料管理
     * @return 物料管理集合
     */
    public List<DlMaterial> selectDlMaterialList(DlMaterial dlMaterial);

    /**
     * 新增物料管理
     *
     * @param dlMaterial 物料管理
     * @return 结果
     */
    public int insertDlMaterial(DlMaterial dlMaterial);

    /**
     * 修改物料管理
     *
     * @param dlMaterial 物料管理
     * @return 结果
     */
    public int updateDlMaterial(DlMaterial dlMaterial);

    /**
     * 批量删除物料管理
     *
     * @param ids 需要删除的物料管理主键集合
     * @return 结果
     */
    public int deleteDlMaterialByIds(String ids);

    /**
     * 删除物料管理信息
     *
     * @param id 物料管理主键
     * @return 结果
     */
    public int deleteDlMaterialById(Long id);
}
