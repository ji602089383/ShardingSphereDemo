/*
 Navicat Premium Data Transfer

 Source Server         : 本地
 Source Server Type    : MySQL
 Source Server Version : 50728
 Source Host           : localhost:3306
 Source Schema         : order-1-salve

 Target Server Type    : MySQL
 Target Server Version : 50728
 File Encoding         : 65001

 Date: 18/05/2023 17:33:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for config
-- ----------------------------
DROP TABLE IF EXISTS `config`;
CREATE TABLE `config`  (
  `id` int(11) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of config
-- ----------------------------

-- ----------------------------
-- Table structure for order_0
-- ----------------------------
DROP TABLE IF EXISTS `order_0`;
CREATE TABLE `order_0`  (
  `id` bigint(20) NOT NULL COMMENT '订单id',
  `order_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '订单单号',
  `suppliers_id` bigint(20) NULL DEFAULT 0 COMMENT '渠道商id',
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_suppliers_id`(`suppliers_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '接单记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_0
-- ----------------------------
INSERT INTO `order_0` VALUES (12, '1', 12, NULL);
INSERT INTO `order_0` VALUES (52, '1', 52, NULL);
INSERT INTO `order_0` VALUES (53, '1', 53, NULL);
INSERT INTO `order_0` VALUES (54, '1', 54, NULL);
INSERT INTO `order_0` VALUES (58, '1', 58, NULL);
INSERT INTO `order_0` VALUES (60, '1', 60, NULL);
INSERT INTO `order_0` VALUES (62, '1', 62, NULL);
INSERT INTO `order_0` VALUES (123, '1', 123, NULL);

-- ----------------------------
-- Table structure for order_1
-- ----------------------------
DROP TABLE IF EXISTS `order_1`;
CREATE TABLE `order_1`  (
  `id` bigint(20) NOT NULL COMMENT '订单id',
  `order_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '订单单号',
  `suppliers_id` bigint(20) NULL DEFAULT 0 COMMENT '渠道商id',
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_suppliers_id`(`suppliers_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '接单记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_1
-- ----------------------------
INSERT INTO `order_1` VALUES (12, '1', 12, NULL);
INSERT INTO `order_1` VALUES (52, '1', 52, NULL);
INSERT INTO `order_1` VALUES (53, '1', 53, NULL);
INSERT INTO `order_1` VALUES (54, '1', 54, NULL);
INSERT INTO `order_1` VALUES (58, '1', 58, NULL);
INSERT INTO `order_1` VALUES (60, '1', 60, NULL);
INSERT INTO `order_1` VALUES (62, '1', 62, NULL);
INSERT INTO `order_1` VALUES (123, '1', 123, NULL);

-- ----------------------------
-- Table structure for order_2
-- ----------------------------
DROP TABLE IF EXISTS `order_2`;
CREATE TABLE `order_2`  (
  `id` bigint(20) NOT NULL COMMENT '订单id',
  `order_no` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '订单单号',
  `suppliers_id` bigint(20) NULL DEFAULT 0 COMMENT '渠道商id',
  `create_time` datetime NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_suppliers_id`(`suppliers_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '接单记录表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_2
-- ----------------------------
INSERT INTO `order_2` VALUES (12, '1', 12, NULL);
INSERT INTO `order_2` VALUES (52, '1', 52, NULL);
INSERT INTO `order_2` VALUES (53, '1', 53, NULL);
INSERT INTO `order_2` VALUES (54, '1', 54, NULL);
INSERT INTO `order_2` VALUES (58, '1', 58, NULL);
INSERT INTO `order_2` VALUES (60, '1', 60, NULL);
INSERT INTO `order_2` VALUES (62, '1', 62, NULL);
INSERT INTO `order_2` VALUES (123, '1', 123, NULL);

-- ----------------------------
-- Table structure for order_talent
-- ----------------------------
DROP TABLE IF EXISTS `order_talent`;
CREATE TABLE `order_talent`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `order_id` bigint(20) NULL DEFAULT 0 COMMENT '订单id',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_order_id`(`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单人才跟踪表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_talent
-- ----------------------------
INSERT INTO `order_talent` VALUES (60, 60, '2023-05-18 15:59:33');
INSERT INTO `order_talent` VALUES (856906639175847937, 856903721265664002, '2023-04-23 14:41:03');
INSERT INTO `order_talent` VALUES (856909790675210242, 856903721265664004, '2023-04-23 14:53:34');

-- ----------------------------
-- Table structure for order_talent_1
-- ----------------------------
DROP TABLE IF EXISTS `order_talent_1`;
CREATE TABLE `order_talent_1`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `order_id` bigint(20) NULL DEFAULT 0 COMMENT '订单id',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_order_id`(`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单人才跟踪表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_talent_1
-- ----------------------------
INSERT INTO `order_talent_1` VALUES (60, 60, '2023-05-18 15:59:33');
INSERT INTO `order_talent_1` VALUES (856906639175847937, 856903721265664002, '2023-04-23 14:41:03');
INSERT INTO `order_talent_1` VALUES (856909790675210242, 856903721265664004, '2023-04-23 14:53:34');

-- ----------------------------
-- Table structure for order_talent_2
-- ----------------------------
DROP TABLE IF EXISTS `order_talent_2`;
CREATE TABLE `order_talent_2`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `order_id` bigint(20) NULL DEFAULT 0 COMMENT '订单id',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_order_id`(`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单人才跟踪表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_talent_2
-- ----------------------------
INSERT INTO `order_talent_2` VALUES (60, 60, '2023-05-18 15:59:33');
INSERT INTO `order_talent_2` VALUES (856906639175847937, 856903721265664002, '2023-04-23 14:41:03');
INSERT INTO `order_talent_2` VALUES (856909790675210242, 856903721265664004, '2023-04-23 14:53:34');

-- ----------------------------
-- Table structure for order_talent_3
-- ----------------------------
DROP TABLE IF EXISTS `order_talent_3`;
CREATE TABLE `order_talent_3`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `order_id` bigint(20) NULL DEFAULT 0 COMMENT '订单id',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_order_id`(`order_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单人才跟踪表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_talent_3
-- ----------------------------
INSERT INTO `order_talent_3` VALUES (60, 60, '2023-05-18 15:59:33');
INSERT INTO `order_talent_3` VALUES (856906639175847937, 856903721265664002, '2023-04-23 14:41:03');
INSERT INTO `order_talent_3` VALUES (856909790675210242, 856903721265664004, '2023-04-23 14:53:34');

-- ----------------------------
-- Table structure for order_talent_count_0
-- ----------------------------
DROP TABLE IF EXISTS `order_talent_count_0`;
CREATE TABLE `order_talent_count_0`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '自增id',
  `order_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '订单id',
  `order_talent_state` tinyint(3) NULL DEFAULT 0 COMMENT '订单人才表的人才状态 =-1是代表全部',
  `count` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '订单人才表的数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_order_id_status`(`order_id`, `order_talent_state`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单维度的订单人才状态数量统计' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_talent_count_0
-- ----------------------------

-- ----------------------------
-- Table structure for order_talent_count_1
-- ----------------------------
DROP TABLE IF EXISTS `order_talent_count_1`;
CREATE TABLE `order_talent_count_1`  (
  `id` bigint(20) UNSIGNED NOT NULL COMMENT '自增id',
  `order_id` bigint(20) UNSIGNED NULL DEFAULT 0 COMMENT '订单id',
  `order_talent_state` tinyint(3) NULL DEFAULT 0 COMMENT '订单人才表的人才状态 =-1是代表全部',
  `count` int(11) UNSIGNED NULL DEFAULT 0 COMMENT '订单人才表的数量',
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `unique_order_id_status`(`order_id`, `order_talent_state`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单维度的订单人才状态数量统计' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_talent_count_1
-- ----------------------------

-- ----------------------------
-- Table structure for order_talent_record_0
-- ----------------------------
DROP TABLE IF EXISTS `order_talent_record_0`;
CREATE TABLE `order_talent_record_0`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `order_id` bigint(20) NULL DEFAULT NULL,
  `order_talent_id` bigint(20) NULL DEFAULT 0 COMMENT '订单人才id',
  `status` tinyint(2) NULL DEFAULT 1 COMMENT '状态 E{ 1=新候选人 3=已邀约 4=邀约成功 5=已到面 6=面试通过 7=待入职 8=已入职 10=已过保 11=淘汰 20=PM筛选通过 25=客户筛选通过 30=待面试}',
  `last_fill_time` datetime NULL DEFAULT NULL COMMENT '状态对应的上次填写时间（到岗日期、过保日期）',
  `fill_time` datetime NULL DEFAULT NULL COMMENT '状态对应的填写时间（到岗日期、过保日期）',
  `valid_status` tinyint(2) NULL DEFAULT 0 COMMENT '有效状态 0-有效 1-失效',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_time` datetime NULL DEFAULT NULL COMMENT '上次更新时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `operate_id` bigint(20) NULL DEFAULT 0 COMMENT '操作人id',
  `operate_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人姓名（麒麟）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_order_talent_id`(`order_talent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单人才状态移动跟踪表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_talent_record_0
-- ----------------------------

-- ----------------------------
-- Table structure for order_talent_record_1
-- ----------------------------
DROP TABLE IF EXISTS `order_talent_record_1`;
CREATE TABLE `order_talent_record_1`  (
  `id` bigint(20) NOT NULL COMMENT '主键',
  `order_id` bigint(20) NULL DEFAULT NULL,
  `order_talent_id` bigint(20) NULL DEFAULT 0 COMMENT '订单人才id',
  `status` tinyint(2) NULL DEFAULT 1 COMMENT '状态 E{ 1=新候选人 3=已邀约 4=邀约成功 5=已到面 6=面试通过 7=待入职 8=已入职 10=已过保 11=淘汰 20=PM筛选通过 25=客户筛选通过 30=待面试}',
  `last_fill_time` datetime NULL DEFAULT NULL COMMENT '状态对应的上次填写时间（到岗日期、过保日期）',
  `fill_time` datetime NULL DEFAULT NULL COMMENT '状态对应的填写时间（到岗日期、过保日期）',
  `valid_status` tinyint(2) NULL DEFAULT 0 COMMENT '有效状态 0-有效 1-失效',
  `create_time` datetime NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `last_update_time` datetime NULL DEFAULT NULL COMMENT '上次更新时间',
  `update_time` datetime NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '更新时间',
  `operate_id` bigint(20) NULL DEFAULT 0 COMMENT '操作人id',
  `operate_name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '' COMMENT '操作人姓名（麒麟）',
  PRIMARY KEY (`id`) USING BTREE,
  INDEX `idx_order_talent_id`(`order_talent_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci COMMENT = '订单人才状态移动跟踪表' ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of order_talent_record_1
-- ----------------------------

SET FOREIGN_KEY_CHECKS = 1;
