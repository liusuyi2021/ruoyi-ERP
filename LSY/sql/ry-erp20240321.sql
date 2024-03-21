/*
 Navicat Premium Data Transfer

 Source Server         : 127.0.0.1(mysql)
 Source Server Type    : MySQL
 Source Server Version : 80034 (8.0.34)
 Source Host           : 127.0.0.1:3306
 Source Schema         : ry-erp

 Target Server Type    : MySQL
 Target Server Version : 80034 (8.0.34)
 File Encoding         : 65001

 Date: 21/03/2024 10:53:22
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for dl_customer
-- ----------------------------
DROP TABLE IF EXISTS `dl_customer`;
CREATE TABLE `dl_customer`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `agenter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '代理人',
  `receiver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '收货人',
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户名称',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '客户管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dl_customer
-- ----------------------------
INSERT INTO `dl_customer` VALUES (1, '李四', '王五', '南京共创');
INSERT INTO `dl_customer` VALUES (2, '张思', '小刚', '上海新中新电子股份有限公司');

-- ----------------------------
-- Table structure for dl_delivery
-- ----------------------------
DROP TABLE IF EXISTS `dl_delivery`;
CREATE TABLE `dl_delivery`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `region` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '省份',
  `saler` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '业务员',
  `agenter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '代理人',
  `receiver` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '收货人',
  `tracking_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '物流单号',
  `customer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '客户名称',
  `payment_date` date NULL DEFAULT NULL COMMENT '付款日期',
  `material` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '物料名称',
  `spec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格',
  `order_number` int NULL DEFAULT NULL COMMENT '订单数量',
  `order_unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单单价',
  `order_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '订单金额',
  `base_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '底价',
  `base_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '底价金额',
  `tax_rate` decimal(10, 2) NULL DEFAULT NULL COMMENT '税率',
  `tax_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '税金',
  `diff_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '差额',
  `refund_amount` decimal(10, 2) NULL DEFAULT NULL COMMENT '返款金额',
  `invoice_provide` tinyint(1) NULL DEFAULT NULL COMMENT '是否提供发票',
  `refund_request_date` date NULL DEFAULT NULL COMMENT '返款申请日期',
  `refund_to_factory_date` date NULL DEFAULT NULL COMMENT '返款发工厂日期',
  `refund_date` date NULL DEFAULT NULL COMMENT '返款日期',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  `batch_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '批号',
  `production_date` date NULL DEFAULT NULL COMMENT '生产日期',
  `expiration_date` date NULL DEFAULT NULL COMMENT '有效期',
  `box_number` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '箱号',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 90 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '发货管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dl_delivery
-- ----------------------------
INSERT INTO `dl_delivery` VALUES (89, '黑龙江', '张三', '李四', '王五', '123123123123', '1', '2024-03-21', '5', '15g*6袋', 100, 9.00, 900.00, 9.00, 900.00, 5.00, 0.00, 0.00, 0.00, 1, NULL, NULL, NULL, '', '', NULL, NULL, '');

-- ----------------------------
-- Table structure for dl_material
-- ----------------------------
DROP TABLE IF EXISTS `dl_material`;
CREATE TABLE `dl_material`  (
  `id` int NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '物料名称',
  `spec` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '规格',
  `unit_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '单价',
  `base_price` decimal(10, 2) NULL DEFAULT NULL COMMENT '底价',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 6 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '物料管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of dl_material
-- ----------------------------
INSERT INTO `dl_material` VALUES (1, '藿杞补肾颗粒', '8g*18袋', 36.00, 36.00);
INSERT INTO `dl_material` VALUES (2, '爱维心口服液', '10ml*6支', 78.20, 19.00);
INSERT INTO `dl_material` VALUES (3, '爱维心口服液', '10ml*8支', 25.00, 25.00);
INSERT INTO `dl_material` VALUES (4, '乳酸菌素片', '8g*18袋', 5.50, 5.50);
INSERT INTO `dl_material` VALUES (5, '肾石通冲剂', '36片', 9.00, 9.00);

-- ----------------------------
-- Table structure for gen_table
-- ----------------------------
DROP TABLE IF EXISTS `gen_table`;
CREATE TABLE `gen_table`  (
  `table_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作 sub主子表操作）',
  `package_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table
-- ----------------------------
INSERT INTO `gen_table` VALUES (1, 'dl_material', '物料管理', '', NULL, 'DlMaterial', 'crud', 'com.lsy.erp', 'erp', 'material', '物料管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"1\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"系统管理\",\"treeCode\":\"\"}', 'admin', '2024-03-19 14:02:18', '', '2024-03-19 14:09:35', '');
INSERT INTO `gen_table` VALUES (2, 'dl_delivery', '发货管理', '', NULL, 'DlDelivery', 'crud', 'com.lsy.erp.delivery', 'erp', 'delivery', '发货管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"ERP管理\",\"treeCode\":\"\"}', 'admin', '2024-03-19 15:34:29', '', '2024-03-19 15:37:10', '');
INSERT INTO `gen_table` VALUES (3, 'dl_customer', '客户管理', '', NULL, 'DlCustomer', 'crud', 'com.lsy.erp.customer', 'erp', 'customer', '客户管理', 'ruoyi', '0', '/', '{\"parentMenuId\":\"2006\",\"treeName\":\"\",\"treeParentCode\":\"\",\"parentMenuName\":\"ERP管理\",\"treeCode\":\"\"}', 'admin', '2024-03-21 08:39:47', '', '2024-03-21 08:41:21', '');

-- ----------------------------
-- Table structure for gen_table_column
-- ----------------------------
DROP TABLE IF EXISTS `gen_table_column`;
CREATE TABLE `gen_table_column`  (
  `column_id` bigint NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` bigint NULL DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `sort` int NULL DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 38 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '代码生成业务表字段' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of gen_table_column
-- ----------------------------
INSERT INTO `gen_table_column` VALUES (1, 1, 'id', '主键', 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-03-19 14:02:18', NULL, '2024-03-19 14:09:35');
INSERT INTO `gen_table_column` VALUES (2, 1, 'name', '物料名称', 'varchar(255)', 'String', 'name', '0', '0', NULL, '1', '1', '1', '1', 'LIKE', 'input', '', 2, 'admin', '2024-03-19 14:02:18', NULL, '2024-03-19 14:09:35');
INSERT INTO `gen_table_column` VALUES (3, 1, 'spec', '规格', 'varchar(255)', 'String', 'spec', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'select', 'm_spec', 3, 'admin', '2024-03-19 14:02:18', NULL, '2024-03-19 14:09:35');
INSERT INTO `gen_table_column` VALUES (4, 1, 'unit_price', '单价', 'decimal(10,2)', 'BigDecimal', 'unitPrice', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 4, 'admin', '2024-03-19 14:02:18', NULL, '2024-03-19 14:09:35');
INSERT INTO `gen_table_column` VALUES (5, 1, 'base_price', '底价', 'decimal(10,2)', 'BigDecimal', 'basePrice', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 5, 'admin', '2024-03-19 14:02:18', NULL, '2024-03-19 14:09:35');
INSERT INTO `gen_table_column` VALUES (6, 2, 'id', '主键', 'int', 'Long', 'id', '1', '1', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (7, 2, 'region', '省份', 'varchar(255)', 'String', 'region', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (8, 2, 'saler', '业务员', 'varchar(255)', 'String', 'saler', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (9, 2, 'agenter', '代理人', 'varchar(255)', 'String', 'agenter', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (10, 2, 'receiver', '收货人', 'varchar(255)', 'String', 'receiver', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 5, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (11, 2, 'tracking_number', '物流单号', 'varchar(255)', 'String', 'trackingNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 6, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (12, 2, 'customer', '客户名称', 'varchar(255)', 'String', 'customer', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 7, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (13, 2, 'payment_date', '付款日期', 'date', 'Date', 'paymentDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 8, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (14, 2, 'materail', '物料名称', 'varchar(255)', 'String', 'materail', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 9, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (15, 2, 'spec', '规格', 'varchar(255)', 'String', 'spec', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 10, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (16, 2, 'order_number', '订单数量', 'int', 'Long', 'orderNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 11, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (17, 2, 'order_unit_price', '订单单价', 'decimal(10,2)', 'BigDecimal', 'orderUnitPrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 12, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (18, 2, 'order_amount', '订单金额', 'decimal(10,2)', 'BigDecimal', 'orderAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 13, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (19, 2, 'base_price', '底价', 'decimal(10,2)', 'BigDecimal', 'basePrice', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 14, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (20, 2, 'base_amount', '底价金额', 'decimal(10,2)', 'BigDecimal', 'baseAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 15, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (21, 2, 'tax_rate', '税率', 'decimal(10,2)', 'BigDecimal', 'taxRate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 16, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (22, 2, 'tax_amount', '税金', 'decimal(10,2)', 'BigDecimal', 'taxAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 17, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (23, 2, 'diff_amount', '差额', 'decimal(10,2)', 'BigDecimal', 'diffAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 18, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (24, 2, 'refund_amount', '返款金额', 'decimal(10,2)', 'BigDecimal', 'refundAmount', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 19, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (25, 2, 'invoice_provide', '是否提供发票', 'tinyint(1)', 'Integer', 'invoiceProvide', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 20, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (26, 2, 'refund_request_date', '返款申请日期', 'date', 'Date', 'refundRequestDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 21, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (27, 2, 'refund_to_factory_date', '返款发工厂日期', 'date', 'Date', 'refundToFactoryDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 22, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (28, 2, 'refund_date', '返款日期', 'date', 'Date', 'refundDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 23, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (29, 2, 'remark', '备注', 'varchar(255)', 'String', 'remark', '0', '0', NULL, '1', '1', '1', NULL, 'EQ', 'input', '', 28, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (30, 2, 'batch_number', '批号', 'varchar(255)', 'String', 'batchNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 24, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (31, 2, 'production_date', '生产日期', 'date', 'Date', 'productionDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 25, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (32, 2, 'expiration_date', '有效期', 'date', 'Date', 'expirationDate', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'datetime', '', 26, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (33, 2, 'box_number', '箱号', 'varchar(255)', 'String', 'boxNumber', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 27, 'admin', '2024-03-19 15:34:29', NULL, '2024-03-19 15:37:10');
INSERT INTO `gen_table_column` VALUES (34, 3, 'id', '主键', 'int', 'Long', 'id', '1', '0', NULL, '1', NULL, NULL, NULL, 'EQ', 'input', '', 1, 'admin', '2024-03-21 08:39:47', NULL, '2024-03-21 08:41:21');
INSERT INTO `gen_table_column` VALUES (35, 3, 'agenter', '代理人', 'varchar(255)', 'String', 'agenter', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 2, 'admin', '2024-03-21 08:39:47', NULL, '2024-03-21 08:41:21');
INSERT INTO `gen_table_column` VALUES (36, 3, 'receiver', '收货人', 'varchar(255)', 'String', 'receiver', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 3, 'admin', '2024-03-21 08:39:47', NULL, '2024-03-21 08:41:21');
INSERT INTO `gen_table_column` VALUES (37, 3, 'company', '客户名称', 'varchar(255)', 'String', 'company', '0', '0', NULL, '1', '1', '1', '1', 'EQ', 'input', '', 4, 'admin', '2024-03-21 08:39:47', NULL, '2024-03-21 08:41:21');

-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_blob_triggers`;
CREATE TABLE `qrtz_blob_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob NULL COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Blob类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_calendars`;
CREATE TABLE `qrtz_calendars`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`, `calendar_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '日历信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_cron_triggers`;
CREATE TABLE `qrtz_cron_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = 'Cron类型的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_fired_triggers`;
CREATE TABLE `qrtz_fired_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint NOT NULL COMMENT '触发的时间',
  `sched_time` bigint NOT NULL COMMENT '定时器制定的时间',
  `priority` int NOT NULL COMMENT '优先级',
  `state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`, `entry_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '已触发的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_job_details`;
CREATE TABLE `qrtz_job_details`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '任务详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_locks`;
CREATE TABLE `qrtz_locks`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`, `lock_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '存储的悲观锁信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_locks
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;
CREATE TABLE `qrtz_paused_trigger_grps`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`, `trigger_group`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '暂停的触发器表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_scheduler_state`;
CREATE TABLE `qrtz_scheduler_state`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`, `instance_name`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '调度器状态表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simple_triggers`;
CREATE TABLE `qrtz_simple_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '简单触发器的信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_simprop_triggers`;
CREATE TABLE `qrtz_simprop_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int NULL DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint NULL DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13, 4) NULL DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '同步机制的行锁表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE IF EXISTS `qrtz_triggers`;
CREATE TABLE `qrtz_triggers`  (
  `sched_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint NULL DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint NULL DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int NULL DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '触发器的类型',
  `start_time` bigint NOT NULL COMMENT '开始时间',
  `end_time` bigint NULL DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint NULL DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob NULL COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`, `trigger_name`, `trigger_group`) USING BTREE,
  INDEX `sched_name`(`sched_name` ASC, `job_name` ASC, `job_group` ASC) USING BTREE,
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '触发器详细信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_config`;
CREATE TABLE `sys_config`  (
  `config_id` int NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '参数配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_config
-- ----------------------------
INSERT INTO `sys_config` VALUES (1, '主框架页-默认皮肤样式名称', 'sys.index.skinName', 'skin-blue', 'Y', 'admin', '2024-01-09 13:11:20', '', NULL, '蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow');
INSERT INTO `sys_config` VALUES (2, '用户管理-账号初始密码', 'sys.user.initPassword', '123456', 'Y', 'admin', '2024-01-09 13:11:20', '', NULL, '初始化密码 123456');
INSERT INTO `sys_config` VALUES (3, '主框架页-侧边栏主题', 'sys.index.sideTheme', 'theme-dark', 'Y', 'admin', '2024-01-09 13:11:20', '', NULL, '深黑主题theme-dark，浅色主题theme-light，深蓝主题theme-blue');
INSERT INTO `sys_config` VALUES (4, '账号自助-是否开启用户注册功能', 'sys.account.registerUser', 'false', 'Y', 'admin', '2024-01-09 13:11:20', '', NULL, '是否开启注册用户功能（true开启，false关闭）');
INSERT INTO `sys_config` VALUES (5, '用户管理-密码字符范围', 'sys.account.chrtype', '0', 'Y', 'admin', '2024-01-09 13:11:20', '', NULL, '默认任意字符范围，0任意（密码可以输入任意字符），1数字（密码只能为0-9数字），2英文字母（密码只能为a-z和A-Z字母），3字母和数字（密码必须包含字母，数字）,4字母数字和特殊字符（目前支持的特殊字符包括：~!@#$%^&*()-=_+）');
INSERT INTO `sys_config` VALUES (6, '用户管理-初始密码修改策略', 'sys.account.initPasswordModify', '1', 'Y', 'admin', '2024-01-09 13:11:20', '', NULL, '0：初始密码修改策略关闭，没有任何提示，1：提醒用户，如果未修改初始密码，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (7, '用户管理-账号密码更新周期', 'sys.account.passwordValidateDays', '0', 'Y', 'admin', '2024-01-09 13:11:20', '', NULL, '密码更新周期（填写数字，数据初始化值为0不限制，若修改必须为大于0小于365的正整数），如果超过这个周期登录系统时，则在登录时就会提醒修改密码对话框');
INSERT INTO `sys_config` VALUES (8, '主框架页-菜单导航显示风格', 'sys.index.menuStyle', 'default', 'Y', 'admin', '2024-01-09 13:11:20', '', NULL, '菜单导航显示风格（default为左侧导航菜单，topnav为顶部导航菜单）');
INSERT INTO `sys_config` VALUES (9, '主框架页-是否开启页脚', 'sys.index.footer', 'true', 'Y', 'admin', '2024-01-09 13:11:20', '', NULL, '是否开启底部页脚显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES (10, '主框架页-是否开启页签', 'sys.index.tagsView', 'true', 'Y', 'admin', '2024-01-09 13:11:20', '', NULL, '是否开启菜单多页签显示（true显示，false隐藏）');
INSERT INTO `sys_config` VALUES (11, '用户登录-黑名单列表', 'sys.login.blackIPList', '', 'Y', 'admin', '2024-01-09 13:11:20', '', NULL, '设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_dept`;
CREATE TABLE `sys_dept`  (
  `dept_id` bigint NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父部门id',
  `ancestors` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `leader` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '邮箱',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 200 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '部门表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
INSERT INTO `sys_dept` VALUES (100, 0, '0', '美君制药', 0, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-01-09 13:11:20', 'admin', '2024-03-19 15:56:25');
INSERT INTO `sys_dept` VALUES (101, 100, '0,100', '哈尔滨办事处', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-01-09 13:11:20', 'admin', '2024-03-19 15:56:44');
INSERT INTO `sys_dept` VALUES (102, 100, '0,100', '济南分公司', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-01-09 13:11:20', 'admin', '2024-03-19 15:56:55');
INSERT INTO `sys_dept` VALUES (103, 101, '0,100,101', '研发部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-01-09 13:11:20', '', NULL);
INSERT INTO `sys_dept` VALUES (104, 101, '0,100,101', '市场部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-01-09 13:11:20', '', NULL);
INSERT INTO `sys_dept` VALUES (105, 101, '0,100,101', '测试部门', 3, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-01-09 13:11:20', '', NULL);
INSERT INTO `sys_dept` VALUES (106, 101, '0,100,101', '财务部门', 4, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-01-09 13:11:20', '', NULL);
INSERT INTO `sys_dept` VALUES (107, 101, '0,100,101', '运维部门', 5, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-01-09 13:11:20', '', NULL);
INSERT INTO `sys_dept` VALUES (108, 102, '0,100,102', '市场部门', 1, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-01-09 13:11:20', '', NULL);
INSERT INTO `sys_dept` VALUES (109, 102, '0,100,102', '财务部门', 2, '若依', '15888888888', 'ry@qq.com', '0', '0', 'admin', '2024-01-09 13:11:20', '', NULL);

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_data`;
CREATE TABLE `sys_dict_data`  (
  `dict_code` bigint NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int NULL DEFAULT 0 COMMENT '字典排序',
  `dict_label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典数据表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
INSERT INTO `sys_dict_data` VALUES (1, 1, '男', '0', 'sys_user_sex', '', '', 'Y', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '性别男');
INSERT INTO `sys_dict_data` VALUES (2, 2, '女', '1', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '性别女');
INSERT INTO `sys_dict_data` VALUES (3, 3, '未知', '2', 'sys_user_sex', '', '', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '性别未知');
INSERT INTO `sys_dict_data` VALUES (4, 1, '显示', '0', 'sys_show_hide', '', 'primary', 'Y', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '显示菜单');
INSERT INTO `sys_dict_data` VALUES (5, 2, '隐藏', '1', 'sys_show_hide', '', 'danger', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '隐藏菜单');
INSERT INTO `sys_dict_data` VALUES (6, 1, '正常', '0', 'sys_normal_disable', '', 'primary', 'Y', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (7, 2, '停用', '1', 'sys_normal_disable', '', 'danger', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (8, 1, '正常', '0', 'sys_job_status', '', 'primary', 'Y', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (9, 2, '暂停', '1', 'sys_job_status', '', 'danger', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (10, 1, '默认', 'DEFAULT', 'sys_job_group', '', '', 'Y', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '默认分组');
INSERT INTO `sys_dict_data` VALUES (11, 2, '系统', 'SYSTEM', 'sys_job_group', '', '', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '系统分组');
INSERT INTO `sys_dict_data` VALUES (12, 1, '是', 'Y', 'sys_yes_no', '', 'primary', 'Y', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '系统默认是');
INSERT INTO `sys_dict_data` VALUES (13, 2, '否', 'N', 'sys_yes_no', '', 'danger', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '系统默认否');
INSERT INTO `sys_dict_data` VALUES (14, 1, '通知', '1', 'sys_notice_type', '', 'warning', 'Y', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '通知');
INSERT INTO `sys_dict_data` VALUES (15, 2, '公告', '2', 'sys_notice_type', '', 'success', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '公告');
INSERT INTO `sys_dict_data` VALUES (16, 1, '正常', '0', 'sys_notice_status', '', 'primary', 'Y', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (17, 2, '关闭', '1', 'sys_notice_status', '', 'danger', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '关闭状态');
INSERT INTO `sys_dict_data` VALUES (18, 99, '其他', '0', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '其他操作');
INSERT INTO `sys_dict_data` VALUES (19, 1, '新增', '1', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '新增操作');
INSERT INTO `sys_dict_data` VALUES (20, 2, '修改', '2', 'sys_oper_type', '', 'info', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '修改操作');
INSERT INTO `sys_dict_data` VALUES (21, 3, '删除', '3', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '删除操作');
INSERT INTO `sys_dict_data` VALUES (22, 4, '授权', '4', 'sys_oper_type', '', 'primary', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '授权操作');
INSERT INTO `sys_dict_data` VALUES (23, 5, '导出', '5', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '导出操作');
INSERT INTO `sys_dict_data` VALUES (24, 6, '导入', '6', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '导入操作');
INSERT INTO `sys_dict_data` VALUES (25, 7, '强退', '7', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '强退操作');
INSERT INTO `sys_dict_data` VALUES (26, 8, '生成代码', '8', 'sys_oper_type', '', 'warning', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '生成操作');
INSERT INTO `sys_dict_data` VALUES (27, 9, '清空数据', '9', 'sys_oper_type', '', 'danger', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '清空操作');
INSERT INTO `sys_dict_data` VALUES (28, 1, '成功', '0', 'sys_common_status', '', 'primary', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '正常状态');
INSERT INTO `sys_dict_data` VALUES (29, 2, '失败', '1', 'sys_common_status', '', 'danger', 'N', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '停用状态');
INSERT INTO `sys_dict_data` VALUES (107, 0, '不提供', 'false', 'invoice_provide', '', 'default', 'Y', '0', 'admin', '2024-03-20 11:17:16', 'admin', '2024-03-20 16:13:12', '');
INSERT INTO `sys_dict_data` VALUES (108, 1, '提供', 'true', 'invoice_provide', '', 'default', 'Y', '0', 'admin', '2024-03-20 11:17:26', 'admin', '2024-03-20 16:13:18', '');

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE IF EXISTS `sys_dict_type`;
CREATE TABLE `sys_dict_type`  (
  `dict_id` bigint NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '字典类型',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`) USING BTREE,
  UNIQUE INDEX `dict_type`(`dict_type` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 102 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '字典类型表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
INSERT INTO `sys_dict_type` VALUES (1, '用户性别', 'sys_user_sex', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '用户性别列表');
INSERT INTO `sys_dict_type` VALUES (2, '菜单状态', 'sys_show_hide', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '菜单状态列表');
INSERT INTO `sys_dict_type` VALUES (3, '系统开关', 'sys_normal_disable', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '系统开关列表');
INSERT INTO `sys_dict_type` VALUES (4, '任务状态', 'sys_job_status', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '任务状态列表');
INSERT INTO `sys_dict_type` VALUES (5, '任务分组', 'sys_job_group', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '任务分组列表');
INSERT INTO `sys_dict_type` VALUES (6, '系统是否', 'sys_yes_no', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '系统是否列表');
INSERT INTO `sys_dict_type` VALUES (7, '通知类型', 'sys_notice_type', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '通知类型列表');
INSERT INTO `sys_dict_type` VALUES (8, '通知状态', 'sys_notice_status', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '通知状态列表');
INSERT INTO `sys_dict_type` VALUES (9, '操作类型', 'sys_oper_type', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '操作类型列表');
INSERT INTO `sys_dict_type` VALUES (10, '系统状态', 'sys_common_status', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '登录状态列表');
INSERT INTO `sys_dict_type` VALUES (101, '发票提供', 'invoice_provide', '0', 'admin', '2024-03-20 11:16:58', '', NULL, NULL);

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE IF EXISTS `sys_job`;
CREATE TABLE `sys_job`  (
  `job_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`, `job_name`, `job_group`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job
-- ----------------------------
INSERT INTO `sys_job` VALUES (1, '系统默认（无参）', 'DEFAULT', 'ryTask.ryNoParams', '0/10 * * * * ?', '3', '1', '1', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_job` VALUES (2, '系统默认（有参）', 'DEFAULT', 'ryTask.ryParams(\'ry\')', '0/15 * * * * ?', '3', '1', '1', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_job` VALUES (3, '系统默认（多参）', 'DEFAULT', 'ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)', '0/20 * * * * ?', '3', '1', '1', 'admin', '2024-01-09 13:11:20', '', NULL, '');

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_job_log`;
CREATE TABLE `sys_job_log`  (
  `job_log_id` bigint NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '日志信息',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '异常信息',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '定时任务调度日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE IF EXISTS `sys_logininfor`;
CREATE TABLE `sys_logininfor`  (
  `info_id` bigint NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录账号',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '提示消息',
  `login_time` datetime NULL DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`) USING BTREE,
  INDEX `idx_sys_logininfor_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_logininfor_lt`(`login_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 184 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '系统访问记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
INSERT INTO `sys_logininfor` VALUES (1, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:32:27');
INSERT INTO `sys_logininfor` VALUES (2, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:33:37');
INSERT INTO `sys_logininfor` VALUES (3, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:36:01');
INSERT INTO `sys_logininfor` VALUES (4, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:39:16');
INSERT INTO `sys_logininfor` VALUES (5, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:40:10');
INSERT INTO `sys_logininfor` VALUES (6, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:40:45');
INSERT INTO `sys_logininfor` VALUES (7, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:41:33');
INSERT INTO `sys_logininfor` VALUES (8, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:42:13');
INSERT INTO `sys_logininfor` VALUES (9, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:42:42');
INSERT INTO `sys_logininfor` VALUES (10, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:44:32');
INSERT INTO `sys_logininfor` VALUES (11, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:45:13');
INSERT INTO `sys_logininfor` VALUES (12, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:47:10');
INSERT INTO `sys_logininfor` VALUES (13, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:47:52');
INSERT INTO `sys_logininfor` VALUES (14, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:48:35');
INSERT INTO `sys_logininfor` VALUES (15, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:49:21');
INSERT INTO `sys_logininfor` VALUES (16, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:51:15');
INSERT INTO `sys_logininfor` VALUES (17, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:52:03');
INSERT INTO `sys_logininfor` VALUES (18, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:52:44');
INSERT INTO `sys_logininfor` VALUES (19, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:55:49');
INSERT INTO `sys_logininfor` VALUES (20, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:56:43');
INSERT INTO `sys_logininfor` VALUES (21, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 09:57:57');
INSERT INTO `sys_logininfor` VALUES (22, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 10:01:33');
INSERT INTO `sys_logininfor` VALUES (23, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 10:07:32');
INSERT INTO `sys_logininfor` VALUES (24, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-03-20 10:13:21');
INSERT INTO `sys_logininfor` VALUES (25, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 10:13:24');
INSERT INTO `sys_logininfor` VALUES (26, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 10:17:35');
INSERT INTO `sys_logininfor` VALUES (27, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 10:18:57');
INSERT INTO `sys_logininfor` VALUES (28, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 10:22:18');
INSERT INTO `sys_logininfor` VALUES (29, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 10:28:50');
INSERT INTO `sys_logininfor` VALUES (30, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 10:30:08');
INSERT INTO `sys_logininfor` VALUES (31, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 10:31:31');
INSERT INTO `sys_logininfor` VALUES (32, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 10:36:37');
INSERT INTO `sys_logininfor` VALUES (33, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 10:53:36');
INSERT INTO `sys_logininfor` VALUES (34, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 10:55:20');
INSERT INTO `sys_logininfor` VALUES (35, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 10:56:48');
INSERT INTO `sys_logininfor` VALUES (36, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 10:58:54');
INSERT INTO `sys_logininfor` VALUES (37, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:00:31');
INSERT INTO `sys_logininfor` VALUES (38, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:01:56');
INSERT INTO `sys_logininfor` VALUES (39, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:03:17');
INSERT INTO `sys_logininfor` VALUES (40, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:04:02');
INSERT INTO `sys_logininfor` VALUES (41, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-03-20 11:05:02');
INSERT INTO `sys_logininfor` VALUES (42, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:05:05');
INSERT INTO `sys_logininfor` VALUES (43, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:06:49');
INSERT INTO `sys_logininfor` VALUES (44, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:10:56');
INSERT INTO `sys_logininfor` VALUES (45, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:15:15');
INSERT INTO `sys_logininfor` VALUES (46, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-03-20 11:18:23');
INSERT INTO `sys_logininfor` VALUES (47, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:18:26');
INSERT INTO `sys_logininfor` VALUES (48, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:26:22');
INSERT INTO `sys_logininfor` VALUES (49, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-03-20 11:29:58');
INSERT INTO `sys_logininfor` VALUES (50, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:30:00');
INSERT INTO `sys_logininfor` VALUES (51, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:32:53');
INSERT INTO `sys_logininfor` VALUES (52, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:33:48');
INSERT INTO `sys_logininfor` VALUES (53, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:48:06');
INSERT INTO `sys_logininfor` VALUES (54, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:48:49');
INSERT INTO `sys_logininfor` VALUES (55, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:51:39');
INSERT INTO `sys_logininfor` VALUES (56, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:52:49');
INSERT INTO `sys_logininfor` VALUES (57, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:55:05');
INSERT INTO `sys_logininfor` VALUES (58, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 11:59:25');
INSERT INTO `sys_logininfor` VALUES (59, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 12:01:15');
INSERT INTO `sys_logininfor` VALUES (60, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 12:02:45');
INSERT INTO `sys_logininfor` VALUES (61, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 12:03:25');
INSERT INTO `sys_logininfor` VALUES (62, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 12:05:37');
INSERT INTO `sys_logininfor` VALUES (63, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-03-20 13:34:12');
INSERT INTO `sys_logininfor` VALUES (64, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-03-20 13:46:08');
INSERT INTO `sys_logininfor` VALUES (65, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 13:46:12');
INSERT INTO `sys_logininfor` VALUES (66, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 13:49:53');
INSERT INTO `sys_logininfor` VALUES (67, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:01:06');
INSERT INTO `sys_logininfor` VALUES (68, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:03:11');
INSERT INTO `sys_logininfor` VALUES (69, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:07:42');
INSERT INTO `sys_logininfor` VALUES (70, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-03-20 14:10:30');
INSERT INTO `sys_logininfor` VALUES (71, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:10:33');
INSERT INTO `sys_logininfor` VALUES (72, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:12:31');
INSERT INTO `sys_logininfor` VALUES (73, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:17:16');
INSERT INTO `sys_logininfor` VALUES (74, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:29:01');
INSERT INTO `sys_logininfor` VALUES (75, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:30:22');
INSERT INTO `sys_logininfor` VALUES (76, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:32:13');
INSERT INTO `sys_logininfor` VALUES (77, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:33:09');
INSERT INTO `sys_logininfor` VALUES (78, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:33:56');
INSERT INTO `sys_logininfor` VALUES (79, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:36:07');
INSERT INTO `sys_logininfor` VALUES (80, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-03-20 14:37:17');
INSERT INTO `sys_logininfor` VALUES (81, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:37:20');
INSERT INTO `sys_logininfor` VALUES (82, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:39:35');
INSERT INTO `sys_logininfor` VALUES (83, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:40:16');
INSERT INTO `sys_logininfor` VALUES (84, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:42:59');
INSERT INTO `sys_logininfor` VALUES (85, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:44:23');
INSERT INTO `sys_logininfor` VALUES (86, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:45:13');
INSERT INTO `sys_logininfor` VALUES (87, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:46:44');
INSERT INTO `sys_logininfor` VALUES (88, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 14:59:27');
INSERT INTO `sys_logininfor` VALUES (89, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:01:10');
INSERT INTO `sys_logininfor` VALUES (90, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-03-20 15:02:17');
INSERT INTO `sys_logininfor` VALUES (91, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:02:19');
INSERT INTO `sys_logininfor` VALUES (92, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:03:42');
INSERT INTO `sys_logininfor` VALUES (93, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:04:20');
INSERT INTO `sys_logininfor` VALUES (94, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:05:17');
INSERT INTO `sys_logininfor` VALUES (95, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:06:24');
INSERT INTO `sys_logininfor` VALUES (96, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:10:59');
INSERT INTO `sys_logininfor` VALUES (97, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:12:10');
INSERT INTO `sys_logininfor` VALUES (98, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:16:37');
INSERT INTO `sys_logininfor` VALUES (99, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:17:35');
INSERT INTO `sys_logininfor` VALUES (100, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:18:25');
INSERT INTO `sys_logininfor` VALUES (101, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:19:27');
INSERT INTO `sys_logininfor` VALUES (102, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:25:44');
INSERT INTO `sys_logininfor` VALUES (103, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:27:37');
INSERT INTO `sys_logininfor` VALUES (104, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:29:31');
INSERT INTO `sys_logininfor` VALUES (105, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-03-20 15:30:32');
INSERT INTO `sys_logininfor` VALUES (106, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:30:35');
INSERT INTO `sys_logininfor` VALUES (107, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:31:47');
INSERT INTO `sys_logininfor` VALUES (108, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:32:30');
INSERT INTO `sys_logininfor` VALUES (109, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:33:08');
INSERT INTO `sys_logininfor` VALUES (110, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-03-20 15:35:42');
INSERT INTO `sys_logininfor` VALUES (111, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:35:45');
INSERT INTO `sys_logininfor` VALUES (112, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:39:35');
INSERT INTO `sys_logininfor` VALUES (113, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:41:05');
INSERT INTO `sys_logininfor` VALUES (114, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-03-20 15:42:28');
INSERT INTO `sys_logininfor` VALUES (115, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:42:31');
INSERT INTO `sys_logininfor` VALUES (116, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:43:33');
INSERT INTO `sys_logininfor` VALUES (117, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-03-20 15:45:43');
INSERT INTO `sys_logininfor` VALUES (118, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:45:46');
INSERT INTO `sys_logininfor` VALUES (119, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:46:40');
INSERT INTO `sys_logininfor` VALUES (120, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:47:43');
INSERT INTO `sys_logininfor` VALUES (121, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:48:42');
INSERT INTO `sys_logininfor` VALUES (122, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:50:02');
INSERT INTO `sys_logininfor` VALUES (123, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:51:29');
INSERT INTO `sys_logininfor` VALUES (124, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:52:33');
INSERT INTO `sys_logininfor` VALUES (125, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 15:55:21');
INSERT INTO `sys_logininfor` VALUES (126, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 16:00:19');
INSERT INTO `sys_logininfor` VALUES (127, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 16:00:51');
INSERT INTO `sys_logininfor` VALUES (128, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 16:02:35');
INSERT INTO `sys_logininfor` VALUES (129, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 16:03:24');
INSERT INTO `sys_logininfor` VALUES (130, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 16:04:56');
INSERT INTO `sys_logininfor` VALUES (131, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 16:06:49');
INSERT INTO `sys_logininfor` VALUES (132, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 16:07:53');
INSERT INTO `sys_logininfor` VALUES (133, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 16:08:48');
INSERT INTO `sys_logininfor` VALUES (134, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 16:12:34');
INSERT INTO `sys_logininfor` VALUES (135, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 16:16:20');
INSERT INTO `sys_logininfor` VALUES (136, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-03-20 17:04:06');
INSERT INTO `sys_logininfor` VALUES (137, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 17:04:09');
INSERT INTO `sys_logininfor` VALUES (138, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 17:08:39');
INSERT INTO `sys_logininfor` VALUES (139, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 17:10:31');
INSERT INTO `sys_logininfor` VALUES (140, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 17:12:06');
INSERT INTO `sys_logininfor` VALUES (141, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 17:15:15');
INSERT INTO `sys_logininfor` VALUES (142, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 17:17:02');
INSERT INTO `sys_logininfor` VALUES (143, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 17:18:52');
INSERT INTO `sys_logininfor` VALUES (144, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 17:19:57');
INSERT INTO `sys_logininfor` VALUES (145, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-20 17:24:42');
INSERT INTO `sys_logininfor` VALUES (146, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 08:34:56');
INSERT INTO `sys_logininfor` VALUES (147, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 08:44:35');
INSERT INTO `sys_logininfor` VALUES (148, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 08:58:23');
INSERT INTO `sys_logininfor` VALUES (149, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:01:45');
INSERT INTO `sys_logininfor` VALUES (150, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:06:54');
INSERT INTO `sys_logininfor` VALUES (151, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:08:07');
INSERT INTO `sys_logininfor` VALUES (152, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:09:05');
INSERT INTO `sys_logininfor` VALUES (153, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:10:00');
INSERT INTO `sys_logininfor` VALUES (154, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:12:04');
INSERT INTO `sys_logininfor` VALUES (155, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:15:07');
INSERT INTO `sys_logininfor` VALUES (156, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:21:52');
INSERT INTO `sys_logininfor` VALUES (157, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:27:40');
INSERT INTO `sys_logininfor` VALUES (158, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:28:45');
INSERT INTO `sys_logininfor` VALUES (159, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:30:29');
INSERT INTO `sys_logininfor` VALUES (160, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:31:28');
INSERT INTO `sys_logininfor` VALUES (161, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:32:28');
INSERT INTO `sys_logininfor` VALUES (162, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:39:46');
INSERT INTO `sys_logininfor` VALUES (163, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:43:54');
INSERT INTO `sys_logininfor` VALUES (164, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:52:14');
INSERT INTO `sys_logininfor` VALUES (165, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 09:56:21');
INSERT INTO `sys_logininfor` VALUES (166, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '1', '密码输入错误1次', '2024-03-21 10:00:54');
INSERT INTO `sys_logininfor` VALUES (167, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:00:57');
INSERT INTO `sys_logininfor` VALUES (168, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:04:23');
INSERT INTO `sys_logininfor` VALUES (169, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:05:48');
INSERT INTO `sys_logininfor` VALUES (170, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:09:41');
INSERT INTO `sys_logininfor` VALUES (171, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:10:30');
INSERT INTO `sys_logininfor` VALUES (172, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:11:45');
INSERT INTO `sys_logininfor` VALUES (173, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:15:18');
INSERT INTO `sys_logininfor` VALUES (174, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:17:15');
INSERT INTO `sys_logininfor` VALUES (175, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:19:35');
INSERT INTO `sys_logininfor` VALUES (176, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:21:32');
INSERT INTO `sys_logininfor` VALUES (177, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:23:45');
INSERT INTO `sys_logininfor` VALUES (178, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:32:50');
INSERT INTO `sys_logininfor` VALUES (179, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:40:49');
INSERT INTO `sys_logininfor` VALUES (180, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:43:19');
INSERT INTO `sys_logininfor` VALUES (181, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:45:56');
INSERT INTO `sys_logininfor` VALUES (182, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:47:19');
INSERT INTO `sys_logininfor` VALUES (183, 'admin', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', '0', '登录成功', '2024-03-21 10:50:24');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` bigint NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '菜单名称',
  `parent_id` bigint NULL DEFAULT 0 COMMENT '父菜单ID',
  `order_num` int NULL DEFAULT 0 COMMENT '显示顺序',
  `url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '请求地址',
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '打开方式（menuItem页签 menuBlank新窗口）',
  `menu_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `is_refresh` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '是否刷新（0刷新 1不刷新）',
  `perms` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2019 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '菜单权限表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES (1, '系统管理', 0, 1, '#', '', 'M', '0', '1', '', 'fa fa-gear', 'admin', '2024-01-09 13:11:20', '', NULL, '系统管理目录');
INSERT INTO `sys_menu` VALUES (2, '系统监控', 0, 2, '#', '', 'M', '0', '1', '', 'fa fa-video-camera', 'admin', '2024-01-09 13:11:20', '', NULL, '系统监控目录');
INSERT INTO `sys_menu` VALUES (3, '系统工具', 0, 3, '#', '', 'M', '0', '1', '', 'fa fa-bars', 'admin', '2024-01-09 13:11:20', '', NULL, '系统工具目录');
INSERT INTO `sys_menu` VALUES (100, '用户管理', 1, 1, '/system/user', '', 'C', '0', '1', 'system:user:view', 'fa fa-user-o', 'admin', '2024-01-09 13:11:20', '', NULL, '用户管理菜单');
INSERT INTO `sys_menu` VALUES (101, '角色管理', 1, 2, '/system/role', '', 'C', '0', '1', 'system:role:view', 'fa fa-user-secret', 'admin', '2024-01-09 13:11:20', '', NULL, '角色管理菜单');
INSERT INTO `sys_menu` VALUES (102, '菜单管理', 1, 3, '/system/menu', '', 'C', '0', '1', 'system:menu:view', 'fa fa-th-list', 'admin', '2024-01-09 13:11:20', '', NULL, '菜单管理菜单');
INSERT INTO `sys_menu` VALUES (103, '部门管理', 1, 4, '/system/dept', '', 'C', '0', '1', 'system:dept:view', 'fa fa-outdent', 'admin', '2024-01-09 13:11:20', '', NULL, '部门管理菜单');
INSERT INTO `sys_menu` VALUES (104, '岗位管理', 1, 5, '/system/post', '', 'C', '0', '1', 'system:post:view', 'fa fa-address-card-o', 'admin', '2024-01-09 13:11:20', '', NULL, '岗位管理菜单');
INSERT INTO `sys_menu` VALUES (105, '字典管理', 1, 6, '/system/dict', '', 'C', '0', '1', 'system:dict:view', 'fa fa-bookmark-o', 'admin', '2024-01-09 13:11:20', '', NULL, '字典管理菜单');
INSERT INTO `sys_menu` VALUES (106, '参数设置', 1, 7, '/system/config', '', 'C', '0', '1', 'system:config:view', 'fa fa-sun-o', 'admin', '2024-01-09 13:11:20', '', NULL, '参数设置菜单');
INSERT INTO `sys_menu` VALUES (107, '通知公告', 1, 8, '/system/notice', '', 'C', '0', '1', 'system:notice:view', 'fa fa-bullhorn', 'admin', '2024-01-09 13:11:20', '', NULL, '通知公告菜单');
INSERT INTO `sys_menu` VALUES (108, '日志管理', 1, 9, '#', '', 'M', '0', '1', '', 'fa fa-pencil-square-o', 'admin', '2024-01-09 13:11:20', '', NULL, '日志管理菜单');
INSERT INTO `sys_menu` VALUES (109, '在线用户', 2, 1, '/monitor/online', '', 'C', '0', '1', 'monitor:online:view', 'fa fa-user-circle', 'admin', '2024-01-09 13:11:20', '', NULL, '在线用户菜单');
INSERT INTO `sys_menu` VALUES (110, '定时任务', 2, 2, '/monitor/job', '', 'C', '0', '1', 'monitor:job:view', 'fa fa-tasks', 'admin', '2024-01-09 13:11:20', '', NULL, '定时任务菜单');
INSERT INTO `sys_menu` VALUES (111, '数据监控', 2, 3, '/monitor/data', '', 'C', '0', '1', 'monitor:data:view', 'fa fa-bug', 'admin', '2024-01-09 13:11:20', '', NULL, '数据监控菜单');
INSERT INTO `sys_menu` VALUES (112, '服务监控', 2, 4, '/monitor/server', '', 'C', '0', '1', 'monitor:server:view', 'fa fa-server', 'admin', '2024-01-09 13:11:20', '', NULL, '服务监控菜单');
INSERT INTO `sys_menu` VALUES (113, '缓存监控', 2, 5, '/monitor/cache', '', 'C', '0', '1', 'monitor:cache:view', 'fa fa-cube', 'admin', '2024-01-09 13:11:20', '', NULL, '缓存监控菜单');
INSERT INTO `sys_menu` VALUES (114, '表单构建', 3, 1, '/tool/build', '', 'C', '0', '1', 'tool:build:view', 'fa fa-wpforms', 'admin', '2024-01-09 13:11:20', '', NULL, '表单构建菜单');
INSERT INTO `sys_menu` VALUES (115, '代码生成', 3, 2, '/tool/gen', '', 'C', '0', '1', 'tool:gen:view', 'fa fa-code', 'admin', '2024-01-09 13:11:20', '', NULL, '代码生成菜单');
INSERT INTO `sys_menu` VALUES (116, '系统接口', 3, 3, '/tool/swagger', '', 'C', '0', '1', 'tool:swagger:view', 'fa fa-gg', 'admin', '2024-01-09 13:11:20', '', NULL, '系统接口菜单');
INSERT INTO `sys_menu` VALUES (500, '操作日志', 108, 1, '/monitor/operlog', '', 'C', '0', '1', 'monitor:operlog:view', 'fa fa-address-book', 'admin', '2024-01-09 13:11:20', '', NULL, '操作日志菜单');
INSERT INTO `sys_menu` VALUES (501, '登录日志', 108, 2, '/monitor/logininfor', '', 'C', '0', '1', 'monitor:logininfor:view', 'fa fa-file-image-o', 'admin', '2024-01-09 13:11:20', '', NULL, '登录日志菜单');
INSERT INTO `sys_menu` VALUES (1000, '用户查询', 100, 1, '#', '', 'F', '0', '1', 'system:user:list', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1001, '用户新增', 100, 2, '#', '', 'F', '0', '1', 'system:user:add', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1002, '用户修改', 100, 3, '#', '', 'F', '0', '1', 'system:user:edit', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1003, '用户删除', 100, 4, '#', '', 'F', '0', '1', 'system:user:remove', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1004, '用户导出', 100, 5, '#', '', 'F', '0', '1', 'system:user:export', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1005, '用户导入', 100, 6, '#', '', 'F', '0', '1', 'system:user:import', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1006, '重置密码', 100, 7, '#', '', 'F', '0', '1', 'system:user:resetPwd', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1007, '角色查询', 101, 1, '#', '', 'F', '0', '1', 'system:role:list', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1008, '角色新增', 101, 2, '#', '', 'F', '0', '1', 'system:role:add', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1009, '角色修改', 101, 3, '#', '', 'F', '0', '1', 'system:role:edit', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1010, '角色删除', 101, 4, '#', '', 'F', '0', '1', 'system:role:remove', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1011, '角色导出', 101, 5, '#', '', 'F', '0', '1', 'system:role:export', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1012, '菜单查询', 102, 1, '#', '', 'F', '0', '1', 'system:menu:list', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1013, '菜单新增', 102, 2, '#', '', 'F', '0', '1', 'system:menu:add', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1014, '菜单修改', 102, 3, '#', '', 'F', '0', '1', 'system:menu:edit', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1015, '菜单删除', 102, 4, '#', '', 'F', '0', '1', 'system:menu:remove', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1016, '部门查询', 103, 1, '#', '', 'F', '0', '1', 'system:dept:list', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1017, '部门新增', 103, 2, '#', '', 'F', '0', '1', 'system:dept:add', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1018, '部门修改', 103, 3, '#', '', 'F', '0', '1', 'system:dept:edit', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1019, '部门删除', 103, 4, '#', '', 'F', '0', '1', 'system:dept:remove', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1020, '岗位查询', 104, 1, '#', '', 'F', '0', '1', 'system:post:list', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1021, '岗位新增', 104, 2, '#', '', 'F', '0', '1', 'system:post:add', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1022, '岗位修改', 104, 3, '#', '', 'F', '0', '1', 'system:post:edit', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1023, '岗位删除', 104, 4, '#', '', 'F', '0', '1', 'system:post:remove', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1024, '岗位导出', 104, 5, '#', '', 'F', '0', '1', 'system:post:export', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1025, '字典查询', 105, 1, '#', '', 'F', '0', '1', 'system:dict:list', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1026, '字典新增', 105, 2, '#', '', 'F', '0', '1', 'system:dict:add', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1027, '字典修改', 105, 3, '#', '', 'F', '0', '1', 'system:dict:edit', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1028, '字典删除', 105, 4, '#', '', 'F', '0', '1', 'system:dict:remove', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1029, '字典导出', 105, 5, '#', '', 'F', '0', '1', 'system:dict:export', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1030, '参数查询', 106, 1, '#', '', 'F', '0', '1', 'system:config:list', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1031, '参数新增', 106, 2, '#', '', 'F', '0', '1', 'system:config:add', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1032, '参数修改', 106, 3, '#', '', 'F', '0', '1', 'system:config:edit', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1033, '参数删除', 106, 4, '#', '', 'F', '0', '1', 'system:config:remove', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1034, '参数导出', 106, 5, '#', '', 'F', '0', '1', 'system:config:export', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1035, '公告查询', 107, 1, '#', '', 'F', '0', '1', 'system:notice:list', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1036, '公告新增', 107, 2, '#', '', 'F', '0', '1', 'system:notice:add', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1037, '公告修改', 107, 3, '#', '', 'F', '0', '1', 'system:notice:edit', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1038, '公告删除', 107, 4, '#', '', 'F', '0', '1', 'system:notice:remove', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1039, '操作查询', 500, 1, '#', '', 'F', '0', '1', 'monitor:operlog:list', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1040, '操作删除', 500, 2, '#', '', 'F', '0', '1', 'monitor:operlog:remove', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1041, '详细信息', 500, 3, '#', '', 'F', '0', '1', 'monitor:operlog:detail', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1042, '日志导出', 500, 4, '#', '', 'F', '0', '1', 'monitor:operlog:export', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1043, '登录查询', 501, 1, '#', '', 'F', '0', '1', 'monitor:logininfor:list', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1044, '登录删除', 501, 2, '#', '', 'F', '0', '1', 'monitor:logininfor:remove', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1045, '日志导出', 501, 3, '#', '', 'F', '0', '1', 'monitor:logininfor:export', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1046, '账户解锁', 501, 4, '#', '', 'F', '0', '1', 'monitor:logininfor:unlock', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1047, '在线查询', 109, 1, '#', '', 'F', '0', '1', 'monitor:online:list', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1048, '批量强退', 109, 2, '#', '', 'F', '0', '1', 'monitor:online:batchForceLogout', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1049, '单条强退', 109, 3, '#', '', 'F', '0', '1', 'monitor:online:forceLogout', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1050, '任务查询', 110, 1, '#', '', 'F', '0', '1', 'monitor:job:list', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1051, '任务新增', 110, 2, '#', '', 'F', '0', '1', 'monitor:job:add', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1052, '任务修改', 110, 3, '#', '', 'F', '0', '1', 'monitor:job:edit', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1053, '任务删除', 110, 4, '#', '', 'F', '0', '1', 'monitor:job:remove', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1054, '状态修改', 110, 5, '#', '', 'F', '0', '1', 'monitor:job:changeStatus', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1055, '任务详细', 110, 6, '#', '', 'F', '0', '1', 'monitor:job:detail', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1056, '任务导出', 110, 7, '#', '', 'F', '0', '1', 'monitor:job:export', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1057, '生成查询', 115, 1, '#', '', 'F', '0', '1', 'tool:gen:list', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1058, '生成修改', 115, 2, '#', '', 'F', '0', '1', 'tool:gen:edit', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1059, '生成删除', 115, 3, '#', '', 'F', '0', '1', 'tool:gen:remove', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1060, '预览代码', 115, 4, '#', '', 'F', '0', '1', 'tool:gen:preview', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (1061, '生成代码', 115, 5, '#', '', 'F', '0', '1', 'tool:gen:code', '#', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2000, '物料管理', 2006, 1, '/erp/material', 'menuItem', 'C', '0', '1', 'erp:material:view', 'fa fa-database', 'admin', '2024-03-19 14:11:39', 'admin', '2024-03-19 14:43:40', '物料管理菜单');
INSERT INTO `sys_menu` VALUES (2001, '物料管理查询', 2000, 1, '#', '', 'F', '0', '1', 'erp:material:list', '#', 'admin', '2024-03-19 14:11:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2002, '物料管理新增', 2000, 2, '#', '', 'F', '0', '1', 'erp:material:add', '#', 'admin', '2024-03-19 14:11:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2003, '物料管理修改', 2000, 3, '#', '', 'F', '0', '1', 'erp:material:edit', '#', 'admin', '2024-03-19 14:11:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2004, '物料管理删除', 2000, 4, '#', '', 'F', '0', '1', 'erp:material:remove', '#', 'admin', '2024-03-19 14:11:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2005, '物料管理导出', 2000, 5, '#', '', 'F', '0', '1', 'erp:material:export', '#', 'admin', '2024-03-19 14:11:39', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2006, 'ERP管理', 0, 4, '#', 'menuItem', 'M', '0', '1', NULL, 'fa fa-university', 'admin', '2024-03-19 14:35:15', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2007, '发货管理', 2006, 1, '/erp/delivery', 'menuItem', 'C', '0', '1', 'erp:delivery:view', 'fa fa-automobile', 'admin', '2024-03-19 15:37:38', 'admin', '2024-03-20 09:26:17', '发货管理菜单');
INSERT INTO `sys_menu` VALUES (2008, '发货管理查询', 2007, 1, '#', '', 'F', '0', '1', 'erp:delivery:list', '#', 'admin', '2024-03-19 15:37:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2009, '发货管理新增', 2007, 2, '#', '', 'F', '0', '1', 'erp:delivery:add', '#', 'admin', '2024-03-19 15:37:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2010, '发货管理修改', 2007, 3, '#', '', 'F', '0', '1', 'erp:delivery:edit', '#', 'admin', '2024-03-19 15:37:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2011, '发货管理删除', 2007, 4, '#', '', 'F', '0', '1', 'erp:delivery:remove', '#', 'admin', '2024-03-19 15:37:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2012, '发货管理导出', 2007, 5, '#', '', 'F', '0', '1', 'erp:delivery:export', '#', 'admin', '2024-03-19 15:37:38', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2013, '客户管理', 2006, 1, '/erp/customer', 'menuItem', 'C', '0', '1', 'erp:customer:view', 'fa fa-user-secret', 'admin', '2024-03-21 08:41:52', 'admin', '2024-03-21 08:45:06', '客户管理菜单');
INSERT INTO `sys_menu` VALUES (2014, '客户管理查询', 2013, 1, '#', '', 'F', '0', '1', 'erp:customer:list', '#', 'admin', '2024-03-21 08:41:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2015, '客户管理新增', 2013, 2, '#', '', 'F', '0', '1', 'erp:customer:add', '#', 'admin', '2024-03-21 08:41:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2016, '客户管理修改', 2013, 3, '#', '', 'F', '0', '1', 'erp:customer:edit', '#', 'admin', '2024-03-21 08:41:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2017, '客户管理删除', 2013, 4, '#', '', 'F', '0', '1', 'erp:customer:remove', '#', 'admin', '2024-03-21 08:41:52', '', NULL, '');
INSERT INTO `sys_menu` VALUES (2018, '客户管理导出', 2013, 5, '#', '', 'F', '0', '1', 'erp:customer:export', '#', 'admin', '2024-03-21 08:41:52', '', NULL, '');

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE IF EXISTS `sys_notice`;
CREATE TABLE `sys_notice`  (
  `notice_id` int NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告标题',
  `notice_type` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '公告内容',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 10 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '通知公告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
INSERT INTO `sys_notice` VALUES (1, '温馨提醒：2018-07-01 若依新版本发布啦', '2', '新版本内容', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '管理员');
INSERT INTO `sys_notice` VALUES (2, '维护通知：2018-07-01 若依系统凌晨维护', '1', '维护内容', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '管理员');

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE IF EXISTS `sys_oper_log`;
CREATE TABLE `sys_oper_log`  (
  `oper_id` bigint NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '模块标题',
  `business_type` int NULL DEFAULT 0 COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求方式',
  `operator_type` int NULL DEFAULT 0 COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '返回参数',
  `status` int NULL DEFAULT 0 COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime NULL DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint NULL DEFAULT 0 COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`) USING BTREE,
  INDEX `idx_sys_oper_log_bt`(`business_type` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_s`(`status` ASC) USING BTREE,
  INDEX `idx_sys_oper_log_ot`(`oper_time` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 147 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '操作日志记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
INSERT INTO `sys_oper_log` VALUES (1, '操作日志', 9, 'com.lsy.web.controller.monitor.SysOperlogController.clean()', 'POST', 1, 'admin', '研发部门', '/monitor/operlog/clean', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 09:30:06', 25);
INSERT INTO `sys_oper_log` VALUES (2, '登录日志', 9, 'com.lsy.web.controller.monitor.SysLogininforController.clean()', 'POST', 1, 'admin', '研发部门', '/monitor/logininfor/clean', '127.0.0.1', '内网IP', '', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 09:30:10', 30);
INSERT INTO `sys_oper_log` VALUES (3, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:11:21', 69);
INSERT INTO `sys_oper_log` VALUES (4, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:11:36', 15);
INSERT INTO `sys_oper_log` VALUES (5, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:13:07', 14162);
INSERT INTO `sys_oper_log` VALUES (6, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"10,11,12\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:13:11', 16);
INSERT INTO `sys_oper_log` VALUES (7, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:15:23', 78);
INSERT INTO `sys_oper_log` VALUES (8, '字典类型', 1, 'com.lsy.web.controller.system.SysDictTypeController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/add', '127.0.0.1', '内网IP', '{\"dictName\":[\"发票提供\"],\"dictType\":[\"invoice_provide\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:16:58', 16);
INSERT INTO `sys_oper_log` VALUES (9, '字典数据', 1, 'com.lsy.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"不提供\"],\"dictValue\":[\"0\"],\"dictType\":[\"invoice_provide\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:17:16', 27);
INSERT INTO `sys_oper_log` VALUES (10, '字典数据', 1, 'com.lsy.web.controller.system.SysDictDataController.addSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/add', '127.0.0.1', '内网IP', '{\"dictLabel\":[\"提供\"],\"dictValue\":[\"1\"],\"dictType\":[\"invoice_provide\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:17:26', 17);
INSERT INTO `sys_oper_log` VALUES (11, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:18:43', 69);
INSERT INTO `sys_oper_log` VALUES (12, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"14\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:26:32', 70);
INSERT INTO `sys_oper_log` VALUES (13, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:33:00', 67);
INSERT INTO `sys_oper_log` VALUES (14, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:33:07', 13);
INSERT INTO `sys_oper_log` VALUES (15, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"9,13,15,16\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:33:54', 61);
INSERT INTO `sys_oper_log` VALUES (16, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:33:56', 11);
INSERT INTO `sys_oper_log` VALUES (17, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:34:03', 7);
INSERT INTO `sys_oper_log` VALUES (18, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:34:22', 15);
INSERT INTO `sys_oper_log` VALUES (19, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:34:25', 14);
INSERT INTO `sys_oper_log` VALUES (20, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"17,18,19,20\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:34:41', 15);
INSERT INTO `sys_oper_log` VALUES (21, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:35:22', 9845);
INSERT INTO `sys_oper_log` VALUES (22, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:48:19', 78);
INSERT INTO `sys_oper_log` VALUES (23, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:48:55', 67);
INSERT INTO `sys_oper_log` VALUES (24, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:48:59', 7);
INSERT INTO `sys_oper_log` VALUES (25, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:49:08', 6);
INSERT INTO `sys_oper_log` VALUES (26, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:49:11', 12);
INSERT INTO `sys_oper_log` VALUES (27, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"21,22,23,24,25,26\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:49:14', 11);
INSERT INTO `sys_oper_log` VALUES (28, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:51:45', 70);
INSERT INTO `sys_oper_log` VALUES (29, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:51:53', 14);
INSERT INTO `sys_oper_log` VALUES (30, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:59:31', 69);
INSERT INTO `sys_oper_log` VALUES (31, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 11:59:35', 15);
INSERT INTO `sys_oper_log` VALUES (32, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 12:01:20', 94);
INSERT INTO `sys_oper_log` VALUES (33, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 12:03:30', 64);
INSERT INTO `sys_oper_log` VALUES (34, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 12:03:35', 14);
INSERT INTO `sys_oper_log` VALUES (35, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"27,28,29,30,31,32,33\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 12:03:40', 18);
INSERT INTO `sys_oper_log` VALUES (36, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 12:03:45', 15);
INSERT INTO `sys_oper_log` VALUES (37, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 12:05:42', 62);
INSERT INTO `sys_oper_log` VALUES (38, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 12:05:45', 6);
INSERT INTO `sys_oper_log` VALUES (39, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:46:20', 73);
INSERT INTO `sys_oper_log` VALUES (40, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"34,35,36,37\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:46:24', 19);
INSERT INTO `sys_oper_log` VALUES (41, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide_checkbox\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:46:28', 17);
INSERT INTO `sys_oper_log` VALUES (42, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide_checkbox\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:46:33', 5);
INSERT INTO `sys_oper_log` VALUES (43, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:46:35', 14);
INSERT INTO `sys_oper_log` VALUES (44, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:46:41', 13);
INSERT INTO `sys_oper_log` VALUES (45, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide_checkbox\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:47:13', 6);
INSERT INTO `sys_oper_log` VALUES (46, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:48:16', 14);
INSERT INTO `sys_oper_log` VALUES (47, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"38,39,40,41,42,43\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:48:19', 14);
INSERT INTO `sys_oper_log` VALUES (48, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:48:26', 13);
INSERT INTO `sys_oper_log` VALUES (49, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:48:32', 15);
INSERT INTO `sys_oper_log` VALUES (50, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:49:58', 69);
INSERT INTO `sys_oper_log` VALUES (51, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:55:33', 16);
INSERT INTO `sys_oper_log` VALUES (52, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide_checkbox\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:55:36', 14);
INSERT INTO `sys_oper_log` VALUES (53, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"44,45,46,47,48\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:55:40', 9);
INSERT INTO `sys_oper_log` VALUES (54, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 13:55:45', 14);
INSERT INTO `sys_oper_log` VALUES (55, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"100000\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"3600000\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:03:32', 70);
INSERT INTO `sys_oper_log` VALUES (56, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"黑龙江\"],\"saler\":[\"张三\"],\"agenter\":[\"李四\"],\"receiver\":[\"王五\"],\"trackingNumber\":[\"123123123123\"],\"customer\":[\"南京共创\"],\"paymentDate\":[\"2024-03-20\"],\"material\":[\"2\"],\"spec\":[\"10ml*6支\"],\"orderNumber\":[\"12\"],\"orderUnitPrice\":[\"78.2\"],\"orderAmount\":[\"938.40\"],\"basePrice\":[\"19\"],\"baseAmount\":[\"228.00\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:18:49', 81);
INSERT INTO `sys_oper_log` VALUES (57, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"49,50\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:18:53', 19);
INSERT INTO `sys_oper_log` VALUES (58, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide_checkbox\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:29:14', 70);
INSERT INTO `sys_oper_log` VALUES (59, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:29:23', 6);
INSERT INTO `sys_oper_log` VALUES (60, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:29:27', 13);
INSERT INTO `sys_oper_log` VALUES (61, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:30:28', 66);
INSERT INTO `sys_oper_log` VALUES (62, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"52,53,54,55\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:32:22', 75);
INSERT INTO `sys_oper_log` VALUES (63, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide_checkbox\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:32:23', 11);
INSERT INTO `sys_oper_log` VALUES (64, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:32:28', 14);
INSERT INTO `sys_oper_log` VALUES (65, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide_checkbox\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:33:16', 74);
INSERT INTO `sys_oper_log` VALUES (66, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:33:21', 15);
INSERT INTO `sys_oper_log` VALUES (67, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:34:00', 62);
INSERT INTO `sys_oper_log` VALUES (68, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:36:17', 73);
INSERT INTO `sys_oper_log` VALUES (69, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:36:39', 6);
INSERT INTO `sys_oper_log` VALUES (70, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"56,57,58,59,60,61,62\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:37:31', 60);
INSERT INTO `sys_oper_log` VALUES (71, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:40:25', 73);
INSERT INTO `sys_oper_log` VALUES (72, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:41:07', 10026);
INSERT INTO `sys_oper_log` VALUES (73, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:43:05', 72);
INSERT INTO `sys_oper_log` VALUES (74, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide_checkbox\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:43:08', 5);
INSERT INTO `sys_oper_log` VALUES (75, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:44:28', 76);
INSERT INTO `sys_oper_log` VALUES (76, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"63,64,65,66,67\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:44:33', 16);
INSERT INTO `sys_oper_log` VALUES (77, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:44:35', 6);
INSERT INTO `sys_oper_log` VALUES (78, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:45:21', 73);
INSERT INTO `sys_oper_log` VALUES (79, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide_checkbox\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:46:59', 72);
INSERT INTO `sys_oper_log` VALUES (80, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"68,69,70\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:47:04', 19);
INSERT INTO `sys_oper_log` VALUES (81, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:59:37', 71);
INSERT INTO `sys_oper_log` VALUES (82, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:59:41', 14);
INSERT INTO `sys_oper_log` VALUES (83, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:59:46', 13);
INSERT INTO `sys_oper_log` VALUES (84, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 14:59:50', 13);
INSERT INTO `sys_oper_log` VALUES (85, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:01:15', 71);
INSERT INTO `sys_oper_log` VALUES (86, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:01:22', 16);
INSERT INTO `sys_oper_log` VALUES (87, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"71,72,73,74,75,76\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:02:26', 72);
INSERT INTO `sys_oper_log` VALUES (88, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:06:37', 65);
INSERT INTO `sys_oper_log` VALUES (89, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:06:39', 5);
INSERT INTO `sys_oper_log` VALUES (90, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:08:19', 15);
INSERT INTO `sys_oper_log` VALUES (91, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:11:12', 75);
INSERT INTO `sys_oper_log` VALUES (92, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:11:15', 16);
INSERT INTO `sys_oper_log` VALUES (93, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"77,78,79,80,81\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:12:16', 78);
INSERT INTO `sys_oper_log` VALUES (94, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:12:19', 14);
INSERT INTO `sys_oper_log` VALUES (95, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:12:23', 13);
INSERT INTO `sys_oper_log` VALUES (96, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"82,83\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:16:43', 70);
INSERT INTO `sys_oper_log` VALUES (97, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:33:19', 72);
INSERT INTO `sys_oper_log` VALUES (98, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:33:22', 15);
INSERT INTO `sys_oper_log` VALUES (99, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:33:56', 4);
INSERT INTO `sys_oper_log` VALUES (100, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"85,86\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:34:01', 18);
INSERT INTO `sys_oper_log` VALUES (101, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"84\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:34:06', 4);
INSERT INTO `sys_oper_log` VALUES (102, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:35:52', 60);
INSERT INTO `sys_oper_log` VALUES (103, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"\"],\"saler\":[\"\"],\"agenter\":[\"\"],\"receiver\":[\"\"],\"trackingNumber\":[\"\"],\"customer\":[\"\"],\"paymentDate\":[\"\"],\"material\":[\"1\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide_checkbox\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:35:55', 6);
INSERT INTO `sys_oper_log` VALUES (104, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"88\"],\"region\":[\"河北\"],\"saler\":[\"流苏\"],\"agenter\":[\"张思\"],\"receiver\":[\"李明\"],\"trackingNumber\":[\"123123123\"],\"customer\":[\"上海创业\"],\"paymentDate\":[\"\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36.00\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36.00\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\",\"\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:53:23', 68);
INSERT INTO `sys_oper_log` VALUES (105, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"88\"],\"region\":[\"河北\"],\"saler\":[\"流苏\"],\"agenter\":[\"张思\"],\"receiver\":[\"李明\"],\"trackingNumber\":[\"123123123\"],\"customer\":[\"上海创业\"],\"paymentDate\":[\"\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"\"],\"orderUnitPrice\":[\"36.00\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36.00\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:53:29', 4);
INSERT INTO `sys_oper_log` VALUES (106, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"88\"],\"region\":[\"河北\"],\"saler\":[\"流苏\"],\"agenter\":[\"张思\"],\"receiver\":[\"李明\"],\"trackingNumber\":[\"123123123\"],\"customer\":[\"上海创业\"],\"paymentDate\":[\"\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"12\"],\"orderUnitPrice\":[\"36.00\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36.00\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\",\"\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:53:39', 12);
INSERT INTO `sys_oper_log` VALUES (107, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"88\"],\"region\":[\"河北\"],\"saler\":[\"流苏\"],\"agenter\":[\"张思\"],\"receiver\":[\"李明\"],\"trackingNumber\":[\"123123123\"],\"customer\":[\"上海创业\"],\"paymentDate\":[\"\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"12\"],\"orderUnitPrice\":[\"36.00\"],\"orderAmount\":[\"\"],\"basePrice\":[\"36.00\"],\"baseAmount\":[\"\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:55:39', 60);
INSERT INTO `sys_oper_log` VALUES (108, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"88\"],\"region\":[\"河北\"],\"saler\":[\"流苏\"],\"agenter\":[\"张思\"],\"receiver\":[\"李明\"],\"trackingNumber\":[\"123123123\"],\"customer\":[\"上海创业\"],\"paymentDate\":[\"\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"120\"],\"orderUnitPrice\":[\"36.00\"],\"orderAmount\":[\"4320.00\"],\"basePrice\":[\"36.00\"],\"baseAmount\":[\"4320.00\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\",\"\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:56:13', 12);
INSERT INTO `sys_oper_log` VALUES (109, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"88\"],\"region\":[\"河北\"],\"saler\":[\"流苏\"],\"agenter\":[\"张思\"],\"receiver\":[\"李明\"],\"trackingNumber\":[\"123123123\"],\"customer\":[\"上海创业\"],\"paymentDate\":[\"\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"120\"],\"orderUnitPrice\":[\"36.00\"],\"orderAmount\":[\"4320.00\"],\"basePrice\":[\"36.00\"],\"baseAmount\":[\"4320.00\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:59:15', 13);
INSERT INTO `sys_oper_log` VALUES (110, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"88\"],\"region\":[\"河北\"],\"saler\":[\"流苏\"],\"agenter\":[\"张思\"],\"receiver\":[\"李明\"],\"trackingNumber\":[\"123123123\"],\"customer\":[\"上海创业\"],\"paymentDate\":[\"\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"10\"],\"orderUnitPrice\":[\"36.00\"],\"orderAmount\":[\"360.00\"],\"basePrice\":[\"36.00\"],\"baseAmount\":[\"360.00\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\",\"\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 15:59:25', 6);
INSERT INTO `sys_oper_log` VALUES (111, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"88\"],\"region\":[\"河北\"],\"saler\":[\"流苏\"],\"agenter\":[\"张思\"],\"receiver\":[\"李明\"],\"trackingNumber\":[\"123123123\"],\"customer\":[\"上海创业\"],\"paymentDate\":[\"\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"10\"],\"orderUnitPrice\":[\"36.00\"],\"orderAmount\":[\"360.00\"],\"basePrice\":[\"36.00\"],\"baseAmount\":[\"360.00\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 16:00:59', 67);
INSERT INTO `sys_oper_log` VALUES (112, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"88\"],\"region\":[\"河北\"],\"saler\":[\"流苏\"],\"agenter\":[\"张思\"],\"receiver\":[\"李明\"],\"trackingNumber\":[\"123123123\"],\"customer\":[\"上海创业\"],\"paymentDate\":[\"\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"11\"],\"orderUnitPrice\":[\"36.00\"],\"orderAmount\":[\"396.00\"],\"basePrice\":[\"36.00\"],\"baseAmount\":[\"396.00\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 16:01:12', 14);
INSERT INTO `sys_oper_log` VALUES (113, '字典数据', 2, 'com.lsy.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"107\"],\"dictLabel\":[\"不提供\"],\"dictValue\":[\"false\"],\"dictType\":[\"invoice_provide\"],\"cssClass\":[\"\"],\"dictSort\":[\"0\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 16:13:12', 61);
INSERT INTO `sys_oper_log` VALUES (114, '字典数据', 2, 'com.lsy.web.controller.system.SysDictDataController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/dict/data/edit', '127.0.0.1', '内网IP', '{\"dictCode\":[\"108\"],\"dictLabel\":[\"提供\"],\"dictValue\":[\"true\"],\"dictType\":[\"invoice_provide\"],\"cssClass\":[\"\"],\"dictSort\":[\"1\"],\"listClass\":[\"default\"],\"isDefault\":[\"Y\"],\"status\":[\"0\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 16:13:18', 19);
INSERT INTO `sys_oper_log` VALUES (115, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"88\"],\"region\":[\"河北\"],\"saler\":[\"流苏\"],\"agenter\":[\"张思\"],\"receiver\":[\"李明\"],\"trackingNumber\":[\"123123123\"],\"customer\":[\"上海创业\"],\"paymentDate\":[\"\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"11\"],\"orderUnitPrice\":[\"36.00\"],\"orderAmount\":[\"396.00\"],\"basePrice\":[\"36.00\"],\"baseAmount\":[\"396.00\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"true\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 16:13:56', 12);
INSERT INTO `sys_oper_log` VALUES (116, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"87\"],\"region\":[\"山东\"],\"saler\":[\"小米\"],\"agenter\":[\"小红\"],\"receiver\":[\"小刚\"],\"trackingNumber\":[\"111111\"],\"customer\":[\"烟台置业\"],\"paymentDate\":[\"\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"12\"],\"orderUnitPrice\":[\"36.00\"],\"orderAmount\":[\"432.00\"],\"basePrice\":[\"36.00\"],\"baseAmount\":[\"432.00\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 16:15:21', 14);
INSERT INTO `sys_oper_log` VALUES (117, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"87\"],\"region\":[\"山东\"],\"saler\":[\"小米\"],\"agenter\":[\"小红\"],\"receiver\":[\"小刚\"],\"trackingNumber\":[\"111111\"],\"customer\":[\"烟台置业\"],\"paymentDate\":[\"\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"12\"],\"orderUnitPrice\":[\"36.00\"],\"orderAmount\":[\"432.00\"],\"basePrice\":[\"36.00\"],\"baseAmount\":[\"432.00\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"],\"invoiceProvide\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 16:15:28', 5);
INSERT INTO `sys_oper_log` VALUES (118, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"88\"],\"region\":[\"河北\"],\"saler\":[\"流苏\"],\"agenter\":[\"张思\"],\"receiver\":[\"李明\"],\"trackingNumber\":[\"123123123\"],\"customer\":[\"上海创业\"],\"paymentDate\":[\"\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"11\"],\"orderUnitPrice\":[\"36.00\"],\"orderAmount\":[\"396.00\"],\"basePrice\":[\"36.00\"],\"baseAmount\":[\"396.00\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 16:16:28', 60);
INSERT INTO `sys_oper_log` VALUES (119, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"87\"],\"region\":[\"山东\"],\"saler\":[\"小米\"],\"agenter\":[\"小红\"],\"receiver\":[\"小刚\"],\"trackingNumber\":[\"111111\"],\"customer\":[\"烟台置业\"],\"paymentDate\":[\"\"],\"spec\":[\"8g*18袋\"],\"orderNumber\":[\"12\"],\"orderUnitPrice\":[\"36.00\"],\"orderAmount\":[\"432.00\"],\"basePrice\":[\"36.00\"],\"baseAmount\":[\"432.00\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"0\",\"\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 16:16:35', 6);
INSERT INTO `sys_oper_log` VALUES (120, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"51\"],\"region\":[\"黑龙江\"],\"saler\":[\"张三\"],\"agenter\":[\"李四\"],\"receiver\":[\"王五\"],\"trackingNumber\":[\"123123123123\"],\"customer\":[\"南京共创\"],\"paymentDate\":[\"2024-03-20\"],\"spec\":[\"10ml*6支\"],\"orderNumber\":[\"1\"],\"orderUnitPrice\":[\"78.20\"],\"orderAmount\":[\"78.20\"],\"basePrice\":[\"19.00\"],\"baseAmount\":[\"19.00\"],\"taxRate\":[\"\"],\"taxAmount\":[\"\"],\"diffAmount\":[\"\"],\"refundAmount\":[\"\"],\"invoiceProvide\":[\"1\",\"true\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-20 17:08:58', 67);
INSERT INTO `sys_oper_log` VALUES (121, '发货管理', 3, 'com.lsy.web.controller.erp.DlDeliveryController.remove()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/remove', '127.0.0.1', '内网IP', '{\"ids\":[\"51,87,88\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 08:35:18', 74);
INSERT INTO `sys_oper_log` VALUES (122, '发货管理', 1, 'com.lsy.web.controller.erp.DlDeliveryController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/add', '127.0.0.1', '内网IP', '{\"region\":[\"黑龙江\"],\"saler\":[\"张三\"],\"agenter\":[\"李四\"],\"receiver\":[\"王五\"],\"trackingNumber\":[\"123123123123\"],\"customer\":[\"南京共创\"],\"paymentDate\":[\"2024-03-21\"],\"material\":[\"2\"],\"spec\":[\"10ml*6支\"],\"orderNumber\":[\"100\"],\"orderUnitPrice\":[\"20\"],\"orderAmount\":[\"2000.00\"],\"basePrice\":[\"10\"],\"baseAmount\":[\"1000.00\"],\"taxRate\":[\"5\"],\"taxAmount\":[\"50.00\"],\"diffAmount\":[\"1000.00\"],\"refundAmount\":[\"950.00\"],\"invoiceProvide\":[\"1\"],\"invoiceProvide_checkbox\":[\"1\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"boxNumber\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 08:36:01', 12);
INSERT INTO `sys_oper_log` VALUES (123, '代码生成', 6, 'com.lsy.generator.controller.GenController.importTableSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/importTable', '127.0.0.1', '内网IP', '{\"tables\":[\"dl_customer\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 08:39:47', 59);
INSERT INTO `sys_oper_log` VALUES (124, '代码生成', 2, 'com.lsy.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"dl_customer\"],\"tableComment\":[\"客户管理\"],\"className\":[\"DlCustomer\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"34\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"35\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"代理人\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"agenter\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"36\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"收货人\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"receiver\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"37\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"客户名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"company\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.lsy.erp.customer\"],\"moduleName\":[\"erp\"],\"businessName\":[\"customer\"],\"functionName\":[\"客户管理\"],\"params[parentMenuId]\":[\"\"],\"params[parentMenuName]\":[\"\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 08:40:45', 18);
INSERT INTO `sys_oper_log` VALUES (125, '代码生成', 8, 'com.lsy.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/dl_customer', '127.0.0.1', '内网IP', '\"dl_customer\"', NULL, 0, NULL, '2024-03-21 08:40:50', 204);
INSERT INTO `sys_oper_log` VALUES (126, '代码生成', 8, 'com.lsy.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/dl_customer', '127.0.0.1', '内网IP', '\"dl_customer\"', NULL, 0, NULL, '2024-03-21 08:40:53', 116);
INSERT INTO `sys_oper_log` VALUES (127, '代码生成', 2, 'com.lsy.generator.controller.GenController.editSave()', 'POST', 1, 'admin', '研发部门', '/tool/gen/edit', '127.0.0.1', '内网IP', '{\"tableId\":[\"3\"],\"tableName\":[\"dl_customer\"],\"tableComment\":[\"客户管理\"],\"className\":[\"DlCustomer\"],\"functionAuthor\":[\"ruoyi\"],\"remark\":[\"\"],\"columns[0].columnId\":[\"34\"],\"columns[0].sort\":[\"1\"],\"columns[0].columnComment\":[\"主键\"],\"columns[0].javaType\":[\"Long\"],\"columns[0].javaField\":[\"id\"],\"columns[0].isInsert\":[\"1\"],\"columns[0].queryType\":[\"EQ\"],\"columns[0].htmlType\":[\"input\"],\"columns[0].dictType\":[\"\"],\"columns[1].columnId\":[\"35\"],\"columns[1].sort\":[\"2\"],\"columns[1].columnComment\":[\"代理人\"],\"columns[1].javaType\":[\"String\"],\"columns[1].javaField\":[\"agenter\"],\"columns[1].isInsert\":[\"1\"],\"columns[1].isEdit\":[\"1\"],\"columns[1].isList\":[\"1\"],\"columns[1].isQuery\":[\"1\"],\"columns[1].queryType\":[\"EQ\"],\"columns[1].htmlType\":[\"input\"],\"columns[1].dictType\":[\"\"],\"columns[2].columnId\":[\"36\"],\"columns[2].sort\":[\"3\"],\"columns[2].columnComment\":[\"收货人\"],\"columns[2].javaType\":[\"String\"],\"columns[2].javaField\":[\"receiver\"],\"columns[2].isInsert\":[\"1\"],\"columns[2].isEdit\":[\"1\"],\"columns[2].isList\":[\"1\"],\"columns[2].isQuery\":[\"1\"],\"columns[2].queryType\":[\"EQ\"],\"columns[2].htmlType\":[\"input\"],\"columns[2].dictType\":[\"\"],\"columns[3].columnId\":[\"37\"],\"columns[3].sort\":[\"4\"],\"columns[3].columnComment\":[\"客户名称\"],\"columns[3].javaType\":[\"String\"],\"columns[3].javaField\":[\"company\"],\"columns[3].isInsert\":[\"1\"],\"columns[3].isEdit\":[\"1\"],\"columns[3].isList\":[\"1\"],\"columns[3].isQuery\":[\"1\"],\"columns[3].queryType\":[\"EQ\"],\"columns[3].htmlType\":[\"input\"],\"columns[3].dictType\":[\"\"],\"tplCategory\":[\"crud\"],\"packageName\":[\"com.lsy.erp.customer\"],\"moduleName\":[\"erp\"],\"businessName\":[\"customer\"],\"functionName\":[\"客户管理\"],\"params[parentMenuId]\":[\"2006\"],\"params[parentMenuName]\":[\"ERP管理\"],\"genType\":[\"0\"],\"genPath\":[\"/\"],\"subTableName\":[\"\"],\"params[treeCode]\":[\"\"],\"params[treeParentCode]\":[\"\"],\"params[treeName]\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 08:41:21', 26);
INSERT INTO `sys_oper_log` VALUES (128, '代码生成', 8, 'com.lsy.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/dl_customer', '127.0.0.1', '内网IP', '\"dl_customer\"', NULL, 0, NULL, '2024-03-21 08:41:26', 95);
INSERT INTO `sys_oper_log` VALUES (129, '代码生成', 8, 'com.lsy.generator.controller.GenController.download()', 'GET', 1, 'admin', '研发部门', '/tool/gen/download/dl_customer', '127.0.0.1', '内网IP', '\"dl_customer\"', NULL, 0, NULL, '2024-03-21 08:41:26', 97);
INSERT INTO `sys_oper_log` VALUES (130, '菜单管理', 2, 'com.lsy.web.controller.system.SysMenuController.editSave()', 'POST', 1, 'admin', '研发部门', '/system/menu/edit', '127.0.0.1', '内网IP', '{\"menuId\":[\"2013\"],\"parentId\":[\"2006\"],\"menuType\":[\"C\"],\"menuName\":[\"客户管理\"],\"url\":[\"/erp/customer\"],\"target\":[\"menuItem\"],\"perms\":[\"erp:customer:view\"],\"orderNum\":[\"1\"],\"icon\":[\"fa fa-user-secret\"],\"visible\":[\"0\"],\"isRefresh\":[\"1\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 08:45:06', 72);
INSERT INTO `sys_oper_log` VALUES (131, '客户管理', 1, 'com.lsy.web.controller.erp.DlCustomerController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/customer/add', '127.0.0.1', '内网IP', '{\"agenter\":[\"李四\"],\"receiver\":[\"王五\"],\"company\":[\"南京共创\"]}', NULL, 1, '\r\n### Error updating database.  Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\r\n### The error may exist in file [D:\\Workspaces\\lsy\\liusuyi2021\\ruoyi-ERP\\LSY\\lsy-system\\target\\classes\\mapper\\erp\\DlCustomerMapper.xml]\r\n### The error may involve com.lsy.erp.customer.mapper.DlCustomerMapper.insertDlCustomer-Inline\r\n### The error occurred while setting parameters\r\n### SQL: insert into dl_customer          ( agenter,             receiver,             company )           values ( ?,             ?,             ? )\r\n### Cause: java.sql.SQLException: Field \'id\' doesn\'t have a default value\n; Field \'id\' doesn\'t have a default value; nested exception is java.sql.SQLException: Field \'id\' doesn\'t have a default value', '2024-03-21 08:45:25', 57);
INSERT INTO `sys_oper_log` VALUES (132, '客户管理', 1, 'com.lsy.web.controller.erp.DlCustomerController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/customer/add', '127.0.0.1', '内网IP', '{\"agenter\":[\"李四\"],\"receiver\":[\"王五\"],\"company\":[\"南京共创\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 08:45:49', 12);
INSERT INTO `sys_oper_log` VALUES (133, '客户管理', 1, 'com.lsy.web.controller.erp.DlCustomerController.addSave()', 'POST', 1, 'admin', '研发部门', '/erp/customer/add', '127.0.0.1', '内网IP', '{\"agenter\":[\"张思\"],\"receiver\":[\"小刚\"],\"company\":[\"上海新中新电子股份有限公司\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 08:46:14', 12);
INSERT INTO `sys_oper_log` VALUES (134, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"89\"],\"region\":[\"黑龙江\"],\"saler\":[\"张三\"],\"trackingNumber\":[\"123123123123\"],\"customer\":[\"2\"],\"agenter\":[\"张思\"],\"receiver\":[\"小刚\"],\"paymentDate\":[\"2024-03-21\"],\"spec\":[\"10ml*6支\"],\"orderNumber\":[\"100\"],\"orderUnitPrice\":[\"20.00\"],\"orderAmount\":[\"2000.00\"],\"basePrice\":[\"10.00\"],\"baseAmount\":[\"1000.00\"],\"taxRate\":[\"5.00\"],\"taxAmount\":[\"50.00\"],\"diffAmount\":[\"1000.00\"],\"refundAmount\":[\"950.00\"],\"invoiceProvide\":[\"1\",\"true\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"boxNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 10:04:32', 60);
INSERT INTO `sys_oper_log` VALUES (135, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"89\"],\"region\":[\"黑龙江\"],\"saler\":[\"张三\"],\"trackingNumber\":[\"123123123123\"],\"customer\":[\"1\"],\"agenter\":[\"李四\"],\"receiver\":[\"王五\"],\"paymentDate\":[\"2024-03-21\"],\"spec\":[\"10ml*6支\"],\"orderNumber\":[\"100\"],\"orderUnitPrice\":[\"20.00\"],\"orderAmount\":[\"2000.00\"],\"basePrice\":[\"10.00\"],\"baseAmount\":[\"1000.00\"],\"taxRate\":[\"5.00\"],\"taxAmount\":[\"50.00\"],\"diffAmount\":[\"1000.00\"],\"refundAmount\":[\"950.00\"],\"invoiceProvide\":[\"1\",\"true\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"boxNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 10:04:48', 7);
INSERT INTO `sys_oper_log` VALUES (136, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"89\"],\"region\":[\"黑龙江\"],\"saler\":[\"张三\"],\"trackingNumber\":[\"123123123123\"],\"customer\":[\"2\"],\"agenter\":[\"张思\"],\"receiver\":[\"小刚\"],\"paymentDate\":[\"2024-03-21\"],\"spec\":[\"10ml*6支\"],\"orderNumber\":[\"100\"],\"orderUnitPrice\":[\"20.00\"],\"orderAmount\":[\"2000.00\"],\"basePrice\":[\"10.00\"],\"baseAmount\":[\"1000.00\"],\"taxRate\":[\"5.00\"],\"taxAmount\":[\"50.00\"],\"diffAmount\":[\"1000.00\"],\"refundAmount\":[\"950.00\"],\"invoiceProvide\":[\"1\",\"true\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"boxNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 10:11:59', 71);
INSERT INTO `sys_oper_log` VALUES (137, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"89\"],\"region\":[\"黑龙江\"],\"saler\":[\"张三\"],\"trackingNumber\":[\"123123123123\"],\"customer\":[\"1\"],\"agenter\":[\"李四\"],\"receiver\":[\"王五\"],\"paymentDate\":[\"2024-03-21\"],\"spec\":[\"10ml*6支\"],\"orderNumber\":[\"100\"],\"orderUnitPrice\":[\"20.00\"],\"orderAmount\":[\"2000.00\"],\"basePrice\":[\"10.00\"],\"baseAmount\":[\"1000.00\"],\"taxRate\":[\"5.00\"],\"taxAmount\":[\"50.00\"],\"diffAmount\":[\"1000.00\"],\"refundAmount\":[\"950.00\"],\"invoiceProvide\":[\"1\",\"true\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"boxNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 10:12:19', 15);
INSERT INTO `sys_oper_log` VALUES (138, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"89\"],\"region\":[\"黑龙江\"],\"saler\":[\"张三\"],\"trackingNumber\":[\"123123123123\"],\"customer\":[\"2\"],\"agenter\":[\"张思\"],\"receiver\":[\"小刚\"],\"paymentDate\":[\"2024-03-21\"],\"spec\":[\"10ml*6支\"],\"orderNumber\":[\"100\"],\"orderUnitPrice\":[\"20.00\"],\"orderAmount\":[\"2000.00\"],\"basePrice\":[\"10.00\"],\"baseAmount\":[\"1000.00\"],\"taxRate\":[\"5.00\"],\"taxAmount\":[\"50.00\"],\"diffAmount\":[\"1000.00\"],\"refundAmount\":[\"950.00\"],\"invoiceProvide\":[\"1\",\"true\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"boxNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 10:17:25', 68);
INSERT INTO `sys_oper_log` VALUES (139, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"89\"],\"region\":[\"黑龙江\"],\"saler\":[\"张三\"],\"trackingNumber\":[\"123123123123\"],\"customer\":[\"1\"],\"agenter\":[\"李四\"],\"receiver\":[\"王五\"],\"paymentDate\":[\"2024-03-21\"],\"spec\":[\"10ml*6支\"],\"orderNumber\":[\"100\"],\"orderUnitPrice\":[\"20.00\"],\"orderAmount\":[\"2000.00\"],\"basePrice\":[\"10.00\"],\"baseAmount\":[\"1000.00\"],\"taxRate\":[\"5.00\"],\"taxAmount\":[\"50.00\"],\"diffAmount\":[\"1000.00\"],\"refundAmount\":[\"950.00\"],\"invoiceProvide\":[\"1\",\"true\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"boxNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 10:17:34', 5);
INSERT INTO `sys_oper_log` VALUES (140, '发货管理', 2, 'com.lsy.web.controller.erp.DlDeliveryController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/delivery/edit', '127.0.0.1', '内网IP', '{\"id\":[\"89\"],\"region\":[\"黑龙江\"],\"saler\":[\"张三\"],\"trackingNumber\":[\"123123123123\"],\"customer\":[\"1\"],\"agenter\":[\"李四\"],\"receiver\":[\"王五\"],\"paymentDate\":[\"2024-03-21\"],\"material\":[\"5\"],\"spec\":[\"15g*6袋\"],\"orderNumber\":[\"100\"],\"orderUnitPrice\":[\"9\"],\"orderAmount\":[\"900.00\"],\"basePrice\":[\"9\"],\"baseAmount\":[\"900.00\"],\"taxRate\":[\"5.00\"],\"taxAmount\":[\"0.00\"],\"diffAmount\":[\"0.00\"],\"refundAmount\":[\"0.00\"],\"invoiceProvide\":[\"1\",\"true\"],\"_invoiceProvide\":[\"on\"],\"refundRequestDate\":[\"\"],\"refundToFactoryDate\":[\"\"],\"refundDate\":[\"\"],\"batchNumber\":[\"\"],\"boxNumber\":[\"\"],\"productionDate\":[\"\"],\"expirationDate\":[\"\"],\"remark\":[\"\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 10:23:59', 71);
INSERT INTO `sys_oper_log` VALUES (141, '物料管理', 2, 'com.lsy.web.controller.erp.DlMaterialController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/material/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"藿杞补肾颗粒\"],\"spec\":[\"10ml*6支\"],\"unitPrice\":[\"36.00\"],\"basePrice\":[\"36.00\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 10:47:40', 67);
INSERT INTO `sys_oper_log` VALUES (142, '物料管理', 2, 'com.lsy.web.controller.erp.DlMaterialController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/material/edit', '127.0.0.1', '内网IP', '{\"id\":[\"2\"],\"name\":[\"爱维心口服液\"],\"spec\":[\"10ml*6支\"],\"unitPrice\":[\"78.20\"],\"basePrice\":[\"19.00\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 10:47:49', 4);
INSERT INTO `sys_oper_log` VALUES (143, '物料管理', 2, 'com.lsy.web.controller.erp.DlMaterialController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/material/edit', '127.0.0.1', '内网IP', '{\"id\":[\"3\"],\"name\":[\"爱维心口服液\"],\"spec\":[\"10ml*8支\"],\"unitPrice\":[\"25.00\"],\"basePrice\":[\"25.00\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 10:47:59', 13);
INSERT INTO `sys_oper_log` VALUES (144, '物料管理', 2, 'com.lsy.web.controller.erp.DlMaterialController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/material/edit', '127.0.0.1', '内网IP', '{\"id\":[\"1\"],\"name\":[\"藿杞补肾颗粒\"],\"spec\":[\"8g*18袋\"],\"unitPrice\":[\"36.00\"],\"basePrice\":[\"36.00\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 10:48:11', 14);
INSERT INTO `sys_oper_log` VALUES (145, '物料管理', 2, 'com.lsy.web.controller.erp.DlMaterialController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/material/edit', '127.0.0.1', '内网IP', '{\"id\":[\"4\"],\"name\":[\"乳酸菌素片\"],\"spec\":[\"8g*18袋\"],\"unitPrice\":[\"5.50\"],\"basePrice\":[\"5.50\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 10:48:20', 15);
INSERT INTO `sys_oper_log` VALUES (146, '物料管理', 2, 'com.lsy.web.controller.erp.DlMaterialController.editSave()', 'POST', 1, 'admin', '研发部门', '/erp/material/edit', '127.0.0.1', '内网IP', '{\"id\":[\"5\"],\"name\":[\"肾石通冲剂\"],\"spec\":[\"36片\"],\"unitPrice\":[\"9.00\"],\"basePrice\":[\"9.00\"]}', '{\"msg\":\"操作成功\",\"code\":0}', 0, NULL, '2024-03-21 10:48:29', 47);

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_post`;
CREATE TABLE `sys_post`  (
  `post_id` bigint NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '岗位名称',
  `post_sort` int NOT NULL COMMENT '显示顺序',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '岗位信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_post
-- ----------------------------
INSERT INTO `sys_post` VALUES (1, 'ceo', '董事长', 1, '0', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_post` VALUES (2, 'se', '项目经理', 2, '0', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_post` VALUES (3, 'hr', '人力资源', 3, '0', 'admin', '2024-01-09 13:11:20', '', NULL, '');
INSERT INTO `sys_post` VALUES (4, 'user', '普通员工', 4, '0', 'admin', '2024-01-09 13:11:20', '', NULL, '');

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_role`;
CREATE TABLE `sys_role`  (
  `role_id` bigint NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色权限字符串',
  `role_sort` int NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role
-- ----------------------------
INSERT INTO `sys_role` VALUES (1, '超级管理员', 'admin', 1, '1', '0', '0', 'admin', '2024-01-09 13:11:20', '', NULL, '超级管理员');
INSERT INTO `sys_role` VALUES (2, '普通角色', 'common', 2, '2', '0', '0', 'admin', '2024-01-09 13:11:20', 'admin', '2024-03-19 15:54:43', '普通角色');

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_dept`;
CREATE TABLE `sys_role_dept`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `dept_id` bigint NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`, `dept_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和部门关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO `sys_role_dept` VALUES (2, 100);
INSERT INTO `sys_role_dept` VALUES (2, 101);
INSERT INTO `sys_role_dept` VALUES (2, 105);

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_role_menu`;
CREATE TABLE `sys_role_menu`  (
  `role_id` bigint NOT NULL COMMENT '角色ID',
  `menu_id` bigint NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`, `menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '角色和菜单关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO `sys_role_menu` VALUES (2, 1);
INSERT INTO `sys_role_menu` VALUES (2, 2);
INSERT INTO `sys_role_menu` VALUES (2, 3);
INSERT INTO `sys_role_menu` VALUES (2, 100);
INSERT INTO `sys_role_menu` VALUES (2, 101);
INSERT INTO `sys_role_menu` VALUES (2, 102);
INSERT INTO `sys_role_menu` VALUES (2, 103);
INSERT INTO `sys_role_menu` VALUES (2, 104);
INSERT INTO `sys_role_menu` VALUES (2, 105);
INSERT INTO `sys_role_menu` VALUES (2, 106);
INSERT INTO `sys_role_menu` VALUES (2, 107);
INSERT INTO `sys_role_menu` VALUES (2, 108);
INSERT INTO `sys_role_menu` VALUES (2, 109);
INSERT INTO `sys_role_menu` VALUES (2, 110);
INSERT INTO `sys_role_menu` VALUES (2, 111);
INSERT INTO `sys_role_menu` VALUES (2, 112);
INSERT INTO `sys_role_menu` VALUES (2, 113);
INSERT INTO `sys_role_menu` VALUES (2, 114);
INSERT INTO `sys_role_menu` VALUES (2, 115);
INSERT INTO `sys_role_menu` VALUES (2, 116);
INSERT INTO `sys_role_menu` VALUES (2, 500);
INSERT INTO `sys_role_menu` VALUES (2, 501);
INSERT INTO `sys_role_menu` VALUES (2, 1000);
INSERT INTO `sys_role_menu` VALUES (2, 1001);
INSERT INTO `sys_role_menu` VALUES (2, 1002);
INSERT INTO `sys_role_menu` VALUES (2, 1003);
INSERT INTO `sys_role_menu` VALUES (2, 1004);
INSERT INTO `sys_role_menu` VALUES (2, 1005);
INSERT INTO `sys_role_menu` VALUES (2, 1006);
INSERT INTO `sys_role_menu` VALUES (2, 1007);
INSERT INTO `sys_role_menu` VALUES (2, 1008);
INSERT INTO `sys_role_menu` VALUES (2, 1009);
INSERT INTO `sys_role_menu` VALUES (2, 1010);
INSERT INTO `sys_role_menu` VALUES (2, 1011);
INSERT INTO `sys_role_menu` VALUES (2, 1012);
INSERT INTO `sys_role_menu` VALUES (2, 1013);
INSERT INTO `sys_role_menu` VALUES (2, 1014);
INSERT INTO `sys_role_menu` VALUES (2, 1015);
INSERT INTO `sys_role_menu` VALUES (2, 1016);
INSERT INTO `sys_role_menu` VALUES (2, 1017);
INSERT INTO `sys_role_menu` VALUES (2, 1018);
INSERT INTO `sys_role_menu` VALUES (2, 1019);
INSERT INTO `sys_role_menu` VALUES (2, 1020);
INSERT INTO `sys_role_menu` VALUES (2, 1021);
INSERT INTO `sys_role_menu` VALUES (2, 1022);
INSERT INTO `sys_role_menu` VALUES (2, 1023);
INSERT INTO `sys_role_menu` VALUES (2, 1024);
INSERT INTO `sys_role_menu` VALUES (2, 1025);
INSERT INTO `sys_role_menu` VALUES (2, 1026);
INSERT INTO `sys_role_menu` VALUES (2, 1027);
INSERT INTO `sys_role_menu` VALUES (2, 1028);
INSERT INTO `sys_role_menu` VALUES (2, 1029);
INSERT INTO `sys_role_menu` VALUES (2, 1030);
INSERT INTO `sys_role_menu` VALUES (2, 1031);
INSERT INTO `sys_role_menu` VALUES (2, 1032);
INSERT INTO `sys_role_menu` VALUES (2, 1033);
INSERT INTO `sys_role_menu` VALUES (2, 1034);
INSERT INTO `sys_role_menu` VALUES (2, 1035);
INSERT INTO `sys_role_menu` VALUES (2, 1036);
INSERT INTO `sys_role_menu` VALUES (2, 1037);
INSERT INTO `sys_role_menu` VALUES (2, 1038);
INSERT INTO `sys_role_menu` VALUES (2, 1039);
INSERT INTO `sys_role_menu` VALUES (2, 1040);
INSERT INTO `sys_role_menu` VALUES (2, 1041);
INSERT INTO `sys_role_menu` VALUES (2, 1042);
INSERT INTO `sys_role_menu` VALUES (2, 1043);
INSERT INTO `sys_role_menu` VALUES (2, 1044);
INSERT INTO `sys_role_menu` VALUES (2, 1045);
INSERT INTO `sys_role_menu` VALUES (2, 1046);
INSERT INTO `sys_role_menu` VALUES (2, 1047);
INSERT INTO `sys_role_menu` VALUES (2, 1048);
INSERT INTO `sys_role_menu` VALUES (2, 1049);
INSERT INTO `sys_role_menu` VALUES (2, 1050);
INSERT INTO `sys_role_menu` VALUES (2, 1051);
INSERT INTO `sys_role_menu` VALUES (2, 1052);
INSERT INTO `sys_role_menu` VALUES (2, 1053);
INSERT INTO `sys_role_menu` VALUES (2, 1054);
INSERT INTO `sys_role_menu` VALUES (2, 1055);
INSERT INTO `sys_role_menu` VALUES (2, 1056);
INSERT INTO `sys_role_menu` VALUES (2, 1057);
INSERT INTO `sys_role_menu` VALUES (2, 1058);
INSERT INTO `sys_role_menu` VALUES (2, 1059);
INSERT INTO `sys_role_menu` VALUES (2, 1060);
INSERT INTO `sys_role_menu` VALUES (2, 1061);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` bigint NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint NULL DEFAULT NULL COMMENT '部门ID',
  `login_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT '登录账号',
  `user_name` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户昵称',
  `user_type` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '00' COMMENT '用户类型（00系统用户 01注册用户）',
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '手机号码',
  `sex` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '头像路径',
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '密码',
  `salt` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '盐加密',
  `status` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime NULL DEFAULT NULL COMMENT '最后登录时间',
  `pwd_update_date` datetime NULL DEFAULT NULL COMMENT '密码最后更新时间',
  `create_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '创建者',
  `create_time` datetime NULL DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '更新者',
  `update_time` datetime NULL DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 100 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户信息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES (1, 103, 'admin', '刘苏义', '00', 'liusuyi18@163.com', '15888888888', '0', '/profile/avatar/2024/03/20/blob_20240320092747A001.png', '7dff0cae5cfa4ffd2a77c422e9bcbfd7', '8d2f4e', '0', '0', '127.0.0.1', '2024-03-21 10:50:24', '2024-01-09 13:33:36', 'admin', '2024-01-09 13:11:20', '', '2024-03-21 10:50:24', '管理员');
INSERT INTO `sys_user` VALUES (2, 105, 'ry', '若依', '00', 'ry@qq.com', '15666666666', '1', '', '8e6d98b90472783cc73c17047ddccf36', '222222', '0', '0', '127.0.0.1', NULL, NULL, 'admin', '2024-01-09 13:11:20', '', NULL, '测试员');

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_online`;
CREATE TABLE `sys_user_online`  (
  `sessionId` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT '' COMMENT '用户会话id',
  `login_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录账号',
  `dept_name` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '部门名称',
  `ipaddr` varchar(128) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '操作系统',
  `status` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NULL DEFAULT '' COMMENT '在线状态on_line在线off_line离线',
  `start_timestamp` datetime NULL DEFAULT NULL COMMENT 'session创建时间',
  `last_access_time` datetime NULL DEFAULT NULL COMMENT 'session最后访问时间',
  `expire_time` int NULL DEFAULT 0 COMMENT '超时时间，单位为分钟',
  PRIMARY KEY (`sessionId`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '在线用户记录' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO `sys_user_online` VALUES ('50e5a101-de8f-4fcf-a86c-5e07ef6af6d0', 'admin', '研发部门', '127.0.0.1', '内网IP', 'Chrome 12', 'Windows 10', 'on_line', '2024-03-21 08:34:53', '2024-03-21 10:50:24', 1800000);

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_post`;
CREATE TABLE `sys_user_post`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `post_id` bigint NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`, `post_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户与岗位关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO `sys_user_post` VALUES (1, 1);
INSERT INTO `sys_user_post` VALUES (2, 2);

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE IF EXISTS `sys_user_role`;
CREATE TABLE `sys_user_role`  (
  `user_id` bigint NOT NULL COMMENT '用户ID',
  `role_id` bigint NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`, `role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_0900_ai_ci COMMENT = '用户和角色关联表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO `sys_user_role` VALUES (1, 1);
INSERT INTO `sys_user_role` VALUES (2, 2);

SET FOREIGN_KEY_CHECKS = 1;
