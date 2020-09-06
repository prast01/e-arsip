/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100128
 Source Host           : localhost:3306
 Source Schema         : db_arsip

 Target Server Type    : MySQL
 Target Server Version : 100128
 File Encoding         : 65001

 Date: 14/02/2020 11:37:00
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tb_detail_pegawai
-- ----------------------------
DROP TABLE IF EXISTS `tb_detail_pegawai`;
CREATE TABLE `tb_detail_pegawai`  (
  `id_detail_pegawai` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_pegawai` int(11) NULL DEFAULT NULL,
  `jml_berangkat` int(11) NULL DEFAULT NULL,
  `dalam_luar` int(2) NULL DEFAULT NULL,
  `bln_kegiatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `minggu` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_detail_pegawai`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 750 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_detail_pegawai
-- ----------------------------
INSERT INTO `tb_detail_pegawai` VALUES (30, '3', 20, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (31, '3', 107, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (32, '4', 20, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (33, '4', 107, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (36, '5', 59, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (37, '6', 86, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (39, '7', 54, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (40, '7', 110, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (45, '10', 47, 2, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (46, '11', 32, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (47, '11', 107, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (48, '8', 47, 2, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (49, '8', 80, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (50, '12', 32, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (51, '12', 107, 4, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (59, '14', 15, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (60, '2', 27, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (61, '2', 28, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (62, '9', 35, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (63, '15', 63, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (64, '15', 65, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (65, '16', 15, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (66, '16', 23, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (67, '16', 25, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (68, '16', 59, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (69, '16', 104, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (70, '16', 124, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (72, '18', 63, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (73, '18', 67, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (74, '19', 53, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (78, '21', 63, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (79, '21', 64, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (80, '22', 110, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (81, '22', 39, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (82, '23', 41, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (83, '24', 18, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (84, '24', 28, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (86, '25', 2, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (87, '26', 34, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (101, '28', 80, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (102, '30', 3, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (112, '34', 86, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (113, '34', 126, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (114, '34', 127, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (115, '35', 36, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (120, '27', 14, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (121, '27', 29, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (125, '36', 3, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (126, '29', 97, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (127, '29', 109, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (130, '38', 54, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (136, '39', 5, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (137, '39', 25, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (138, '39', 59, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (139, '39', 104, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (140, '39', 81, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (142, '37', 15, 2, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (143, '37', 43, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (144, '41', 3, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (145, '42', 85, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (146, '43', 2, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (147, '44', 20, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (148, '44', 107, 5, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (149, '45', 36, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (151, '46', 97, 2, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (154, '47', 34, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (155, '48', 106, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (156, '49', 19, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (172, '50', 54, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (173, '50', 110, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (174, '51', 25, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (175, '51', 59, 4, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (176, '51', 104, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (182, '53', 18, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (183, '53', 28, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (184, '53', 45, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (187, '56', 41, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (188, '20', 12, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (189, '20', 84, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (192, '57', 110, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (193, '57', 119, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (196, '58', 7, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (197, '58', 15, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (198, '58', 18, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (199, '58', 79, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (200, '58', 83, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (201, '52', 28, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (202, '52', 45, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (203, '59', 7, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (204, '59', 83, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (205, '60', 3, 5, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (206, '61', 54, 4, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (208, '63', 25, 4, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (209, '63', 59, 5, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (210, '63', 81, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (211, '63', 104, 4, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (212, '62', 15, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (213, '64', 2, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (215, '65', 86, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (216, '55', 23, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (217, '54', 23, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (221, '66', 54, 5, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (222, '66', 119, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (223, '67', 54, 6, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (224, '67', 104, 5, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (229, '69', 54, 8, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (230, '69', 104, 7, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (232, '70', 67, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (233, '70', 68, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (236, '72', 67, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (237, '72', 68, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (238, '73', 65, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (239, '73', 68, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (242, '71', 14, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (243, '71', 29, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (244, '75', 4, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (245, '75', 18, 4, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (246, '75', 110, 4, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (247, '75', 28, 4, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (248, '75', 39, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (249, '75', 125, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (256, '76', 41, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (257, '77', 36, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (258, '77', 86, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (259, '78', 2, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (260, '79', 34, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (261, '80', 43, 2, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (262, '80', 80, 2, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (264, '81', 86, 4, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (267, '82', 30, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (271, '84', 3, 5, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (272, '84', 59, 6, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (273, '84', 8, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (274, '85', 10, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (275, '85', 60, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (276, '85', 24, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (277, '86', 92, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (278, '86', 95, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (279, '87', 59, 7, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (280, '87', 30, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (281, '87', 79, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (285, '89', 5, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (286, '89', 23, 5, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (287, '89', 79, 4, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (299, '92', 1, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (300, '92', 16, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (301, '92', 19, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (302, '92', 82, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (303, '93', 9, 1, 1, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (308, '95', 4, 1, 1, '2020-02', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (309, '94', 42, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (310, '94', 32, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (311, '96', 32, 4, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (312, '96', 42, 2, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (313, '97', 17, 1, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (314, '97', 42, 3, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (315, '98', 59, 8, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (316, '98', 32, 5, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (317, '98', 107, 6, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (318, '99', 23, 6, 0, '2020-01', NULL);
INSERT INTO `tb_detail_pegawai` VALUES (321, '90', 5, 1, 0, '2020-01', '04');
INSERT INTO `tb_detail_pegawai` VALUES (322, '90', 92, 1, 0, '2020-01', '04');
INSERT INTO `tb_detail_pegawai` VALUES (323, '101', 30, 1, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (324, '102', 22, 1, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (325, '102', 84, 1, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (326, '100', 36, 2, 1, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (327, '100', 86, 2, 1, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (330, '83', 60, 1, 0, '2020-01', '04');
INSERT INTO `tb_detail_pegawai` VALUES (331, '83', 25, 1, 0, '2020-01', '04');
INSERT INTO `tb_detail_pegawai` VALUES (332, '83', 30, 1, 0, '2020-01', '04');
INSERT INTO `tb_detail_pegawai` VALUES (333, '104', 104, 1, 1, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (334, '88', 3, 1, 0, '2020-01', '04');
INSERT INTO `tb_detail_pegawai` VALUES (335, '88', 79, 1, 0, '2020-01', '04');
INSERT INTO `tb_detail_pegawai` VALUES (336, '105', 2, 1, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (337, '74', 14, 1, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (338, '74', 29, 1, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (339, '91', 58, 1, 0, '2020-01', '04');
INSERT INTO `tb_detail_pegawai` VALUES (340, '91', 53, 1, 0, '2020-01', '04');
INSERT INTO `tb_detail_pegawai` VALUES (341, '91', 19, 1, 0, '2020-01', '04');
INSERT INTO `tb_detail_pegawai` VALUES (342, '106', 12, 1, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (343, '106', 124, 1, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (345, '108', 4, 1, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (346, '108', 10, 1, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (359, '109', 25, 1, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (360, '109', 9, 2, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (361, '109', 19, 2, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (362, '109', 82, 1, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (363, '113', 3, 0, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (364, '113', 36, 0, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (366, '103', 9, 2, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (367, '103', 19, 2, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (372, '116', 5, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (373, '116', 21, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (374, '115', 22, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (375, '115', 84, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (376, '111', 124, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (377, '111', 12, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (381, '110', 26, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (382, '110', 11, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (383, '110', 96, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (384, '117', 6, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (385, '117', 106, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (390, '119', 79, 1, 1, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (391, '119', 83, 1, 1, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (392, '120', 59, 0, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (395, '121', 59, 0, 0, '2020-01', '03');
INSERT INTO `tb_detail_pegawai` VALUES (397, '122', 59, 0, 0, '2020-01', '03');
INSERT INTO `tb_detail_pegawai` VALUES (400, '123', 42, 0, 0, '2020-01', '04');
INSERT INTO `tb_detail_pegawai` VALUES (401, '123', 32, 0, 0, '2020-01', '04');
INSERT INTO `tb_detail_pegawai` VALUES (402, '124', 32, 0, 0, '2020-01', '02');
INSERT INTO `tb_detail_pegawai` VALUES (403, '125', 32, 0, 0, '2020-01', '01');
INSERT INTO `tb_detail_pegawai` VALUES (404, '126', 20, 1, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (405, '126', 107, 1, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (415, '130', 18, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (416, '130', 7, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (417, '130', 31, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (418, '130', 38, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (420, '114', 97, 1, 1, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (421, '131', 41, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (425, '133', 15, 1, 1, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (426, '133', 43, 1, 1, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (427, '133', 47, 1, 1, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (428, '132', 14, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (429, '132', 29, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (430, '134', 34, 0, 0, '2020-01', '03');
INSERT INTO `tb_detail_pegawai` VALUES (431, '135', 34, 0, 0, '2020-02', '09');
INSERT INTO `tb_detail_pegawai` VALUES (438, '137', 106, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (439, '137', 48, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (440, '136', 6, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (441, '136', 8, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (444, '138', 6, 3, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (445, '138', 8, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (448, '139', 94, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (449, '139', 48, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (451, '140', 36, 0, 0, '2020-01', '02');
INSERT INTO `tb_detail_pegawai` VALUES (457, '141', 36, 0, 0, '2020-01', '03');
INSERT INTO `tb_detail_pegawai` VALUES (459, '143', 36, 0, 0, '2020-01', '03');
INSERT INTO `tb_detail_pegawai` VALUES (460, '144', 36, 0, 0, '2020-01', '04');
INSERT INTO `tb_detail_pegawai` VALUES (463, '145', 36, 0, 1, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (464, '142', 36, 0, 0, '2020-01', '03');
INSERT INTO `tb_detail_pegawai` VALUES (465, '146', 97, 2, 1, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (466, '147', 86, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (467, '147', 126, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (468, '147', 127, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (469, '148', 36, 3, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (470, '149', 9, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (471, '149', 19, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (472, '149', 82, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (475, '150', 63, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (476, '150', 68, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (477, '151', 20, 0, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (478, '151', 107, 0, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (479, '152', 53, 0, 1, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (482, '153', 110, 1, 1, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (483, '153', 119, 1, 1, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (484, '154', 63, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (485, '154', 68, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (490, '156', 23, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (491, '156', 78, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (492, '157', 6, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (493, '157', 8, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (494, '157', 106, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (495, '158', 2, 2, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (496, '159', 3, 2, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (497, '160', 63, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (498, '160', 64, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (499, '161', 2, 3, 0, '2020-01', '05');
INSERT INTO `tb_detail_pegawai` VALUES (501, '163', 2, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (502, '164', 2, 1, 1, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (507, '166', 23, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (508, '166', 78, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (512, '169', 63, 0, 1, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (513, '169', 64, 0, 1, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (514, '169', 67, 0, 1, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (515, '170', 65, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (516, '170', 68, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (517, '171', 25, 0, 1, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (518, '171', 48, 0, 1, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (523, '172', 6, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (524, '172', 106, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (525, '173', 48, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (526, '173', 94, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (529, '175', 94, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (530, '175', 106, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (531, '174', 8, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (532, '174', 48, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (533, '176', 105, 0, 1, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (534, '176', 109, 0, 1, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (535, '168', 13, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (536, '168', 29, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (541, '179', 57, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (542, '179', 72, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (543, '179', 74, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (544, '179', 75, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (551, '180', 21, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (552, '155', 97, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (553, '155', 86, 4, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (556, '165', 3, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (557, '165', 36, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (558, '165', 41, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (559, '182', 36, 5, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (560, '183', 36, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (564, '185', 33, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (569, '186', 18, 0, 1, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (570, '186', 28, 0, 1, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (571, '186', 45, 0, 1, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (578, '188', 20, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (579, '188', 107, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (588, '189', 20, 0, 0, '2020-02', '08');
INSERT INTO `tb_detail_pegawai` VALUES (589, '189', 17, 0, 0, '2020-02', '08');
INSERT INTO `tb_detail_pegawai` VALUES (601, '190', 59, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (602, '190', 17, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (603, '190', 42, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (613, '187', 35, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (614, '187', 43, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (615, '187', 80, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (617, '68', 15, 1, 0, '2020-01', '02');
INSERT INTO `tb_detail_pegawai` VALUES (618, '68', 104, 1, 0, '2020-01', '02');
INSERT INTO `tb_detail_pegawai` VALUES (619, '68', 124, 1, 0, '2020-01', '02');
INSERT INTO `tb_detail_pegawai` VALUES (620, '195', 59, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (634, '194', 21, 3, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (639, '177', 6, 2, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (640, '177', 8, 3, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (641, '184', 124, 2, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (642, '184', 12, 2, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (643, '184', 96, 2, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (650, '129', 36, 5, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (651, '200', 9, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (652, '200', 19, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (653, '200', 98, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (654, '201', 41, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (658, '204', 67, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (659, '204', 68, 0, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (660, '205', 65, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (661, '205', 67, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (669, '206', 4, 2, 1, '2020-02', '08');
INSERT INTO `tb_detail_pegawai` VALUES (670, '206', 18, 2, 1, '2020-02', '08');
INSERT INTO `tb_detail_pegawai` VALUES (675, '192', 54, 1, 1, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (676, '192', 51, 1, 1, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (677, '192', 104, 1, 1, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (678, '192', 106, 1, 1, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (679, '207', 43, 2, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (680, '207', 47, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (681, '208', 33, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (682, '209', 64, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (683, '209', 68, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (684, '127', 36, 1, 0, '2020-02', '05');
INSERT INTO `tb_detail_pegawai` VALUES (685, '210', 18, 2, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (686, '210', 27, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (687, '210', 28, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (688, '210', 45, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (689, '211', 28, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (690, '211', 45, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (694, '128', 126, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (695, '128', 127, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (696, '128', 86, 3, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (697, '212', 36, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (698, '213', 97, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (699, '214', 97, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (700, '178', 6, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (701, '178', 8, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (702, '203', 53, 2, 1, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (703, '203', 41, 1, 1, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (704, '215', 33, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (706, '216', 7, 2, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (707, '216', 18, 3, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (708, '216', 83, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (709, '217', 31, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (710, '181', 18, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (711, '181', 31, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (712, '181', 38, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (713, '218', 18, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (714, '218', 27, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (715, '218', 28, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (716, '219', 28, 2, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (717, '220', 67, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (718, '220', 68, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (719, '221', 97, 0, 0, '2020-02', '08');
INSERT INTO `tb_detail_pegawai` VALUES (723, '223', 33, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (724, '224', 64, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (725, '224', 65, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (726, '222', 15, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (727, '222', 43, 3, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (728, '196', 3, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (729, '196', 58, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (730, '196', 5, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (731, '196', 59, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (732, '196', 34, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (733, '196', 21, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (734, '196', 124, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (735, '196', 12, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (736, '196', 11, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (737, '196', 22, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (738, '196', 44, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (739, '196', 96, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (740, '196', 84, 0, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (741, '162', 3, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (742, '162', 10, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (743, '162', 2, 2, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (744, '162', 34, 1, 0, '2020-02', '06');
INSERT INTO `tb_detail_pegawai` VALUES (745, '198', 126, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (746, '198', 127, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (747, '198', 86, 1, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (748, '197', 36, 3, 0, '2020-02', '07');
INSERT INTO `tb_detail_pegawai` VALUES (749, '225', 97, 0, 1, '2020-02', '06');

-- ----------------------------
-- Table structure for tb_dispo_bidang
-- ----------------------------
DROP TABLE IF EXISTS `tb_dispo_bidang`;
CREATE TABLE `tb_dispo_bidang`  (
  `id_dispo_bidang` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_dinas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `posisi_bidang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bidang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_dispo_bidang`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 109 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_dispo_bidang
-- ----------------------------
INSERT INTO `tb_dispo_bidang` VALUES (1, '1', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (2, '7', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (3, '10', '14', '3');
INSERT INTO `tb_dispo_bidang` VALUES (4, '16', '14', '3');
INSERT INTO `tb_dispo_bidang` VALUES (5, '18', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (6, '20', '7', '2');
INSERT INTO `tb_dispo_bidang` VALUES (7, '27', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (8, '28', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (9, '29', '14', '3');
INSERT INTO `tb_dispo_bidang` VALUES (10, '30', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (11, '33', '12', '4');
INSERT INTO `tb_dispo_bidang` VALUES (12, '34', '7', '2');
INSERT INTO `tb_dispo_bidang` VALUES (13, '36', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (14, '43', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (15, '53', '14', '3');
INSERT INTO `tb_dispo_bidang` VALUES (16, '57', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (17, '58', '12', '4');
INSERT INTO `tb_dispo_bidang` VALUES (18, '64', '13', '4');
INSERT INTO `tb_dispo_bidang` VALUES (20, '74', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (21, '97', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (22, '90', '14', '3');
INSERT INTO `tb_dispo_bidang` VALUES (23, '88', '14', '3');
INSERT INTO `tb_dispo_bidang` VALUES (24, '87', '14', '3');
INSERT INTO `tb_dispo_bidang` VALUES (25, '104', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (26, '93', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (27, '92', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (28, '89', '13', '4');
INSERT INTO `tb_dispo_bidang` VALUES (29, '85', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (30, '68', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (31, '71', '13', '4');
INSERT INTO `tb_dispo_bidang` VALUES (32, '39', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (33, '72', '7', '2');
INSERT INTO `tb_dispo_bidang` VALUES (35, '142', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (36, '136', '14', '3');
INSERT INTO `tb_dispo_bidang` VALUES (37, '123', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (38, '118', '10', '3');
INSERT INTO `tb_dispo_bidang` VALUES (39, '139', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (40, '138', '13', '4');
INSERT INTO `tb_dispo_bidang` VALUES (41, '135', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (42, '128', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (43, '116', '12', '4');
INSERT INTO `tb_dispo_bidang` VALUES (44, '124', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (45, '119', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (46, '108', '13', '4');
INSERT INTO `tb_dispo_bidang` VALUES (47, '95', '12', '4');
INSERT INTO `tb_dispo_bidang` VALUES (48, '17', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (49, '84', '12', '4');
INSERT INTO `tb_dispo_bidang` VALUES (50, '133', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (51, '156', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (52, '148', '13', '4');
INSERT INTO `tb_dispo_bidang` VALUES (53, '147', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (54, '152', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (55, '115', '9', '2');
INSERT INTO `tb_dispo_bidang` VALUES (56, '122', '8', '2');
INSERT INTO `tb_dispo_bidang` VALUES (57, '117', '7', '2');
INSERT INTO `tb_dispo_bidang` VALUES (58, '172', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (59, '150', '7', '2');
INSERT INTO `tb_dispo_bidang` VALUES (60, '146', '7', '2');
INSERT INTO `tb_dispo_bidang` VALUES (61, '176', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (62, '167', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (63, '162', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (64, '160', '14', '3');
INSERT INTO `tb_dispo_bidang` VALUES (65, '178', '12', '4');
INSERT INTO `tb_dispo_bidang` VALUES (66, '181', '12', '4');
INSERT INTO `tb_dispo_bidang` VALUES (67, '180', '12', '4');
INSERT INTO `tb_dispo_bidang` VALUES (68, '179', '12', '4');
INSERT INTO `tb_dispo_bidang` VALUES (69, '171', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (70, '155', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (71, '224', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (72, '222', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (73, '202', '10', '3');
INSERT INTO `tb_dispo_bidang` VALUES (74, '228', '7', '2');
INSERT INTO `tb_dispo_bidang` VALUES (75, '226', '8', '2');
INSERT INTO `tb_dispo_bidang` VALUES (76, '219', '7', '2');
INSERT INTO `tb_dispo_bidang` VALUES (77, '251', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (78, '248', '12', '4');
INSERT INTO `tb_dispo_bidang` VALUES (79, '246', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (80, '245', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (81, '244', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (82, '206', '12', '4');
INSERT INTO `tb_dispo_bidang` VALUES (83, '215', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (84, '235', '13', '4');
INSERT INTO `tb_dispo_bidang` VALUES (85, '270', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (86, '260', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (87, '272', '10', '3');
INSERT INTO `tb_dispo_bidang` VALUES (88, '274', '13', '4');
INSERT INTO `tb_dispo_bidang` VALUES (89, '257', '7', '2');
INSERT INTO `tb_dispo_bidang` VALUES (90, '238', '9', '2');
INSERT INTO `tb_dispo_bidang` VALUES (91, '213', '9', '2');
INSERT INTO `tb_dispo_bidang` VALUES (92, '212', '7', '2');
INSERT INTO `tb_dispo_bidang` VALUES (93, '313', '10', '3');
INSERT INTO `tb_dispo_bidang` VALUES (94, '303', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (95, '296', '14', '3');
INSERT INTO `tb_dispo_bidang` VALUES (96, '299', '12', '4');
INSERT INTO `tb_dispo_bidang` VALUES (97, '335', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (98, '331', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (99, '312', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (100, '301', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (101, '300', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (102, '286', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (103, '315', '13', '4');
INSERT INTO `tb_dispo_bidang` VALUES (104, '277', '15', '4');
INSERT INTO `tb_dispo_bidang` VALUES (105, '361', '11', '3');
INSERT INTO `tb_dispo_bidang` VALUES (106, '359', '14', '3');
INSERT INTO `tb_dispo_bidang` VALUES (107, '351', '14', '3');
INSERT INTO `tb_dispo_bidang` VALUES (108, '345', '10', '3');

-- ----------------------------
-- Table structure for tb_dispo_kadin
-- ----------------------------
DROP TABLE IF EXISTS `tb_dispo_kadin`;
CREATE TABLE `tb_dispo_kadin`  (
  `id_dispo_kadin` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_dinas` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `posisi_kadin` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `catatan` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  PRIMARY KEY (`id_dispo_kadin`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 375 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_dispo_kadin
-- ----------------------------
INSERT INTO `tb_dispo_kadin` VALUES (1, '1', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (2, '2', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (3, '3', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (4, '4', '5', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (5, '5', '5', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (6, '6', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (7, '7', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (8, '8', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (9, '9', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (10, '10', '14', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (11, '11', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (12, '12', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (13, '13', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (14, '14', '5', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (15, '15', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (16, '16', '14', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (17, '17', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (18, '18', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (19, '19', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (20, '20', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (21, '21', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (22, '22', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (23, '23', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (24, '24', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (25, '25', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (26, '26', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (27, '27', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (28, '28', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (29, '29', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (30, '30', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (31, '31', '5', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (32, '32', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (33, '33', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (34, '34', '7', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (35, '35', '5', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (36, '36', '11', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (37, '37', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (38, '38', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (39, '39', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (40, '40', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (41, '41', '5', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (42, '42', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (43, '43', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (44, '44', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (45, '45', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (46, '46', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (47, '47', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (48, '48', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (49, '49', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (50, '50', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (51, '51', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (52, '52', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (53, '53', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (54, '54', '5', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (55, '55', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (56, '56', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (57, '57', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (58, '58', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (59, '59', '5', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (60, '60', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (61, '61', '5', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (62, '62', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (63, '63', '5', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (64, '64', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (65, '65', '5', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (66, '66', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (67, '67', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (68, '68', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (69, '69', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (70, '70', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (71, '71', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (72, '72', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (73, '73', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (74, '74', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (75, '75', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (76, '76', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (77, '77', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (78, '78', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (79, '79', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (80, '80', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (81, '81', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (82, '82', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (83, '83', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (84, '84', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (85, '85', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (86, '86', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (87, '87', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (88, '88', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (89, '89', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (90, '90', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (91, '91', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (92, '92', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (93, '93', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (94, '94', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (95, '95', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (96, '96', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (97, '97', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (98, '98', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (99, '99', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (100, '100', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (101, '101', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (102, '102', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (103, '103', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (104, '104', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (105, '105', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (106, '106', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (107, '107', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (108, '108', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (109, '109', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (110, '110', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (111, '111', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (112, '112', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (113, '113', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (114, '114', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (115, '115', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (116, '116', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (117, '117', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (119, '118', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (120, '119', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (121, '120', '1', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (122, '121', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (123, '122', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (124, '123', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (125, '124', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (126, '125', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (127, '126', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (128, '127', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (129, '128', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (131, '130', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (132, '131', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (133, '132', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (134, '133', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (135, '134', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (136, '135', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (137, '136', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (138, '137', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (139, '138', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (140, '139', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (141, '140', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (142, '141', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (143, '142', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (144, '143', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (145, '144', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (146, '145', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (147, '146', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (148, '147', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (149, '148', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (150, '149', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (151, '150', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (152, '151', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (153, '152', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (154, '153', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (155, '154', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (156, '155', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (157, '156', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (158, '157', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (159, '129', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (160, '158', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (161, '159', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (162, '160', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (163, '161', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (164, '162', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (165, '163', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (166, '164', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (167, '165', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (168, '166', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (169, '167', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (170, '168', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (171, '169', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (172, '170', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (173, '171', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (174, '172', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (175, '173', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (176, '174', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (178, '176', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (179, '177', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (180, '178', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (181, '179', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (182, '180', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (183, '181', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (184, '182', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (185, '183', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (186, '184', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (187, '185', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (188, '186', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (189, '187', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (191, '188', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (192, '189', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (193, '190', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (194, '191', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (195, '192', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (196, '193', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (197, '194', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (198, '195', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (199, '196', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (200, '197', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (201, '198', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (202, '199', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (203, '200', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (204, '201', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (205, '202', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (206, '203', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (207, '204', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (209, '205', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (210, '206', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (211, '207', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (212, '208', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (213, '209', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (214, '210', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (215, '211', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (216, '212', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (217, '213', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (218, '214', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (219, '215', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (220, '216', '1', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (221, '217', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (222, '218', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (223, '219', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (224, '220', '1', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (225, '221', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (226, '222', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (227, '223', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (228, '224', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (229, '225', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (230, '226', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (231, '227', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (232, '228', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (233, '229', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (234, '230', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (235, '231', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (236, '232', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (237, '233', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (238, '234', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (239, '235', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (240, '236', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (241, '237', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (242, '238', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (243, '239', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (244, '240', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (245, '241', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (246, '242', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (247, '243', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (248, '244', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (249, '245', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (250, '246', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (251, '247', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (252, '248', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (253, '249', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (254, '250', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (255, '251', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (256, '252', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (257, '253', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (258, '254', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (259, '255', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (260, '256', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (261, '257', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (262, '258', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (263, '259', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (264, '260', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (265, '261', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (266, '262', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (267, '263', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (268, '264', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (269, '265', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (270, '266', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (271, '267', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (272, '268', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (273, '269', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (274, '270', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (275, '271', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (277, '272', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (278, '273', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (279, '274', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (280, '275', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (281, '276', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (282, '277', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (283, '278', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (284, '279', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (285, '280', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (286, '281', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (287, '282', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (288, '283', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (289, '284', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (290, '285', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (291, '286', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (292, '287', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (293, '288', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (294, '289', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (295, '290', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (296, '291', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (297, '292', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (298, '293', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (299, '294', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (300, '295', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (301, '296', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (302, '297', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (303, '298', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (304, '299', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (305, '300', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (306, '301', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (307, '302', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (308, '303', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (309, '304', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (310, '305', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (311, '306', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (312, '307', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (313, '308', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (314, '309', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (315, '310', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (316, '311', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (317, '312', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (318, '313', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (319, '314', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (320, '314', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (321, '315', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (322, '316', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (323, '317', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (324, '318', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (325, '319', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (328, '321', '1', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (329, '322', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (330, '323', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (331, '324', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (332, '325', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (333, '326', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (334, '327', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (335, '328', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (336, '329', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (337, '330', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (338, '331', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (339, '332', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (340, '333', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (341, '334', '2', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (342, '335', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (343, '336', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (344, '337', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (345, '338', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (346, '339', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (347, '340', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (348, '341', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (349, '342', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (350, '343', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (351, '344', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (352, '345', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (353, '346', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (354, '347', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (355, '348', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (356, '349', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (357, '350', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (358, '351', '3', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (359, '352', '13', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (360, '353', '13', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (361, '354', '5', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (362, '355', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (364, '357', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (365, '358', '5', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (366, '359', '14', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (367, '360', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (368, '361', '11', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (369, '362', '4', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (372, '356', '6', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (373, '320', '19', NULL);
INSERT INTO `tb_dispo_kadin` VALUES (374, '363', '6', NULL);

-- ----------------------------
-- Table structure for tb_dispo_pegawai
-- ----------------------------
DROP TABLE IF EXISTS `tb_dispo_pegawai`;
CREATE TABLE `tb_dispo_pegawai`  (
  `id_dispo_pegawai` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_dinas` int(11) NULL DEFAULT NULL,
  `id_pegawai` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `seksi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `catatan` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_dispo_pegawai`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 106 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_dispo_pegawai
-- ----------------------------
INSERT INTO `tb_dispo_pegawai` VALUES (1, 4, '51', '5', 'Hadiri Rapat');
INSERT INTO `tb_dispo_pegawai` VALUES (2, 5, '103', '5', 'Copy dan Sebarkan ke seluruh Bidang, seksi, UPT dan Arsipkan');
INSERT INTO `tb_dispo_pegawai` VALUES (4, 14, '50', '5', 'Hadiri');
INSERT INTO `tb_dispo_pegawai` VALUES (5, 20, '0', '7', 'arsipkan');
INSERT INTO `tb_dispo_pegawai` VALUES (6, 31, '92', '5', 'Cari Data dan Laporkan');
INSERT INTO `tb_dispo_pegawai` VALUES (7, 34, '0', '7', 'arsipkan');
INSERT INTO `tb_dispo_pegawai` VALUES (8, 35, '24', '5', 'tolong cari data di semua seksi untuk di masukkan ke SIRUP');
INSERT INTO `tb_dispo_pegawai` VALUES (10, 41, '50', '5', 'Arsipkan');
INSERT INTO `tb_dispo_pegawai` VALUES (11, 43, '5', '11', 'mempersiapkan data');
INSERT INTO `tb_dispo_pegawai` VALUES (12, 54, '30', '5', 'Hadiri rapat');
INSERT INTO `tb_dispo_pegawai` VALUES (14, 59, '92', '5', 'Siapkan bahan,  kasubag renval keu mendampingi kadin');
INSERT INTO `tb_dispo_pegawai` VALUES (15, 61, '23', '5', 'Dihadiri kasubag renval keu');
INSERT INTO `tb_dispo_pegawai` VALUES (17, 65, '24', '5', 'Feedback data baik, pertahankan dan arsipkan');
INSERT INTO `tb_dispo_pegawai` VALUES (19, 35, '77', '5', 'tolong cari data di semua seksi untuk di masukkan ke SIRUP');
INSERT INTO `tb_dispo_pegawai` VALUES (20, 59, '95', '5', 'Siapkan bahan,  kasubag renval keu mendampingi kadin');
INSERT INTO `tb_dispo_pegawai` VALUES (21, 64, '0', '13', 'Arsipkan');
INSERT INTO `tb_dispo_pegawai` VALUES (22, 63, '103', '5', 'Bikin nota dinas untuk jadwal petugas musrenbang');
INSERT INTO `tb_dispo_pegawai` VALUES (24, 71, '15', '13', 'Hadiri Kasi SDMK ');
INSERT INTO `tb_dispo_pegawai` VALUES (26, 89, '15', '13', 'Agenda Kasi SDMK');
INSERT INTO `tb_dispo_pegawai` VALUES (27, 72, '36', '7', 'tindak lanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (28, 107, '24', '5', 'Usulkan Ellyani sebagai koordinator');
INSERT INTO `tb_dispo_pegawai` VALUES (29, 106, '103', '5', 'Kembali ke Sekdin, Pengelola website adalah tupoksi Umpeg');
INSERT INTO `tb_dispo_pegawai` VALUES (31, 100, '30', '5', 'Hadiri');
INSERT INTO `tb_dispo_pegawai` VALUES (32, 105, '78', '5', 'Hadiri');
INSERT INTO `tb_dispo_pegawai` VALUES (33, 90, '32', '14', 'untuk segera ditindaklanjuti ');
INSERT INTO `tb_dispo_pegawai` VALUES (34, 87, '32', '14', 'agar dipenuhi undangan ');
INSERT INTO `tb_dispo_pegawai` VALUES (35, 29, '93', '14', 'segera ditindaklanjuti ');
INSERT INTO `tb_dispo_pegawai` VALUES (36, 88, '17', '14', 'agar dihadiri');
INSERT INTO `tb_dispo_pegawai` VALUES (37, 53, '20', '14', 'agar dipenuhi undangan ');
INSERT INTO `tb_dispo_pegawai` VALUES (38, 16, '42', '14', 'untuk dipenuhi undangan');
INSERT INTO `tb_dispo_pegawai` VALUES (39, 10, '17', '14', 'agar dipenuhi');
INSERT INTO `tb_dispo_pegawai` VALUES (41, 98, '0', '5', '');
INSERT INTO `tb_dispo_pegawai` VALUES (42, 82, '24', '5', 'Tindaklanjutkan');
INSERT INTO `tb_dispo_pegawai` VALUES (46, 132, '103', '5', 'Scan pdf dan umumkan file ke WAG DKK');
INSERT INTO `tb_dispo_pegawai` VALUES (47, 136, '17', '14', 'untuk ditindaklanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (48, 118, '19', '10', 'Tekankan capaian target PHBS');
INSERT INTO `tb_dispo_pegawai` VALUES (49, 138, '15', '13', 'Hadiri');
INSERT INTO `tb_dispo_pegawai` VALUES (50, 138, '43', '13', 'Hadiri');
INSERT INTO `tb_dispo_pegawai` VALUES (51, 108, '43', '13', 'Inventaris Untuk Usulan');
INSERT INTO `tb_dispo_pegawai` VALUES (52, 116, '27', '12', '');
INSERT INTO `tb_dispo_pegawai` VALUES (54, 157, '95', '5', 'Bikin Penilaian untuk Puskesmas Mayong I\r\nArsipkan');
INSERT INTO `tb_dispo_pegawai` VALUES (55, 148, '35', '13', 'siapkan dan fasilitasi');
INSERT INTO `tb_dispo_pegawai` VALUES (56, 117, '33', '7', 'ditindaklanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (57, 129, '30', '5', 'Tindaklanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (59, 170, '24', '5', 'Tindaklanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (60, 102, '51', '5', 'Arsipkan');
INSERT INTO `tb_dispo_pegawai` VALUES (61, 156, '5', '11', 'Tindaklanjuti ');
INSERT INTO `tb_dispo_pegawai` VALUES (62, 142, '22', '11', 'Tindaklanjuti ');
INSERT INTO `tb_dispo_pegawai` VALUES (63, 123, '12', '11', 'Tindaklanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (64, 97, '5', '11', 'Tindaklanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (65, 57, '12', '11', 'Tindaklanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (66, 36, '12', '11', 'Tindaklanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (67, 7, '12', '11', 'Tindaklanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (68, 150, '97', '7', 'siapkan 3 puskesmas dan koordinasikan');
INSERT INTO `tb_dispo_pegawai` VALUES (69, 146, '97', '7', 'persiapkan data yang dibutuhkan dan tindaklanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (70, 146, '109', '7', 'persiapkan data yang dibutuhkan dan tindaklanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (71, 160, '0', '14', '');
INSERT INTO `tb_dispo_pegawai` VALUES (72, 184, '51', '5', 'kroscek dengan inspektorat tentang maksud dan tujuan surat');
INSERT INTO `tb_dispo_pegawai` VALUES (73, 217, '24', '5', 'Lengkapi dan Laporkan');
INSERT INTO `tb_dispo_pegawai` VALUES (77, 231, '50', '5', 'Kalau datang dikasih Rp. 200.000');
INSERT INTO `tb_dispo_pegawai` VALUES (78, 199, '23', '5', 'Dihadiri Kasubag Renkeu');
INSERT INTO `tb_dispo_pegawai` VALUES (79, 201, '103', '5', 'Rapat diundur\r\nArsipkan');
INSERT INTO `tb_dispo_pegawai` VALUES (80, 204, '23', '5', 'dihadiri Kasubag Renkeu');
INSERT INTO `tb_dispo_pegawai` VALUES (81, 176, '22', '11', 'tindak lanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (82, 222, '44', '11', 'Tindak lanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (83, 162, '5', '11', 'Tindaklanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (84, 221, '30', '5', 'Arsipkan usulan Kembang , masukkan prioritas setelah Puskesmas Bangsri I');
INSERT INTO `tb_dispo_pegawai` VALUES (85, 251, '22', '11', 'tindaklanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (86, 251, '84', '11', 'tindaklanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (87, 224, '95', '5', 'Dihadiri Kasubag renkeu\r\nSiapkan bahan-bahan');
INSERT INTO `tb_dispo_pegawai` VALUES (88, 265, '95', '5', 'Berikan data');
INSERT INTO `tb_dispo_pegawai` VALUES (89, 269, '92', '5', 'Hadiri');
INSERT INTO `tb_dispo_pegawai` VALUES (90, 270, '95', '5', 'Siapkan bahan-bahan:\r\n1. DPA 2020 yang berisi ringkasan\r\n2. Realisasi 2019\r\n3. Susunan belanja langsung dan tidak langsung, APBD 2, DAK ');
INSERT INTO `tb_dispo_pegawai` VALUES (91, 271, '77', '5', 'Hadiri');
INSERT INTO `tb_dispo_pegawai` VALUES (92, 274, '43', '13', 'Tindaklanjuti');
INSERT INTO `tb_dispo_pegawai` VALUES (93, 235, '47', '13', '');
INSERT INTO `tb_dispo_pegawai` VALUES (94, 248, '27', '12', 'hadiri');
INSERT INTO `tb_dispo_pegawai` VALUES (95, 181, '28', '12', 'Tindak lanjuti pembinaan ');
INSERT INTO `tb_dispo_pegawai` VALUES (96, 179, '28', '12', 'tINDAK LANJUTI PEMBINAAN ');
INSERT INTO `tb_dispo_pegawai` VALUES (97, 95, '28', '12', 'tINDAKLANJUTI ');
INSERT INTO `tb_dispo_pegawai` VALUES (98, 296, '0', '14', '');
INSERT INTO `tb_dispo_pegawai` VALUES (99, 328, '30', '5', 'Hadiri');
INSERT INTO `tb_dispo_pegawai` VALUES (101, 302, '51', '5', 'Usulkan');
INSERT INTO `tb_dispo_pegawai` VALUES (102, 282, '50', '5', 'Anggarkan Rp. 330.000');
INSERT INTO `tb_dispo_pegawai` VALUES (103, 275, '30', '5', 'Siapkan bahan-bahan dan mendampingi Bu Kadin');
INSERT INTO `tb_dispo_pegawai` VALUES (104, 276, '92', '5', 'Tindaklanjuti ');
INSERT INTO `tb_dispo_pegawai` VALUES (105, 310, '51', '5', 'siapkan bahan untuk kadin');

-- ----------------------------
-- Table structure for tb_dispo_sekdin
-- ----------------------------
DROP TABLE IF EXISTS `tb_dispo_sekdin`;
CREATE TABLE `tb_dispo_sekdin`  (
  `id_dispo_sekdin` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_dinas` int(11) NULL DEFAULT NULL,
  `posisi_sekdin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_dispo_sekdin`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 383 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_dispo_sekdin
-- ----------------------------
INSERT INTO `tb_dispo_sekdin` VALUES (1, 1, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (2, 2, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (3, 3, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (4, 4, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (5, 5, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (6, 6, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (7, 7, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (8, 8, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (9, 9, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (10, 10, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (11, 11, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (12, 12, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (13, 13, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (14, 14, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (15, 15, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (16, 16, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (17, 17, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (18, 18, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (19, 19, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (20, 20, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (21, 21, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (22, 22, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (23, 23, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (24, 24, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (25, 25, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (26, 26, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (27, 27, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (28, 28, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (29, 29, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (30, 30, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (31, 31, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (32, 32, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (33, 33, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (34, 34, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (35, 35, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (36, 36, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (37, 37, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (38, 38, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (39, 39, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (40, 40, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (41, 41, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (42, 42, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (43, 43, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (44, 44, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (45, 45, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (46, 46, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (47, 47, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (48, 48, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (49, 49, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (50, 50, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (51, 51, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (52, 52, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (53, 53, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (54, 54, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (55, 55, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (56, 56, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (57, 57, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (58, 58, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (59, 59, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (60, 60, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (61, 61, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (62, 62, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (63, 63, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (64, 64, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (65, 65, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (66, 66, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (67, 67, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (68, 68, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (69, 69, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (70, 70, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (71, 71, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (72, 72, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (73, 73, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (74, 74, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (75, 75, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (76, 76, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (77, 77, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (78, 108, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (79, 107, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (80, 106, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (81, 104, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (83, 97, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (84, 95, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (85, 93, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (86, 92, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (87, 88, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (88, 90, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (89, 89, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (90, 87, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (91, 86, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (92, 84, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (93, 85, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (94, 80, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (95, 105, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (96, 103, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (97, 102, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (98, 101, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (99, 100, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (106, 83, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (107, 82, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (108, 81, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (110, 79, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (111, 78, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (112, 99, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (113, 98, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (114, 98, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (115, 96, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (116, 94, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (117, 91, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (118, 109, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (119, 111, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (120, 110, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (121, 144, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (122, 143, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (123, 142, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (124, 141, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (125, 140, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (126, 139, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (127, 138, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (128, 137, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (129, 136, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (130, 135, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (131, 134, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (132, 133, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (133, 132, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (134, 131, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (135, 130, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (136, 129, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (137, 128, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (138, 127, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (139, 126, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (140, 125, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (141, 124, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (142, 123, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (143, 122, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (145, 121, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (146, 120, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (147, 119, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (148, 118, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (149, 117, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (150, 116, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (151, 115, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (152, 114, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (153, 113, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (154, 112, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (155, 147, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (156, 148, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (157, 146, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (158, 145, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (159, 157, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (160, 156, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (161, 155, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (162, 154, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (163, 153, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (164, 152, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (165, 151, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (166, 150, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (167, 160, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (168, 159, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (169, 166, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (170, 165, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (171, 164, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (172, 162, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (173, 167, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (174, 168, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (175, 158, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (176, 169, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (177, 172, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (178, 171, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (179, 170, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (180, 182, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (181, 181, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (182, 180, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (183, 179, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (184, 178, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (185, 177, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (186, 176, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (187, 183, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (189, 184, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (190, 174, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (191, 185, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (192, 173, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (193, 161, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (194, 163, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (195, 189, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (196, 188, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (197, 187, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (198, 186, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (199, 233, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (200, 232, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (201, 231, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (202, 230, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (203, 229, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (204, 228, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (205, 227, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (206, 226, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (207, 225, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (209, 223, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (210, 222, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (211, 221, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (212, 220, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (213, 219, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (214, 218, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (215, 217, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (216, 216, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (217, 215, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (218, 214, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (219, 213, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (220, 212, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (221, 211, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (222, 210, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (223, 209, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (224, 208, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (225, 207, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (226, 206, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (227, 205, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (228, 204, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (229, 204, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (230, 203, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (231, 202, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (232, 201, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (233, 200, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (234, 199, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (235, 198, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (236, 197, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (237, 196, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (238, 195, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (239, 194, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (240, 193, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (241, 192, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (242, 191, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (243, 190, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (244, 256, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (245, 255, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (246, 254, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (247, 253, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (248, 252, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (249, 251, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (250, 250, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (251, 249, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (252, 248, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (253, 247, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (254, 246, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (255, 245, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (256, 244, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (257, 243, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (258, 242, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (259, 242, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (260, 242, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (261, 241, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (262, 240, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (263, 239, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (264, 238, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (265, 237, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (266, 236, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (267, 235, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (268, 234, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (269, 224, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (270, 224, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (271, 270, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (272, 270, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (273, 269, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (274, 268, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (275, 267, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (276, 266, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (277, 265, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (278, 264, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (279, 263, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (280, 262, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (281, 261, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (282, 260, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (283, 259, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (284, 258, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (285, 257, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (286, 274, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (287, 273, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (288, 272, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (289, 271, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (290, 335, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (291, 334, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (292, 333, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (293, 332, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (294, 331, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (295, 330, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (296, 329, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (297, 328, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (298, 327, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (299, 326, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (300, 325, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (301, 324, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (302, 323, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (303, 322, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (304, 321, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (305, 320, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (306, 319, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (307, 318, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (308, 317, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (309, 316, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (310, 315, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (311, 314, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (313, 312, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (314, 311, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (315, 310, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (316, 310, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (317, 309, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (318, 308, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (319, 307, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (320, 306, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (321, 305, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (322, 304, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (323, 303, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (324, 302, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (325, 301, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (326, 300, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (327, 299, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (328, 298, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (329, 297, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (330, 296, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (331, 295, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (332, 336, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (333, 294, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (334, 293, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (335, 292, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (336, 291, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (337, 290, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (339, 287, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (340, 286, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (341, 285, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (342, 284, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (343, 283, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (344, 282, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (345, 281, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (346, 280, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (347, 279, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (348, 278, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (349, 277, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (350, 276, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (351, 275, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (352, 337, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (353, 313, '2');
INSERT INTO `tb_dispo_sekdin` VALUES (354, 313, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (355, 338, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (356, 289, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (357, 289, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (358, 363, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (359, 362, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (360, 361, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (361, 360, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (362, 359, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (363, 358, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (364, 357, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (365, 356, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (366, 355, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (367, 354, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (368, 353, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (369, 352, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (370, 351, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (371, 350, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (372, 349, '5');
INSERT INTO `tb_dispo_sekdin` VALUES (373, 348, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (374, 347, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (375, 346, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (376, 345, '3');
INSERT INTO `tb_dispo_sekdin` VALUES (377, 344, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (378, 343, '4');
INSERT INTO `tb_dispo_sekdin` VALUES (379, 342, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (380, 341, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (381, 340, '6');
INSERT INTO `tb_dispo_sekdin` VALUES (382, 339, '6');

-- ----------------------------
-- Table structure for tb_dpa
-- ----------------------------
DROP TABLE IF EXISTS `tb_dpa`;
CREATE TABLE `tb_dpa`  (
  `id_dpa` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dpa` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `kode_dpa` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `st_dpa` int(2) NULL DEFAULT 0,
  `kode_sikupat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_dpa`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 49 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_dpa
-- ----------------------------
INSERT INTO `tb_dpa` VALUES (1, 'Pelayanan Teknis Kantor Dinas Kesehatan', '40523.060', 1, '6');
INSERT INTO `tb_dpa` VALUES (2, 'Pengadaan Reagen, Bahan Habis Pakai, Alat Laboratorium, Penunjang dan Operasional Kantor UPT Labkesda', '10216.004', 0, '13');
INSERT INTO `tb_dpa` VALUES (3, 'Pengeloaan Obat Instalasi Farmasi', '10216.006', 0, '16');
INSERT INTO `tb_dpa` VALUES (4, 'BOK Pencegahan Stunting (DAK NON FISIK)', '10217.009', 0, '26');
INSERT INTO `tb_dpa` VALUES (5, 'Dukungan Manajemen BOK Kabupaten dan Jampersal (DAK NON FISIK)', '10217.008', 0, '27');
INSERT INTO `tb_dpa` VALUES (6, 'Fasilitasi Upaya Kesehatan Masyarakat Sekunder (DAK NON FISIK)', '10217.007', 0, '28');
INSERT INTO `tb_dpa` VALUES (7, 'Jaminan Persalinan (DAK NON FISIK)', '10218.020', 0, '29');
INSERT INTO `tb_dpa` VALUES (8, 'Pelayanan Distribusi Obat dan Penunjang e-Logistik (DAK NON FISIK)', '10216.010', 0, '30');
INSERT INTO `tb_dpa` VALUES (9, 'Pengadaan Alat Laboratorium Kesehatan (DAK REGULER)', '10216.008', 0, '31');
INSERT INTO `tb_dpa` VALUES (10, 'Pengadaan Bahan Habis Pakai HIV dan Sifilis (DAK PENUGASAN)', '10218.024', 0, '32');
INSERT INTO `tb_dpa` VALUES (11, 'Pengadaan Bahan Habis Pakai Penanggulangan TBC (DAK REGULER)', '10218.021', 0, '33');
INSERT INTO `tb_dpa` VALUES (12, 'Pengadaan Cartridge Tes Cepat Molekuler (TCM) (DAK PENUGASAN)', '10218.025', 0, '34');
INSERT INTO `tb_dpa` VALUES (13, 'Pengadaan CO Analyzer (DAK PENUGASAN)', '10218.023', 0, '35');
INSERT INTO `tb_dpa` VALUES (14, 'Pengadaan Instalasi Pengolah Limbah Laboratorium (DAK REGULER)', '10219.004', 0, '36');
INSERT INTO `tb_dpa` VALUES (15, 'Pengadaan Medical Transport Box (DAK PENUGASAN) (DAK PENUGASAN)', '10218.022', 0, '37');
INSERT INTO `tb_dpa` VALUES (16, 'Pengadaan Obat dan Perbekalan Kesehatan (DAK REGULER)', '10216.009', 0, '38');
INSERT INTO `tb_dpa` VALUES (17, 'Pengadaan Sanitarian Kit (DAK PENUGASAN)', '10217.006', 0, '39');
INSERT INTO `tb_dpa` VALUES (18, 'Pengadaan Sarana Prasarana Penunjang PSC (DAK REGULER)', '10219.003', 0, '40');
INSERT INTO `tb_dpa` VALUES (19, 'Pengawasan Industri Rumah Tangga Pangan (DAK NON FISIK)', '10217.004', 0, '41');
INSERT INTO `tb_dpa` VALUES (20, 'Pengawasan Sarana Pelayanan Kefarmasian (DAK NON FISIK)', '10216.007', 0, '42');
INSERT INTO `tb_dpa` VALUES (21, 'Penugasan Stunting Therapeutic Feeding Center (TFC) dan Antromotri Kit (DAK PENUGASAN)', '10217.005', 0, '43');
INSERT INTO `tb_dpa` VALUES (22, 'Penyediaan Sarana dan Prasarana IFK (DAK REGULER)', '40529.001', 0, '44');
INSERT INTO `tb_dpa` VALUES (23, 'Standarisasi Pelayanan Kesehatan Dasar (DAK NON FISIK)', '10218.019', 0, '45');
INSERT INTO `tb_dpa` VALUES (24, 'Deteksi Dini Penyakit Tidak Menular dan Penanganan Kasus Kedaruratan Jiwa, Indera dan NAPZA', NULL, 0, '1');
INSERT INTO `tb_dpa` VALUES (25, 'Fasilitasi Komisi Penanggulangan HIV/AIDS Daerah Kabupaten Jepara', NULL, 0, '2');
INSERT INTO `tb_dpa` VALUES (26, 'Hibah kepada Lembaga Sosial, Kesehatan dan Kesejahteraan Masyarakat', NULL, 0, '3');
INSERT INTO `tb_dpa` VALUES (27, 'Pelayanan Kesehatan bagi Masyarakat Miskin yang Dibiayai oleh Pemerintah Daerah dan untuk Penduduk jepara yang belum mempunyai Jaminan kesehatan', NULL, 0, '4');
INSERT INTO `tb_dpa` VALUES (28, 'Pelayanan Kesehatan Haji', NULL, 0, '5');
INSERT INTO `tb_dpa` VALUES (30, 'Pembinaan dan Pengawasan Pelaksanaan Jaminan Kesehatan Nasional (JKN)', NULL, 0, '7');
INSERT INTO `tb_dpa` VALUES (31, 'Pembinaan dan Perijinan Kefarmasian', NULL, 0, '8');
INSERT INTO `tb_dpa` VALUES (32, 'Pembinaan dan Perijinan Sarana Kesehatan', NULL, 0, '9');
INSERT INTO `tb_dpa` VALUES (33, 'Penanggulangan Krisis Kesehatan (Kegawatdaruratan dan Bencana)', NULL, 0, '10');
INSERT INTO `tb_dpa` VALUES (34, 'Pencegahan dan Penanggulangan Penyakit Menular', NULL, 0, '11');
INSERT INTO `tb_dpa` VALUES (35, 'Pengadaan Alat Kesehatan bagi Puskesmas', NULL, 0, '12');
INSERT INTO `tb_dpa` VALUES (37, 'Pengadaan Sarana dan Prasarana Inventaris Kantor', NULL, 0, '14');
INSERT INTO `tb_dpa` VALUES (38, 'Pengadaan, Peningkatan dan Perbaikan Sarana Prasarana Puskesmas, Puskesmas Pembantu dan Jaringannya', NULL, 0, '15');
INSERT INTO `tb_dpa` VALUES (40, 'Pengembangan Kualitas Lingkungan Sehat', NULL, 0, '17');
INSERT INTO `tb_dpa` VALUES (41, 'Pengembangan Sistem Informasi Kesehatan (SIK) dan Jaringannya', NULL, 0, '18');
INSERT INTO `tb_dpa` VALUES (42, 'Pengembangan Tenaga Fungsional Kesehatan, Pendidikan dan Pelatihan Peningkatan Mutu dan Kompetensi SDM Kesehatan', NULL, 0, '19');
INSERT INTO `tb_dpa` VALUES (43, 'Peningkatan Pelayanan Kesehatan Ibu dan Anak', NULL, 0, '20');
INSERT INTO `tb_dpa` VALUES (44, 'Peningkatan Perbaikan Gizi Masyarakat', NULL, 0, '21');
INSERT INTO `tb_dpa` VALUES (45, 'Penyusunan Perencanaan dan Evaluasi Dinas Kesehatan', NULL, 0, '22');
INSERT INTO `tb_dpa` VALUES (46, 'Promosi Kesehatan dan Pemberdayaan Masyarakat di Bidang Kesehatan', NULL, 0, '23');
INSERT INTO `tb_dpa` VALUES (47, 'Standarisasi Pelayanan Kesehatan', NULL, 0, '24');
INSERT INTO `tb_dpa` VALUES (48, 'Surveilans, Imunisasi dan Pengendalian Kejadian Luar Biasa (KLB)', NULL, 0, '25');

-- ----------------------------
-- Table structure for tb_jenis_surat
-- ----------------------------
DROP TABLE IF EXISTS `tb_jenis_surat`;
CREATE TABLE `tb_jenis_surat`  (
  `id_jenis_surat` int(11) NOT NULL AUTO_INCREMENT,
  `kode_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `jenis_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_jenis_surat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 33 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_jenis_surat
-- ----------------------------
INSERT INTO `tb_jenis_surat` VALUES (4, '005', 'Undangan');
INSERT INTO `tb_jenis_surat` VALUES (5, '811', 'Lamaran pekerjaan ');
INSERT INTO `tb_jenis_surat` VALUES (6, '470', 'Sensus penduduk');
INSERT INTO `tb_jenis_surat` VALUES (7, '050.1.3', 'Rencana Kerja Pembangunan Daerah ( RKPD)');
INSERT INTO `tb_jenis_surat` VALUES (8, '440', 'Kesehatan ');
INSERT INTO `tb_jenis_surat` VALUES (9, '441.9', 'Sistem Kesehatan Nasional');
INSERT INTO `tb_jenis_surat` VALUES (10, '045.2', 'Surat pengantar');
INSERT INTO `tb_jenis_surat` VALUES (11, '850', 'Cuti');
INSERT INTO `tb_jenis_surat` VALUES (12, '451.4', 'Pendididkan ');
INSERT INTO `tb_jenis_surat` VALUES (13, '800', 'Kepegawain');
INSERT INTO `tb_jenis_surat` VALUES (14, '050', 'Perencanaan dan Pengendalian');
INSERT INTO `tb_jenis_surat` VALUES (15, '027', 'Pengadaan Barang/Jasa');
INSERT INTO `tb_jenis_surat` VALUES (16, '020.1', 'Penawaran Iklan ');
INSERT INTO `tb_jenis_surat` VALUES (17, '445.9', 'Laboratorium Kesehatan ');
INSERT INTO `tb_jenis_surat` VALUES (18, '301', 'Koordinasi dan kerjasam keamanan dan ketertiban umum (Trantibum)');
INSERT INTO `tb_jenis_surat` VALUES (19, '900', 'Keuangan ');
INSERT INTO `tb_jenis_surat` VALUES (20, '890', 'Pendidikan pegawai');
INSERT INTO `tb_jenis_surat` VALUES (21, '090.1', 'Upacara Bendera ');
INSERT INTO `tb_jenis_surat` VALUES (22, '019.3', 'Audiensi');
INSERT INTO `tb_jenis_surat` VALUES (23, '130', 'Pemerintah Kabupaten/Kota');
INSERT INTO `tb_jenis_surat` VALUES (24, '539', 'Badan usaha milik daerah');
INSERT INTO `tb_jenis_surat` VALUES (25, '560', 'Tenaga kerja');
INSERT INTO `tb_jenis_surat` VALUES (26, '091', 'Perjalanan presiden / Wakil presiden ke daerah');
INSERT INTO `tb_jenis_surat` VALUES (27, '700', 'Pengawasan');
INSERT INTO `tb_jenis_surat` VALUES (28, '060', 'Organisasi dan Ketatalaksanaan');
INSERT INTO `tb_jenis_surat` VALUES (29, '828', 'Dispensasi');
INSERT INTO `tb_jenis_surat` VALUES (30, '640', 'Bangunan');
INSERT INTO `tb_jenis_surat` VALUES (31, '500', 'Perekonomian');
INSERT INTO `tb_jenis_surat` VALUES (32, '045', 'Kearsipan');

-- ----------------------------
-- Table structure for tb_level_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_level_user`;
CREATE TABLE `tb_level_user`  (
  `id_level_user` int(11) NOT NULL AUTO_INCREMENT,
  `user_level` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_level_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_level_user
-- ----------------------------
INSERT INTO `tb_level_user` VALUES (1, 'admin');
INSERT INTO `tb_level_user` VALUES (2, 'Kepala');
INSERT INTO `tb_level_user` VALUES (3, 'Sekretaris');
INSERT INTO `tb_level_user` VALUES (4, 'Staf');

-- ----------------------------
-- Table structure for tb_nota_detail
-- ----------------------------
DROP TABLE IF EXISTS `tb_nota_detail`;
CREATE TABLE `tb_nota_detail`  (
  `id_nota_detail` int(11) NOT NULL AUTO_INCREMENT,
  `nomor_dinas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_rekening` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `rok` bigint(15) NULL DEFAULT NULL,
  `nominal` bigint(15) NULL DEFAULT NULL,
  `alasan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_nota_detail`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 203 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_nota_detail
-- ----------------------------
INSERT INTO `tb_nota_detail` VALUES (7, '2', '54', 4500000, 2412749, 'Bayar listrik bulan Desember 2019');
INSERT INTO `tb_nota_detail` VALUES (16, '6', '76', 0, 245000, 'BBM Konsultasi Proposal dana Hibah');
INSERT INTO `tb_nota_detail` VALUES (17, '6', '86', 0, 300000, 'Perdin Konsultasi Proposal dana Hibah');
INSERT INTO `tb_nota_detail` VALUES (23, '7', '85', 0, 300000, 'Kunjungan Pasien Pre Operasi Katarak dan Kelainan Kongenital');
INSERT INTO `tb_nota_detail` VALUES (24, '5', '76', 0, 100000, 'Monev PIS-PK Pusk. Kedung II');
INSERT INTO `tb_nota_detail` VALUES (25, '5', '76', 0, 150000, 'Monev PIS-PK Pusk. Donorojo');
INSERT INTO `tb_nota_detail` VALUES (26, '5', '76', 0, 70000, 'BBM Sosialisasi PHBS di Desa Tengguli');
INSERT INTO `tb_nota_detail` VALUES (71, '4', '119', 0, 2030000, '1.Klaim Pusk Kedung I Des 2019 Rp.2.030.000');
INSERT INTO `tb_nota_detail` VALUES (72, '4', '119', 0, 730000, 'Klaim Pusk Pakis Aji Bln Desember 2019');
INSERT INTO `tb_nota_detail` VALUES (73, '4', '119', 0, 120000, '1.Klaim Puskesmas Bangsri I Bln Des 2019');
INSERT INTO `tb_nota_detail` VALUES (74, '4', '119', 0, 59955851, 'Klaim RSI Sultan Hadlirin Bln Desember 2019');
INSERT INTO `tb_nota_detail` VALUES (75, '4', '119', 0, 310864597, 'Klaim RSU RA Kartini Bln Des 2019');
INSERT INTO `tb_nota_detail` VALUES (91, '3', '76', 0, 80000, 'Musrenbangcam Kecamatan Bangsri');
INSERT INTO `tb_nota_detail` VALUES (92, '3', '76', 0, 80000, 'Musrenbangcam Kecamatan Kalinyamatan');
INSERT INTO `tb_nota_detail` VALUES (93, '3', '76', 0, 50000, 'Musrenbangcam Kecamatan Mlonggo');
INSERT INTO `tb_nota_detail` VALUES (94, '3', '76', 0, 150000, 'Musrenbangcam Kecamatan Welahan');
INSERT INTO `tb_nota_detail` VALUES (95, '3', '76', 0, 200000, 'Musrenbangcam Kecamatan Donorojo');
INSERT INTO `tb_nota_detail` VALUES (96, '3', '76', 0, 150000, 'Musrenbangcam Kecamatan Nalumsari');
INSERT INTO `tb_nota_detail` VALUES (97, '3', '76', 0, 120000, 'Musrenbangcam Kecamatan Mayong');
INSERT INTO `tb_nota_detail` VALUES (98, '3', '76', 0, 170000, 'Musrenbangcam Kecamatan Keling');
INSERT INTO `tb_nota_detail` VALUES (99, '3', '76', 0, 120000, 'Musrenbangcam Kecamatan Kembang');
INSERT INTO `tb_nota_detail` VALUES (100, '3', '76', 0, 50000, 'Musrenbangcam Kecamatan Tahunan');
INSERT INTO `tb_nota_detail` VALUES (101, '3', '76', 0, 80000, 'Musrenbangcam Kecamatan Pecangaan');
INSERT INTO `tb_nota_detail` VALUES (102, '3', '76', 0, 80000, 'Musrenbangcam Kecamatan Batealit');
INSERT INTO `tb_nota_detail` VALUES (103, '3', '76', 0, 50000, 'Musrenbangcam Kecamatan Kedung');
INSERT INTO `tb_nota_detail` VALUES (104, '3', '85', 0, 300000, 'Musrenbangcam Kecamatan Donorojo');
INSERT INTO `tb_nota_detail` VALUES (105, '3', '85', 0, 150000, 'Monev Anggaran dan Perencanaan Ke Puskesmas Donorojo');
INSERT INTO `tb_nota_detail` VALUES (106, '8', '76', 0, 114750, 'Kunjungan Pasien Pre Operasi Kelainan Kongenital di Kecamatan Mlonggo dan Ujung Batu');
INSERT INTO `tb_nota_detail` VALUES (107, '8', '76', 0, 114750, 'Kunjungan Pasien Pre Operasi Kelainan Kongenital di Kecamatan Mayong');
INSERT INTO `tb_nota_detail` VALUES (108, '8', '85', 0, 300000, 'Kunjungan Pasien Pre Operasi Kelaianan Kongenital di Kec Mlonggo dan Ujung Batu');
INSERT INTO `tb_nota_detail` VALUES (109, '8', '85', 0, 300000, 'Kunjungan Pasien Pre Operasi Kelaianan Kongenital di Kec Mayong');
INSERT INTO `tb_nota_detail` VALUES (119, '11', '76', 0, 61200, 'Pelatihan entri data EPPGBM bagi kader di wil pus.Pecangaan');
INSERT INTO `tb_nota_detail` VALUES (120, '10', '76', 0, 120000, 'Bimtek program DBD');
INSERT INTO `tb_nota_detail` VALUES (121, '10', '76', 0, 170000, 'PE DBD');
INSERT INTO `tb_nota_detail` VALUES (130, '13', '85', 0, 400000, 'Perdin monitoring pelaksanaan pelayanan kesehatan di puskesmas Bangsi II');
INSERT INTO `tb_nota_detail` VALUES (131, '13', '76', 0, 100000, 'BBM  monitoring pelaksanaan pelayanan kesehatan di puskesmas Bangsi II');
INSERT INTO `tb_nota_detail` VALUES (132, '13', '85', 0, 250000, 'Perdin monitoring dan pembinaan karyawan UPTD Puskesmas Pakisaji dan survey lokasi tanah untuk pengembangan puskesmas');
INSERT INTO `tb_nota_detail` VALUES (133, '13', '76', 0, 100000, 'BBM monitoring dan pembinaan karyawan UPTD pusk Kedung II');
INSERT INTO `tb_nota_detail` VALUES (134, '13', '85', 0, 100000, 'Perdin monitoring dan pembinaan karyawan UPTD pusk Kedung II');
INSERT INTO `tb_nota_detail` VALUES (135, '13', '76', 0, 100000, 'Cek lokasi dan monitoring perijinan operasional UPTD Puskesmas Nalumsari II');
INSERT INTO `tb_nota_detail` VALUES (136, '13', '76', 0, 50000, 'BBM monitoring dan pembinaan karyawan UPTD Puskesmas Pakisaji dan survey lokasi tanah untuk pengembangan puskesmas');
INSERT INTO `tb_nota_detail` VALUES (137, '12', '76', 0, 200000, 'Mengirim dokumen profil SDMK dan usulan Puskesmas Satelit ke Dinas Kesehatan Provinsi Jawa Tengah');
INSERT INTO `tb_nota_detail` VALUES (138, '12', '86', 0, 700000, 'Mengirim dokumen profil SDMK dan usulan Puskesmas Satelit ke Dinas Kesehatan Provinsi Jawa Tengah');
INSERT INTO `tb_nota_detail` VALUES (140, '14', '76', 0, 60000, 'Monev Haji');
INSERT INTO `tb_nota_detail` VALUES (141, '14', '76', 0, 60000, 'Bimtek Imunisasi');
INSERT INTO `tb_nota_detail` VALUES (142, '14', '76', 0, 50000, 'Bimtek Imunisasi');
INSERT INTO `tb_nota_detail` VALUES (143, '14', '76', 0, 60000, 'Bimtek Surveilans');
INSERT INTO `tb_nota_detail` VALUES (144, '14', '76', 0, 50000, 'Bimtek Surveilans');
INSERT INTO `tb_nota_detail` VALUES (147, '15', '4', 0, 87550, 'Droping RL ke Puskesmas Keling I');
INSERT INTO `tb_nota_detail` VALUES (148, '15', '4', 0, 87550, 'Droping RL ke Puskesmas Keling I');
INSERT INTO `tb_nota_detail` VALUES (149, '15', '4', 0, 87550, 'Droping RL ke Puskesmas Keling I');
INSERT INTO `tb_nota_detail` VALUES (150, '15', '85', 0, 300000, 'Droping RL ke Puskesmas Keling I');
INSERT INTO `tb_nota_detail` VALUES (151, '15', '85', 0, 300000, 'Droping RL ke Puskesmas Keling I');
INSERT INTO `tb_nota_detail` VALUES (152, '15', '85', 0, 300000, 'Droping RL ke Puskesmas Keling I');
INSERT INTO `tb_nota_detail` VALUES (153, '16', '4', 0, 200000, 'Perjalanan dinas luar daerah dalam rangka konsultasi teknis data Fasyankes');
INSERT INTO `tb_nota_detail` VALUES (154, '16', '86', 0, 600000, 'Perjalanan dinas luar daerah dalam rangka konsultasi teknis data Fasyankes');
INSERT INTO `tb_nota_detail` VALUES (155, '17', '85', 0, 650000, 'Visitasi klinik Kanindo 2 dan Kimia Farma Mayong');
INSERT INTO `tb_nota_detail` VALUES (156, '18', '85', 0, 650000, 'Visitasi Klinik Kanindo 2 dan Kimia Farma Mayong');
INSERT INTO `tb_nota_detail` VALUES (157, '19', '86', 0, 350000, 'Pengambilan Logistik dan Obat-obatan TBC');
INSERT INTO `tb_nota_detail` VALUES (158, '20', '43', 0, 700000, 'Belanja snack dan makan rapat koordinasi lintas sektor tentang virus corona');
INSERT INTO `tb_nota_detail` VALUES (159, '20', '76', 0, 100000, 'Pembayaran BBM kunjungan kerja dengan Plt Bupati Jepara di Desa Gelang dengan kendaraan K 73 C');
INSERT INTO `tb_nota_detail` VALUES (160, '20', '86', 0, 850000, 'Pedin dalam rangka koordinasi kesiapsiagaan pendemi corona virus di dinkes prov jateng');
INSERT INTO `tb_nota_detail` VALUES (161, '20', '76', 0, 200000, 'Pembayaran BBM dalam rangka koordinsi kesiapsiagaan pandemi corona virus di dinkes prov jateng');
INSERT INTO `tb_nota_detail` VALUES (162, '21', '113', 0, 97772900, 'Honor harlep dkk bl januari 2020');
INSERT INTO `tb_nota_detail` VALUES (163, '22', '78', 0, 200000, 'Belanja Banner Sosialisasi Penyakit Emerging');
INSERT INTO `tb_nota_detail` VALUES (164, '22', '78', 0, 200000, 'Belanja Banner Pertemuan Penguatan Penanganan KLB Keracunan Pangan');
INSERT INTO `tb_nota_detail` VALUES (165, '22', '103', 0, 1600000, 'Honor Pengajar Sosialisasi Penyakit Emerging');
INSERT INTO `tb_nota_detail` VALUES (166, '22', '103', 0, 300000, 'Honor Pembuka Pertemuan Penguatan Penanganan KLB Keracunan Pangan');
INSERT INTO `tb_nota_detail` VALUES (167, '22', '103', 0, 1600000, 'Honor Pengajar Pertemuan Penguatan Penanganan KLB Keracunan Pangan');
INSERT INTO `tb_nota_detail` VALUES (170, '24', '76', 0, 50000, 'Belanja BBM Fogging desa Jambu dan Suwawal');
INSERT INTO `tb_nota_detail` VALUES (171, '24', '76', 0, 50000, 'Belanja BBM Fogging desa Kuwasen');
INSERT INTO `tb_nota_detail` VALUES (172, '24', '76', 0, 50000, 'Belanja BBM kendaraan roda 4 desa Jambu dan Suwawal');
INSERT INTO `tb_nota_detail` VALUES (173, '24', '85', 0, 150000, 'Perdin Pemantauan Fogging desa Jambu');
INSERT INTO `tb_nota_detail` VALUES (174, '24', '85', 0, 150000, 'Perdin Pemantauan Fogging desa Suwawal');
INSERT INTO `tb_nota_detail` VALUES (175, '23', '4', 0, 600000, 'Belanja BBM Fogging desa Jambu dan Suwawal');
INSERT INTO `tb_nota_detail` VALUES (176, '23', '4', 0, 600000, 'Belanja BBM Fogging desa Kuwasen');
INSERT INTO `tb_nota_detail` VALUES (177, '23', '113', 0, 300000, 'Belanja Honor Petugas Fogging desa Jambu dan Suwawal');
INSERT INTO `tb_nota_detail` VALUES (178, '23', '113', 0, 300000, 'Belanja Honor Petugas Fogging desa Kuwasen');
INSERT INTO `tb_nota_detail` VALUES (182, '27', '76', 0, 91800, 'Pengambilan sampel ke RS PKU Muhammadiyah Mayong');
INSERT INTO `tb_nota_detail` VALUES (183, '28', '76', 0, 284040, 'Pertemuan Penguatan Perencanaan Kegiatan Bersumber APBN (DAK FISIK dan Non Fisik) Tahun 2020 ke Magelang');
INSERT INTO `tb_nota_detail` VALUES (184, '29', '43', 0, 602000, 'Belanja Makan dan Minum Rapat Pelaksana Tim JKN');
INSERT INTO `tb_nota_detail` VALUES (185, '30', '63', 0, 700000, 'Klaim jampersal di PMB Ida Rachmawati bulan Februari 2020');
INSERT INTO `tb_nota_detail` VALUES (186, '31', '81', 0, 250000, 'Klaim sewa ambulance untuk merujuk pasien dari PMB Ida Rachmawati ke RSUD RA.KARTINI Jepara');
INSERT INTO `tb_nota_detail` VALUES (194, '32', '90', 500000, 130000, 'Servis AC');
INSERT INTO `tb_nota_detail` VALUES (195, '32', '91', 0, 150000, 'Pembelian kunci');
INSERT INTO `tb_nota_detail` VALUES (196, '32', '76', 0, 61200, 'Pembayaran BBM dalam rangka kaji banding di UPTD Puskesmas Kedung II');
INSERT INTO `tb_nota_detail` VALUES (197, '32', '76', 0, 61200, 'Pembayaran BBM dalam rangka monitoring lokakarya mini lintas sektoral UPTD Puskesmas Batealit');
INSERT INTO `tb_nota_detail` VALUES (198, '32', '76', 0, 61200, 'Pembayaran BBM dalam rangka monitoring perusahaan PLTU tentang wabah virus corona');
INSERT INTO `tb_nota_detail` VALUES (199, '26', '28', 100000, 250000, 'Belanja bahan habis pakai komputer');
INSERT INTO `tb_nota_detail` VALUES (201, '25', '12', 0, 330000, 'Belanja bahan lainnya');
INSERT INTO `tb_nota_detail` VALUES (202, '33', '86', 0, 630000, 'Memenuhi undangan ');

-- ----------------------------
-- Table structure for tb_nota_dinas
-- ----------------------------
DROP TABLE IF EXISTS `tb_nota_dinas`;
CREATE TABLE `tb_nota_dinas`  (
  `id_nota_dinas` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_nota_dinas` date NULL DEFAULT NULL,
  `nomor_nota_dinas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tujuan_nota_dinas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sifat_nota_dinas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_nota_dinas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `perihal_nota_dinas` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `tgl_kegiatan` datetime(0) NULL DEFAULT NULL,
  `tempat_kegiatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `acara_kegiatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` date NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `isi_nota_dinas` longtext CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `nomor_dinas` int(11) NULL DEFAULT NULL,
  `id_dpa` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `bulan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `valid` int(2) NULL DEFAULT 0,
  PRIMARY KEY (`id_nota_dinas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 39 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_nota_dinas
-- ----------------------------
INSERT INTO `tb_nota_dinas` VALUES (3, '2020-01-20', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - UPT Instalasi Farmasi Kabupaten', NULL, NULL, NULL, '2020-01-20', '16', NULL, 2, '3', 'Januari', 1);
INSERT INTO `tb_nota_dinas` VALUES (4, '2020-01-23', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Sub Bagian Renval dan Keuangan', NULL, NULL, NULL, '2020-01-20', '5', NULL, 3, '1', 'Januari', 1);
INSERT INTO `tb_nota_dinas` VALUES (5, '2020-01-21', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Seksi Pelayanan Kesehatan', NULL, NULL, NULL, '2020-01-21', '15', NULL, 4, '27', 'Januari', 1);
INSERT INTO `tb_nota_dinas` VALUES (6, '2020-01-21', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Seksi Promosi dan Pemberdayaan Masyarakat', NULL, NULL, NULL, '2020-01-21', '10', NULL, 5, '1', 'Januari', 1);
INSERT INTO `tb_nota_dinas` VALUES (8, '2020-01-22', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Seksi P2PM', NULL, NULL, NULL, '2020-01-22', '7', NULL, 6, '1', 'Januari', 1);
INSERT INTO `tb_nota_dinas` VALUES (9, '2020-01-22', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Seksi Pelayanan Kesehatan', NULL, NULL, NULL, '2020-01-22', '15', NULL, 7, '1', 'Januari', 1);
INSERT INTO `tb_nota_dinas` VALUES (10, '2020-01-27', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Seksi Pelayanan Kesehatan', NULL, NULL, NULL, '2020-01-27', '15', NULL, 8, '1', 'Januari', 1);
INSERT INTO `tb_nota_dinas` VALUES (12, '2020-01-29', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Seksi P2PM', NULL, NULL, NULL, '2020-01-28', '7', NULL, 10, '1', 'Januari', 1);
INSERT INTO `tb_nota_dinas` VALUES (13, '2020-01-29', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Seksi Kesga Gizi', NULL, NULL, NULL, '2020-01-29', '11', NULL, 11, '1', 'Januari', 1);
INSERT INTO `tb_nota_dinas` VALUES (14, '2020-01-24', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Seksi SDMK', NULL, NULL, NULL, '2020-01-29', '13', NULL, 12, '1', 'Januari', 1);
INSERT INTO `tb_nota_dinas` VALUES (15, '2020-01-24', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Sub Bagian Umum dan Kepegawaian', NULL, NULL, NULL, '2020-01-29', '6', NULL, 13, '1', 'Januari', 1);
INSERT INTO `tb_nota_dinas` VALUES (16, '2020-01-30', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Seksi Surveilans dan Imunisasi', NULL, NULL, NULL, '2020-01-30', '9', NULL, 14, '1', 'Januari', 1);
INSERT INTO `tb_nota_dinas` VALUES (18, '2020-01-31', '', 'Plt. Sekdin/Kabid/Kasi/Kasubag ....................', 'Penting', '-', 'Audiensi Regulasi KTR', NULL, NULL, NULL, '2020-01-31', '8', '<p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><span lang=\"IN\" style=\"font-size:11.0pt;line-height:150%;font-family:\"Arial\",sans-serif;\r\nmso-ansi-language:IN\">Mengharap dengan hormat kehadiran Saudara pada :<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><span lang=\"IN\" style=\"font-size:11.0pt;line-height:150%;font-family:\"Arial\",sans-serif;\r\nmso-ansi-language:IN\">Hari                 :\r\nSelasa<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><span lang=\"IN\" style=\"font-size:11.0pt;line-height:150%;font-family:\"Arial\",sans-serif;\r\nmso-ansi-language:IN\">Tanggal           :\r\n4 Februari 2020<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><span lang=\"IN\" style=\"font-size:11.0pt;line-height:150%;font-family:\"Arial\",sans-serif;\r\nmso-ansi-language:IN\">Jam                 :\r\n10.00 WIB<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><span lang=\"IN\" style=\"font-size:11.0pt;line-height:150%;font-family:\"Arial\",sans-serif;\r\nmso-ansi-language:IN\">Tempat            :\r\nRuang Kepala Dinas Kesehatan Kabupaten Jepara<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><span lang=\"IN\" style=\"font-size:11.0pt;line-height:150%;font-family:\"Arial\",sans-serif;\r\nmso-ansi-language:IN\">Acara              :\r\nAudiensi Regulasi Penegakan KTR<o:p></o:p></span></p><p class=\"MsoNormal\" style=\"text-align:justify;line-height:150%\"><span lang=\"IN\" style=\"font-size:11.0pt;line-height:150%;font-family:\"Arial\",sans-serif;\r\nmso-ansi-language:IN\">                        <o:p></o:p></span></p><p>\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n\r\n<span lang=\"IN\" style=\"font-size:11.0pt;font-family:\"Arial\",sans-serif;\r\nmso-fareast-font-family:\"Times New Roman\";mso-ansi-language:IN;mso-fareast-language:\r\nEN-US;mso-bidi-language:AR-SA\">Demikian untuk menjadikan perhatian dan atas\r\nkerjasamanya diucapkan terima kasih</span><br></p>', NULL, NULL, NULL, 0);
INSERT INTO `tb_nota_dinas` VALUES (20, '2020-02-03', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Febuari 2020 - UPT Instalasi Farmasi Kabupaten', NULL, NULL, NULL, '2020-02-03', '16', NULL, 15, '8', 'Februari', 1);
INSERT INTO `tb_nota_dinas` VALUES (21, '2020-01-28', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Seksi Pelayanan Kesehatan', NULL, NULL, NULL, '2020-02-03', '15', NULL, 16, '1', 'Januari', 0);
INSERT INTO `tb_nota_dinas` VALUES (22, '2020-02-04', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Seksi Pelayanan Kesehatan', NULL, NULL, NULL, '2020-02-04', '15', NULL, 17, '1', 'Januari', 0);
INSERT INTO `tb_nota_dinas` VALUES (23, '2020-02-04', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Seksi Pelayanan Kesehatan', NULL, NULL, NULL, '2020-02-04', '15', NULL, 18, '1', 'Januari', 1);
INSERT INTO `tb_nota_dinas` VALUES (24, '2020-02-04', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Seksi P2PM', NULL, NULL, NULL, '2020-02-04', '7', NULL, 19, '1', 'Januari', 1);
INSERT INTO `tb_nota_dinas` VALUES (25, '2020-02-05', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Januari 2020 - Sub Bagian Umum dan Kepegawaian', NULL, NULL, NULL, '2020-02-05', '6', NULL, 20, '1', 'Januari', 1);
INSERT INTO `tb_nota_dinas` VALUES (26, '2020-02-05', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Febuari 2020 - Sub Bagian Umum dan Kepegawaian', NULL, NULL, NULL, '2020-02-05', '6', NULL, 21, '1', 'Februari', 1);
INSERT INTO `tb_nota_dinas` VALUES (27, '2020-02-10', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Februari 2020 - Seksi Surveilans dan Imunisasi', NULL, NULL, NULL, '2020-02-10', '9', NULL, 22, '48', 'Februari', 1);
INSERT INTO `tb_nota_dinas` VALUES (28, '2020-02-10', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Februari 2020 - Seksi P2PM', NULL, NULL, NULL, '2020-02-10', '7', NULL, 23, '34', 'Februari', 1);
INSERT INTO `tb_nota_dinas` VALUES (29, '2020-02-10', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Februari 2020 - Seksi P2PM', NULL, NULL, NULL, '2020-02-10', '7', NULL, 24, '1', 'Februari', 1);
INSERT INTO `tb_nota_dinas` VALUES (30, '2020-02-10', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Februari 2020 - UPT Laboratorium Kesehatan', NULL, NULL, NULL, '2020-02-10', '17', NULL, 25, '2', 'Februari', 1);
INSERT INTO `tb_nota_dinas` VALUES (31, '2020-02-10', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Februari 2020 - UPT Laboratorium Kesehatan', NULL, NULL, NULL, '2020-02-10', '17', NULL, 26, '2', 'Februari', 1);
INSERT INTO `tb_nota_dinas` VALUES (32, '2020-02-10', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Februari 2020 - UPT Laboratorium Kesehatan', NULL, NULL, NULL, '2020-02-10', '17', NULL, 27, '2', 'Februari', 1);
INSERT INTO `tb_nota_dinas` VALUES (33, '2020-02-11', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Februari 2020 - Sub Bagian Renval dan Keuangan', NULL, NULL, NULL, '2020-02-11', '5', NULL, 28, '1', 'Februari', 1);
INSERT INTO `tb_nota_dinas` VALUES (34, '2020-02-12', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Februari 2020 - Seksi Pelayanan Kesehatan', NULL, NULL, NULL, '2020-02-12', '15', NULL, 29, '30', 'Februari', 0);
INSERT INTO `tb_nota_dinas` VALUES (35, '2020-02-13', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Februari 2020 - Seksi Kesga Gizi', NULL, NULL, NULL, '2020-02-13', '11', NULL, 30, '7', 'Februari', 0);
INSERT INTO `tb_nota_dinas` VALUES (36, '2020-02-13', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Februari 2020 - Seksi Kesga Gizi', NULL, NULL, NULL, '2020-02-13', '11', NULL, 31, '7', 'Februari', 0);
INSERT INTO `tb_nota_dinas` VALUES (37, '2020-02-13', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Februari 2020 - Sub Bagian Umum dan Kepegawaian', NULL, NULL, NULL, '2020-02-13', '6', NULL, 32, '1', 'Februari', 1);
INSERT INTO `tb_nota_dinas` VALUES (38, '2020-02-14', NULL, 'Kepala Subag Perencanaan, Evaluasi dan Keuangan', '-', '-', 'Penambahan Anggaran Bulan Februari 2020 - UPT Instalasi Farmasi Kabupaten', NULL, NULL, NULL, '2020-02-14', '16', NULL, 33, '3', 'Februari', 0);

-- ----------------------------
-- Table structure for tb_pangkat
-- ----------------------------
DROP TABLE IF EXISTS `tb_pangkat`;
CREATE TABLE `tb_pangkat`  (
  `id_pangkat` int(11) NOT NULL AUTO_INCREMENT,
  `pangkat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_pangkat`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 19 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_pangkat
-- ----------------------------
INSERT INTO `tb_pangkat` VALUES (1, 'Pembina Utama/IVe');
INSERT INTO `tb_pangkat` VALUES (2, 'Pembina Utama Madya/IVd');
INSERT INTO `tb_pangkat` VALUES (3, 'Pembina Utama Muda/IVc');
INSERT INTO `tb_pangkat` VALUES (4, 'Pembina Tingkat I/IVb');
INSERT INTO `tb_pangkat` VALUES (5, 'Pembina/IVa');
INSERT INTO `tb_pangkat` VALUES (6, 'Penata Tingkat I/IIId');
INSERT INTO `tb_pangkat` VALUES (7, 'Penata/IIIc');
INSERT INTO `tb_pangkat` VALUES (8, 'Penata Muda Tingkat I/IIIb');
INSERT INTO `tb_pangkat` VALUES (9, 'Penata Muda/IIIa');
INSERT INTO `tb_pangkat` VALUES (10, 'Pengatur Tingkat I/IId');
INSERT INTO `tb_pangkat` VALUES (11, 'Pengatur/IIc');
INSERT INTO `tb_pangkat` VALUES (12, 'Pengatur Muda Tingkat I/IIb');
INSERT INTO `tb_pangkat` VALUES (13, 'Pengatur Muda/IIa');
INSERT INTO `tb_pangkat` VALUES (14, 'Juru Tingkat I/Id');
INSERT INTO `tb_pangkat` VALUES (15, 'Juru/Ic');
INSERT INTO `tb_pangkat` VALUES (16, 'Juru Muda Tingkat I/Ib');
INSERT INTO `tb_pangkat` VALUES (17, 'Juru Muda/Ia');
INSERT INTO `tb_pangkat` VALUES (18, '-');

-- ----------------------------
-- Table structure for tb_pegawai
-- ----------------------------
DROP TABLE IF EXISTS `tb_pegawai`;
CREATE TABLE `tb_pegawai`  (
  `id_pegawai` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pegawai` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nip_pegawai` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pangkat_pegawai` int(11) NULL DEFAULT 18,
  `level_user` int(11) NULL DEFAULT NULL,
  `posisi_user` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id_pegawai`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 128 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_pegawai
-- ----------------------------
INSERT INTO `tb_pegawai` VALUES (1, 'Drs. WAHYU HANGGONO, SKM', '196707081997031002', 4, 4, 10);
INSERT INTO `tb_pegawai` VALUES (2, 'ARI SETYOWATI, SKM', '197605071999032002', 4, 4, 9);
INSERT INTO `tb_pegawai` VALUES (3, 'dr. M. FAHRUDDIN', '196411231990031010', 5, 2, 2);
INSERT INTO `tb_pegawai` VALUES (4, 'dr. VITA RATIH NUGRAHENI, M.Kes', '197007081999032005', 5, 2, 4);
INSERT INTO `tb_pegawai` VALUES (5, 'ENDANG RATRIASWORO, SKM, M.Kes', '196307161986032010', 5, 2, 11);
INSERT INTO `tb_pegawai` VALUES (6, 'WASITO, SKM, M.Kes', '196504091992031007', 5, 2, 8);
INSERT INTO `tb_pegawai` VALUES (7, 'dr. HESTI PRIHANDARI, M.Kes', '197110182004012001', 5, 2, 15);
INSERT INTO `tb_pegawai` VALUES (8, 'MASROH, SKM', '196711131988011003', 5, 4, 8);
INSERT INTO `tb_pegawai` VALUES (9, 'ARI MUGIARTI, S.KM', '197003011989032002', 5, 4, 10);
INSERT INTO `tb_pegawai` VALUES (10, 'ACHIRUDIN, SKM', '196809111993031003', 6, 2, 9);
INSERT INTO `tb_pegawai` VALUES (11, 'ZUBAIDAH, MS, S.S.T', '196205101987032009', 6, 4, 11);
INSERT INTO `tb_pegawai` VALUES (12, 'RIYATI, S.KM', '196804121989032013', 6, 4, 11);
INSERT INTO `tb_pegawai` VALUES (13, 'AKHMAT SANTOSO', '196906101989031006', 6, 4, 15);
INSERT INTO `tb_pegawai` VALUES (14, 'SURATMI, S.KEP', '196907021989022001', 6, 4, 15);
INSERT INTO `tb_pegawai` VALUES (15, 'AGUS CARDA, SKM, M.MKes', '197103031994031004', 6, 2, 13);
INSERT INTO `tb_pegawai` VALUES (16, 'ROZIKUN, SKM', '196409031987031016', 6, 4, 10);
INSERT INTO `tb_pegawai` VALUES (17, 'RETNO KUSBANDIYAH, SKM', '196905101994032016', 6, 4, 14);
INSERT INTO `tb_pegawai` VALUES (18, 'dr. INDAH BUDIYANTI', '197510302006042005', 5, 2, 12);
INSERT INTO `tb_pegawai` VALUES (19, 'SULIASTONO, A.Md.K', '196704051991031012', 6, 4, 10);
INSERT INTO `tb_pegawai` VALUES (20, 'AGUS NUR CAHYONO, SKM', '196806201990031012', 6, 4, 14);
INSERT INTO `tb_pegawai` VALUES (21, 'SARDI, SKM', '196805151989031008', 6, 4, 11);
INSERT INTO `tb_pegawai` VALUES (22, 'SARI TIRTHAWATI, S.Gz', '197101111994032002', 6, 4, 11);
INSERT INTO `tb_pegawai` VALUES (23, 'ABDUL QORIB, SKM, MMKes', '197204041994031005', 6, 2, 5);
INSERT INTO `tb_pegawai` VALUES (24, 'ELLIANY ASMINIARTY, SKM.,M.Kes.', '198002292005012011', 6, 4, 5);
INSERT INTO `tb_pegawai` VALUES (25, 'MUSLIMIN, SKM, M.MKes', '197111031991031002', 6, 2, 10);
INSERT INTO `tb_pegawai` VALUES (26, 'ELISNAWATI', '197107041992022001', 6, 4, 11);
INSERT INTO `tb_pegawai` VALUES (27, 'UMROTUL MAIMUNAH, S.Farm.Apt', '198010052009022008', 6, 4, 12);
INSERT INTO `tb_pegawai` VALUES (28, 'MOCH. YUSUF ZAIN, S.Si, Apt', '197808092006041015', 7, 4, 12);
INSERT INTO `tb_pegawai` VALUES (29, 'ENDANG RAHMAWATI, S.Si.T.,M.M.', '197401121993022002', 7, 4, 15);
INSERT INTO `tb_pegawai` VALUES (30, 'NASIRUDIN KURNIAWAN, SKM', '198007012007011004', 7, 4, 5);
INSERT INTO `tb_pegawai` VALUES (31, 'KUSNIN ARI NURBIYANTO, S.Kep.', '197404151994031005', 8, 4, 15);
INSERT INTO `tb_pegawai` VALUES (32, 'MUHAMAD AL FAROUQ', '197404181998031005', 7, 4, 14);
INSERT INTO `tb_pegawai` VALUES (33, 'SITI ZUMROH, SKM', '198107032009022006', 7, 4, 7);
INSERT INTO `tb_pegawai` VALUES (34, 'PANJI KUMARA ADI TARUNA, SKM', '198611042011011004', 7, 4, 9);
INSERT INTO `tb_pegawai` VALUES (35, 'SENIPAH', '196503221989032007', 8, 4, 13);
INSERT INTO `tb_pegawai` VALUES (36, 'WIDIYANTO', '196601131989031005', 8, 4, 7);
INSERT INTO `tb_pegawai` VALUES (37, 'EMY SRI LESTARI', '196305261991032005', 8, 4, 5);
INSERT INTO `tb_pegawai` VALUES (38, 'MOH ALI WIBOWO, SKM', '197004291995031002', 8, 4, 15);
INSERT INTO `tb_pegawai` VALUES (39, 'MUH KUSNADI, S.KM.', '197201051997031003', 7, 4, 6);
INSERT INTO `tb_pegawai` VALUES (40, 'DONY SUKENDAR, S.Kom', '198305292011011003', 7, 4, 6);
INSERT INTO `tb_pegawai` VALUES (41, 'NUR RAHMAD, SKM', '197009222002121001', 8, 4, 7);
INSERT INTO `tb_pegawai` VALUES (42, 'SARIMAH, S.S.T', '197410032005012006', 7, 4, 14);
INSERT INTO `tb_pegawai` VALUES (43, 'MAHARDIYAN ARDIYANTO, S.Kep.,M.Kes', '198008272005011008', 8, 4, 13);
INSERT INTO `tb_pegawai` VALUES (44, 'WIWID WIDIYATNI, S.GZ.,M.Gizi', '198202182006042006', 7, 4, 11);
INSERT INTO `tb_pegawai` VALUES (45, 'NOR AINI, S.Kep', '197905162008012016', 8, 4, 12);
INSERT INTO `tb_pegawai` VALUES (46, 'WACHITA, S.Kep.,Ns.', '197901172008012011', 8, 4, 6);
INSERT INTO `tb_pegawai` VALUES (47, 'HARINI, Am.Keb', '198310222006042009', 8, 4, 13);
INSERT INTO `tb_pegawai` VALUES (48, 'RINI INDRAWATI, A.Md.Keb', '197508232008012008', 8, 4, 8);
INSERT INTO `tb_pegawai` VALUES (49, 'SITI CHOTIMATUZ ZAROCH, S.E', '197006112007012006', 9, 4, 5);
INSERT INTO `tb_pegawai` VALUES (50, 'IDA LISDIANA, SE', '197004192007012009', 9, 4, 5);
INSERT INTO `tb_pegawai` VALUES (51, 'YUDHI DHARMANSYAH, A.Md', '198304152010011025', 9, 4, 5);
INSERT INTO `tb_pegawai` VALUES (52, 'LILIS ENDAH SETYANINGSIH', '198007192009012001', 9, 4, 6);
INSERT INTO `tb_pegawai` VALUES (53, 'JUNAIDI', '197603212007011013', 11, 4, 6);
INSERT INTO `tb_pegawai` VALUES (54, 'MUDRIKATUN, S.SiT,SKM,MMKes,MH', '196906101990032010', 5, 2, 1);
INSERT INTO `tb_pegawai` VALUES (55, 'EDY SUJATMIKO, S.Sos., M.M., M.H.', '196907171988031001', NULL, NULL, 0);
INSERT INTO `tb_pegawai` VALUES (56, 'NUR FUADIYATI, SKM., M.Epid', '197510082000032006', 7, 2, 17);
INSERT INTO `tb_pegawai` VALUES (57, 'EKO YUDY NOFIANTO, ST', '197711152004011001', 18, 4, 17);
INSERT INTO `tb_pegawai` VALUES (58, 'Drs. ADI BINTORO, MM', '196303261992031002', 5, 2, 3);
INSERT INTO `tb_pegawai` VALUES (59, 'HADI WIBOWO, S.Kep.,Ns.', '197204201998031008', 7, 2, 14);
INSERT INTO `tb_pegawai` VALUES (60, 'MADYO ERI MULYONO, SKM.,M.Kes', '196205021982121002', 5, 2, 7);
INSERT INTO `tb_pegawai` VALUES (61, 'IKHA RAHMAWATI, S.Farm.,Apt.', '198103032005012009', 6, 2, 16);
INSERT INTO `tb_pegawai` VALUES (63, 'IBNU SULAIMAN, Amd', '197903262002121009', 7, 4, 16);
INSERT INTO `tb_pegawai` VALUES (64, 'DIAN AMALIA LARASWULAN', '197412202004012001', 9, 4, 16);
INSERT INTO `tb_pegawai` VALUES (65, 'LENY ERNAWATI', '198005232006042007', 10, 4, 16);
INSERT INTO `tb_pegawai` VALUES (67, 'WIDYANINGSIH', '198308052009022006', 10, 4, 16);
INSERT INTO `tb_pegawai` VALUES (68, 'SAGIMIN', '196610051989011004', 11, 4, 16);
INSERT INTO `tb_pegawai` VALUES (69, 'LATIF HARIS TANOTO', '197803092010011001', 11, 4, 16);
INSERT INTO `tb_pegawai` VALUES (70, 'TEGUH SETYO RAHAYU, AM.AK', '197603232006042017', 18, 4, 17);
INSERT INTO `tb_pegawai` VALUES (71, 'MUSAFIK ABDUL ROHMAN, Amd', '197601212010011010', 18, 4, 17);
INSERT INTO `tb_pegawai` VALUES (72, 'WIWIK ARISWATI, Amd', '197603162010012005', 18, 4, 17);
INSERT INTO `tb_pegawai` VALUES (73, 'RINTO ADI WICAKSO, Amd.KL', '198004172010011020', 18, 4, 17);
INSERT INTO `tb_pegawai` VALUES (74, 'LENYTA NUR AINY, Amd', '198306142010012035', 18, 4, 17);
INSERT INTO `tb_pegawai` VALUES (75, 'ASRORI, SKM', '198207012010011021', 18, 4, 17);
INSERT INTO `tb_pegawai` VALUES (76, 'PANGKI ANGGARA', '-', 18, 4, 6);
INSERT INTO `tb_pegawai` VALUES (77, 'ARIEF BUDI PRASETYO, S.Kom', '-', 18, 4, 5);
INSERT INTO `tb_pegawai` VALUES (78, 'FIFIN HERMAWAN, S.Kom', '-', 18, 4, 5);
INSERT INTO `tb_pegawai` VALUES (79, 'GAWAT FARIZ KOMARDIANTO', '-', 18, 4, 15);
INSERT INTO `tb_pegawai` VALUES (80, 'PRIYO TRISNADI, S.Kep, Ns', '-', 18, 4, 13);
INSERT INTO `tb_pegawai` VALUES (81, 'ABDUR ROCHMAN CHUDAIFI, ST', '-', 18, 4, 6);
INSERT INTO `tb_pegawai` VALUES (82, 'DEDY TRIANTONO, AMD.RAD', '-', 18, 4, 10);
INSERT INTO `tb_pegawai` VALUES (83, 'ANISA PRASTIKA MASYITAH, S.Kep, Ns', '-', 18, 4, 15);
INSERT INTO `tb_pegawai` VALUES (84, 'ITSNA AULIA ROSYADI, S.Si', '-', 18, 4, 11);
INSERT INTO `tb_pegawai` VALUES (85, 'RETNO D. WAHYUNINGRUM, SKM', '-', 18, 4, 7);
INSERT INTO `tb_pegawai` VALUES (86, 'NUGROHO PUJI T, S.Kep, Ns', '-', 18, 4, 7);
INSERT INTO `tb_pegawai` VALUES (87, 'M. FAQIH KHAERONI, SE', '-', 18, 4, 5);
INSERT INTO `tb_pegawai` VALUES (88, 'NUR HAMIDAH', '-', 18, 4, 6);
INSERT INTO `tb_pegawai` VALUES (89, 'MELINDA YUSTITIA FAHMA', '-', 18, 4, 14);
INSERT INTO `tb_pegawai` VALUES (90, 'NOR FAIZAH', '-', 18, 4, 11);
INSERT INTO `tb_pegawai` VALUES (91, 'BASKORO ERIANTO, S.Kom', '-', 18, 4, 15);
INSERT INTO `tb_pegawai` VALUES (92, 'AZARIA YENNI AMIRA, SKM', '-', 18, 4, 5);
INSERT INTO `tb_pegawai` VALUES (93, 'NUR RIEZQIYAH A., SKM', '-', 18, 4, 14);
INSERT INTO `tb_pegawai` VALUES (94, 'OSY AISYAH SALEH, SKM', '197806022007012026', 6, 4, 8);
INSERT INTO `tb_pegawai` VALUES (95, 'AUREL TRIFONIA CHRISTY', '-', 18, 4, 5);
INSERT INTO `tb_pegawai` VALUES (96, 'JAYANTI IKA HARDIYANTI', '-', 18, 4, 11);
INSERT INTO `tb_pegawai` VALUES (97, 'LAILIS SAADAH, SKM', '199311132019022003', 9, 4, 7);
INSERT INTO `tb_pegawai` VALUES (98, 'NUR SADIYATUZ Z., S.Tr. Keb', '-', 18, 4, 10);
INSERT INTO `tb_pegawai` VALUES (99, 'DHESY PURWANINGTIAS', '-', 18, 4, 16);
INSERT INTO `tb_pegawai` VALUES (100, 'SUPARADI', '-', 18, 4, 16);
INSERT INTO `tb_pegawai` VALUES (101, 'M. FAIZAL TANJUNG', '-', 18, 4, 16);
INSERT INTO `tb_pegawai` VALUES (102, 'SUHARIYANTO', '-', 18, 4, 16);
INSERT INTO `tb_pegawai` VALUES (103, 'IIS FAELA SOFA', '-', 18, 4, 5);
INSERT INTO `tb_pegawai` VALUES (104, 'NOOR KASAN', '-', 18, 4, 6);
INSERT INTO `tb_pegawai` VALUES (105, 'NABELLA MAHARANI', '-', 18, 4, 7);
INSERT INTO `tb_pegawai` VALUES (106, 'YUNITA SINTAWATI, SKM', '198506042011012007', 7, 4, 8);
INSERT INTO `tb_pegawai` VALUES (107, 'RUKMAWATI, A.Md.KL', '198009152010012020', 9, 4, 14);
INSERT INTO `tb_pegawai` VALUES (108, 'AFIV MUSTAAN', '-', 18, 4, 6);
INSERT INTO `tb_pegawai` VALUES (109, 'NOOR AFIKA ANGRAINI', '-', 18, 4, 7);
INSERT INTO `tb_pegawai` VALUES (110, 'APRILLINA NURNANINGSIH, S.E., M.M', '198004282010012010', 7, 2, 6);
INSERT INTO `tb_pegawai` VALUES (111, 'AHMAD SYAIFUDIN, Amd.Kep', '-', 18, 4, 15);
INSERT INTO `tb_pegawai` VALUES (112, 'ANDY PRATAMA, S.Kep.Ns', '-', 18, 4, 15);
INSERT INTO `tb_pegawai` VALUES (113, 'ARI PURNA NOVITASARI, Amd.Keb', '-', 18, 4, 15);
INSERT INTO `tb_pegawai` VALUES (114, 'DEDDY SETIAJI, S.Kep.Ns', '-', 18, 4, 15);
INSERT INTO `tb_pegawai` VALUES (115, 'DEDY A. KHOIRUDIN, S.Kep.Ns', '-', 18, 4, 15);
INSERT INTO `tb_pegawai` VALUES (116, 'DIDI ARWANDI, S.Kep.Ns', '-', 18, 4, 15);
INSERT INTO `tb_pegawai` VALUES (117, 'MOHAMAD I. UMAM, Amd.Kep', '-', 18, 4, 15);
INSERT INTO `tb_pegawai` VALUES (118, 'ZIGMA YUSA SETYO, Amd.Kep', '-', 18, 4, 15);
INSERT INTO `tb_pegawai` VALUES (119, 'NANINGSIH, S.E', '197808182009012006', 9, 4, 6);
INSERT INTO `tb_pegawai` VALUES (120, 'NULIYA SHINTA, Amd.Keb.', '-', 18, 4, 15);
INSERT INTO `tb_pegawai` VALUES (121, 'ISTI ARIFAH, Amd.Kep.', '-', 18, 4, 15);
INSERT INTO `tb_pegawai` VALUES (122, 'DRAJAT SURYO P.', '-', 18, 4, 0);
INSERT INTO `tb_pegawai` VALUES (123, 'FERA DYAH N.', '-', 18, 4, 0);
INSERT INTO `tb_pegawai` VALUES (124, 'TRY WAHYUNINGSIH, S.ST', '196802221989032005', 6, 4, 11);
INSERT INTO `tb_pegawai` VALUES (125, 'ANDY WAHYU KURNIAWAN, A.Md', '197907092011011005', 10, 4, 6);
INSERT INTO `tb_pegawai` VALUES (126, 'LARNO', '-', 18, 4, 6);
INSERT INTO `tb_pegawai` VALUES (127, 'KARWITO', '-', 18, 4, 6);

-- ----------------------------
-- Table structure for tb_posisi
-- ----------------------------
DROP TABLE IF EXISTS `tb_posisi`;
CREATE TABLE `tb_posisi`  (
  `id_posisi` int(11) NOT NULL AUTO_INCREMENT,
  `posisi` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_posisi`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 20 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_posisi
-- ----------------------------
INSERT INTO `tb_posisi` VALUES (1, 'Kepala Dinas', '0');
INSERT INTO `tb_posisi` VALUES (2, 'Bidang Pemberantasan Penyakit', '19');
INSERT INTO `tb_posisi` VALUES (3, 'Bidang Kesehatan Masyarakat', '19');
INSERT INTO `tb_posisi` VALUES (4, 'Bidang Yankes dan SDK', '19');
INSERT INTO `tb_posisi` VALUES (5, 'Sub Bagian Renval dan Keuangan', '19');
INSERT INTO `tb_posisi` VALUES (6, 'Sub Bagian Umum dan Kepegawaian', '19');
INSERT INTO `tb_posisi` VALUES (7, 'Seksi P2PM', '2');
INSERT INTO `tb_posisi` VALUES (8, 'Seksi P2PTM', '2');
INSERT INTO `tb_posisi` VALUES (9, 'Seksi Surveilans dan Imunisasi', '2');
INSERT INTO `tb_posisi` VALUES (10, 'Seksi Promosi dan Pemberdayaan Masyarakat', '3');
INSERT INTO `tb_posisi` VALUES (11, 'Seksi Kesga Gizi', '3');
INSERT INTO `tb_posisi` VALUES (12, 'Seksi Farmalkes dan Perbelkes', '4');
INSERT INTO `tb_posisi` VALUES (13, 'Seksi SDMK', '4');
INSERT INTO `tb_posisi` VALUES (14, 'Seksi Kesehatan Lingkungan', '3');
INSERT INTO `tb_posisi` VALUES (15, 'Seksi Pelayanan Kesehatan', '4');
INSERT INTO `tb_posisi` VALUES (16, 'UPT Instalasi Farmasi Kabupaten', '19');
INSERT INTO `tb_posisi` VALUES (17, 'UPT Laboratorium Kesehatan', '19');
INSERT INTO `tb_posisi` VALUES (19, 'Sekretaris Dinas', '1');

-- ----------------------------
-- Table structure for tb_rekening
-- ----------------------------
DROP TABLE IF EXISTS `tb_rekening`;
CREATE TABLE `tb_rekening`  (
  `id_rekening` int(11) NOT NULL AUTO_INCREMENT,
  `kode_rekening` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `uraian_rekening` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `st` int(11) NULL DEFAULT 0,
  PRIMARY KEY (`id_rekening`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 327 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_rekening
-- ----------------------------
INSERT INTO `tb_rekening` VALUES (1, '51201001', 'Belanja Bahan Bangunan dan Konstruksi', 0);
INSERT INTO `tb_rekening` VALUES (2, '51201002', 'Belanja Bahan Kimia', 0);
INSERT INTO `tb_rekening` VALUES (3, '51201003', 'Belanja Bahan Peledak', 0);
INSERT INTO `tb_rekening` VALUES (4, '51201004', 'Belanja Bahan Bakar dan Pelumas', 0);
INSERT INTO `tb_rekening` VALUES (5, '51201005', 'Belanja Bahan Baku', 0);
INSERT INTO `tb_rekening` VALUES (6, '51201006', 'Belanja Bahan Kimia Nuklir', 0);
INSERT INTO `tb_rekening` VALUES (7, '51201007', 'Belanja Barang Dalam Proses', 0);
INSERT INTO `tb_rekening` VALUES (8, '51201008', 'Belanja Bahan/Bibit Tanaman', 0);
INSERT INTO `tb_rekening` VALUES (9, '51201009', 'Belanja Isi Tabung Pemadam Kebakaran', 0);
INSERT INTO `tb_rekening` VALUES (10, '51201010', 'Belanja Isi Tabung Gas', 0);
INSERT INTO `tb_rekening` VALUES (11, '51201011', 'Belanja Bahan/Bibit Ternak/Bibit Ikan', 0);
INSERT INTO `tb_rekening` VALUES (12, '51201012', 'Belanja Bahan Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (13, '51202001', 'Belanja Suku Cadang Alat Angkutan', 0);
INSERT INTO `tb_rekening` VALUES (14, '51202002', 'Belanja Suku Cadang Alat Besar', 0);
INSERT INTO `tb_rekening` VALUES (15, '51202003', 'Belanja Suku Cadang Alat Kedokteran', 0);
INSERT INTO `tb_rekening` VALUES (16, '51202004', 'Belanja Suku Cadang Alat Laboratorium', 0);
INSERT INTO `tb_rekening` VALUES (17, '51202005', 'Belanja Suku Cadang Alat Pemancar', 0);
INSERT INTO `tb_rekening` VALUES (18, '51202006', 'Belanja Suku Cadang Alat Studio dan Komunikasi', 0);
INSERT INTO `tb_rekening` VALUES (19, '51202007', 'Belanja Suku Cadang Alat Pertanian', 0);
INSERT INTO `tb_rekening` VALUES (20, '51202008', 'Belanja Suku Cadang Alat Bengkel', 0);
INSERT INTO `tb_rekening` VALUES (21, '51202009', 'Belanja Suku Cadang Alat Persenjataan', 0);
INSERT INTO `tb_rekening` VALUES (22, '51202010', 'Belanja Suku Cadang Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (23, '51203001', 'Belanja Alat Tulis Kantor', 0);
INSERT INTO `tb_rekening` VALUES (24, '51203002', 'Belanja Kertas dan Cover', 0);
INSERT INTO `tb_rekening` VALUES (25, '51203003', 'Belanja Bahan Cetak', 0);
INSERT INTO `tb_rekening` VALUES (26, '51203004', 'Belanja Benda Pos', 0);
INSERT INTO `tb_rekening` VALUES (27, '51203005', 'Belanja Persediaan Dokumen/Administrasi Tender', 0);
INSERT INTO `tb_rekening` VALUES (28, '51203006', 'Belanja Bahan Komputer', 0);
INSERT INTO `tb_rekening` VALUES (29, '51203007', 'Belanja Perabot Kantor', 0);
INSERT INTO `tb_rekening` VALUES (30, '51203008', 'Belanja Alat Listrik', 0);
INSERT INTO `tb_rekening` VALUES (31, '51203009', 'Belanja Perlengkapan Dinas', 0);
INSERT INTO `tb_rekening` VALUES (32, '51203010', 'Belanja Perlengkapan perorangan lapangan (KAPORLAP) dan Perlengkapan Satwa', 0);
INSERT INTO `tb_rekening` VALUES (33, '51203011', 'Belanja Perlengkapan Pendukung Olahraga', 0);
INSERT INTO `tb_rekening` VALUES (34, '51203012', 'Belanja Souvenir/Cinderamata', 0);
INSERT INTO `tb_rekening` VALUES (35, '51203013', 'Belanja Alat/Bahan Untuk Kegiatan Kantor Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (36, '51204001', 'Belanja Obat', 0);
INSERT INTO `tb_rekening` VALUES (37, '51204002', 'Belanja Obat-obatan Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (38, '51205001', 'Belanja Barang Yang Akan Diserahkan Kepada Masyarakat', 0);
INSERT INTO `tb_rekening` VALUES (39, '51205002', 'Belanja Barang Yang Akan Diserahkan Kepada Pihak Ketiga', 0);
INSERT INTO `tb_rekening` VALUES (40, '51206001', 'Belanja Barang Untuk Dijual kepada Masyarakat/Pihak Ketiga', 0);
INSERT INTO `tb_rekening` VALUES (41, '51207001', 'Belanja barang cadangan energi', 0);
INSERT INTO `tb_rekening` VALUES (42, '51207002', 'Belanja barang cadangan pangan', 0);
INSERT INTO `tb_rekening` VALUES (43, '51208001', 'Belanja Natura (makanan/sembako, minuman dst)', 0);
INSERT INTO `tb_rekening` VALUES (44, '51208002', 'Belanja Pakan (pakan hewan, pakan ikan dst)', 0);
INSERT INTO `tb_rekening` VALUES (45, '51208003', 'Belanja Natura dan Pakan Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (46, '51209001', 'Belanja Barang Untuk Penelitian Biologi', 0);
INSERT INTO `tb_rekening` VALUES (47, '51209002', 'Belanja Barang Untuk Penelitian Biologi Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (48, '51209003', 'Belanja Barang Untuk Penelitian Teknologi', 0);
INSERT INTO `tb_rekening` VALUES (49, '51209004', 'Belanja Barang Untuk Penelitian Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (50, '51210001', 'Belanja Barang Untuk Proses Produksi', 0);
INSERT INTO `tb_rekening` VALUES (51, '51210002', 'Belanja Barang Untuk Proses Produksi Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (52, '51211001', 'Belanja telepon', 0);
INSERT INTO `tb_rekening` VALUES (53, '51211002', 'Belanja air', 0);
INSERT INTO `tb_rekening` VALUES (54, '51211003', 'Belanja listrik', 0);
INSERT INTO `tb_rekening` VALUES (55, '51211004', 'Belanja Jasa pengumuman lelang', 0);
INSERT INTO `tb_rekening` VALUES (56, '51211005', 'Belanja surat kabar/majalah', 0);
INSERT INTO `tb_rekening` VALUES (57, '51211006', 'Belanja jasa internet (sewa hosting dan broadband)', 0);
INSERT INTO `tb_rekening` VALUES (58, '51211007', 'Belanja paket/pengiriman', 0);
INSERT INTO `tb_rekening` VALUES (59, '51211008', 'Belanja Sertifikasi', 0);
INSERT INTO `tb_rekening` VALUES (60, '51211009', 'Belanja Jasa Transaksi Keuangan', 0);
INSERT INTO `tb_rekening` VALUES (61, '51211010', 'Belanja Jasa Penerangan Jalan Umum', 0);
INSERT INTO `tb_rekening` VALUES (62, '51211011', 'Belanja Dokumentasi dan Publikasi', 0);
INSERT INTO `tb_rekening` VALUES (63, '51211012', 'Belanja Jasa Pemeriksaan Kesehatan', 0);
INSERT INTO `tb_rekening` VALUES (64, '51212001', 'Belanja Jasa Event Organizer', 0);
INSERT INTO `tb_rekening` VALUES (65, '51212002', 'Belanja Jasa Pemusnahan', 0);
INSERT INTO `tb_rekening` VALUES (66, '51212003', 'Belanja Jasa Pihak Ketiga Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (67, '51213001', 'Belanja Jasa Konsultansi Penelitian', 0);
INSERT INTO `tb_rekening` VALUES (68, '51213002', 'Belanja Jasa Konsultansi Perencanaan', 0);
INSERT INTO `tb_rekening` VALUES (69, '51213003', 'Belanja Jasa Konsultansi Pengawasan', 0);
INSERT INTO `tb_rekening` VALUES (70, '51213004', 'Belanja Jasa Konsultansi Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (71, '51214001', 'Belanja Premi Asuransi Kesehatan', 0);
INSERT INTO `tb_rekening` VALUES (72, '51214002', 'Belanja Premi Asuransi Ketenagakerjaan', 0);
INSERT INTO `tb_rekening` VALUES (73, '51214003', 'Belanja Premi Asuransi Barang Milik Daerah', 0);
INSERT INTO `tb_rekening` VALUES (74, '51215001', 'Belanja Jasa Servis', 0);
INSERT INTO `tb_rekening` VALUES (75, '51215002', 'Belanja Penggantian Suku Cadang', 0);
INSERT INTO `tb_rekening` VALUES (76, '51215003', 'Belanja Bahan Bakar Minyak/Gas dan Pelumas', 0);
INSERT INTO `tb_rekening` VALUES (77, '51215004', 'Belanja Jasa KIR, PKB, BBNKB dan STNK', 0);
INSERT INTO `tb_rekening` VALUES (78, '51216001', 'Belanja Cetak', 0);
INSERT INTO `tb_rekening` VALUES (79, '51216002', 'Belanja Penggandaan/fotokopi', 0);
INSERT INTO `tb_rekening` VALUES (80, '51217001', 'Belanja sewa rumah jabatan/rumah dinas/gedung/kantor/tempat/ruang pertemuan', 0);
INSERT INTO `tb_rekening` VALUES (81, '51217002', 'Belanja sewa Sarana Mobilitas Darat/Air/Udara', 0);
INSERT INTO `tb_rekening` VALUES (82, '51217003', 'Belanja Sewa Alat Berat', 0);
INSERT INTO `tb_rekening` VALUES (83, '51217004', 'Belanja Sewa Perlengkapan dan Peralatan', 0);
INSERT INTO `tb_rekening` VALUES (84, '51217005', 'Belanja Sewa Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (85, '51218001', 'Belanja perjalanan dinas dalam daerah', 0);
INSERT INTO `tb_rekening` VALUES (86, '51218002', 'Belanja perjalanan dinas luar daerah', 0);
INSERT INTO `tb_rekening` VALUES (87, '51218003', 'Belanja perjalanan dinas luar negeri', 0);
INSERT INTO `tb_rekening` VALUES (88, '51219001', 'Belanja pemulangan pegawai yang wafat dalam tugas', 0);
INSERT INTO `tb_rekening` VALUES (89, '51220001', 'Belanja Pemeliharan Tanah', 0);
INSERT INTO `tb_rekening` VALUES (90, '51220002', 'Belanja Pemeliharan Peralatan dan Mesin', 0);
INSERT INTO `tb_rekening` VALUES (91, '51220003', 'Belanja Pemeliharan Gedung dan Bangunan', 0);
INSERT INTO `tb_rekening` VALUES (92, '51220004', 'Belanja Pemeliharan Jalan, Irigasi, dan Jaringan', 0);
INSERT INTO `tb_rekening` VALUES (93, '51220005', 'Belanja Pemeliharan Aset Tetap Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (94, '51220006', 'Belanja Pemeliharan Aset Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (95, '51221001', 'Belanja Tugas Belajar D3', 0);
INSERT INTO `tb_rekening` VALUES (96, '51221002', 'Belanja Tugas Belajar S1', 0);
INSERT INTO `tb_rekening` VALUES (97, '51221003', 'Belanja Tugas Belajar S2', 0);
INSERT INTO `tb_rekening` VALUES (98, '51221004', 'Belanja Tugas Belajar S3', 0);
INSERT INTO `tb_rekening` VALUES (99, '51222001', 'Belanja kursus-kursus singkat/pelatihan', 0);
INSERT INTO `tb_rekening` VALUES (100, '51222002', 'Belanja sosialisasi', 0);
INSERT INTO `tb_rekening` VALUES (101, '51222003', 'Belanja bimbingan teknis', 0);
INSERT INTO `tb_rekening` VALUES (102, '51223001', 'Belanja Tenaga Ahli PNS', 0);
INSERT INTO `tb_rekening` VALUES (103, '51223002', 'Belanja Narasumber PNS', 0);
INSERT INTO `tb_rekening` VALUES (104, '51223003', 'Belanja Instruktur PNS', 0);
INSERT INTO `tb_rekening` VALUES (105, '51223004', 'Belanja Moderator PNS', 0);
INSERT INTO `tb_rekening` VALUES (106, '51223005', 'Belanja Jasa Tenaga Medis/ Paramedis PNS', 0);
INSERT INTO `tb_rekening` VALUES (107, '51223006', 'Belanja Jasa PNS Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (108, '51224001', 'Belanja Tenaga Ahli Non PNS', 0);
INSERT INTO `tb_rekening` VALUES (109, '51224002', 'Belanja Narasumber Non PNS', 0);
INSERT INTO `tb_rekening` VALUES (110, '51224003', 'Belanja Instruktur Non PNS', 0);
INSERT INTO `tb_rekening` VALUES (111, '51224004', 'Belanja Moderator Non PNS', 0);
INSERT INTO `tb_rekening` VALUES (112, '51224005', 'Belanja Jasa Tenaga Medis/ Paramedis Non PNS', 0);
INSERT INTO `tb_rekening` VALUES (113, '51224006', 'Belanja Jasa Non PNS Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (114, '51225001', 'Uang untuk hadiah', 0);
INSERT INTO `tb_rekening` VALUES (115, '51225002', 'Uang untuk penghargaan', 0);
INSERT INTO `tb_rekening` VALUES (116, '51226001', 'Uang untuk penanganan dampak sosial kemasyarakatan kepada Pihak Ketiga', 0);
INSERT INTO `tb_rekening` VALUES (117, '51226002', 'Uang untuk penanganan dampak sosial kemasyarakatan kepada Masyarakat', 0);
INSERT INTO `tb_rekening` VALUES (118, '51227001', 'Belanja Penginapan Tamu Pemerintah Daerah', 0);
INSERT INTO `tb_rekening` VALUES (119, '51228001', 'Belanja Jaminan Kesehatan Daerah (Jamkesda)', 0);
INSERT INTO `tb_rekening` VALUES (120, '51229001', 'Belanja Barang dan Jasa BLUD', 0);
INSERT INTO `tb_rekening` VALUES (121, '51230001', 'Belanja Barang dan Jasa BOS', 0);
INSERT INTO `tb_rekening` VALUES (122, '51231001', 'Belanja Kontribusi APKASI', 0);
INSERT INTO `tb_rekening` VALUES (123, '51301001', 'Belanja Bunga Utang Pinjaman kepada Pemerintah', 0);
INSERT INTO `tb_rekening` VALUES (124, '51301002', 'Belanja Bunga Utang Pinjaman kepada Pemerintah Daerah Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (125, '51301003', 'Belanja Bunga Utang Pinjaman kepada Lembaga Keuangan Bank', 0);
INSERT INTO `tb_rekening` VALUES (126, '51301004', 'Belanja Bunga Utang Pinjaman kepada Lembaga Keuangan Bukan Bank', 0);
INSERT INTO `tb_rekening` VALUES (127, '51302001', 'Belanja Bunga Utang Obligasi', 0);
INSERT INTO `tb_rekening` VALUES (128, '51303001', 'Belanja Bunga Utang BLUD', 0);
INSERT INTO `tb_rekening` VALUES (129, '51401001', 'Belanja Subsidi kepada BUMN', 0);
INSERT INTO `tb_rekening` VALUES (130, '51401002', 'Belanja Subsidi kepada BUMD', 0);
INSERT INTO `tb_rekening` VALUES (131, '51401003', 'Belanja Subsidi kepada Badan Usaha Milik Swasta', 0);
INSERT INTO `tb_rekening` VALUES (132, '51501001', 'Belanja Hibah Uang kepada Pemerintah Pusat', 0);
INSERT INTO `tb_rekening` VALUES (133, '51501002', 'Belanja Hibah Uang kepada Pemerintah Pusat di Daerah (Instansi Vertikal)', 0);
INSERT INTO `tb_rekening` VALUES (134, '51502001', 'Belanja Hibah Uang kepada Pemerintah Daerah lainnya', 0);
INSERT INTO `tb_rekening` VALUES (135, '51503001', 'Belanja Hibah Uang kepada BUMN', 0);
INSERT INTO `tb_rekening` VALUES (136, '51503002', 'Belanja Hibah Uang kepada BUMD', 0);
INSERT INTO `tb_rekening` VALUES (137, '51504001', 'Belanja Hibah Uang kepada Badan/Lembaga', 0);
INSERT INTO `tb_rekening` VALUES (138, '51504002', 'Belanja Hibah Uang kepada Organisasi Kemasyarakatan', 0);
INSERT INTO `tb_rekening` VALUES (139, '51505001', 'Belanja Hibah Barang kepada Pemerintah Pusat', 0);
INSERT INTO `tb_rekening` VALUES (140, '51505002', 'Belanja Hibah Barang kepada Pemerintah Pusat di Daerah (Instansi Vertikal)', 0);
INSERT INTO `tb_rekening` VALUES (141, '51506001', 'Belanja Hibah Barang kepada Pemerintah Daerah', 0);
INSERT INTO `tb_rekening` VALUES (142, '51507001', 'Belanja Hibah Barang kepada BUMN', 0);
INSERT INTO `tb_rekening` VALUES (143, '51507002', 'Belanja Hibah Barang kepada BUMD', 0);
INSERT INTO `tb_rekening` VALUES (144, '51508001', 'Belanja Hibah Barang kepada Badan/Lembaga', 0);
INSERT INTO `tb_rekening` VALUES (145, '51508002', 'Belanja Hibah Barang kepada Organisasi Kemasyarakatan', 0);
INSERT INTO `tb_rekening` VALUES (146, '51509001', 'Bantuan Keuangan kepada Partai Amanat Nasional (PAN)', 0);
INSERT INTO `tb_rekening` VALUES (147, '51509002', 'Bantuan Keuangan kepada Partai Berkarya', 0);
INSERT INTO `tb_rekening` VALUES (148, '51509003', 'Bantuan Keuangan kepada Partai Demokrasi Indonesia Perjuangan (PDI-Perjuangan)', 0);
INSERT INTO `tb_rekening` VALUES (149, '51509004', 'Bantuan Keuangan kepada Partai Demokrat (PD)', 0);
INSERT INTO `tb_rekening` VALUES (150, '51509005', 'Bantuan Keuangan kepada Partai Gerakan Indonesia Raya (GERINDRA)', 0);
INSERT INTO `tb_rekening` VALUES (151, '51509006', 'Bantuan Keuangan kepada Partai Golongan Karya (GOLKAR)', 0);
INSERT INTO `tb_rekening` VALUES (152, '51509007', 'Bantuan Keuangan kepada Partai Hati Nurani Rakyat (HANURA)', 0);
INSERT INTO `tb_rekening` VALUES (153, '51509008', 'Bantuan Keuangan kepada Partai Keadilan Sejahtera (PKS)', 0);
INSERT INTO `tb_rekening` VALUES (154, '51509009', 'Bantuan Keuangan kepada Partai Kebangkitan Bangsa (PKB)', 0);
INSERT INTO `tb_rekening` VALUES (155, '51509010', 'Bantuan Keuangan kepada Partai Nasional Demokrat (NASDEM)', 0);
INSERT INTO `tb_rekening` VALUES (156, '51509011', 'Bantuan Keuangan kepada Partai Persatuan Indonesia (PERINDO)', 0);
INSERT INTO `tb_rekening` VALUES (157, '51509012', 'Bantuan Keuangan kepada Partai Persatuan Pembangunan (PPP)', 0);
INSERT INTO `tb_rekening` VALUES (158, '51601001', 'Belanja Bantuan Sosial Uang kepada Individu', 0);
INSERT INTO `tb_rekening` VALUES (159, '51601002', 'Belanja Bantuan Sosial Uang kepada Keluarga', 0);
INSERT INTO `tb_rekening` VALUES (160, '51601003', 'Belanja Bantuan Sosial Uang kepada Kelompok', 0);
INSERT INTO `tb_rekening` VALUES (161, '51601004', 'Belanja Bantuan Sosial Uang kepada Masyarakat', 0);
INSERT INTO `tb_rekening` VALUES (162, '51602001', 'Belanja Bantuan Sosial Barang kepada Individu', 0);
INSERT INTO `tb_rekening` VALUES (163, '51602002', 'Belanja Bantuan Sosial Barang kepada Keluarga', 0);
INSERT INTO `tb_rekening` VALUES (164, '51602003', 'Belanja Bantuan Sosial Barang kepada Kelompok', 0);
INSERT INTO `tb_rekening` VALUES (165, '51602004', 'Belanja Bantuan Sosial Barang kepada Masyarakat', 0);
INSERT INTO `tb_rekening` VALUES (166, '52101001', 'Belanja Modal Tanah Bangunan Perumahan/G. Tempat Tinggal', 0);
INSERT INTO `tb_rekening` VALUES (167, '52101002', 'Belanja Modal Tanah Untuk Bangunan Ged.Perdagangan/Perusahaan', 0);
INSERT INTO `tb_rekening` VALUES (168, '52101003', 'Belanja Modal Tanah Untuk Bangunan Industri', 0);
INSERT INTO `tb_rekening` VALUES (169, '52101004', 'Belanja Modal Tanah Untuk Bangunan Tempat Kerja', 0);
INSERT INTO `tb_rekening` VALUES (170, '52101005', 'Belanja Modal Tanah Untuk Bangunan Gedung Sarana Olah Raga', 0);
INSERT INTO `tb_rekening` VALUES (171, '52101006', 'Belanja Modal Tanah Untuk Bangunan Tempat Ibadah', 0);
INSERT INTO `tb_rekening` VALUES (172, '52101007', 'Belanja Modal Tanah Persil Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (173, '52102001', 'Belanja Modal Tanah Basah', 0);
INSERT INTO `tb_rekening` VALUES (174, '52102002', 'Belanja Modal Tanah Kering', 0);
INSERT INTO `tb_rekening` VALUES (175, '52102003', 'Belanja Modal Tanah Perkebunan', 0);
INSERT INTO `tb_rekening` VALUES (176, '52102004', 'Belanja Modal Tanah Hutan', 0);
INSERT INTO `tb_rekening` VALUES (177, '52102005', 'Belanja Modal Tanah Tandus', 0);
INSERT INTO `tb_rekening` VALUES (178, '52102006', 'Belanja Modal Tanah Padang Alang-alang/Rumput', 0);
INSERT INTO `tb_rekening` VALUES (179, '52102007', 'Belanja Modal Tanah Pertanian', 0);
INSERT INTO `tb_rekening` VALUES (180, '52102008', 'Belanja Modal Tanah Pertambangan', 0);
INSERT INTO `tb_rekening` VALUES (181, '52102009', 'Belanja Modal Tanah Non Persil Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (182, '52103001', 'Belanja Modal Pengadaan Tanah Rawa', 0);
INSERT INTO `tb_rekening` VALUES (183, '52103002', 'Belanja Modal Tanah Lapangan Olah Raga', 0);
INSERT INTO `tb_rekening` VALUES (184, '52103003', 'Belanja Modal Tanah Lapangan Parkir', 0);
INSERT INTO `tb_rekening` VALUES (185, '52103004', 'Belanja Modal Tanah Lapangan Penimbunan Barang', 0);
INSERT INTO `tb_rekening` VALUES (186, '52103005', 'Belanja Modal Tanah Lapangan Pemancar dan Studio Alam', 0);
INSERT INTO `tb_rekening` VALUES (187, '52103006', 'Belanja Modal Tanah Lapangan Pengujian/Pengolahan', 0);
INSERT INTO `tb_rekening` VALUES (188, '52103007', 'Belanja Modal Tanah Lapangan Terbang', 0);
INSERT INTO `tb_rekening` VALUES (189, '52103008', 'Belanja Modal Tanah Untuk Jalan', 0);
INSERT INTO `tb_rekening` VALUES (190, '52103009', 'Belanja Modal Tanah Untuk Bangunan Air', 0);
INSERT INTO `tb_rekening` VALUES (191, '52103010', 'Belanja Modal Tanah Untuk Bangunan Instalasi', 0);
INSERT INTO `tb_rekening` VALUES (192, '52103011', 'Belanja Modal Tanah Untuk Bangunan Jaringan', 0);
INSERT INTO `tb_rekening` VALUES (193, '52103012', 'Belanja Modal Tanah Untuk Bangunan Bersejarah', 0);
INSERT INTO `tb_rekening` VALUES (194, '52103013', 'Belanja Modal Tanah Untuk Makam', 0);
INSERT INTO `tb_rekening` VALUES (195, '52103014', 'Belanja Modal Tanah Untuk Taman', 0);
INSERT INTO `tb_rekening` VALUES (196, '52103015', 'Belanja Modal Tanah Untuk Latihan', 0);
INSERT INTO `tb_rekening` VALUES (197, '52103016', 'Belanja Modal Tanah Daerah Pertahanan', 0);
INSERT INTO `tb_rekening` VALUES (198, '52103017', 'Belanja Modal Tanah Lapangan PBB', 0);
INSERT INTO `tb_rekening` VALUES (199, '52103018', 'Belanja Modal Tanah Kampung', 0);
INSERT INTO `tb_rekening` VALUES (200, '52103019', 'Belanja Modal Emplasment', 0);
INSERT INTO `tb_rekening` VALUES (201, '52103020', 'Belanja Modal Lapangan Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (202, '52104001', 'Belanja Modal Tanah BLUD', 0);
INSERT INTO `tb_rekening` VALUES (203, '52105001', 'Belanja Modal Tanah BOS', 0);
INSERT INTO `tb_rekening` VALUES (204, '52201001', 'Belanja modal Peralatan dan Mesin Alat Besar Darat', 0);
INSERT INTO `tb_rekening` VALUES (205, '52201002', 'Belanja modal Peralatan dan Mesin Alat Besar Apung', 0);
INSERT INTO `tb_rekening` VALUES (206, '52201003', 'Belanja modal Peralatan dan Mesin Alat Bantu', 0);
INSERT INTO `tb_rekening` VALUES (207, '52202001', 'Belanja modal Peralatan dan Mesin Alat Angkutan Darat Bermotor', 0);
INSERT INTO `tb_rekening` VALUES (208, '52202002', 'Belanja modal Peralatan dan Mesin Alat Angkutan Darat Tak Bermotor', 0);
INSERT INTO `tb_rekening` VALUES (209, '52202003', 'Belanja modal Peralatan dan Mesin Alat Angkutan Apung Bermotor', 0);
INSERT INTO `tb_rekening` VALUES (210, '52202004', 'Belanja modal Peralatan dan Mesin Alat Angkutan Apung Tak Bermotor', 0);
INSERT INTO `tb_rekening` VALUES (211, '52202005', 'Belanja modal Peralatan dan Mesin Alat Angkutan Udara Bermotor', 0);
INSERT INTO `tb_rekening` VALUES (212, '52202006', 'Belanja modal Peralatan dan Mesin Alat Angkutan Udara Tak Bermotor', 0);
INSERT INTO `tb_rekening` VALUES (213, '52203001', 'Belanja Modal Alat Bengkel Bermesin', 0);
INSERT INTO `tb_rekening` VALUES (214, '52203002', 'Belanja Modal Alat Bengkel Tak Bermesin', 0);
INSERT INTO `tb_rekening` VALUES (215, '52203003', 'Belanja Modal alat ukur', 0);
INSERT INTO `tb_rekening` VALUES (216, '52204001', 'Belanja Modal alat pengolahan tanah dan tanaman', 0);
INSERT INTO `tb_rekening` VALUES (217, '52204002', 'Belanja Modal alat pemeliharaan tanaman/ikan/ternak', 0);
INSERT INTO `tb_rekening` VALUES (218, '52204003', 'Belanja Modal alat panen', 0);
INSERT INTO `tb_rekening` VALUES (219, '52204004', 'Belanja Modal alat penyimpan hasil percobaan pertanian', 0);
INSERT INTO `tb_rekening` VALUES (220, '52204005', 'Belanja Modal alat laboratorium pertanian', 0);
INSERT INTO `tb_rekening` VALUES (221, '52204006', 'Belanja Modal alat prosesing', 0);
INSERT INTO `tb_rekening` VALUES (222, '52204007', 'Belanja Modal alat pasca panen', 0);
INSERT INTO `tb_rekening` VALUES (223, '52204008', 'Belanja Modal alat produksi perikanan', 0);
INSERT INTO `tb_rekening` VALUES (224, '52204009', 'Belanja Modal alat-alat peternakan', 0);
INSERT INTO `tb_rekening` VALUES (225, '52204010', 'Belanja Modal alat pengolahan lainnya', 0);
INSERT INTO `tb_rekening` VALUES (226, '52205001', 'Belanja Modal Alat Kantor', 0);
INSERT INTO `tb_rekening` VALUES (227, '52205002', 'Belanja Modal Alat Rumah Tangga', 0);
INSERT INTO `tb_rekening` VALUES (228, '52206001', 'Belanja Modal Alat Studio', 0);
INSERT INTO `tb_rekening` VALUES (229, '52206002', 'Belanja Modal Alat Komunikasi', 0);
INSERT INTO `tb_rekening` VALUES (230, '52206003', 'Belanja Modal Alat Pemancar', 0);
INSERT INTO `tb_rekening` VALUES (231, '52206004', 'Belanja Modal Peralatan Komunikasi Navigasi', 0);
INSERT INTO `tb_rekening` VALUES (232, '52207001', 'Belanja Modal Alat Kedokteran', 0);
INSERT INTO `tb_rekening` VALUES (233, '52207002', 'Belanja Modal Alat Kesehatan Umum', 0);
INSERT INTO `tb_rekening` VALUES (234, '52208001', 'Belanja Modal Unit Alat Laboratorium', 0);
INSERT INTO `tb_rekening` VALUES (235, '52208002', 'Belanja Modal Unit Alat Laboratorium Kimia Nuklir', 0);
INSERT INTO `tb_rekening` VALUES (236, '52208003', 'Belanja Modal Alat Peraga Sekolah', 0);
INSERT INTO `tb_rekening` VALUES (237, '52208004', 'Belanja Modal Alat Laboratorium Fisika Nuklir/Elektronika', 0);
INSERT INTO `tb_rekening` VALUES (238, '52208005', 'Belanja Modal Alat Proteksi Radiasi/Proteksi Lingkungan', 0);
INSERT INTO `tb_rekening` VALUES (239, '52208006', 'Belanja Modal Raditation Application and Non Destructif Testing Laboratory Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (240, '52208007', 'Belanja Modal Alat Laboratorium Lingkungan Hidup', 0);
INSERT INTO `tb_rekening` VALUES (241, '52208008', 'Belanja Modal Peralatan Laboratorium Hydrodinamica', 0);
INSERT INTO `tb_rekening` VALUES (242, '52208009', 'Belanja Modal Alat Laboratorium Standarisasi Kalibrasi dan Instrumentasi', 0);
INSERT INTO `tb_rekening` VALUES (243, '52209001', 'Belanja Modal Senjata Api', 0);
INSERT INTO `tb_rekening` VALUES (244, '52209002', 'Belanja Modal Persenjataan Non Senjata Api', 0);
INSERT INTO `tb_rekening` VALUES (245, '52209003', 'Belanja Modal Senjata Sinar', 0);
INSERT INTO `tb_rekening` VALUES (246, '52210001', 'Belanja Modal Komputer Unit', 0);
INSERT INTO `tb_rekening` VALUES (247, '52210002', 'Belanja Modal Peralatan Komputer', 0);
INSERT INTO `tb_rekening` VALUES (248, '52211001', 'Belanja Modal Alat Eksplorasi Topografi', 0);
INSERT INTO `tb_rekening` VALUES (249, '52211002', 'Belanja Modal Alat Eksplorasi Geofisika', 0);
INSERT INTO `tb_rekening` VALUES (250, '52212001', 'Belanja Modal Alat Pengeboran Mesin', 0);
INSERT INTO `tb_rekening` VALUES (251, '52212002', 'Belanja Modal Alat Pengeboran Non Mesin', 0);
INSERT INTO `tb_rekening` VALUES (252, '52213001', 'Belanja Modal Alat Sumur', 0);
INSERT INTO `tb_rekening` VALUES (253, '52213002', 'Belanja Modal Alat Produksi', 0);
INSERT INTO `tb_rekening` VALUES (254, '52213003', 'Belanja Modal Alat Pengolahan dan Pemurnian', 0);
INSERT INTO `tb_rekening` VALUES (255, '52214001', 'Belanja Modal Alat Deteksi', 0);
INSERT INTO `tb_rekening` VALUES (256, '52214002', 'Belanja Modal Alat Pelindung', 0);
INSERT INTO `tb_rekening` VALUES (257, '52214003', 'Belanja Modal Alat SAR', 0);
INSERT INTO `tb_rekening` VALUES (258, '52214004', 'Belanja Modal Alat Kerja Penerbangan', 0);
INSERT INTO `tb_rekening` VALUES (259, '52215001', 'Belanja Modal Alat Peraga Pelatihan dan Percontohan', 0);
INSERT INTO `tb_rekening` VALUES (260, '52216001', 'Belanja Modal Unit Peralatan Proses/Produksi', 0);
INSERT INTO `tb_rekening` VALUES (261, '52217001', 'Belanja Modal Rambu-Rambu Lalu lintas Darat', 0);
INSERT INTO `tb_rekening` VALUES (262, '52217002', 'Belanja Modal Rambu-Rambu Lalu lintas Udara', 0);
INSERT INTO `tb_rekening` VALUES (263, '52217003', 'Belanja Modal Rambu-Rambu Lalu lintas Air', 0);
INSERT INTO `tb_rekening` VALUES (264, '52218001', 'Belanja Modal Peralatan Olah Raga', 0);
INSERT INTO `tb_rekening` VALUES (265, '52219001', 'Belanja Modal Peralatan dan Mesin BLUD', 0);
INSERT INTO `tb_rekening` VALUES (266, '52220001', 'Belanja Modal Peralatan dan Mesin BOS', 0);
INSERT INTO `tb_rekening` VALUES (267, '52301001', 'Belanja modal Bangunan Gedung Tempat Kerja', 0);
INSERT INTO `tb_rekening` VALUES (268, '52301002', 'Belanja modal Bangunan Gedung Tempat Tinggal', 0);
INSERT INTO `tb_rekening` VALUES (269, '52302001', 'Belanja modal Candi', 0);
INSERT INTO `tb_rekening` VALUES (270, '52302002', 'Belanja modal Tugu Peringatan', 0);
INSERT INTO `tb_rekening` VALUES (271, '52302003', 'Belanja modal Prasasti', 0);
INSERT INTO `tb_rekening` VALUES (272, '52302004', 'Belanja modal Monumen Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (273, '52303001', 'Belanja modal Bangunan Menara', 0);
INSERT INTO `tb_rekening` VALUES (274, '52304001', 'Belanja modal Tugu/Tanda Batas', 0);
INSERT INTO `tb_rekening` VALUES (275, '52401001', 'Belanja modal Jalan', 0);
INSERT INTO `tb_rekening` VALUES (276, '52401002', 'Belanja modal Jembatan', 0);
INSERT INTO `tb_rekening` VALUES (277, '52402001', 'Belanja modal Bangunan Air Irigasi', 0);
INSERT INTO `tb_rekening` VALUES (278, '52402002', 'Belanja modal Bangunan Air Pasang Surut', 0);
INSERT INTO `tb_rekening` VALUES (279, '52402003', 'Belanja modal Bangunan Pengembangan Rawa dan Polder', 0);
INSERT INTO `tb_rekening` VALUES (280, '52402004', 'Belanja modal Bangunan Pengaman Sungai/Pantai dan Penganggulangan Bencana Alam', 0);
INSERT INTO `tb_rekening` VALUES (281, '52402005', 'Belanja modal Bangunan Pengembangan Sumber Air dan Air Tanah', 0);
INSERT INTO `tb_rekening` VALUES (282, '52402006', 'Belanja modal Bangunan Air Bersih/Air Baku', 0);
INSERT INTO `tb_rekening` VALUES (283, '52402007', 'Belanja modal Bangunan Air Kotor', 0);
INSERT INTO `tb_rekening` VALUES (284, '52403001', 'Belanja modal Instalasi Air Bersih/Air Baku', 0);
INSERT INTO `tb_rekening` VALUES (285, '52403002', 'Belanja modal Instalasi Air Kotor', 0);
INSERT INTO `tb_rekening` VALUES (286, '52403003', 'Belanja modal Instalasi Pengolahan Sampah', 0);
INSERT INTO `tb_rekening` VALUES (287, '52403004', 'Belanja modal Instalasi Pengolahan Bahan Bangunan', 0);
INSERT INTO `tb_rekening` VALUES (288, '52403005', 'Belanja modal Instalasi Pembangkit Listrik', 0);
INSERT INTO `tb_rekening` VALUES (289, '52403006', 'Belanja modal Instalasi Gardu Listrik', 0);
INSERT INTO `tb_rekening` VALUES (290, '52403007', 'Belanja modal Instalasi Pertahanan', 0);
INSERT INTO `tb_rekening` VALUES (291, '52403008', 'Belanja modal Instalasi Gas', 0);
INSERT INTO `tb_rekening` VALUES (292, '52403009', 'Belanja modal Instalasi Pengaman', 0);
INSERT INTO `tb_rekening` VALUES (293, '52403010', 'Belanja modal Instalasi Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (294, '52404001', 'Belanja modal Jaringan Air Minum', 0);
INSERT INTO `tb_rekening` VALUES (295, '52404002', 'Belanja modal Jaringan Listrik', 0);
INSERT INTO `tb_rekening` VALUES (296, '52404003', 'Belanja modal Jaringan Telepon', 0);
INSERT INTO `tb_rekening` VALUES (297, '52404004', 'Belanja modal Jaringan Gas', 0);
INSERT INTO `tb_rekening` VALUES (298, '52405001', 'Belanja Modal Jalan, Irigasi dan Jaringan BLUD', 0);
INSERT INTO `tb_rekening` VALUES (299, '52406001', 'Belanja Modal Jalan, Irigasi dan Jaringan BOS', 0);
INSERT INTO `tb_rekening` VALUES (300, '52501001', 'Belanja Modal Bahan Perpustakaan Tercetak', 0);
INSERT INTO `tb_rekening` VALUES (301, '52501002', 'Belanja Modal Bahan Perpustakaan Terekam dan Bentuk Mikro', 0);
INSERT INTO `tb_rekening` VALUES (302, '52501003', 'Belanja Modal Kartografi, Naskah dan Lukisan', 0);
INSERT INTO `tb_rekening` VALUES (303, '52501004', 'Belanja Modal Musik', 0);
INSERT INTO `tb_rekening` VALUES (304, '52501005', 'Belanja Modal Karya Grafika', 0);
INSERT INTO `tb_rekening` VALUES (305, '52502001', 'Belanja Modal Barang Bercorak Kesenian', 0);
INSERT INTO `tb_rekening` VALUES (306, '52502002', 'Belanja Modal Alat Bercorak Kebudayaan', 0);
INSERT INTO `tb_rekening` VALUES (307, '52502003', 'Belanja Modal Tanda Penghargaan', 0);
INSERT INTO `tb_rekening` VALUES (308, '52503001', 'Belanja Modal Hewan Peliharaan', 0);
INSERT INTO `tb_rekening` VALUES (309, '52503002', 'Belanja Modal Hewan Ternak', 0);
INSERT INTO `tb_rekening` VALUES (310, '52503003', 'Belanja Modal Hewan Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (311, '52503004', 'Belanja Modal Biota Perairan', 0);
INSERT INTO `tb_rekening` VALUES (312, '52504001', 'Belanja Modal Tanaman', 0);
INSERT INTO `tb_rekening` VALUES (313, '52505001', 'Belanja Modal Barang Koleksi Non Budaya', 0);
INSERT INTO `tb_rekening` VALUES (314, '52506001', 'Belanja Modal Aset Tetap Lainnya BLUD', 0);
INSERT INTO `tb_rekening` VALUES (315, '52507001', 'Belanja Modal Aset Tetap Lainnya BOS', 0);
INSERT INTO `tb_rekening` VALUES (316, '52601001', 'Goodwill', 0);
INSERT INTO `tb_rekening` VALUES (317, '52601002', 'Lisensi dan Franchise', 0);
INSERT INTO `tb_rekening` VALUES (318, '52601003', 'Hak Cipta', 0);
INSERT INTO `tb_rekening` VALUES (319, '52601004', 'Hak Paten', 0);
INSERT INTO `tb_rekening` VALUES (320, '52601005', 'Software', 0);
INSERT INTO `tb_rekening` VALUES (321, '52601006', 'Kajian', 0);
INSERT INTO `tb_rekening` VALUES (322, '52601007', 'Aset Tidak Berwujud yang Mempunyai Nilai Sejarah/Budaya', 0);
INSERT INTO `tb_rekening` VALUES (323, '52601008', 'Aset Tidak Berwujud Lainnya', 0);
INSERT INTO `tb_rekening` VALUES (324, '52602001', 'Aset Lainnya BLUD', 0);
INSERT INTO `tb_rekening` VALUES (325, '52603001', 'Aset Lainnya BOS', 0);
INSERT INTO `tb_rekening` VALUES (326, '53101001', 'Belanja Tidak Terduga', 0);

-- ----------------------------
-- Table structure for tb_surat_keluar
-- ----------------------------
DROP TABLE IF EXISTS `tb_surat_keluar`;
CREATE TABLE `tb_surat_keluar`  (
  `id_surat_keluar` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_surat` date NULL DEFAULT NULL,
  `id_jenis_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nomor_surat` int(11) NULL DEFAULT NULL,
  `perihal_surat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `sifat_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `file_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `created_at` date NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `validasi` int(2) NULL DEFAULT 0,
  PRIMARY KEY (`id_surat_keluar`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 34 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_surat_keluar
-- ----------------------------
INSERT INTO `tb_surat_keluar` VALUES (1, '2020-01-29', '4', NULL, 'Surat permohonan Narasumber pertemuan integrasi SDIDTK, PAUD, dan BKB yang ditujukan kepada RSUD RA Kartini Jepara', 'SEGERA', '1 Lembar', NULL, '2020-01-16', '11', 0);
INSERT INTO `tb_surat_keluar` VALUES (2, '2020-01-29', '4', NULL, 'Undangan peserta pertemuan integrasi SDIDTK, PAUD dan BKB ', 'SEGERA', '1 Lembar', NULL, '2020-01-16', '11', 0);
INSERT INTO `tb_surat_keluar` VALUES (3, '2020-01-28', '4', NULL, 'Undangan peserta pertemuan rencana dan evaluasi program kesehatan keluarga dan gizi', 'SEGERA', '-', NULL, '2020-01-16', '11', 0);
INSERT INTO `tb_surat_keluar` VALUES (4, '2020-01-19', '8', NULL, 'Pelayanan Kesehatan Anak PUNK', 'SEGERA', '2 Lembar', NULL, '2020-01-16', '11', 0);
INSERT INTO `tb_surat_keluar` VALUES (5, '2020-01-16', '8', NULL, 'Pelayanan Kesehatan dan  Pembinaan Anak PUNK', 'SEGERA', '2 Lembar', NULL, '2020-01-16', '11', 0);
INSERT INTO `tb_surat_keluar` VALUES (6, '2020-01-20', '4', NULL, 'pertemuan kelompok dukungan sebaya', '', '', NULL, '2020-01-15', '7', 0);
INSERT INTO `tb_surat_keluar` VALUES (7, '2020-01-16', '4', NULL, 'Pertemuan Program P2 HIV AIDS', '', '', NULL, '2020-01-16', '7', 0);
INSERT INTO `tb_surat_keluar` VALUES (8, '2020-01-16', '4', NULL, 'Sosialisasi Deteksi Dini Hepatitis B dan C', '', '', NULL, '2020-01-16', '7', 0);
INSERT INTO `tb_surat_keluar` VALUES (9, '2020-01-21', '8', NULL, 'Pemberian obat ccaing pada anak usia pra sekolah dan anak usia sekolah', '', '', NULL, '2020-01-21', '7', 0);
INSERT INTO `tb_surat_keluar` VALUES (10, '2020-01-21', '8', NULL, 'Kesiapsiagaan peningkatan kasus DBD', 'SEGERA', '1', NULL, '2020-01-21', '7', 0);
INSERT INTO `tb_surat_keluar` VALUES (11, '2020-01-27', '4', NULL, 'Bintek Akeselerator', 'UNDANGAN', '', NULL, '2020-01-23', '10', 0);
INSERT INTO `tb_surat_keluar` VALUES (12, '2020-01-30', '10', NULL, 'pemberitahuan pembentukan sekolah peduli HIV AIDS', '', '', NULL, '2020-01-28', '7', 0);
INSERT INTO `tb_surat_keluar` VALUES (13, '2020-01-30', '4', NULL, 'Undangan peserta pertemuan orientasi pengembangan kelas ibu hamil di Kabupaten Jepara\r\nTanggal 4 -5 Februari 2020', 'SEGERA', '1 Lembar', NULL, '2020-01-30', '11', 0);
INSERT INTO `tb_surat_keluar` VALUES (14, '2020-01-30', '4', NULL, 'Undangan peserta pertemuan rakor LP/LS penurunan AKI dan AKB di Kabupaten Jepara Tanggal 6 Februari 2020', 'SEGERA', '1 Lembar', NULL, '2020-01-30', '11', 0);
INSERT INTO `tb_surat_keluar` VALUES (15, '2020-01-30', '10', NULL, 'Surat permohonan narasumber pertemuan orientasi pengembangan kelas ibu hamil dan ibu balita di Kabupaten Jepara ', 'SEGERA', '1 Lembar', NULL, '2020-01-30', '11', 0);
INSERT INTO `tb_surat_keluar` VALUES (16, '2020-01-28', '8', NULL, 'Pencatatan Pelaporan Triple Eliminasi (HIV, Sipilis, dan Hepatitis B)', '', '', NULL, '2020-01-31', '7', 0);
INSERT INTO `tb_surat_keluar` VALUES (17, '2020-01-31', '10', NULL, 'Surat permohonan narasumber pertemuan rakor LP/LS penurunan AKI dan AKB di Kabupaten Jepara', 'SEGERA', '-', NULL, '2020-01-31', '11', 0);
INSERT INTO `tb_surat_keluar` VALUES (18, '2020-02-03', '22', NULL, 'Audiensi Regulasi KTR', 'PENTING', '-', NULL, '2020-02-03', '8', 0);
INSERT INTO `tb_surat_keluar` VALUES (19, '2020-02-18', '4', NULL, 'Workshop PHBS bagi petugas Promkes', 'UNDANGAN', '', NULL, '2020-02-05', '10', 0);
INSERT INTO `tb_surat_keluar` VALUES (20, '2020-02-03', '4', NULL, 'Permohonan Narasumber dr Spesialis Paru', '-', '', NULL, '2020-02-03', '8', 0);
INSERT INTO `tb_surat_keluar` VALUES (21, '2020-02-03', '4', NULL, 'Permohonan Narasumber dokter Spesialis THT', '-', '', NULL, '2020-02-03', '8', 0);
INSERT INTO `tb_surat_keluar` VALUES (22, '2020-02-03', '4', NULL, 'Permohonan Narasumber dokter spesialis Mata', '-', '', NULL, '2020-02-03', '8', 0);
INSERT INTO `tb_surat_keluar` VALUES (23, '2020-02-03', '4', NULL, 'Undangan Pertemuan Programer Indera', '-', '', NULL, '2020-02-03', '8', 0);
INSERT INTO `tb_surat_keluar` VALUES (24, '2020-02-03', '4', NULL, 'Permohonan Bantuan Tenaga Pemeriksa IVA Puskesmas Keling 2', '-', '', NULL, '2020-02-03', '8', 0);
INSERT INTO `tb_surat_keluar` VALUES (25, '2020-02-03', '4', NULL, 'Permohonan Penguunaan tempat dan alat Cryo', '-', '', NULL, '2020-02-03', '8', 0);
INSERT INTO `tb_surat_keluar` VALUES (26, '2020-02-06', '4', NULL, 'Permohonan Narasumber Workshop Penguatan Surveilans PTM', '-', '', NULL, '2020-02-06', '8', 0);
INSERT INTO `tb_surat_keluar` VALUES (27, '2020-02-06', '4', NULL, 'Undangan Workshop Penguatan Surveilans PTM', '-', '', NULL, '2020-02-06', '8', 0);
INSERT INTO `tb_surat_keluar` VALUES (28, '2020-02-10', '4', NULL, 'Pertemuan Renval Surveilans', 'SEGERA', '-', NULL, '2020-02-06', '9', 0);
INSERT INTO `tb_surat_keluar` VALUES (29, '2020-02-11', '4', NULL, 'Pertemuan Renval Pemkes Haji', 'SEGERA', '-', NULL, '2020-02-06', '9', 0);
INSERT INTO `tb_surat_keluar` VALUES (30, '2020-02-13', '4', NULL, 'Sosialisasi Penyakit Emerging', 'SEGERA', '-', NULL, '2020-02-07', '9', 0);
INSERT INTO `tb_surat_keluar` VALUES (31, '2020-02-25', '4', NULL, 'permohonan narasumber', 'SEGERA', '-', NULL, '2020-02-11', '14', 0);
INSERT INTO `tb_surat_keluar` VALUES (32, '2020-02-12', '4', NULL, 'Undangan pertemuan penguatan pembina kader posyandu, guru PAUD/TK/RA tentang Buku KIA dan SDIDTK tanggal 18 - 19 Februari 2020', 'SEGERA', '-', NULL, '2020-02-12', '11', 0);
INSERT INTO `tb_surat_keluar` VALUES (33, '2020-02-12', '4', NULL, 'Permohonan Narasumber pertemuan penguatan pembina kader posyandu, Guru PAUD/TK/RA tentang buku KIA dan SDIDTK di Kab.Jepara tanggal 18 - 19 Februari 2020', '', '1 Lembar', NULL, '2020-02-12', '11', 0);

-- ----------------------------
-- Table structure for tb_surat_masuk
-- ----------------------------
DROP TABLE IF EXISTS `tb_surat_masuk`;
CREATE TABLE `tb_surat_masuk`  (
  `id_surat_masuk` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_surat` date NULL DEFAULT NULL,
  `id_jenis_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nomor_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `sifat_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `perihal_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `lampiran_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pengirim_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dispo_surat` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dispo_surat_sekdin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `dispo_surat_bidang` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `catatan_surat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `file_surat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `dispo_pegawai` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `catatan_sekdin` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `catatan_bidang` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `catatan_seksi` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `created_at` date NULL DEFAULT NULL,
  `validasi` int(2) NULL DEFAULT 0,
  `nomor_dinas` int(11) NULL DEFAULT NULL,
  `arsipkan_1` int(4) NULL DEFAULT 0,
  `arsipkan_2` int(4) NULL DEFAULT 0,
  `arsipkan_3` int(4) NULL DEFAULT 0,
  PRIMARY KEY (`id_surat_masuk`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 374 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_surat_masuk
-- ----------------------------
INSERT INTO `tb_surat_masuk` VALUES (3, '2019-12-31', '4', '1815', 'PENTING', 'undangan audiensi tentang pelayanan kesehatan ( pengaduan sdr. didit )', 'penting', 'DPRD', '4', '4', '15', 'Bidang yankes dan sdk menyiapkan bahan ', 'surat-masuk-20200106_083012.jpg', NULL, 'bidang yankes dan SDK tindak lanjuti', 'bidang yankes dan SDK tindak lanjuti', NULL, '2020-01-02', 1, 1, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (4, '2019-12-31', '4', '1822', 'SEGERA', 'undangan rapat kordinasi terkait dengan tupoksi mitra komisi c', '-', 'DPRD', '6', '6', NULL, 'subbag umum dan kepegawain untuk menghadiri undangan dari dewan', 'surat-masuk-20200106_084218.jpg', NULL, 'Subbag umpeg hadiri', NULL, NULL, '2020-01-02', 1, 2, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (7, '2019-12-07', '5', '-', '-', 'Lamaran pekerjaan', '-', 'Noor Zahhah O', '6', '6', NULL, 'UMP', 'surat-masuk-20200106_093409.jpg', NULL, 'UMP', NULL, NULL, '2020-01-02', 1, 3, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (9, '2019-12-30', '4', '005/3014/XII/2019', '-', 'undangan rAPAT PERSIAPAN PROYEKSI PENDAPATAN TA 2021', '-', 'BPKAD', '5', '5', NULL, 'Subbag renkeu hadiri', 'surat-masuk-20200107_122923.jpg', '51', 'Tindaklanjuti', NULL, 'Hadiri Rapat', '2020-01-02', 1, 4, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (10, '2019-12-27', '6', '470/11889', '-', 'Surat edaran dukungan kegiatan sensus penduduk 2020', '-', 'BPS ', '5', '5', NULL, 'UMP', 'surat-masuk-20200107_123713.jpg', '103', 'Tindaklanjuti', NULL, 'Copy dan Sebarkan ke seluruh Bidang, seksi, UPT dan Arsipkan', '2020-01-02', 1, 5, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (12, '2020-12-20', '4', '005/001', 'SEGERA', 'Undagan kunjungan kerja dalam rangka monitoring pelaksanaan pendidikan di sekolahan, bantuan hibah kepada masjid/musholla dan pelayanan kesehatan di puskesmas', '-', 'DPRD ', '6', '6', NULL, 'Subbag umpeg hadiri mendamping ibu kadinkes hari jumat ', 'surat-masuk-20200107_124726.jpg', NULL, 'subbag umpeg hadiri mendampingi ibu kadinkes', NULL, NULL, '2020-01-02', 1, 6, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (13, '2020-01-02', '4', '005/0004/2020', 'PENTING', 'Kordinasi penanganan anak punk di kabupaten jepara', '-', 'Setda', '3', '3', '11', 'Bidang kesmas untuk menghadiri ', 'surat-masuk-20200107_125216.jpg', '5', 'seksi kesga hadiri', 'seksi kesga hadiri', 'Dihadiri Kasie Kesga Gizi', '2020-01-04', 3, 7, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (14, '2019-12-17', '4', '005/DCG/XII/2019', '-', 'Undangan Workshop manajemen fasilitas dan keselamatan & bimtek penatalaksanaan layanan lansia & geriatri', '1 satu Berkas', 'Dynamic Consulting Group', '6', '6', NULL, 'UMP', 'surat-masuk-20200107_125908.jpg', NULL, 'Hadiri', NULL, NULL, '2020-01-04', 1, 8, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (15, '2019-12-30', '4', '005/0006', 'SEGERA', 'Undagan rapat kordinasi tentang sinkronisasi data bantuan kepada masyarakat ', '-', 'SETDA', '1', '6', NULL, 'Agenda kepala kadinkes ', 'surat-masuk-20200107_130339.jpg', NULL, 'agenda kepala dinas', NULL, NULL, '2020-01-04', 1, 9, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (16, '2020-01-02', '4', '005/0001', '-', 'Undagan rapat persiapan pelaksanaan sosialisasi pelayanan air minum ', '1 satu bendel', 'BAPPEDA ', '14', '3', '14', 'Seksi kesling hadiri ', 'surat-masuk-20200107_130756.jpg', NULL, 'Seksi kesling hadiri', 'seksi kesling hadiri', NULL, '2020-01-04', 3, 10, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (17, '0000-00-00', '7', '050.1.3/11915', 'SEGERA', 'Surat edaran (RKPD)', '-', 'Bupati Jepara', '6', '6', NULL, 'UMP', 'surat-masuk-20200108_073639.pdf', NULL, 'UMP', NULL, NULL, '2020-01-04', 1, 11, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (18, '2019-12-30', '8', '440/757', '-', 'Permohonan rehab pustu kawak pakis aji', '-', 'UPTD Pakis Aji', '6', '6', NULL, 'Kasubbag umpeg Kordinasikan', 'surat-masuk-20200108_074329.jpg', NULL, 'kasubbag umpeg koordinasikan', NULL, NULL, '2020-01-04', 1, 12, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (19, '2020-01-07', '4', '005/041', 'SEGERA', 'Undangan kunjungan kerja dalam rangka monitoring pelaksanaan pendidikan di sekolahan, bantuan hibah kepada masjid/musholla/yayasan dan pelayanan kesehatan di puskesmas ', '-', 'DPRD ', '6', '6', NULL, 'Kadinkes menghadiri undangan dari dewan ', 'surat-masuk-20200108_090641.jpg', NULL, 'kadinkes menghadiri undangan dari dewan', NULL, NULL, '2020-01-07', 1, 13, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (20, '2020-01-02', '4', '001/PSD-BD/1/2020', '-', 'Undangan penutupan bulan dana PMI tahun 2019', '-', 'PMI', '5', '5', NULL, 'Subbaga RENKEU Hadiri', 'surat-masuk-20200108_090931.jpg', '50', 'Hadiri', NULL, 'Hadiri', '2020-01-07', 1, 14, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (21, '2020-01-07', '8', '440/003/01/2020', '-', 'Usulan rehap bangunan pustu kriyan', '-', 'UPTD Kalinyamatan ', '6', '6', NULL, 'Kassubbag umpeg ', 'surat-masuk-20200108_091253.jpg', NULL, 'kasubag umpeg', NULL, NULL, '2020-01-07', 1, 15, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (22, '2020-01-03', '4', '005', '-', 'Undangan Rapat Kerja DWP ', '-', 'DWP', '14', '3', '14', 'Kasie kesling tugaskan staf untuk menghadiri', 'surat-masuk-20200108_091537.jpg', NULL, 'kasie kesling hadiri', 'seksi kesling hadiri', NULL, '2020-01-08', 3, 16, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (23, '2020-12-25', '8', '440-/8941/Bangda', 'SANGAT SEGERA ', 'Surat izin operasional fasilitas kesehatan', '1 satu berkas ', 'Kementrian dalam negeri RI', '4', '4', NULL, 'Kabid Yankes dan sdk tindak lanjuti', 'surat-masuk-20200109_133306.pdf', NULL, 'kabid yankes dan SDK tindak lanjuti', 'Tindaklanjuti', NULL, '2020-01-08', 1, 17, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (24, '2020-12-23', '9', '441.9/896', '-', 'Penetapan hasil verifikasi PNI APBD Kab. Jepara', '1 satu lembar', 'Dinsospermades', '4', '4', '15', 'Seksi Yankes tindak lanjuti', 'surat-masuk-20200109_133935.jpg', NULL, 'Seksi Yankes tindak lanjuti', 'Seksi Yankes tindak lanjuti', NULL, '2020-01-08', 1, 18, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (25, '2019-12-27', '10', '045.2/560', '-', 'Kalender kerja tahun 2020', '-', 'Perumda ', '6', '6', NULL, 'UMP', 'surat-masuk-20200109_134950.jpg', NULL, 'UMP', NULL, NULL, '2020-01-08', 1, 19, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (26, '2019-12-13', '8', '440/664/XII/2019', '-', 'Himbuan Kewaspadaan dini Penyakit Dbd', '-', 'UPTD JEPARA ', '2', '2', '7', 'Bidang P2pm  Tindak lanjuti ', 'surat-masuk-20200109_135611.jpg', NULL, 'bidang P2pm tindak lanjuti', 'tindak lanjuti', 'arsipkan', '2020-01-08', 3, 20, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (27, '2019-12-23', '11', '850/11845', 'PENTING', 'Ralat Edaran Hari Libur Nasional & Cuti Bersama tahun 2020', '-', 'Setda', '6', '6', NULL, 'Kasubbag umpeg ', 'surat-masuk-20200109_142227.pdf', NULL, 'kasubbag umpeg ', NULL, NULL, '2020-01-08', 1, 21, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (28, '2019-12-31', '12', 'kh.03.01/5.9/3069/2019', '-', 'Izin studi pendahuluan proposal tesis', '-', 'Poltekes Semarang', '6', '6', NULL, 'Kasubbag umpeg fasilitasi ', 'surat-masuk-20200109_142827.jpg', NULL, 'kasubbag umpeg fasilitasi', NULL, NULL, '2020-01-08', 1, 22, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (29, '2020-01-06', '13', '800/0061/2020', '-', 'Laporan mekanisme kepegawain ', '-', 'UPTD Kembang', '6', '6', NULL, 'UMP', 'surat-masuk-20200109_144533.pdf', NULL, 'Tindak lanjuti', NULL, NULL, '2020-01-08', 1, 23, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (30, '2020-01-06', '8', '440/009/1/2020', 'SEGERA', 'Pemberitahuan alat insenerator ', '-', 'UTPD kEMBANG', '6', '6', NULL, 'Kasubbag Umpeg Tindak lanjuti', 'surat-masuk-20200113_114515.pdf', NULL, 'kasubbag umpeg tindak lanjuti', NULL, NULL, '2020-01-08', 1, 24, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (31, '2019-02-21', '12', '1885/KH.UL/PM/XII/2019', '-', 'Permohonan studi pendahuluan a.n Durrrotun M', '-', 'STIKES Semarang', '6', '6', NULL, 'subbag umpeg fasilitasi', 'surat-masuk-20200113_120327.pdf', NULL, 'subbag  umpeg fasilitasi', NULL, NULL, '2020-01-08', 1, 25, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (32, '2020-01-07', '4', '005/005/2020', '-', 'Permohonan alat', '-', 'Uptd Jepara', '6', '6', NULL, 'seksi P2PTM tindak lanjuti', 'surat-masuk-20200113_123629.pdf', NULL, 'seksi P2PTM tindak lanjuti', NULL, NULL, '2020-01-08', 1, 26, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (33, '2020-01-07', '8', '018/v/spm/pan-ms-bks/suara-utm/i/2020', '-', 'Permohonan bantuan tenaga kesehatan', '-', 'Swara Universitas Tunojoyo Madura', '4', '4', '15', 'seksi yankes fasilitasi', 'surat-masuk-20200113_133717.pdf', NULL, 'seksi yankes fasilitasi', 'seksi yankes fasilitasi', NULL, '2020-01-08', 1, 27, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (34, '2020-01-07', '6', '441.9/071', '-', 'Permohonan Data PBI JKN ', '-', 'Dinsospermades', '4', '4', '15', 'seksi yankes tindak lanjuti', 'surat-masuk-20200113_133919.pdf', NULL, 'seksi yankes  tindak lanjuti', 'seksi yankes  tindak lanjuti', NULL, '2020-01-08', 1, 28, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (35, '0000-00-00', '8', 'KL. 01.04./5020/2019', '-', 'Pengusulan lokasi desa sasaran pktd', '-', 'Kemenkes RI ', '3', '3', '14', 'Bidang Kesmas Tindak lanjuti', 'surat-masuk-20200113_134211.pdf', NULL, 'bidang kesmas tindak lanjuti', 'seksi kesling tindak lanjuti', NULL, '2020-01-08', 3, 29, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (36, '2020-01-06', '4', '005/164', 'PENTING', 'Undangan Rakor Forum LLAJ', '-', 'DISHUB', '4', '4', '15', 'kasie yankes hadiri', 'surat-masuk-20200113_134518.pdf', NULL, 'Kasie yankes hadiri', 'Kasie yankes hadiri', NULL, '2020-01-08', 1, 30, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (37, '2020-01-06', '14', '050/0013', '-', 'Laporan akhir kegiatan DAK triwulan IV tahun 2019', '-', 'BAPPEDA ', '5', '5', NULL, 'Subbag renkeu tindak lanjuti', 'surat-masuk-20200113_135053.pdf', '92', 'Tindaklanjuyi', NULL, 'Cari Data dan Laporkan', '2020-01-08', 1, 31, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (38, '2020-01-06', '5', '811/', '-', 'Lamaran pekerjaan', '-', 'Khoirun Alfiriyah ', '6', '6', NULL, 'UMP', 'surat-masuk-20200113_135517.pdf', NULL, 'UMP', NULL, NULL, '2020-01-08', 1, 32, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (39, '2020-01-08', '8', '08/SGM-SMG/1/2020', '-', 'Surat penawaran GDS GE ', '-', 'PT. SEKARGUNA MEDIKA ', '4', '4', '12', 'Seksi farmalkes ', 'surat-masuk-20200113_135824.pdf', NULL, 'seksi  farmalkes tindak lanjuti', 'seksi  farmalkes tindak lanjuti', NULL, '2020-01-08', 3, 33, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (40, '2020-01-02', '8', '01/KPMN/XII/2019', '-', 'Laporan Bulanan data kesakitan', '-', 'Klinik pratama mardi nugroho', '7', '2', '7', 'tindak lanjuti seksi p2pm', 'surat-masuk-20200113_141715.pdf', NULL, 'tindak lanjuti seksi p2pm', 'laporan kesakitan masuk ke seksi yankes', 'arsipkan', '2020-01-02', 3, 34, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (41, '2020-01-06', '7', '050/0085', '-', 'INPUT RUP KE DALAM APLIKASI SIRUP LKPP', '-', 'Bupati JEPARA ', '5', '5', NULL, 'Subbag renkeu tindak lanjuti ', 'surat-masuk-20200113_142244.pdf', '24;77', 'Renkeu tindak lanjuti', NULL, 'tolong cari data di semua seksi untuk di masukkan ke SIRUP', '2020-01-08', 1, 35, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (42, '2020-01-06', '8', '127/DIR/MPAI/1/2020', '-', 'Formulir pemberitahuan kematian perinatal neonatal', '-', 'RS Mardi Rahayu', '11', '3', '11', 'Seksi kesga tindak lanjuti', 'surat-masuk-20200114_125921.pdf', '12', 'seksi kesga tindak lanjuti', 'seksi kesga tindak lanjuti', 'Tindak lanjuti', '2020-01-10', 3, 36, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (43, '2020-01-10', '15', '45/DSS/PBJ/XII/2019', '-', 'Penawaran bimtek sistem blended learning dan ujian sertifikasi pengadaan berbasis komputer (UBK)', 'Jadwal dan formulir kegiatan', 'Diponegoro smart', '6', '6', NULL, 'UMP', 'surat-masuk-20200114_131203.pdf', NULL, 'tindak lanjuti', NULL, NULL, '2020-01-10', 1, 37, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (44, '2020-01-09', '12', '072/010', '-', 'Surat keterangan penelitian ', '-', 'Bakesbangpol', '6', '6', NULL, 'umpeg fasilitasi', 'surat-masuk-20200114_131503.pdf', NULL, 'Umpeg Fasilitasi', NULL, NULL, '2020-01-10', 1, 38, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (45, '2020-01-07', '8', '27/vi-07/0120', '-', 'Pemberitahuan updating V claim Versi 1.16.0', '-', 'BPJS Kesehatan ', '4', '4', NULL, 'Seksi yankes tindalanjuti', 'surat-masuk-20200114_132025.pdf', NULL, 'seksi yankes tindak lanjuti', 'Tindak Lanjuti Seksi Yankes', NULL, '2020-01-10', 2, 39, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (46, '2020-01-09', '13', '800/32/1/2020', '-', 'Usulan cuti sakit ', '-', 'UPTD Kedung II', '6', '6', NULL, 'Subbag umpeg fasilitasi ', 'surat-masuk-20200114_132248.pdf', NULL, 'Umpeg Fasilitasi', NULL, NULL, '2020-01-10', 1, 40, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (47, '2020-01-07', '16', '07/RK-IKL/I/20', '-', 'Penawaran iklan ucapan iklan hari pers nasional ke 74', '-', 'Radar kudus ', '5', '5', NULL, 'Subbag renkeu tindak lanjuti jika ada anggran', 'surat-masuk-20200114_132747.pdf', '50', 'Arsipkan', NULL, 'Arsipkan', '2020-01-10', 1, 41, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (48, '2020-01-09', '12', '54/PN/BAA/STIKES-CU/I/2020', '-', 'Permohonan ijin pengambilan data awal', '-', 'Cendekia utama kudus ', '6', '6', NULL, 'Subbag umpeg Fasilitasi', 'surat-masuk-20200114_133121.pdf', NULL, 'Subbag umpeg Fasilitasi', NULL, NULL, '2020-01-10', 1, 42, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (49, '2020-01-10', '4', '005/020/2020', '-', 'Data siga', '-', 'DP3AP2KB', '3', '3', '11', 'Seksi kesga tindaklanjuti', 'surat-masuk-20200114_133430.pdf', '5', 'seksi kesga tindak lanjuti', 'seksi kesga tindak lanjuti', 'mempersiapkan data', '2020-01-10', 3, 43, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (50, '2019-12-30', '4', '77/ARSADA /uMUM/xii/2019', '-', 'Undangan pelatihan implementasi PPK-BLUD', '-', 'ARSADA', '6', '6', NULL, 'UMP', 'surat-masuk-20200114_134414.pdf', NULL, 'Umpeg hadiri', NULL, NULL, '2020-01-10', 1, 44, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (51, '2019-12-13', '12', '7491/UN7.5.9/DL/2019', '-', 'Permohonan ijin magang akademik', '-', 'UNDIP', '6', '6', NULL, 'UMPEG Fasilitasi ', 'surat-masuk-20200114_134835.pdf', NULL, 'UMPEG Fasilitasi', NULL, NULL, '2020-01-10', 1, 45, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (52, '2020-01-07', '17', '445.9/01', '-', 'Laporan kejadian tanah longsor ', '-', 'UPTD Labkesda', '6', '6', NULL, 'umpeg tindak lanjuti', 'surat-masuk-20200114_140019.pdf', NULL, 'UMPEG tindak lanjuti', NULL, NULL, '2020-01-10', 1, 46, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (53, '2020-01-07', '17', '445.9/01', '-', 'Laporan kejadian tanah longsor ', '-', 'UPTD Labkesda', '6', '6', NULL, 'umpeg tindak lanjuti', 'surat-masuk-20200114_140036.pdf', NULL, 'Umpeg tindak lanjuti', NULL, NULL, '2020-01-10', 1, 47, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (54, '2020-01-02', '13', '861/32', 'PENTING', 'Panggilan M. Rian Ardi W', '-', 'BKD', '6', '6', NULL, 'UMPEG Tindak lanjuti', 'surat-masuk-20200114_144325.pdf', NULL, 'UMPEG Tindak lanjuti', NULL, NULL, '2020-01-10', 1, 48, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (55, '2019-12-23', '4', '835/DU.PPA&K-BPM/XII/2019', '-', 'Pemberitahuan jadwal diklat tahun 2020', '1 satu berkas', 'PPA&K', '6', '6', NULL, 'UMP', 'surat-masuk-20200114_145348.pdf', NULL, 'Umpeg tindak lanjuti', NULL, NULL, '2020-01-10', 1, 49, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (56, '2019-12-20', '4', '250/A.1/mITRA KONSULTAN & DIKLAT PEMDA/XII/2019', '-', 'Undangan peserta bimtek', '-', 'MITRA KONSULTAN & DIKLAT PEMDA ', '6', '6', NULL, 'UMP', 'surat-masuk-20200114_150322.pdf', NULL, 'Tindak lanjuti', NULL, NULL, '2020-01-10', 1, 50, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (57, '2019-12-20', '4', '34/IKKESINDO/XII/2019', '-', 'Mohon penugasan dinas kesehatan/puskemas mengikuti pelatihan persipan ppk blud', '-', 'IKKESINDO', '6', '6', NULL, 'UMP', 'surat-masuk-20200114_151715.pdf', NULL, 'Tindak lanjuti', NULL, NULL, '2020-01-10', 1, 51, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (58, '2019-12-30', '4', '77/ARSADA /uMUM/xii/2019', '-', 'Undangan Pelatihan Implementasi PPK-BLUD', '2 Berkas', 'ARSADA', '6', '6', NULL, 'UMP', 'surat-masuk-20200114_154026.pdf', NULL, 'Umpeg hadiri', NULL, NULL, '2020-01-14', 1, 52, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (59, '2020-01-09', '4', '005/023', 'SEGERA', 'Undangan pemeriksaan dokumen ukl upl cv. mega arsenio', '1 satu bendel', 'DLH', '3', '3', '14', 'Seksi kesling hadiri ', 'surat-masuk-20200114_154330.pdf', NULL, 'Seksi kesling hadiri', 'seksi kesling hadiri', NULL, '2020-01-10', 3, 53, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (60, '2020-01-09', '4', '005/0120', 'PENTING', 'undangan rapat evaluasi sinkronisasi dana bagi hasil cukai hasil tembakau ( DBHCHT) TA. 2020', '-', 'SETDA', '5', '5', NULL, 'Subbag renkeu hadiri', 'surat-masuk-20200114_154633.pdf', '30', 'Tindaklanjuti', NULL, 'Hadiri rapat', '2020-01-10', 1, 54, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (61, '2020-01-04', '4', '445/018/2020', 'PENTING', 'Pemberitahuan jadwal permohonan narasumber ', '-', 'RSUD RA KARTINI', '6', '6', NULL, 'Subbag umpeg buat nota dinas edarkan ke seksi dan subbag ', 'surat-masuk-20200114_155024.pdf', NULL, 'Umpeg tindak lanjuti', NULL, NULL, '2020-01-10', 1, 55, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (62, '2020-01-09', '13', '893.3/81/2020', 'PENTING', 'Ralat Surat permohonan peserta pelatihan teknis pengawasan kearsipan internal th 2020', '-', 'SETDA ', '6', '6', NULL, 'Umpeg tindaklanjuti ', 'surat-masuk-20200114_155458.pdf', NULL, 'Umpeg hadiri', NULL, NULL, '2020-01-10', 1, 56, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (63, '2020-01-08', '4', '005/0129/2020', '-', 'Undangan rapat lanjutan penanganan anak punk di kabupaten jepara', '-', 'Setda ', '3', '3', '11', 'Seksi kesga hadiri', 'surat-masuk-20200114_155836.pdf', '5', 'Seksi kesga hadiri', 'seksi kesga gizi hadiri', 'dihadiri kasie kesga gizi', '2020-01-10', 3, 57, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (64, '2020-01-07', '4', '005/145', 'SEGERA', 'Undangan kunjungan kerja dalam rangka monitoring pelaksanaan pendidikan di sekolahan, bantuan hibah kepada masjid/musholla dan pelayanan keehatan di puskesmas', '-', 'DPRD', '4', '4', '12', 'Seksi yankes mendampingi ibu kadinkes ke puskesmas donorojo', 'surat-masuk-20200115_075028.pdf', NULL, 'seksi yankes tindak lanjuti', 'seksi yankes tindak lanjuti', NULL, '2020-01-10', 3, 58, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (66, '2020-01-07', '4', '005/148', '-', 'Undangan Rapat Kordinasi dengan tupoksi mitra komisi c', '-', 'DPRD', '5', '5', NULL, 'Subbag renkeu hadiri ', 'surat-masuk-20200115_092126.pdf', '92;95', 'Subbag Renkeu Hadiri', NULL, 'Siapkan bahan,  kasubag renval keu mendampingi kadin', '2020-01-13', 1, 59, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (67, '2020-01-05', '4', '005/055', '-', 'Partisipasi kegiatan workshop', '1 satu bendel', 'DPRD', '6', '6', NULL, 'agenda kadinkes ', 'surat-masuk-20200115_092314.pdf', NULL, 'Umpeg untuk mengingatkan', NULL, NULL, '2020-01-13', 1, 60, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (68, '2020-01-02', '4', '005/0002', '-', 'Undangan konsultasi publik rancangan awal RKPD tahun 2021 dan pembukaan masa musrenbang 2020', '-', 'DPRD', '5', '5', NULL, 'Subbag renkeu hadiri', 'surat-masuk-20200115_092628.pdf', '23', 'Subbag Renkeu hadiri', NULL, 'Dihadiri kasubag renval keu', '2020-01-13', 1, 61, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (69, '2020-01-09', '4', '-', '-', 'Berdiskusi isu2 terkini tentang kesehatan di kabupaten jepara ', '-', 'DPR RI', '6', '6', NULL, 'Buatkan nota dinas stuktural menyambut tamu dari DPR RI', 'surat-masuk-20200115_093243.pdf', NULL, 'Umpeg tindak lanjuti', NULL, NULL, '2020-01-13', 1, 62, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (70, '2020-01-06', '4', '050/0028', '-', 'Jadwal musrenbang RKPD Kecamatan tahun 2020', '1 satu bendel', 'SETDA', '5', '5', NULL, 'Subbag renkeu tindak lanjuti', 'surat-masuk-20200115_094917.pdf', '95', 'Subbag Renval  dan Keuangan Tindak lanjuti', NULL, 'Bikin nota dinas untuk jadwal petugas musrenbang', '2020-01-13', 1, 63, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (71, '2020-01-13', '4', '005/0157', 'SEGERA', 'Undangan rapat pembahasan rencana kerja penyusunan dan pembahasan ranperda tahun 2020', '-', 'SETDA', '4', '4', '13', 'Seksi SDMK hadiri', 'surat-masuk-20200115_095206.pdf', NULL, 'Seksi SDMK hadiri', 'hadiri', NULL, '2020-01-13', 1, 64, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (72, '2020-01-10', '8', '045.2/560', 'SEGERA', 'Pelaporan komunikasi data dan profil kesehatan tahun 2019', '-', 'Dinkes prov', '5', NULL, NULL, 'Renkeu tindak lanjuti', 'surat-masuk-20200116_122718.pdf', NULL, 'Renkeu tindak lanjuti', NULL, 'Feedback data baik, pertahankan dan arsipkan', '2020-01-10', 1, 65, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (73, '2020-01-07', '8', '02/1/skm/2020', '-', 'Surat keterangan medis ', '-', 'RSUD RA KARTINI', '6', NULL, NULL, 'UMPEG tindaklanjuti', 'surat-masuk-20200116_123034.pdf', NULL, 'UMPEG tindaklanjuti', NULL, NULL, '2020-01-14', 1, 66, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (74, '2020-01-08', '13', '824.3/0110', 'SEGERA', 'Permohonan pinda antar intansi a.n ririn n', '-', 'Setda ', '6', NULL, NULL, 'UMPEG Tindaklanjuti ', 'surat-masuk-20200116_123508.pdf', NULL, 'UMPEG Tindaklanjuti', NULL, NULL, '2020-01-08', 1, 67, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (75, '2019-12-12', '4', '008/4010/2019', '-', 'Pemberitahuan jenis layanan di RSUD RAA Soewondo Pati', '1', 'RSUD RAA SOEWONDO PATI', '4', NULL, NULL, 'Seksi yankes tindaklanjuti ', 'surat-masuk-20200116_124046.pdf', NULL, 'Seksi yankes tindaklanjuti ', '', NULL, '2020-01-15', 2, 68, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (76, '2020-01-06', '4', '956.28K/K3J/1/2020', '-', 'Permohonan dispensasi', '-', 'KPRI', '6', NULL, NULL, 'umpeg Fasilitasi ', 'surat-masuk-20200116_124415.pdf', NULL, 'umpeg Fasilitasi ', NULL, NULL, '2020-01-15', 1, 69, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (77, '2020-01-09', '10', '045.2/0116', '-', 'Surat penantar salianan peaturan bupati jepara ', '-', 'SETDA ', '6', NULL, NULL, 'Subba umpeg tindaklanjuti', 'surat-masuk-20200116_130408.pdf', NULL, 'Subba umpeg tindaklanjuti', NULL, NULL, '2020-01-13', 1, 70, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (78, '2020-01-06', '8', '446.5/109/2', 'SEGERA ', 'Usulan Wahana PIDI', '-', 'Dinkes PROV', '4', NULL, NULL, 'Seksi yankes tindak lanjuti', 'surat-masuk-20200116_131746.pdf', NULL, 'Seksi yankes tindak lanjuti', '', NULL, '2020-01-13', 1, 71, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (79, '2020-01-04', '8', '443.3/02/1/2020', '-', 'Permintaan ABATE ', '-', 'UPTD batealit ', '2', NULL, NULL, 'Seksi p2pm tindaklanjuti', 'surat-masuk-20200116_132432.pdf', NULL, 'Seksi p2pm tindaklanjuti', 'tindak lanjuti', NULL, '2020-01-13', 3, 72, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (80, '2020-01-08', '4', '440/42/2020', '-', 'Permintaan susu ibu hamil ', '-', 'UPTD Bangsri I', '1', NULL, NULL, 'UMP Belum ada ttd kepala puskesmas ', 'surat-masuk-20200116_135702.pdf', NULL, 'Cek kelengkapan  ttd kepala puskesmas ', 'Cek kelengkapan  ttd kepala puskesmas ', NULL, '2020-01-13', 1, 73, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (81, '2019-12-30', '8', '440/20/XII/2019', '-', 'Usulan permohonan Obat ', '-', 'UPTD batealit', '4', NULL, NULL, 'seksi yankes tindak lanjuti ', 'surat-masuk-20200116_140015.pdf', NULL, 'seksi yankes tindak lanjuti  yankes tindak lanjuti  bersama dengan IFK', 'Tindak Lanjuti', 'Tindak Lanjuti', '2020-01-15', 1, 74, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (82, '2020-01-06', '4', '003/KIJPR-4/A/1/2020', '-', 'Permohonan menjadi relawan pengajar ', '1 bendel proposal', 'Kelas Inspirasi Jepara ', '6', NULL, NULL, 'UMP Belum ada disposisi ', 'surat-masuk-20200116_140451.pdf', NULL, 'UMP Belum ada disposisi ', NULL, NULL, '2020-01-15', 1, 75, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (83, '2020-01-02', '18', 'KT.301/01/KSMF/1-2020', '-', 'Prakiran Hujan Bulan Januari tahun 2020', '-', 'BMKG', '6', NULL, NULL, 'UMPEG Buku arsipkan Diperpustakaan ', 'surat-masuk-20200116_141143.pdf', NULL, 'UMPEG Buku arsipkan Diperpustakaan ', NULL, NULL, '2020-01-15', 1, 76, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (84, '2020-01-06', '8', '440/009/1/2020', 'SEGERA', 'Pemberitahuan alat insenerator rusak ', '-', 'UPTD KEMBANG ', '6', NULL, NULL, 'Subbag umpeg tindak lanjuti', 'surat-masuk-20200116_141712.pdf', NULL, 'Subbag umpeg tindak lanjuti', NULL, NULL, '2020-01-15', 1, 77, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (86, '2020-01-06', '13', '800/04/I/2020', '-', 'Laporan mekanisme kepegawaian', '-', 'UPTD Batealit', '19', NULL, NULL, 'Kasubag umpeg  tindaklanjuti', 'surat-masuk-20200117_113308.pdf', NULL, 'Kasubag umpeg  tindaklanjuti', NULL, NULL, '2020-01-15', 1, 78, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (87, '2020-01-03', '19', '005/RS.PKU.MUH/1.5/B/2020', '-', 'Permohonan ijin pelaksanaan dana hibah ', '-', 'PKU Muhammadiyah Mayong', '19', NULL, NULL, 'Kasubbag umpeg tindaklanjuti', 'surat-masuk-20200117_114233.pdf', NULL, 'Kasubbag umpeg tindaklanjuti', NULL, NULL, '2020-01-15', 1, 79, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (88, '2020-01-13', '12', '020/FST/UNISNU/I/2020', '-', 'Permohonan ijin penelitian a.n. Luqman hidayat', '-', 'UNISNU JEPARA', '19', NULL, NULL, 'Kasubbag umpeg fasilitasi', 'surat-masuk-20200117_114725.pdf', NULL, 'Kasubbag umpeg fasilitasi', NULL, NULL, '2020-01-15', 1, 80, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (89, '2020-01-03', '19', '006/RS.PKU.MUH/1.5/B/2020', '-', 'Laporan progres dana hibah ', '1 satu lembar', 'RS PKU Muhammmadiyah Mayong Jepara ', '19', NULL, NULL, 'Kasubbag umpeg tindaklanjuti ', 'surat-masuk-20200118_100510.pdf', NULL, 'Kasubbag umpeg tindaklanjuti ', NULL, NULL, '2020-01-16', 1, 81, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (90, '2020-01-09', '13', '800/039/1/1/2020', 'SEGERA', 'Permohonan usulan pembuatan perjanjian kinerja dengan bupati jepara ', '-', 'UPTD Tahunan', '19', NULL, NULL, 'Subbag renkeu tindaklanjuti', 'surat-masuk-20200118_100833.pdf', NULL, 'Subbag renkeu tindaklanjuti', NULL, NULL, '2020-01-16', 1, 82, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (91, '2020-01-06', '15', 'A-02/PS/I/2020', '-', 'Pemberitahuan memperkenalkan CV. Pertiwi Sakti', '1 satu berkas', 'CV. Pertiwi Sakti', '19', NULL, NULL, 'Kasubbag umpeg pertimbangkan ', 'surat-masuk-20200118_101215.pdf', NULL, 'Kasubbag umpeg pertimbangkan ', NULL, NULL, '2020-01-16', 1, 83, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (92, '2020-01-10', '8', '055/RS.PKU.MUH/1.5/B/2020', '-', 'Permohonan pelayann hemodialisa sudah siap ', '-', 'RS PKU Muhammmadiyah Mayong Jepara', '4', NULL, NULL, 'Seksi farmalkes tindaklanjuti permohonan ', 'surat-masuk-20200118_101636.pdf', NULL, 'Seksi farmalkes tindaklanjuti permohonan ', 'Tindaklanjuti', NULL, '2020-01-16', 2, 84, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (93, '2020-01-13', '4', '005/0165', 'SEGERA', 'Undangan rapat koordinasi terkait pelayanan kesehatan di RSI Sultan hadirin Kabupaten Jepara', '-', 'Setda', '4', NULL, NULL, 'Seksi yankes hadiri undangan ', 'surat-masuk-20200118_101929.pdf', NULL, 'Seksi yankes hadiri undangan ', '', NULL, '2020-01-15', 2, 85, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (94, '2020-01-12', '4', '001/TS/KPITV/UNISNU/1/2020', '-', 'Permohonan menjadi pemateri penanggulangan HIV/AIDS di Jepara ', '1 Lampiran ', 'UNISNU JEPARA ', '2', NULL, NULL, 'Kabid P2P Hadir  ', 'surat-masuk-20200118_102334.pdf', NULL, 'Kabid P2P Hadir  ', 'kabid hadir secara pribadi', NULL, '2020-01-15', 2, 86, 0, 0, 1);
INSERT INTO `tb_surat_masuk` VALUES (95, '2020-01-10', '4', '530/0022', 'PENTING', 'Permohonan narasumber Pelatihan IK makanan ', '-', 'DISPERINDAG ', '3', NULL, NULL, 'Seksi Kesling Tindaklanjuti', 'surat-masuk-20200118_103011.pdf', NULL, 'Seksi Kesling Tindaklanjuti', 'Seksi Kesling Tindaklanjuti', NULL, '2020-01-15', 3, 87, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (96, '2020-01-14', '4', '005/0075', '-', 'Undangan lanjutan rapat persiapan pelaksanaan sosilisasi pelayanan air minum', '1 satu bendel', 'BAPPEDA', '3', NULL, NULL, 'Seksi kesling hadiri ', 'surat-masuk-20200118_103311.pdf', NULL, 'Seksi kesling hadiri ', 'Seksi kesling hadiri ', NULL, '2020-01-15', 3, 88, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (97, '2020-01-13', '19', '893.3/0096', 'SEGERA ', 'Rapat persiapan pelatihan', '-', 'BKD', '4', NULL, NULL, 'Seksi SDMK hadiri', 'surat-masuk-20200118_103842.pdf', NULL, 'Seksi SDMK hadiri', '', NULL, '2020-01-15', 3, 89, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (98, '2020-01-06', '4', '005/062/BANGDA', 'SANGAT SEGERA', 'Peningkatan pengawasan pangan makanan dan minuman ', '-', 'Kementrian dalam negeri RI', '3', NULL, NULL, 'Seksi kesling tindaklanjuti ', 'surat-masuk-20200118_120802.pdf', NULL, 'Seksi kesling tindaklanjuti ', 'Seksi kesling tindaklanjuti', NULL, '2020-01-15', 3, 90, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (99, '2019-12-30', '4', '55/ARSADA/UMUM/XII/2019', '-', 'Undagan bimbingan teknis PPK-BLUD', '-', 'ARSADA', '19', NULL, NULL, 'Kasubbag Umpeg UMP', 'surat-masuk-20200118_121244.pdf', NULL, 'Kasubbag Umpeg UMP', NULL, NULL, '2020-01-15', 1, 91, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (100, '2020-01-03', '8', '440/03/XI/2019', '-', 'Surat permohonan ijin operasional UPTD Puskesmas Bangsri II', '-', 'UPTD Bangsri II', '4', NULL, NULL, 'Seksi yankes tindaklanjuti', 'surat-masuk-20200118_121514.pdf', NULL, 'Seksi yankes tindaklanjuti', '', NULL, '2020-01-15', 2, 92, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (101, '2020-01-03', '8', '440/446/1/2020', '-', 'Permohonan ijin operasional UPTD Puskesmas bangsri II', '-', 'UPTD Bangsri II', '4', NULL, NULL, 'Seksi yankes tindaklanjuti', 'surat-masuk-20200118_121736.pdf', NULL, 'Seksi yankes tindaklanjuti', '', NULL, '2020-01-15', 2, 93, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (102, '2020-01-09', '8', '440/035/1/2020', 'SEGERA', 'Permohonan pembuatan zebra cross', '-', 'UPTD Tahunan', '19', NULL, NULL, 'Kasubbag umpeg tindaklanjuti ', 'surat-masuk-20200118_121953.pdf', NULL, 'Kasubbag umpeg tindaklanjuti ', NULL, NULL, '2020-01-15', 1, 94, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (103, '0000-00-00', '4', '005/08/1/2020', 'PENTING', 'Pemberitahuan maraknya penjualan obat herbal ', '-', 'UPTD Keling I', '4', NULL, NULL, 'Seksi yankes tindaklanjuti ', 'surat-masuk-20200118_122222.pdf', NULL, 'Seksi yankes tindaklanjuti ', 'Tindaklanjuti', NULL, '2020-01-15', 3, 95, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (104, '2020-01-13', '10', '009/PAFI-JPR/S-Ext01/1/2020', '-', 'Permohonan ijin menggunakan aula ', '-', 'PAFI', '19', NULL, NULL, 'Kasubbag umpeg fasilitasi ', 'surat-masuk-20200118_123233.pdf', NULL, 'Kasubbag umpeg fasilitasi ', NULL, NULL, '2020-01-18', 1, 96, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (105, '2020-01-14', '4', '005/25/2020', '-', 'Undangan rapat teknis penanganan anak punk', '-', 'SATPOL PP', '3', NULL, NULL, 'Seksi kesga gizi hadiri', 'surat-masuk-20200118_123448.pdf', NULL, 'Seksi kesga gizi hadiri', 'Seksi kesga gizi hadiri', NULL, '2020-01-15', 3, 97, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (106, '2020-01-13', '20', '893/103', 'SEGERA', 'Sosialisasi idendifikasi kebutuhan pengembangan kompetensi tahun 2020', '-', 'BKD ', '19', NULL, NULL, 'Kasubbag Umpeg Hadiri', 'surat-masuk-20200118_123657.pdf', NULL, 'Kasubbag Umpeg Hadiri', NULL, NULL, '2020-01-15', 1, 98, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (107, '2020-01-08', '12', 'KH.03.01/59/028/2020', '-', 'Ijin studi pendahuluan proposal tesis', '-', 'Poltekes Semarang', '19', NULL, NULL, 'Kasubbag umpeg fasilitasi ', 'surat-masuk-20200118_123941.pdf', NULL, 'Kasubbag umpeg fasilitasi ', NULL, NULL, '2020-01-15', 1, 99, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (108, '2020-01-14', '4', '005/0181', 'SEGERA', 'Undangan penyususnan laporan (LPPD)', '-', 'SETDA', '19', NULL, NULL, 'Kasubbag renkeu hadiri ', 'surat-masuk-20200118_124150.pdf', NULL, 'Kasubbag renkeu hadiri ', NULL, NULL, '2020-01-15', 1, 100, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (109, '2020-01-11', '10', '003/R-Y/KTI/AKFAR/I2020', '-', 'Pengantar Penelitian ', '-', 'AKADEMI FARMASI NUSAPUTERA ', '19', NULL, NULL, 'Kasubbag umpeg fasilitasi ', 'surat-masuk-20200118_124334.pdf', NULL, 'Kasubbag umpeg fasilitasi ', NULL, NULL, '2020-01-15', 1, 101, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (110, '2020-01-09', '19', '900/0024/2020', '-', 'Rekapitulasi penerimaan retribusi laboratorium kesehatan ', '-', 'UPTD Labkesda', '19', NULL, NULL, 'Kasubag renkeu tindaklanjuti', 'surat-masuk-20200118_124603.pdf', NULL, 'Kasubag renkeu tindaklanjuti', NULL, NULL, '2020-01-15', 1, 102, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (111, '2020-01-14', '5', '811', '-', 'Lamaran pekerjaan', '-', 'Sylvia Agustin Mawardani', '19', NULL, NULL, 'Kasubag umpeg UMP', 'surat-masuk-20200118_124732.pdf', NULL, 'Kasubag umpeg UMP', NULL, NULL, '2020-01-15', 1, 103, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (112, '2019-01-23', '8', '441.9.1/590', '-', 'Surat keterangan tidak mampu a.n Mustoha', '-', 'Kecamtan bangsri', '4', NULL, NULL, 'Seksi yankes tindaklanjuti ', 'surat-masuk-20200118_125347.pdf', NULL, 'Seksi yankes tindaklanjuti ', '', NULL, '2020-01-15', 1, 104, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (113, '2020-01-14', '4', '046/060', '-', 'Permohonan personil', '-', 'Diskominfo ', '19', NULL, NULL, 'Kasubag renkeu tindaklanjuti ', 'surat-masuk-20200118_130001.pdf', NULL, 'Kasubag renkeu tindaklanjuti ', NULL, NULL, '2020-01-17', 1, 105, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (114, '2020-01-08', '10', '060/015', '-', 'Permohonan personil tim pengelola website ', '-', 'Diskominfo', '19', NULL, NULL, 'Kasubag renkeu tindaklanjuti', 'surat-masuk-20200118_130152.pdf', NULL, 'Kasubag renkeu tindaklanjuti', NULL, NULL, '2020-01-17', 1, 106, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (115, '2020-01-15', '4', '060/29', 'SEGERA', 'Permintaan data personil kegiatan peningkatan maturiti SPIP tahun 2020', '-', 'Inspektorat ', '19', NULL, NULL, 'Subaag renkeu TL', 'surat-masuk-20200118_130429.pdf', NULL, 'Subaag renkeu TL', NULL, NULL, '2020-01-17', 1, 107, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (116, '2020-01-14', '8', '440/17/5/2020', 'PENTING', 'Permohonan Pelatihan pone ', '-', 'UPTD DONOROJO', '4', NULL, NULL, 'Seksi SDMK tindaklanjuti', 'surat-masuk-20200118_130745.pdf', NULL, 'Seksi SDMK tindaklanjuti', 'Tindaklanjuti', NULL, '2020-01-17', 3, 108, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (117, '2020-01-08', '12', '045.2/098', 'SEGERA', 'Izin Studi Pendahuluan proposal tesis', '-', 'Poltekes Semarang ', NULL, NULL, NULL, 'Subbag umpeg fasilitasi ', 'surat-masuk-20200122_074330.pdf', NULL, 'Subbag umpeg fasilitasi ', NULL, NULL, '2020-01-17', 1, 109, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (118, '2020-01-10', '12', 'B/420/UN37..1.6/LT/2020', '-', 'Permohona ijin observasi', '-', 'UNNES', NULL, NULL, NULL, 'Subbag umpeg fasilitasi', 'surat-masuk-20200122_085442.pdf', NULL, 'Subbag umpeg fasilitasi', NULL, NULL, '2020-01-17', 1, 110, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (119, '2020-01-09', '4', '03/adinkes-jtg/i/2020', 'PENTING', 'Undangan program pembangunan kesehatn jawa tengah ', '1 satu berkas', 'ADINKES', NULL, NULL, NULL, 'Subbag umpeg agendakan untuk Kadin', 'surat-masuk-20200122_085801.pdf', NULL, 'Subbag umpeg agendakan untuk Kadin', NULL, NULL, '2020-01-17', 1, 111, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (120, '2020-01-07', '13', '800/01/01/2020', '-', 'Daftar urut kepangkatan ', '-', 'UPTD DONOROJO', NULL, NULL, NULL, 'subbag umpeg tindaklanjuti ', 'surat-masuk-20200122_135357.pdf', NULL, 'Kasubbag UMPEG tindaklanjuti', NULL, NULL, '2020-01-17', 1, 112, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (121, '2019-09-06', '15', 'KN.02.07/II/2978/2018', '-', 'Persetujuan hibah barang milik negara tanah dan/ atau bangunan yang berasal dari dana tugas pembanyuan (TP-50) Pada dinas kesehatna kabupaten jepara provinsi jawa tengah ', '1 satu berkas', 'Kementrian Kesehatan RI', NULL, NULL, NULL, 'kASUBBAG UMPEG tindaklanjuti', 'surat-masuk-20200122_140119.pdf', NULL, 'Kasubbag UMPEG tindaklanjuti', NULL, NULL, '2020-01-17', 1, 113, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (122, '2020-01-14', '13', '800/060/2020', '-', 'UPTD BANGSRI I', '-', 'Permohona surat keterangan bebas temuan  ', NULL, NULL, NULL, 'subbag umpeg tindaklanjuti ', 'surat-masuk-20200122_140623.pdf', NULL, 'subbag umpeg tindaklanjuti', NULL, NULL, '2020-01-17', 1, 114, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (123, '2020-01-06', '8', '445/015/1/2020', '-', 'Laoran hasil survailens PPI Triwulan IV 2019', '-', 'RSUD RA KARTINI', NULL, NULL, NULL, 'Seksi survailens tindaklanjuti', 'surat-masuk-20200122_142727.pdf', NULL, 'seksi survailens tindaklanjuti', 'koordinasi dengan seksi yankes, surat ke seksi yankes', NULL, '2020-01-17', 2, 115, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (124, '2020-01-06', '8', 'T-PW.01.02.104.1043.01.20.0108', 'SEGERA', 'Informasi produk ranitidin yang dapat diedarkan kembali', '1 satu berkas', 'BADAN POM', NULL, NULL, NULL, 'Seksi farmalke tindaklanjuti', 'surat-masuk-20200122_143025.pdf', NULL, 'seksi farmalkes tindak lanjuti', 'Tindaklanjuti', NULL, '2020-01-17', 3, 116, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (125, '2020-01-17', '8', '443.39/271/3', '-', 'Kesiapsagaan dan antisipasi penyebaran penyakit pneumonia berat yang belum diketahui etiologinya', '-', 'Dinkes prov', NULL, NULL, NULL, 'Kabid p2 tindaklanjuti', 'surat-masuk-20200122_144636.pdf', NULL, 'Kabid P2 Tindak lanjuti', 'ditindaklanjuti', NULL, '2020-01-17', 3, 117, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (126, '2020-01-16', '8', '065/05/2020', '-', 'Permohonan narasumber phbs ', '-', 'UPTD Bangsri II', NULL, NULL, NULL, 'Seksi promkes fasilitasi ', 'surat-masuk-20200122_145445.pdf', NULL, 'seksi promkes fasilitasi', 'seksi promkes tindak lanjuti', NULL, '2020-01-17', 1, 118, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (127, '2020-01-16', '8', '441.9/107', '-', 'Penetapan hasil verifikasi PNI APBD Kab. Jepara', '-', 'Dinsospermades', NULL, NULL, NULL, 'Seksi yankes tindaklanjuti', 'surat-masuk-20200122_145919.pdf', NULL, 'seksi yankes tindaklanjuti', 'Tindaklanjuti', NULL, '2020-01-17', 2, 119, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (128, '2020-01-16', '4', '005/0201', 'SEGERA', 'Undangan Forum discussion antara forkopinda dan FKUB, Tokoh agama dan opd terkait tentang penanganan anak punk, HIV Aids narkoba dan tempat karaoke ', '-', 'SETDA ', NULL, NULL, NULL, 'Agenda Kadin ', 'surat-masuk-20200122_150238.pdf', NULL, 'Agenda KADINKES untuk diingatkan', NULL, NULL, '2020-01-17', 1, 120, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (129, '2020-01-15', '4', '440/29/1/2020', 'SEGERA', 'Pemberitahuan menayakan kepemilikan sertifikat tanah', '-', 'UPTD JEPARA', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200122_150540.pdf', NULL, 'Subbag UMPEG tindaklanjuti', NULL, NULL, '2020-01-17', 1, 121, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (130, '2020-01-15', '8', '440/18/1/2020', 'SEGERA', 'Pemberitahuan pemeriksaan IVA ', '-', 'UPTD Kembang ', NULL, NULL, NULL, 'Seksi p2ptm tindaklanjuti', 'surat-masuk-20200122_151612.pdf', NULL, 'Seksi P2PTM tindaklanjuti', 'koordinasi dengan puskesmas lain yang punya tenaga dokter terlatih IVA', NULL, '2020-01-17', 1, 122, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (131, '2020-01-08', '4', '005/0211/2020', 'PENTING', 'Permohonan bantuan tenaga instruktur pembinan anak punk tahun 2020', '1 satu lembar', 'SETDA', NULL, NULL, NULL, 'seksi kesga gizi tindaklanjuti', 'surat-masuk-20200122_152729.pdf', NULL, 'Seksi Kesga Gizi tindaklanjuti', 'seksi kesga dan gizi tindak lanjuti', NULL, '2020-01-17', 3, 123, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (132, '2020-01-16', '8', 'B/112/1/Res.1.24/2020/Reskrim', 'BIASA', 'Permohonan keterangan ahli', '-', 'Polres Jepara ', NULL, NULL, NULL, 'Kabid yankes dan sdk Hadiri ', 'surat-masuk-20200122_153112.pdf', NULL, 'Kabid Yankes dan SDK hadiri', 'Tindaklanjuti', NULL, '2020-01-17', 2, 124, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (133, '2020-01-13', '8', '443/0206/1/2020', '-', 'LAPORAN BULAN DESEMBER TAHUN 2019', '-', 'UPTD PECANGAAN ', NULL, NULL, NULL, 'Seksi P2pm Tindaklanjuti', 'surat-masuk-20200122_161735.pdf', NULL, 'seksi P2PM tindaklanjuti', 'arsipkan dan di koordinasikan dengan renval', NULL, '2020-01-20', 2, 125, 0, 0, 1);
INSERT INTO `tb_surat_masuk` VALUES (134, '2020-01-16', '8', '440/06/P/I/2020', '-', 'PERMOHONAN PINDAH TUGAS DARI UPTD WELAHAN II ke RSU RA Kartini', '1 satu bendel', 'UPTD WELAHAN II', NULL, NULL, NULL, 'Subbag Umpeg Tindaklanjuti', 'surat-masuk-20200122_162009.pdf', NULL, 'subbag umpeg tindaklanjuti', NULL, NULL, '2020-01-20', 1, 126, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (135, '2020-01-15', '15', '12/Csl/I/2020', '-', 'Penawaran Instalansi IPAL Puskesmas', '-', 'PT. CINTA ELARAS ', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200122_162530.pdf', NULL, '', NULL, NULL, '2020-01-20', 1, 127, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (136, '2020-01-15', '8', '87/VI-11/0120', '-', 'Pelaporan WTA FKRTL tAHUN 2020', '-', 'BPJS Kesehatan', NULL, NULL, NULL, 'Seksi yankes tindaklanjuti', 'surat-masuk-20200122_162729.pdf', NULL, 'seksi yankes tindaklanjuti', 'Tindaklanjuti', NULL, '2020-01-20', 2, 128, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (137, '2020-01-17', '23', '130/0221', '-', 'Data LKPJ / LPPD', '-', 'Setda ', NULL, NULL, NULL, 'Subbag renkeu tindaklanjuti', 'surat-masuk-20200122_163055.pdf', NULL, 'subbag renkeu tindak lanjuti', NULL, NULL, '2020-01-20', 1, 129, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (138, '2020-01-16', '12', '63/FEB-UNISNU/I/2020', '-', 'Pemberitahuan peserta magang ', '-', 'UNISNU JEPARA', NULL, NULL, NULL, 'Subbag umpeg fasilitasi ', 'surat-masuk-20200122_163253.pdf', NULL, 'subbag umpeg fasilitasi', NULL, NULL, '2020-01-20', 1, 130, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (139, '2020-01-15', '15', '440/047/2019', '-', 'Usulan renovasi gedung/rumah dinas dan gudang perlatan /perlengkapan ', '-', 'Uptd welahan I', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200122_163518.pdf', NULL, 'subbag umpeg tindak lanjuti', NULL, NULL, '2020-01-20', 1, 131, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (140, '2020-01-02', '19', '971.1.1/0206/1/2020', 'SEGERA ', 'Pelaksanaan pemungutan dan pelunasan PBB-P2', '-', 'Bupati Jepara', NULL, NULL, NULL, 'Subbag renkeu tindaklanjuti ', 'surat-masuk-20200122_163737.pdf', NULL, 'subbag renkeu tindaklanjuti', NULL, NULL, '2020-01-20', 1, 132, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (141, '2020-01-16', '8', 'B-36/M.3.32/Dsb.3/01/2020', 'SEGERA', 'Permintaan data pengobatn tradisional di kab. jepara ', '1 satu lembar', '', NULL, NULL, NULL, 'Bidang yankes dan SSMK Tindaklanjuti', 'surat-masuk-20200122_163951.pdf', NULL, 'bidang yankes dan SSMK tindaklanjuti', 'Tindaklanjuti', NULL, '2020-01-20', 2, 133, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (142, '2020-01-16', '4', '005/0226', 'PENTING', 'Undangan rapat tim penegak disiplin', '-', 'SETDA', NULL, NULL, NULL, 'Subbag umpeg hadiri ', 'surat-masuk-20200122_164143.pdf', NULL, 'subbag umpeg hadiri', NULL, NULL, '2020-01-20', 1, 134, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (143, '2020-01-14', '4', '005/008/2020', '-', 'Undangan Diseminasi informasi pelayanan rsud ra kartini', '-', 'RSUD RA KARTINI', NULL, NULL, NULL, 'Seksi yankes hadiri ', 'surat-masuk-20200122_164402.pdf', NULL, 'seksi yankes hadiri', 'Tindaklanjuti', NULL, '2020-01-20', 2, 135, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (144, '2020-01-16', '8', '050/0031', '-', 'Permohonan prsonil tim pembahas', '-', 'BAPPEDA', NULL, NULL, NULL, 'Seksi kesling tindaklanjuti', 'surat-masuk-20200122_164543.pdf', NULL, 'seksi Kesling tindak lanjuti', 'seksi kesling tindak lanjuti', NULL, '2020-01-20', 3, 136, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (145, '2019-11-09', '8', '443/924/12/2020', '-', 'Laporan bulan november 2019', '-', 'UPTD PECANGAAN', NULL, NULL, NULL, 'Seksi p2pm tindaklanjuti', 'surat-masuk-20200122_164949.pdf', NULL, 'seksi P2PM tindaklanjuti', 'arsipkan, dan dikoordinasikan dengan renval', NULL, '2020-01-20', 2, 137, 0, 0, 1);
INSERT INTO `tb_surat_masuk` VALUES (146, '2020-01-15', '4', 'DG.02.01/2.2/0286/2020', '-', 'Undangan pertemuan penyususnan formasi penugasan khusus tenaga kesehatan dalam mendukung program nusantar sehat ', '1 satu berkas', 'Kementrian Kesehatan RI', NULL, NULL, NULL, 'Bidang yankes dan sdk tindaklanjuti', 'surat-masuk-20200122_165255.pdf', NULL, 'Bidang yankes dan SDK tindaklanjuti', 'Tindaklanjuti', NULL, '2020-01-20', 3, 138, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (147, '2020-01-15', '8', '441.21/320/5', 'SEGERA', 'Permintaan laporan triwulan IV dan laporan tahuana program JKN/KIS Kabupaten/kota tahun 2019', '1 satu lembar', 'Dinkes prov', NULL, NULL, NULL, 'seksi yankes segera tindaklanjuti', 'surat-masuk-20200122_165617.pdf', NULL, 'Seksi yankes segera tindaklanjuti', 'Tindak Lanjuti', NULL, '2020-01-20', 2, 139, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (148, '2020-01-11', '19', '900/06/2020', '-', 'Permohonan pengadaan lahan parkir ', '1 satu lembar', 'UPTD NALUMSARI', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200122_165753.pdf', NULL, 'Subag Umpeg tindak lanjuti', NULL, NULL, '2020-01-20', 1, 140, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (149, '2020-01-15', '13', '02/P4/1/2020', '-', 'Penaftaraan bakal calon pengurus / pengawas baru ( periode 2020-2022)', '-', 'KPRI', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200122_171810.pdf', NULL, 'Subbag Umpeg tindak lanjuti', NULL, NULL, '2020-01-20', 1, 141, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (150, '2020-01-06', '10', 'GM.01.03/3/075/2020', '-', 'Pemberitahuan logo hari gizi nasional ke-860 tahun 2020', '-', 'Kementrian Kesehatan RI', NULL, NULL, NULL, 'Seksi kesga tindak lanjuti', 'surat-masuk-20200122_172141.pdf', NULL, 'Kasie Kesga tindak lanjuti', 'Seksi Kesga dan Gizi tindak lanjuti', NULL, '2020-01-20', 3, 142, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (151, '2020-01-20', '13', '800/068/2020', '-', 'PERMOHONAN IJIN dyah dwi putri A', '-', 'UPTD BANGSRI I', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200122_172313.pdf', NULL, 'UMPEG tindaklanjuti', NULL, NULL, '2020-01-20', 1, 143, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (152, '2020-01-17', '13', '094/0216', 'SEGERA', 'Pembatasan perjalanan dinas ta 2020', '-', 'SETDA', NULL, NULL, NULL, 'Subbag Umpeg tindaklanjuti dan informasikan ke seksi, seksi, dan UPTD', 'surat-masuk-20200122_172517.pdf', NULL, 'Subbag Umpeg untuk di tindaklanjuti dan di informasikan ke seksi lain dan UPT', NULL, NULL, '2020-01-20', 1, 144, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (153, '2020-01-20', '8', '440/30/1/2020', 'PENTING', 'Usulan pengangkatan bidan harlep', '-', 'UPTD Donorojo', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200123_090307.pdf', NULL, 'Subbag Umpeg Tindaklanjuti', NULL, NULL, '2020-01-21', 1, 145, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (154, '2020-01-15', '4', '005/276/3', '-', 'Workshop tim pelatih sistem informasi tuberkulosis (SITB)', '-', 'Dinkes prov', NULL, NULL, NULL, 'Seksi p2p hadiri', 'surat-masuk-20200123_090546.pdf', NULL, 'Seksi P2P hadiri', 'tindaklanjuti', NULL, '2020-01-21', 3, 146, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (155, '2020-01-20', '8', 'B/10/IREN.5.1./Res.Jepara ', '-', 'Focus group discusion', '-', 'POLRES Jepara ', NULL, NULL, NULL, 'Seksi yankes hadiri ', 'surat-masuk-20200123_090800.pdf', NULL, 'Seksi yankes hadiri', 'Tindaklanjuti', NULL, '2020-01-21', 2, 147, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (156, '2020-01-20', '10', '03/PPUKM/20', '-', 'Pemberitahuan Acara perkenalan mahasiswa dan permohonan ijin pbl/pansip fak. kedokteran undip', '-', 'UNDIP', NULL, NULL, NULL, 'Seksi sdmk fasilitasi ', 'surat-masuk-20200123_091027.pdf', NULL, 'seksi SDMK Fasilitasi', 'Tindaklanjuti', NULL, '2020-01-21', 3, 148, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (157, '2020-01-07', NULL, 'Jp.01.02/2/58/2020', 'SEGERA', 'Pengumpulan data unit cost spm keehatan pada kab/kota', '1 satu berkas', 'Kementrian Kesehatan RI', NULL, NULL, NULL, 'Subbag renkeu tindaklanjutii', 'surat-masuk-20200123_091700.pdf', NULL, NULL, NULL, NULL, '2020-01-21', 0, 149, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (158, '2020-01-22', '4', '005/    /2020', '-', 'Pendampingan dan penatalaksanaan penyakit mnular kabupaten jepara ', '-', 'Balkesmas pati', NULL, NULL, NULL, 'Bidang p2p tindaklanjuti', 'surat-masuk-20200123_093028.pdf', NULL, 'bidang P2P tindak lanjuti', 'tindaklanjuti', NULL, '2020-01-21', 3, 150, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (159, '2019-07-01', '13', '800/8177', 'SEGERA', 'Larangan pengangkatan pegawai non pns dan / non pns ', '-', 'Setda ', NULL, NULL, NULL, 'Subba umpeg tindak lanjuti surat ', 'surat-masuk-20200123_094638.pdf', NULL, 'subbag umpeg tindak lanjuti', NULL, NULL, '2020-01-21', 1, 151, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (160, '2020-01-21', '8', '462/131', '-', 'Surat keterangan MR.X', '-', 'DINSOSPERMADES', NULL, NULL, NULL, 'Seksi yanke tindaklanjuti', 'surat-masuk-20200123_094837.pdf', NULL, 'seksi yankes tindak lanjuti', 'Tindaklanjuti', NULL, '2020-01-21', 2, 152, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (161, '2020-01-02', '21', '090.1/0031', 'PENTING', 'Jadwal upacara bendera kab.jepara', '1 satu lembar', 'SETDA', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti surat edaran ', 'surat-masuk-20200123_095432.pdf', NULL, 'Subbag umpeg tindaklanjuti surat edaran ', NULL, NULL, '2020-01-21', 1, 153, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (162, '2020-01-13', '22', '01/SSR-Jepara/A-1/1/2020', '-', 'Permohona audiensi terkait penanggulangan tbc', '1 satu bendel', 'Aisyiyah Jepara', NULL, NULL, NULL, 'Subbag umpeg jadwalkan audiensi kadin koordinasikan dengan p2p terkait bahan audiensi', 'surat-masuk-20200123_095905.pdf', NULL, 'Subbag umpeg jadwalkan audiensi kadin koordinasikan dengan p2p terkait bahan audiensi', NULL, NULL, '2020-01-21', 1, 154, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (163, '2020-01-21', '4', '005/208', 'SEGERA', 'Undangan kunjungan kerja dalam rangka monitoring pelaksanaan pendidikan di sekolahan, bantuan hibah kepada masjid/musholla/yayasan dan pelayanan kesehatan di puskesmas', '-', 'DPRD', NULL, NULL, NULL, 'Seksi yankes hadiri ', 'surat-masuk-20200123_100136.pdf', NULL, 'seksi yankes hadiri', 'Tindaklanjuti', NULL, '2020-01-21', 2, 155, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (164, '2020-01-03', '14', '050/0094', '-', 'Permohonan personil tim teknis', '-', 'BAPPEDA', NULL, NULL, NULL, 'Seksi kesga gizi tindaklanjuti', 'surat-masuk-20200123_100523.pdf', NULL, 'seksi kesga gizi tindak lanjuti', 'seksi kesga dan gizi tindak lanjuti', NULL, '2020-01-21', 3, 156, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (165, '2020-01-10', '8', '440/18/1/2020', '-', 'Pengiriman umpan balik (feedback) hsil penilian kinerja tahun 2019', '-', 'UPTD MAYONG i', NULL, NULL, NULL, 'Subbag renkeu tindaklanjuti ', 'surat-masuk-20200123_100851.pdf', NULL, 'subbag renkeu tindak lanjuti', NULL, NULL, '2020-01-21', 1, 157, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (166, '2020-01-21', '8', '440/22/1/2020', 'PENTING', 'Jawaban nota dinas', '-', 'UPTD Kalinyamatan ', NULL, NULL, NULL, 'Umpeg tibdaklanjuti', 'surat-masuk-20200124_065549.pdf', NULL, 'Umpeg tibdaklanjuti', NULL, NULL, '2020-01-22', 1, 158, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (167, '2020-01-11', '19', '900/09/2020', '-', 'Permohonan lpengadaan lahan parkir', '-', 'UPTD NALUMSARI', NULL, NULL, NULL, 'Subbag Umpeg tindaklanjuti', 'surat-masuk-20200124_070233.pdf', NULL, 'Subbag Umpeg tindaklanjuti', NULL, NULL, '2020-01-22', 1, 159, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (168, '2020-01-20', '10', '045.2/0085', '-', 'Surat pengantar buku kajian pembagunan tempat pembuangan akhir (tpa)', '-', 'BAPPEDA', NULL, NULL, NULL, 'Untuk tambahan refrensi seksi kesling', 'surat-masuk-20200124_070646.pdf', NULL, 'Untuk tambahan refrensi seksi kesling', 'Untuk tambahan refrensi seksi kesling', NULL, '2020-01-22', 1, 160, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (169, '2020-01-13', '24', '539/014', '-', 'penawaran produk daerah kopi rojoku', '-', 'Perumda', NULL, NULL, NULL, 'Pertimbangkan ', 'surat-masuk-20200124_071132.pdf', NULL, 'Pertimbangkan ', NULL, NULL, '2020-01-22', 1, 161, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (170, '2020-01-20', '4', '005/0150', '-', 'Undangan rapat persipan pelaksnaan analisis situasi dan rembuk stunting', '-', 'BAPPEDA', NULL, NULL, NULL, 'Seksi kesga tindaklanjuti', 'surat-masuk-20200124_071543.pdf', NULL, 'Seksi kesga tindaklanjuti', 'Seksi kesga tindaklanjuti', NULL, '2020-01-22', 1, 162, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (171, '2020-01-22', '4', '005/029', 'SEGERA', 'Undangan Pelaksanaan musrenbangcam tahun 2020', '-', 'Kecamatan Jepara', NULL, NULL, NULL, '', 'surat-masuk-20200124_071810.pdf', NULL, 'Arsipkan', NULL, NULL, '2020-01-22', 1, 163, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (172, '2020-01-21', '25', '560/91', '-', 'Data penduduk yang bekerja', '-', 'Dinas koperasi UKM Tenaga Kerja Dan Transmigrasi', NULL, NULL, NULL, 'Kabid Yankes dan SDK UMP', 'surat-masuk-20200124_072339.pdf', NULL, 'Kabid Yankes dan SDK UMP', NULL, NULL, '2020-01-22', 1, 164, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (173, '2020-01-22', '5', '881/', '-', 'Lamaran pekerjaan', '-', 'Toni Raharo', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200124_072646.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-01-22', 1, 165, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (174, '2020-01-09', '15', '252/Pusdiklat/01/2020', '-', 'Pelatihan Pengadaan barang/jasa tingkat dasar angkatan IV', '-', 'LKPP', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200124_073009.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-01-22', 1, 166, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (175, '2020-01-15', '8', 'PV.04.02/IV/142/2020', '-', 'Pelaksanaan pemberian obat pencegahan massal cacingan di daerah intervensi stunting 2020', '1 satu berkas', 'Kementrian Kesehatan RI', NULL, NULL, NULL, 'Kesga gizi tindaklanjuti', 'surat-masuk-20200124_073320.pdf', NULL, 'Kesga gizi tindaklanjuti', 'Kesga gizi tindaklanjuti', NULL, '2020-01-22', 1, 167, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (176, '2020-01-13', '19', '073.4/227/1.1', '-', 'Pemberitahuan kedua penyellenggaran rakerkesnas tahun 2020', '-', 'Dinkes prov', NULL, NULL, NULL, 'Subba umpeg agenda kadin ', 'surat-masuk-20200124_073751.pdf', NULL, 'Subba umpeg agenda kadin ', NULL, NULL, '2020-01-22', 1, 168, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (177, '2020-01-15', '26', '091/361/sj', '-', 'Dalam rangka kunjungan presiden pada kegitan gerakan bersama menuju eliminasi TBC indonesia tahun 2030', '-', 'Kementrian dalam negeri RI', NULL, NULL, NULL, 'Subbag umpeg agenda KADIN', 'surat-masuk-20200124_082010.pdf', NULL, 'Subbag umpeg agenda KADIN', NULL, NULL, '2020-01-22', 1, 169, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (178, '2020-01-07', '8', 'Jp.01.02/2/58/2020', '-', 'Pengumpulan data unit cost spm keehatan pada kab/kota', '-', 'Kementrian dalam negeri RI', NULL, NULL, NULL, 'Subbag renkeu tindaklanjuti', 'surat-masuk-20200124_084305.pdf', NULL, 'Subbag renkeu tindaklanjuti', NULL, NULL, '2020-01-22', 1, 170, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (179, '2020-01-17', '8', '     /V1-07/0120', '-', 'SK Kpitasi januari 2020 dan susulan desember ', '-', 'BPJS kESEHATAN ', NULL, NULL, NULL, 'Kabid yankes dan sdk tindaklanjuti', 'surat-masuk-20200124_084517.pdf', NULL, 'Kabid yankes dan sdk tindaklanjuti', 'Tindaklanjuti', NULL, '2020-01-22', 2, 171, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (180, '2020-01-22', '10', '045.2/124', '-', 'Pengantar usulan baru, valid, perubahan data, penghapusan, dan pengalihan PIBD Kab jepara', '-', 'Dinsospermades', NULL, NULL, NULL, 'Seksi yankes tindaklanjuti ', 'surat-masuk-20200124_084946.pdf', NULL, 'Seksi yankes tindaklanjuti ', 'Tindaklanjuti', NULL, '2020-01-22', 2, 172, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (181, '2020-01-23', '15', '     /TPL/   /20', '-', 'Supplier mebel & Interior', '1 satu bendel', 'TALENTA', NULL, NULL, NULL, 'Subbag umpeg ump', 'surat-masuk-20200128_142330.pdf', NULL, 'Subbag umpeg ump', NULL, NULL, '2020-01-23', 1, 173, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (182, '2020-01-23', '5', '811/', '-', 'Lamaran pekerjaan', '-', 'YOLAN FATKHIS ANISYA', NULL, NULL, NULL, 'Subbag umpeg UMP ', 'surat-masuk-20200128_142506.pdf', NULL, 'Subbag umpeg UMP ', NULL, NULL, '2020-01-23', 1, 174, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (184, '2020-01-23', '8', '440/0342/1/2020', '-', 'Peremohonan narasumber platihan entri data EPPBGM bagi kader', '-', 'UPTD Pecangaan', NULL, NULL, NULL, 'Seksi kesgagizi fasilitasi', 'surat-masuk-20200128_143156.pdf', NULL, 'Seksi kesgagizi fasilitasi', 'Seksi kesgagizi fasilitasi', NULL, '2020-01-23', 3, 176, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (185, '2020-01-22', '8', '440/13/2020', '-', 'Permohonan narasumber ', '-', 'UPTD Batealit', NULL, NULL, NULL, 'Kabid P2 Fasilitasi', 'surat-masuk-20200128_143350.pdf', NULL, 'Kabid P2 Fasilitasi', 'kabid p2p sebagai narasumber', NULL, '2020-01-23', 2, 177, 0, 0, 1);
INSERT INTO `tb_surat_masuk` VALUES (186, '2020-01-14', '8', 'T-PW.01.02.104.1043.01.20.0257', '-', 'Tindaklanjut hasil pemeriksaan ', '-', 'Badan pom', NULL, NULL, NULL, 'Seksi farmalkes tindaklanjuti', 'surat-masuk-20200128_143648.pdf', NULL, 'Seksi farmalkes tindaklanjuti', 'Tindaklanjuti', NULL, '2020-01-23', 2, 178, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (187, '2020-01-16', '8', 'T-PW.01.02.104.1043.01.20.0291', '-', 'Peringatan keras Apotek shafa farma', '-', 'Badan pom', NULL, NULL, NULL, 'Seksi farmalkes tindaklanjuti', 'surat-masuk-20200128_144334.pdf', NULL, 'Seksi farmalkes tindaklanjuti', 'Tindaklanjuti', NULL, '2020-01-23', 3, 179, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (188, '2020-01-14', '8', 'T-PW.01.02.104.1043.01.20.0256', '-', 'Tindaklanjut hasil pemeriksaan', '-', 'Badan pom', NULL, NULL, NULL, 'Seksi farmalkes tindaklanjuti', 'surat-masuk-20200128_145700.pdf', NULL, 'Seksi farmalkes tindaklanjuti', 'Tindaklanjuti', NULL, '2020-01-23', 2, 180, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (189, '2020-01-16', '8', 'T-PW.01.02.104.1043.01.20.0296', '-', 'Peringatan keras ', '-', 'Badan pom', NULL, NULL, NULL, 'Seksi farmalkes tindaklanjuti', 'surat-masuk-20200128_145909.pdf', NULL, 'Seksi farmalkes tindaklanjuti', 'Tindaklanjuti', NULL, '2020-01-23', 3, 181, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (190, '2020-01-22', '13', '893.3/160/2020', 'SEGERA', 'Undangan pembukaan pelatihan teknis pengawasan kearsipan internal kab. jepara tahun 2020', '-', 'BKD', NULL, NULL, NULL, 'Subbag umpeg hadiri', 'surat-masuk-20200128_150213.pdf', NULL, 'Subbag umpeg hadiri', NULL, NULL, '2020-01-23', 1, 182, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (191, '2020-01-22', '27', '700/38', '-', 'Surat keterangan bebas temuan pemeriksaan ', '-', 'Inspektorat', NULL, NULL, NULL, 'Subbag renkeu tindaklanjuti', 'surat-masuk-20200128_150539.pdf', NULL, 'Subbag renkeu tindaklanjuti', NULL, NULL, '2020-01-23', 1, 183, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (192, '2020-01-22', '27', '700/39', '-', 'Surat keterangan bebas temuan pemeriksaan', '-', 'Inspektorat', NULL, NULL, NULL, 'Subbag renkeu tindaklanjuti', 'surat-masuk-20200128_150721.pdf', NULL, 'Subbag renkeu tindaklanjuti', NULL, NULL, '2020-01-23', 1, 184, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (193, '2020-01-15', '12', 'KH.03.01/5.9/669/2020', '-', 'Ijin penelitian hilma triana', '-', 'Poltekes Semarang', NULL, NULL, NULL, 'Subbag umpeg fasilitasi', 'surat-masuk-20200128_150935.pdf', NULL, 'Subbag umpeg fasilitasi', NULL, NULL, '2020-01-23', 1, 185, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (194, '2020-01-20', '10', '016/BAZNAS-JPR/1/2020', '-', 'Kalender tahun 2020', '-', 'Baznas ', NULL, NULL, NULL, 'Ump ', 'surat-masuk-20200128_151256.pdf', NULL, 'Ump', NULL, NULL, '2020-01-23', 1, 186, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (195, '2020-01-15', '12', '130/A-2-VII/1/2020', '-', 'Ijin penelitian dinda salsa shauma jadida', '-', 'Universitas muhammadiyah yogyakarta', NULL, NULL, NULL, 'Subbag umpeg fasilitasi', 'surat-masuk-20200128_151518.pdf', NULL, 'Subbag umpeg fasilitasi', NULL, NULL, '2020-01-23', 1, 187, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (197, '2019-11-25', '8', '440/0232/2019', '-', 'Usulan rehab puskesmas untuk tampak depan', '-', 'UPTD Kalinyamatan', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200129_074105.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-01-27', 1, 188, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (198, '2020-01-14', '4', '005/14/I/LAPI JATIM/2020', 'PENTING', 'Undangan pelatihan bagi pejabat /panitia pemeriksa hasil pekerjaan (PJPHP/PPHP)', '-', 'LAPIU JAWA TIMUR ', NULL, NULL, NULL, 'SUBBAG UMPEG UMP', 'surat-masuk-20200129_074357.pdf', NULL, 'SUBBAG UMPEG ', NULL, NULL, '2020-01-27', 1, 189, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (199, '2020-01-06', '4', '005/005/I/LAPI JATIM/2020', '-', 'Undangan workshop pengadaan barang / jasa pada BLUD', '1 satu lembar', 'LAPI JAWA TIMUR', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200129_084020.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-01-27', 1, 190, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (200, '2020-01-21', '4', '005/162/5/2020', '-', 'Undanga evaluasi DAK Fisik TA 2019 Serta Persiapan penyaluran DAK Fisik TA 2020', '-', 'BPKAD', NULL, NULL, NULL, 'Subbag umpeg hadiri', 'surat-masuk-20200129_091200.pdf', NULL, 'Subbag umpeg hadiri', NULL, NULL, '2020-01-27', 1, 191, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (201, '2020-01-13', '4', '005/010/I/LAPI JATIM/2020', 'PENTING', 'Undangan workshop kontrak PJBP Terkait Kontrak Pekerjaan Pembangunan bangunan gedung Negara', '1 satu lembar', 'LAPI JAWA TIMUR', NULL, NULL, NULL, 'Subbag umpeg Tindak lanjuti', 'surat-masuk-20200129_091830.pdf', NULL, 'Subbag umpeg Tindak lanjuti', NULL, NULL, '2020-01-27', 1, 192, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (202, '2020-01-10', '12', 'KH.03.01/5.9/059/2020', '-', 'IZIN PENELITIAN', '-', 'Poltekes Semarang', NULL, NULL, NULL, 'Subbag umpeg fasilitasi', 'surat-masuk-20200129_093249.pdf', NULL, 'Subbag umpeg fasilitasi', NULL, NULL, '2020-01-27', 1, 193, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (203, '2020-01-10', '12', 'KH.03.01/5.9/036/2020', '-', 'Izin studi pendahuluan a.n. Rizkie A A', '-', 'Poltekes Semarang', NULL, NULL, NULL, 'Subbag umpeg fasilitasi', 'surat-masuk-20200129_093618.pdf', NULL, 'Subbag umpeg fasilitasi', NULL, NULL, '2020-01-27', 1, 194, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (204, '2020-01-13', '4', '005/011/LAPI JATIM/2020', 'PENTING', 'Undangan bimtek pbj pada kelurahan ', '-', 'LAPI JAWA TIMUR', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200129_094005.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-01-27', 1, 195, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (205, '2020-01-13', '4', '005/012/I/LAPI JATIM/2020', 'PENTING', 'Undangan Bimtek PBJ pada BUMD DAN BUMN', '-', 'LAPI JAWA TIMUR', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200129_094223.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-01-27', 1, 196, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (206, '2020-01-13', '4', '005/013/lapi JATIM/2020', 'PENTING', 'Undangan pelatihan persiapan kompetensi dan aplikasi SPSE Bagi PPK', '-', 'LAPI JAWA TIMUR', NULL, NULL, NULL, 'Subbag Umpeg UMP', 'surat-masuk-20200129_095330.pdf', NULL, 'Subbag Umpeg UMP', NULL, NULL, '2020-01-27', 1, 197, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (207, '2020-01-01', '4', '005/003/I/LAPI JATIM/2020', 'PENTING', 'Undangan jasa pemerintah dan ujian sertifikasi perpres No 18 tahun 2018 ', '-', 'LAPI JAWA TIMUR', NULL, NULL, NULL, 'Subbag Umpeg UMP', 'surat-masuk-20200129_095701.pdf', NULL, 'Subbag Umpeg UMP', NULL, NULL, '2020-01-27', 1, 198, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (208, '2020-01-06', '28', '060/0144', 'PENTING', 'Peyelenggaran MALL Pelayanan publik', '-', 'Setda ', NULL, NULL, NULL, 'Subbag renkeu tindaklanjuti', 'surat-masuk-20200129_100715.pdf', NULL, 'Subbag renkeu tindaklanjuti', NULL, NULL, '2020-01-27', 3, 199, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (209, '2020-01-20', '4', '005/0300', 'SEGERA', 'Undangan rapat persiapan rapat peringatan hari jadi jepara dan hari kartini tahun 2020', '-', 'Setda ', NULL, NULL, NULL, 'Subbag umpeg HADIRI', 'surat-masuk-20200129_105956.pdf', NULL, 'Subbag umpeg HADIRI', NULL, NULL, '2020-01-27', 1, 200, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (210, '2020-01-24', '4', '005/0302', 'PENTING', 'Undangan Rapat rekonsialisasi danan bagi hasil cukai hasil tembakau (dbhcht) tahun anggaran', 'penting', 'SETDA', NULL, NULL, NULL, 'Subbag renkeu hadiri', 'surat-masuk-20200129_110256.pdf', NULL, 'Subbag renkeu hadiri', NULL, NULL, '2020-01-27', 3, 201, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (211, '2020-01-24', '4', '005/0469', '-', 'Undangan meningkatkan kapsitas pokjanal posyandu', '-', 'Dispermades Dukcapil', NULL, NULL, NULL, 'Seksi promkes hadiri', 'surat-masuk-20200129_110758.pdf', NULL, 'Seksi promkes hadiri', 'Seksi promkes hadiri', NULL, '2020-01-27', 2, 202, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (212, '2020-01-23', '4', '011/A/MTCC.AUD/I/2020', '-', 'Permohonan Audiensi ', '-', 'MTCC Muhammadiyah Tobacco Contral Center', NULL, NULL, NULL, 'Subbag umpeg koordinasikan dan jadwalkan sama kadinkes', 'surat-masuk-20200129_111430.pdf', NULL, 'Subbag umpeg koordinasikan dan jadwalkan sama kadinkes', NULL, NULL, '2020-01-27', 1, 203, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (213, '2020-01-27', '4', '005/0331', '-', 'Undangan Rapat perencanaan inovasi pelayanan publik sebagai upaya pelayanan prima dan percepatan pembangunan ', '-', 'Setda', NULL, NULL, NULL, 'Subbag renkeu hadiri', 'surat-masuk-20200129_111814.pdf', NULL, 'Subbag renkeu hadiri', NULL, NULL, '2020-01-27', 1, 204, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (215, '2020-01-27', '10', '045.2/    /2020', '-', 'Usulan renovasi pembangunan gedung puskesmas welahan I', '-', 'Uptd welahan I', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200129_112534.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-01-27', 1, 205, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (216, '2020-01-27', '15', '027/', '-', 'usulan pengadaan alat kesehatan ', '1 satu berkas', 'UPTD Welaahan I', NULL, NULL, NULL, 'Bidang yankes dan sdk tindaklanjuti', 'surat-masuk-20200129_113231.pdf', NULL, 'Bidang yankes dan sdk tindaklanjuti', 'Tindaklanjuti', NULL, '2020-01-27', 2, 206, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (217, '2020-01-27', '5', '811/', '-', 'Lamaran pekerjaan', '-', 'AJI SATYA NUGRAHA', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200129_113401.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-01-27', 1, 207, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (218, '2020-01-16', '12', '122/feb.umk/a.40.16/1/2020', '-', 'Permohonan ijin penelitian a.n. FAUZUSSA\'ADAH', '-', 'UMK FEB', NULL, NULL, NULL, 'Subbag umpeg fasilitasi', 'surat-masuk-20200129_113635.pdf', NULL, 'Subbag umpeg fasilitasi', NULL, NULL, '2020-01-27', 1, 208, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (219, '2020-01-13', '4', '0150/A.1/L-LGE/I/2020', '-', 'Undangan bimbingan teknis ', '-', 'LGE LEMBAGA LOCAL GOVERNANCE ', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200129_115317.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-01-27', 1, 209, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (220, '2020-01-27', '15', '031/120', '-', 'Usulan perluasan lahan puskesmas ', '-', 'UPTD Pakis aji', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200129_115519.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-01-27', 1, 210, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (221, '2020-01-27', '4', '959.05.K/K3J/1/2020', '-', 'Undangan dan mohon sambutan', '-', 'KPRI', NULL, NULL, NULL, 'Subbag umpeg agendakan untuk kadinkes', 'surat-masuk-20200129_115736.pdf', NULL, 'Subbag umpeg agendakan untuk kadinkes', NULL, NULL, '2020-01-27', 1, 211, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (222, '2020-01-27', '8', '440/', '-', 'Laporan kasus DBD sdr Nur aqisya adella ', '-', 'RS Mardi rahayu', NULL, NULL, NULL, 'Bidang p2 tindaklanjuti', 'surat-masuk-20200129_120430.pdf', NULL, 'Bidang p2 tindaklanjuti', 'tindaklanjuti', NULL, '2020-01-27', 2, 212, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (223, '2020-01-24', '8', '018/DIR/RSGH/1/2020', '-', 'Laporan data Hais', '-', 'Rs  Graha Husada', NULL, NULL, NULL, 'Bidang p2 Tindaklanjuti', 'surat-masuk-20200129_121103.pdf', NULL, 'Bidang p2 Tindaklanjuti', 'tindaklanjuti', NULL, '2020-01-27', 2, 213, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (224, '2020-01-24', '4', '005/0162', '-', 'Undangan pembahasan 10 prioritas usulan bantuan keuangan provinsi jawa tengah tahun 2021', '-', 'BAPPEDA', NULL, NULL, NULL, 'Subbag renkeu Hadiri', 'surat-masuk-20200129_121314.pdf', NULL, 'Subbag renkeu Hadiri', NULL, NULL, '2020-01-27', 1, 214, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (225, '2020-01-21', '4', '005/208', 'SEGERA', 'Kunjungan kerja dalam rangka monitoring pelaksanaan pendidikan di sekolahan, bantuan hibah kepada masjid/musholla dan pelayanan kesehatan di puskesmas di puskesmas ', '-', 'DPRD', NULL, NULL, NULL, 'Seksi yankes hadiri', 'surat-masuk-20200129_125430.pdf', NULL, 'Seksi yankes hadiri', 'Tindaklanjuti', NULL, '2020-01-27', 2, 215, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (226, '2020-01-23', '4', '005/', '-', 'Undangan acara lepas sambut kepala rumah tahanan ', '-', 'Rumah tahanan negara kelas II B Jepara ', NULL, NULL, NULL, 'agenda kadinkes ', 'surat-masuk-20200129_125657.pdf', NULL, 'agenda kadinkes ', NULL, NULL, '2020-01-27', 1, 216, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (227, '2020-01-24', '19', '900/56', 'PENTING', 'Permintaaan data laporan keuangan tahun anggaran 2019', '-', 'Inspektorat', NULL, NULL, NULL, 'Subbag renkeu tindaklanjuti', 'surat-masuk-20200129_125929.pdf', NULL, 'Subbag renkeu tindaklanjuti', NULL, NULL, '2020-01-27', 3, 217, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (228, '2020-01-23', '10', 'B2-009/PC IAI/ Kab. Jepara/ I/1822/2020', '-', 'Ijin menggunakan aula dinas kesehatan kabupaten jepara ', '-', 'IAI Jepara ', NULL, NULL, NULL, 'Umpeg fasilitasi', 'surat-masuk-20200129_130219.pdf', NULL, 'Umpeg fasilitasi', NULL, NULL, '2020-01-27', 1, 218, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (229, '2020-01-27', '4', '005/0087/2020', '-', 'Pendampingan & penatalaksanaan penyakit menular kabupaten jepara ', '-', 'Balkesmas Pati', NULL, NULL, NULL, 'Seksi p2 hadiri', 'surat-masuk-20200129_130444.pdf', NULL, 'Seksi p2 hadiri', 'dampingi dan tindaklanjuti', NULL, '2020-01-27', 2, 219, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (230, '2020-01-22', '4', '15/PAFI-JPR/S-Extoi/I/2020', '-', 'undangan musyawarah reorginasisi PAFI Kabupaten jepara', '-', 'PAFI', NULL, NULL, NULL, 'Agenda kadin ', 'surat-masuk-20200129_134642.pdf', NULL, 'Agenda kadin ', NULL, NULL, '2020-01-27', 1, 220, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (231, '2020-01-27', '7', '050.13/0166', 'SEGERA', 'Tindaklanjut hasil musrenbang', '-', 'Kecamatan kembang', NULL, NULL, NULL, 'Subbag renkeu tindaklanjuti', 'surat-masuk-20200129_134954.pdf', NULL, 'Subbag renkeu tindaklanjuti', NULL, NULL, '2020-01-27', 3, 221, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (232, '2020-01-27', '4', '005/0166', 'SEGERA', 'Undangan Rapat Koordinasi penanganan masalah gizi dan pembahasan daraft surat keputusan tim dan pokja penceghan stunting', '-', 'BAPPEDA', NULL, NULL, NULL, 'Seksi Kesga Gizi Tindaklanjuti ', 'surat-masuk-20200129_135254.pdf', NULL, 'Seksi Kesga Gizi Tindaklanjuti ', 'Seksi Kesga Gizi Tindaklanjuti ', NULL, '2020-01-27', 1, 222, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (233, '2020-01-22', '12', 'KH.03.01/5.9/0145/2020', '-', 'IJIN PENELITIAN A.N. Reni hariyati', '-', 'POLTEKES SEMARANG', NULL, NULL, NULL, 'Subbag umpeg fasilitasi', 'surat-masuk-20200129_135537.pdf', NULL, 'Subbag umpeg fasilitasi', NULL, NULL, '2020-01-27', 1, 223, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (234, '2020-01-27', '4', '005/0173', 'SEGERA', 'Undangan rapat pembahasan akhir laporan RAD PG kabupaten jepara 2019', '1 satu lembar', 'BAPPEDA', NULL, NULL, NULL, 'Seksi kesga gizi tindaklanjuti', 'surat-masuk-20200129_140047.pdf', NULL, 'Seksi kesga gizi tindaklanjuti', 'Seksi kesga gizi tindaklanjuti', NULL, '2020-01-27', 3, 224, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (235, '2020-01-27', '20', '893.3/247/2020', 'SEGERA', 'Pelaksanaan ujian dinas dan UKPPI Tahun 2020 periode pertama', '-', 'SETDA', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200129_140406.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-01-27', 1, 225, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (236, '2020-01-27', '8', '440/44/1/2020', 'SEGERA', 'Pemberitahuan pemeriksaan IV A ', '-', 'UPTD Kembang', NULL, NULL, NULL, 'Seksi p2ptm tindaklanjuti', 'surat-masuk-20200129_140606.pdf', NULL, 'Seksi p2ptm tindaklanjuti', 'tindaklanjuti', NULL, '2020-01-27', 2, 226, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (237, '2020-01-28', '12', '072/029', '-', 'Surat rekomendasi a.n. SURTIHATI', '-', 'Balkesbangpol', NULL, NULL, NULL, 'Subbag umpeg fasilitasi ', 'surat-masuk-20200129_141027.pdf', NULL, 'Subbag umpeg fasilitasi ', NULL, NULL, '2020-01-28', 1, 227, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (238, '2019-10-01', '8', '01/KPMN/IX/2019', '-', 'Laporan bulanan data kesakitan  klinik', '-', 'Klinik pratama mardi nugroho ', NULL, NULL, NULL, 'SEKSI P2 TINDAKLANJUTI', 'surat-masuk-20200129_141224.pdf', NULL, 'SEKSI P2 TINDAKLANJUTI', 'arsipkan', NULL, '2020-01-29', 1, 228, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (239, '2020-01-28', '15', 'B-91/M.3.32/Dpp/01/2020', 'SEGERA', 'Penghentian pengawalan dan pengamanan proyek strategis pembagunan puskesmas pecangaan tahun anggaran 2019', '-', 'Kejaksaan negeri jepara ', NULL, NULL, NULL, 'Subbag umpeg fasilitasi ', 'surat-masuk-20200129_142828.pdf', NULL, 'Subbag umpeg fasilitasi ', NULL, NULL, '2020-01-27', 1, 229, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (240, '2020-07-01', '8', '481.1.2/0166', '-', 'Pemberitahuan penggratisan langganan majalah gelora bumi kartini', '-', 'Setda', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200130_081048.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-02-01', 1, 230, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (241, '2020-01-29', '19', '06/01-PWI-JEP/2020', '-', 'Bantuan kegiatan PWI Jepara ', '-', 'PWI', NULL, NULL, NULL, 'Subbag renkeu fasilitasi sesuai disposisi kadinkes', 'surat-masuk-20200130_081405.pdf', NULL, 'Subbag renkeu fasilitasi sesuai disposisi kadinkes', NULL, NULL, '2020-01-29', 3, 231, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (242, '2020-01-29', '13', '094/0347', 'SEGERA ', 'Revisi pembatasan perjalanan dinas TA. 2020', '-', 'SETDA ', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200130_081903.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-01-29', 1, 232, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (243, '2020-01-29', '4', '005/0378', '-', 'Rapat persiapan kegiatan roadshow didi kempot kangen sukun tanggal 5 maret 2020 ', '-', 'SETDA ', NULL, NULL, NULL, 'AGENDA KADIN', 'surat-masuk-20200130_082135.pdf', NULL, 'AGENDA KADIN', NULL, NULL, '2020-01-29', 1, 233, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (244, '2020-01-29', '8', '440/28', '-', 'Permohonan bantuan rehab pustu bungu', '3 ', 'UPTD MAYONG I', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200203_130913.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-02-29', 1, 234, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (245, '2020-01-27', '13', '800/028/1/2020', 'PENTING', 'Permohonan tenaga tambahan ', '1 satu lembar', 'UPTD JEPARA ', NULL, NULL, NULL, 'Seksi SDMK Tindaklanjuti', 'surat-masuk-20200203_131138.pdf', NULL, 'Seksi SDMK Tindaklanjuti', 'Tindaklanjuti', NULL, '2020-01-29', 3, 235, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (246, '2020-01-28', '4', '005/0385', 'PENTING', 'Undangan kegiatan louching wakaf uang oleh ketua badan wakaf indonesia pusat bapak prof. Ir. Dr. H. Muhammad Nuh, DEA.', '-', 'Setda Jepara', NULL, NULL, NULL, 'Plt. Sekdin Hadiri ', 'surat-masuk-20200203_131413.pdf', NULL, 'agendakan dan  ingatkan Plt. Sekdin Hadiri ', NULL, NULL, '2020-01-29', 1, 236, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (247, '2018-12-07', '8', '019/DWP/XII/2018', 'SEGERA', 'Permohonan alat tes darah ', '-', 'BPKAD', NULL, NULL, NULL, 'Seksi P2PTM TINDAKLANJUTI', 'surat-masuk-20200203_132013.pdf', NULL, 'Seksi P2PTM TINDAKLANJUTI', 'surat fisiknya belum sampai ke bidang dan suratnya tertanggal tahun 2018', NULL, '2020-01-29', 2, 237, 0, 0, 1);
INSERT INTO `tb_surat_masuk` VALUES (248, '2020-01-27', '8', '440/0001764', '-', 'Antisipasi Virus Corona di Jawa tengah ', '-', 'Setda prov', NULL, NULL, NULL, 'Kabid P2 Tindaklanjuti', 'surat-masuk-20200203_132156.pdf', NULL, 'Kabid P2 Tindaklanjuti', 'tindaklanjuti', NULL, '2020-01-29', 2, 238, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (249, '2020-01-28', '12', '094/SMK-AH/Mou/1/2020', '-', 'Kerjasama mou dengan DUDI Tempat Pkl', '2 lembar', 'SMK AL HUSAIN KELING', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200203_132433.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-01-29', 1, 239, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (250, '2020-01-16', '15', '440/07/p/I/2020', '-', 'Permohonan renovasi pengatapan bangunan UPTD Puskesmas Welahan II', '1 satu bendel', 'UPTD WELAHAN II', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200203_132711.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-01-29', 1, 240, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (251, '2020-01-28', '28', '061/0375', 'SEGERA', 'Data dukung lkjip', '-', 'Setda Jepara', NULL, NULL, NULL, 'Subbag Renkeu tindaklanjuti', 'surat-masuk-20200203_133012.pdf', NULL, 'Subbag Renkeu tindaklanjuti', NULL, NULL, '2020-01-29', 1, 241, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (252, '2020-01-29', '8', '440/0001912', '-', 'Dalam rangka peringatan hari kusta se dunia tahun 2020', '-', 'SETDA PROV', NULL, NULL, NULL, 'Agenda kadin hadir, kabid p2 dan kabid yankes dan sdk tindaklanjuti', 'surat-masuk-20200203_133704.pdf', NULL, 'Agenda kadin hadir, \r\nkabid p2 dan kabid yankes dan sdk tindaklanjuti', 'Agenda Kabid', NULL, '2020-01-29', 2, 242, 0, 0, 1);
INSERT INTO `tb_surat_masuk` VALUES (253, '0000-00-00', '4', '005/131', '-', 'Undangan apel bulan K3 TAHUN 2020', '-', 'DISKOP UKM NAKERTRANS', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200203_142453.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-01-29', 1, 243, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (254, '2020-01-30', '10', '462/193', 'SURAT REKOMENDASI MR. X', 'Surat rekomendasi  mr. x pakis aji', '-', 'Dinsospermades', NULL, NULL, NULL, 'Seksi yankes tindaklanjuti', 'surat-masuk-20200203_143332.pdf', NULL, 'Seksi yankes tindaklanjuti', 'Tindaklanjuti', NULL, '2020-01-30', 2, 244, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (255, '2020-01-30', '10', '462/193', 'SURAT REKOMENDASI MR. X', 'Surat rekomendasi  mr. x pakis aji', '-', 'Dinsospermades', NULL, NULL, NULL, 'Seksi yankes tindaklanjuti', 'surat-masuk-20200203_143335.pdf', NULL, 'Seksi yankes tindaklanjuti', 'Tindaklanjuti', NULL, '2020-01-30', 2, 245, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (256, '2020-01-29', '10', '462/180', '-', 'Surat rekomendasi ((batealit)', '-', 'Dinsospermades ', NULL, NULL, NULL, 'Seksi yankes tindaklanjuti', 'surat-masuk-20200203_143514.pdf', NULL, 'Seksi yankes tindaklanjuti', 'Tindaklanjuti', NULL, '2020-01-30', 2, 246, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (257, '2020-01-30', '4', '005/0376', 'PENTING', 'Penanatanganan perjanjian kinerja secara simbolis antara plt. bupati jepara  dengan perangkat daerah di lingkungan pemerintah kabupaten jepara ', '-', 'Setda Jepara', NULL, NULL, NULL, 'AGENDA KADIN', 'surat-masuk-20200203_143740.pdf', NULL, 'AGENDA KADIN', NULL, NULL, '2020-01-30', 1, 247, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (258, '2020-01-31', '8', 'B-56/M.3.32./Eku.2/01/2020', 'BIASA', 'Permintaan Bantuan memanggil saksi', '-', 'Kejaksaan negeri jepara', NULL, NULL, NULL, 'Seksi farmalkes tindaklanjuti dan tugaskan ', 'surat-masuk-20200203_144013.pdf', NULL, 'Seksi farmalkes tindaklanjuti dan tugaskan ', 'Tindaklanjuti', NULL, '2020-01-31', 3, 248, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (259, '2020-01-14', '15', '0113/UN7.9.7/TU/2020', '-', 'Pengadaan barang / jasa ', '-', 'Badan pengelola unit layanann pengadaan', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200203_144444.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-02-03', 1, 249, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (260, '2020-01-20', '15', '2101/P.S/LAPI/JATENG/1/2020', '-', 'Pelatihan dan ujian sertifikasi pengadaan barang/jasa pemerintah', '-', 'LAPI PUSAT', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200203_150038.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-01-31', 1, 250, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (261, '2020-01-27', '4', '005/096/2020', '-', 'Permohonan bantuan narasumber', '1 satu lembar', 'Uptd Mayong II', NULL, NULL, NULL, 'Seksi kesga tindaklanjuti', 'surat-masuk-20200203_151049.pdf', NULL, 'Seksi kesga tindaklanjuti', 'Seksi kesga tindaklanjuti', NULL, '2020-01-31', 3, 251, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (262, '2020-01-29', '15', '440/08/P/1/2020', '-', 'Usulan pejabat pengadaan barang & jasa untuk UPTD Puskemas welahan II', '-', 'UPTD WELAHAN II', NULL, NULL, NULL, 'Subbag umn=peg tindaklanjuti', 'surat-masuk-20200203_151437.pdf', NULL, 'Subbag umn=peg tindaklanjuti', NULL, NULL, '2020-01-31', 1, 252, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (263, '2020-01-30', '10', '-', '-', 'surat penawaran gethring', '-', 'Rumah atsiri Indonesia', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200203_151947.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-01-31', 1, 253, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (264, '2020-01-30', '10', '-', '-', 'Perkenalan produk kitchen equipment', '-', 'PT. PURA KENCANA', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200203_152211.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-01-31', 1, 254, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (265, '2020-01-20', '4', '09/Dynamic/jan/2020', '-', 'Undangan bimtek menyusun laporan keuangan BLUD ', '-', 'Dynamic Consulting Group', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200203_152443.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-01-31', 1, 255, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (266, '2020-01-20', '4', '10/Dyamic/Jan/2020', '-', 'Undangan bimtek komunikasi & Root cause analysis', '-', 'Dynamic Consulting Group', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200203_152712.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-01-31', 1, 256, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (267, '2020-02-03', '4', '005/770/1.2', '-', 'Undangan penanggulangan indera di jawa tengah ', '1 satu bendel', 'Dinkes Prov', NULL, NULL, NULL, 'Seksi P2ptm tindaklanjuti', 'surat-masuk-20200205_114307.pdf', NULL, 'Seksi P2ptm tindaklanjuti', 'tindaklanjuti dan hadiri', NULL, '2020-02-03', 2, 257, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (268, '2020-02-03', '29', '22/Sek.IDI.Jpr/II/2020', '-', 'Permohonan dispensasi mengikuti PIT V Idi WIL JATENG dari anggota IDI Jepara ', '-', 'IDI', NULL, NULL, NULL, 'subbag umpeg Tindaklanjuti', 'surat-masuk-20200205_114656.pdf', NULL, 'subbag umpeg Tindaklanjuti', NULL, NULL, '2020-02-03', 1, 258, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (269, '2020-02-03', '8', '440/27/1/2020', '-', 'Pengantar mendapatkan dokumen anjab dan ABK', '-', 'UPTD KALINYAMATAN ', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200205_114940.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-02-03', 1, 259, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (270, '2020-02-03', '4', '005/0508', 'PENTING', 'Rapat pembentukan hari jadijepara ke 471 tahun 2020', '-', 'setda ', NULL, NULL, NULL, 'Seksi yankes hadiri', 'surat-masuk-20200205_115133.pdf', NULL, 'Seksi yankes hadiri', 'Tindaklanjuti', NULL, '2020-02-03', 2, 260, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (271, '2020-02-03', '10', '3167/ak.02/g1/2019', '-', 'Distribusi majalah jurnal kel;uarga ', '-', 'Distribusi majalah jurnal keluarga', NULL, NULL, NULL, 'Seksikessga UMP', 'surat-masuk-20200205_121254.pdf', NULL, 'Seksikessga UMP', NULL, NULL, '2020-02-03', 1, 261, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (272, '2020-02-03', '15', '3012/P.S/LAPI/.JATENG/XII/2019', '-', 'Pelatihan dan ujian sertifiksi pengadaan barang / jasa ', '-', 'LAPI', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200205_121714.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-02-03', 1, 262, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (273, '2020-02-03', '4', '134/ARSADA/Umum/1/2020', '-', 'Undangan pelatihan implementasi PPK-BLUD', '2 Berkas', 'ARSADA', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200205_122231.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-02-03', 1, 263, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (274, '2020-02-03', '19', '021/BAZNAS-JPR/1/2020', '-', 'Pengelolaan dana feedback', '-', 'BAZNAS ', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200205_122740.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-02-03', 1, 264, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (275, '2020-01-31', '14', '050/113', '-', 'Permohonan data perencanaan pembangunan daerah', '1 satu berkas', 'Diskominfo', NULL, NULL, NULL, 'Subbag renkeu tindaklanjuti', 'surat-masuk-20200205_123400.pdf', NULL, 'Subbag renkeu tindaklanjuti', NULL, NULL, '2020-02-03', 3, 265, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (276, '2020-02-01', '8', '440/   /P/II/2020', '-', 'Permohonan kaji banding ke puskesmas gunung pati kota semarang', '-', 'UPTD WELAHAN II', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200205_124200.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-02-03', 1, 266, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (277, '2020-02-03', '15', '445.4/066', '-', 'Permohonan rehab pustu papasan ', '-', 'UPTD Bangsri 2', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200205_125247.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-02-03', 1, 267, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (278, '2020-02-03', '8', '440/08/P/I/2020', '-', 'Usulan pejabat pebgadaan barang & jasa untuk UPTD welahan II', '-', 'UPTD WELAHAN II', NULL, NULL, NULL, 'Subbag umpeg Tindaklanjuti', 'surat-masuk-20200205_125628.pdf', NULL, 'Subbag umpeg Tindaklanjuti', NULL, NULL, '2020-02-03', 1, 268, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (279, '2020-02-03', '4', '005/061/1.1', '-', 'Undangan pertemuan penguatan perencanaan kegiatan bersumber APBN', '-', 'Dinkes PROV', NULL, NULL, NULL, 'Subbag renkeu hadiri ', 'surat-masuk-20200205_125851.pdf', NULL, 'Subbag renkeu hadiri ', NULL, NULL, '2020-02-03', 1, 269, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (280, '2020-02-03', '4', '005/254', '-', 'Rapat koordinasi terkait dengan tupoksi mitra komisi C', '-', 'DPRD', NULL, NULL, NULL, 'Seksi yankes dan Subbag renkeu siapkan bahan dan dampingi', 'surat-masuk-20200205_130120.pdf', NULL, 'Seksi yankes dan Subbag renkeu siapkan bahan dan dampingi', 'Tindaklanjuti', NULL, '2020-02-03', 3, 270, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (281, '2020-02-03', '4', '005/0518', 'SEGERA', 'Undangan bimbingan teknis input srencana kegiatan tahun anggaran 2020 ke dalam sirup ', '-', 'SETDA', NULL, NULL, NULL, 'Subbag renkeu hadiri', 'surat-masuk-20200206_130946.pdf', NULL, 'Subbag renkeu hadiri', NULL, NULL, '2020-02-03', 1, 271, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (282, '2020-01-30', '4', '890/0138/2020', 'SEGERA', 'Pemberitahuan permohonan fasilitasi pelatihan perawatan kesehatan masyarakat', '-', 'Balkesmas Pati', NULL, NULL, NULL, 'Seksi promkes tindaklanjuti', 'surat-masuk-20200206_132457.pdf', NULL, 'Seksi promkes tindaklanjuti', 'Seksi promkes tindaklanjuti', NULL, '2020-02-03', 1, 272, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (283, '2020-01-27', '8', '441.91/792/5', 'PENTING', 'Pelaksanaan jamkesda Provinsi Jawa Tengah yang terintegrasi dengan JKN/KIS Tahun 2020', '-', 'Balkesmas pati', NULL, NULL, NULL, 'Seksi yankes tindaklanjuti', 'surat-masuk-20200206_132836.pdf', NULL, 'Seksi yankes tindaklanjuti', NULL, NULL, '2020-02-03', 1, 273, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (284, '2020-01-28', '12', '892.2/0115/2020', 'SEGERA', 'Pemanggilan Peserta Pelatihan ', '-', 'Dinkes prov', NULL, NULL, NULL, 'Seksi SDMK Tindaklanjuti', 'surat-masuk-20200206_133041.pdf', NULL, 'Seksi SDMK Tindaklanjuti', 'Tindaklanjuti', NULL, '2020-02-03', 3, 274, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (285, '2020-01-03', '4', '005/0522', 'PENTING', 'Undangan Rapat rekonsialisasi danan bagi hasil cukai hasil tembakau (dbhcht) tahun anggaran 2020', '-', 'Setda', NULL, NULL, NULL, 'Subbag renkeu hadiri', 'surat-masuk-20200206_135452.pdf', NULL, 'Subbag renkeu hadiri', NULL, NULL, '2020-02-03', 3, 275, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (286, '2020-01-27', '7', '050.1/036', '-', 'Tindaklanjuti hasil Musrenbang RKPD 2021', '-', 'kECAMATAN kEMBANG', NULL, NULL, NULL, 'Subbag renkeu tindaklanjuti', 'surat-masuk-20200206_135911.pdf', NULL, 'Subbag renkeu tindaklanjuti', NULL, NULL, '2020-02-03', 1, 276, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (287, '2020-01-31', '4', '005/0535', '-', 'Undangan rapat kordinasi penyelenggaran program jaminan kesehatan daerah ( jamkesda)', '-', 'SETDA', NULL, NULL, NULL, 'Seksi yankes hadiri', 'surat-masuk-20200206_140201.pdf', NULL, 'Seksi yankes hadiri', 'tindaklanjuti', NULL, '2020-02-03', 2, 277, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (288, '2020-02-03', '13', '800/   /   /2020', '-', 'Permohonan foging focus', '-', 'UPTD Kedung II', NULL, NULL, NULL, 'SEKSI P2PM tindaklanjuti', 'surat-masuk-20200206_140416.pdf', NULL, 'SEKSI P2PM tindaklanjuti', NULL, NULL, '2020-02-03', 1, 278, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (289, '2020-02-03', '4', '16/ADINKES-JTG/II/2020', 'PENTING', 'Dalam rangka evaluasi program pembangunan kesehatan di jawa tengah ', '1 satu berkas', 'ADINKES', NULL, NULL, NULL, 'SUBBAG UMPEG AGENDA KADIN', 'surat-masuk-20200206_140659.pdf', NULL, 'SUBBAG UMPEG AGENDA KADIN', NULL, NULL, '2020-02-03', 1, 279, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (290, '2020-02-04', '13', '800/046/1/2020', '-', 'Berita acara pemeriksaan sdr Puji teguh H', '-', 'UPTD MLONGGO', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200206_141009.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-02-04', 1, 280, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (291, '2020-02-04', '13', '800/103/II/2020', '-', 'Laporan mekanisme kepegawaian ', '-', 'UPTD DONOROJO', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200206_141339.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-02-04', 1, 281, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (292, '2020-02-04', '16', '01/RK-IKL/II/20', '-', 'pENAWARAN IKLAN HUT JEPARA KE 471', '-', 'RADAR KUDUS ', NULL, NULL, NULL, 'ubbag renkeu tindaklanjuti', 'surat-masuk-20200206_141544.pdf', NULL, 'ubbag renkeu tindaklanjuti', NULL, NULL, '2020-02-04', 3, 282, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (293, '2020-02-03', '4', '005/045', '-', 'NDANGAN RAPAT KOORDINASI LINTAS SEKTORAL KECAMATAN BATEALIT', '-', 'Kecamatan Batealit', NULL, NULL, NULL, 'SUBBAG UMPEG AGENDA KADIN', 'surat-masuk-20200206_141925.pdf', NULL, 'SUBBAG UMPEG AGENDA KADIN', NULL, NULL, '2020-02-04', 1, 283, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (294, '2020-02-04', '30', '640/106/II/2020', 'PENTING', 'Usulan pembangunan pagar keliling puskesmas generator puskesmas ', '-', 'UPTD DONOROJO', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200206_143418.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-02-04', 1, 284, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (295, '2020-02-03', '8', '440/30/02/2020', '-', 'Permohonan bantuan pinjam alat CRYO Therapy', '-', 'Uptd Kalinyamatan', NULL, NULL, NULL, 'bidang p2 tindaklanjuti', 'surat-masuk-20200206_144103.pdf', NULL, 'bidang p2 tindaklanjuti', NULL, NULL, '2020-02-04', 1, 285, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (296, '2020-02-04', '8', '440/31/II/2020', '-', 'Permohonan narasumber pendampingan akreditasi ', '-', 'UPTD Kalinyamatan', NULL, NULL, NULL, 'Kabid yankes dan sdk TL', 'surat-masuk-20200206_152110.pdf', NULL, 'Kabid yankes dan sdk TL', 'tindaklanjuti', NULL, '2020-02-04', 2, 286, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (297, '2020-02-04', '8', '440/32/II/2020', '-', 'Permohonan kaji banding dan pendampingan kaji banding', '-', 'UPTD Kalinyamtan ', NULL, NULL, NULL, 'Subbag Umpeg Tindaklanjuti', 'surat-masuk-20200206_152944.pdf', NULL, 'Subbag Umpeg Tindaklanjuti', NULL, NULL, '2020-02-04', 1, 287, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (298, '2020-02-04', NULL, '441/04', '-', 'Permohonan bantuan untuk pemberdayaan kader kesehatan ', '-', 'Kecamatan Mayong', NULL, NULL, NULL, 'Kabid kesmas TL', 'surat-masuk-20200206_155215.pdf', NULL, NULL, NULL, NULL, '2020-02-04', 0, 288, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (299, '2020-02-04', '8', '441/04', '-', 'Permohonan bantuan untuk pemberdayaan kader kesehatan', '-', 'Kecamatan Mayong', NULL, NULL, NULL, 'Kabid kesmas TL', 'surat-masuk-20200206_155421.pdf', NULL, 'Kabid kesmas TL\r\nSubag Umum Tembusan  DKK', 'Tembusan', NULL, '2020-02-04', 2, 289, 0, 0, 1);
INSERT INTO `tb_surat_masuk` VALUES (300, '2020-01-18', '10', '1231/CES/MKT/1/2020', '-', 'Penawaran In House Training', '-', 'Citra Emas', NULL, NULL, NULL, 'Subbag Umpeg UMP', 'surat-masuk-20200206_155646.pdf', NULL, 'Subbag Umpeg UMP', NULL, NULL, '2020-02-04', 1, 290, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (301, '2020-02-01', '8', '01/KPMN/1/2020', '-', 'Laporan bulanan data kesakitan  klinik', '-', 'Klinik pratama mardi nugroho', NULL, NULL, NULL, 'Seksi p2 tindaklanjuti', 'surat-masuk-20200206_155928.pdf', NULL, 'Seksi p2 tindaklanjuti', NULL, NULL, '2020-02-04', 1, 291, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (302, '2019-11-11', '4', '025/bBLU/BIMTEK/IX/2019', '-', 'Undangan Bimtek menyusun laporan keuangan BLUD Puskesmas secara SIA', '5 Lembar', 'ADINKES', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200206_160210.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-02-04', 1, 292, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (303, '2020-01-30', '4', '005/0448/1/2020', '-', 'Permohonan narasumber UBM b', '-', 'UPTD Pecangaan ', NULL, NULL, NULL, 'Seksi Ptptm Tindaklanjuti', 'surat-masuk-20200206_160655.pdf', NULL, 'Seksi Ptptm Tindaklanjuti', NULL, NULL, '2020-02-04', 1, 293, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (304, '2020-02-04', '4', '005/0148/2020', '-', 'Undangan rapat pembentukan panitia dan pembahasan rencana kegiatan ', '-', 'DP3AP2KB', NULL, NULL, NULL, 'Subbag umpeg HADIRI', 'surat-masuk-20200206_160919.pdf', NULL, 'Subbag umpeg HADIRI', NULL, NULL, '2020-02-04', 1, 294, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (305, '2020-02-03', '7', '050/0194', '-', 'Rencana aksi daerah tujuan pembangunan berkelanjutan kabupaten jepara tahun 2019-2022', '-', 'BAPPEDA', NULL, NULL, NULL, 'Subbag renkeu UMP', 'surat-masuk-20200206_161114.pdf', NULL, 'Subbag renkeu UMP', NULL, NULL, '2020-02-04', 1, 295, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (306, '2020-02-01', '8', '443.5/145', 'PENTING', 'Pemberitahuan kondisi sampah medis yang menumpuk', '-', 'UPTD Pakis Aji', NULL, NULL, NULL, 'Seksi kesling segera tindaklanjuti', 'surat-masuk-20200206_161305.pdf', NULL, 'Seksi kesling segera tindaklanjuti', 'Seksi kesling segera tindaklanjuti', NULL, '2020-02-04', 3, 296, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (307, '2020-02-03', '12', 'B/1599/UN37.1.6/LT/2020', '-', 'Permohonan ijin obeservasi sdri. ulfa nor A', '-', 'UNNES', NULL, NULL, NULL, 'Subbag umpeg fasilitasi', 'surat-masuk-20200206_161507.pdf', NULL, 'ubbag umpeg fasilitasi', NULL, NULL, '2020-02-04', 1, 297, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (308, '2020-02-04', '4', '005/269', 'SEGERA', 'Menerima kunjugan kerja DPRD Kulon Progo Komisi II Bidang ekonomi dan keuangan ', '-', 'DPRD JEPARA', NULL, NULL, NULL, 'Subbag umpeg agenda kadinkes', 'surat-masuk-20200206_161713.pdf', NULL, 'Subbag umpeg agenda kadinkes', NULL, NULL, '2020-02-04', 1, 298, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (309, '2020-01-27', '4', '005/389/2', '-', 'Undangan evaluasi program kefarmasian ', '-', 'Dinkes provinsi jawa tengah', NULL, NULL, NULL, 'Kabid yankes TL', 'surat-masuk-20200206_161909.pdf', NULL, 'Kabid yankes TL', 'Tindak lanjuti', NULL, '2020-02-04', 2, 299, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (310, '2020-01-31', '8', '441.91/851/5', 'SEGERA', 'Tim monev JKN Kab/Kota Tahun 2020', '1 satu lembar', 'Dinkes provinsi jawa tengah', NULL, NULL, NULL, 'Seksi yankes tindaklanjuti', 'surat-masuk-20200206_162114.pdf', NULL, 'Seksi yankes tindaklanjuti', 'tindaklanjuti', NULL, '2020-02-04', 2, 300, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (311, '2020-02-02', '8', 'JT/12-002/A/DPC-GERINDA/JPR/2019', '-', 'Permohonan kerjasama pengobatan gratis', '-', 'Gerinda ', NULL, NULL, NULL, 'Seksi yankes tindaklanjuti', 'surat-masuk-20200206_162323.pdf', NULL, 'Seksi yankes tindaklanjuti', 'tindaklanjuti', NULL, '2020-02-04', 2, 301, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (312, '2020-02-04', '7', '050/0575', 'PENTING', 'Permohonan personil admin simpok OPD tahun ANGGARAN 2020', '-', 'SETDA', NULL, NULL, NULL, 'Subbag renkeu Tindak lanjuti', 'surat-masuk-20200206_162531.pdf', NULL, 'Subbag renkeu Tindak lanjuti', NULL, NULL, '2020-02-04', 3, 302, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (313, '2020-01-28', '19', 'PR.03.01/II/104/2020', '-', 'Permintaan Usulan Dana Jaminan Persalinan Jampersal ta 2021', '-', 'Kemenkes RI', NULL, NULL, NULL, 'Kesga gizi tindaklanjuti', 'surat-masuk-20200206_165013.pdf', NULL, 'Kesga gizi tindaklanjuti', 'Kesga gizi tindaklanjuti', NULL, '2020-02-05', 2, 303, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (314, '2020-02-05', '4', '09/MWC.NU.MYG/F/II/2020', '-', 'Permohonan audiensi dan presentasi recana pembangunan RSI NU Mayong', '-', 'Kecamatan Mayong', NULL, NULL, NULL, 'Subbag umpeg agendakan untuk kadinkes hari senin, 10 februari 2020 jam 07.30 ', 'surat-masuk-20200206_165322.pdf', NULL, 'Subbag umpeg agendakan untuk kadinkes hari senin, 10 februari 2020 jam 07.30 ', NULL, NULL, '2020-02-05', 1, 304, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (315, '2020-01-30', '19', '626/0524', 'SEGERA', 'Pengisian LHKPN', '-', 'SETDA ', NULL, NULL, NULL, 'Subbag umpeg Agendakan untuk kadinkes ', 'surat-masuk-20200206_165814.pdf', NULL, 'Subbag umpeg Agendakan untuk kadinkes ', NULL, NULL, '2020-02-05', 1, 305, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (316, '2020-02-04', '4', '005/302', 'PENTING', 'Undagan menerima SK sdr M rian ardi W', '-', 'BKD JEPARA', NULL, NULL, NULL, 'Subbag umpegtindak lanjuti/Koordinasi', 'surat-masuk-20200206_170123.pdf', NULL, 'Subbag umpegtindak lanjuti/Koordinasi', NULL, NULL, '2020-02-05', 1, 306, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (317, '2020-01-28', '8', '440/45/1/2020', '-', 'Permohonan pelaksanan foging', '-', 'UPTD Keling II', NULL, NULL, NULL, 'Seksi p2 fasilitasi', 'surat-masuk-20200206_170430.pdf', NULL, 'Seksi p2 fasilitasi', NULL, NULL, '2020-02-05', 1, 307, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (318, '2020-01-31', '4', '005/0580', 'SEGERA', 'Undangan rapat penetapan status kebencanaan ', '-', 'SETDA', NULL, NULL, NULL, 'Subbag umpeg agendakan untuk kadinkes ', 'surat-masuk-20200206_170851.pdf', NULL, 'Subbag umpeg agendakan untuk kadinkes ', NULL, NULL, '2020-02-05', 1, 308, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (319, '2020-01-31', '8', '500/017', 'SEGERA', 'Permohonan fogging', '-', 'Petinggi kuwasen', NULL, NULL, NULL, 'Seksi p2 tfasilitasi', 'surat-masuk-20200206_171054.pdf', NULL, 'Seksi p2 tfasilitasi', NULL, NULL, '2020-02-05', 1, 309, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (320, '2020-02-03', '4', '005/0590', 'SEGERA', 'Rapat Koordinasi audit intren BPK RI Perwakilanprovinsi jawa tengah ', '-', 'SETDA ', NULL, NULL, NULL, 'Subbag renkeu siapkan bahan2 agenda kadinkes ', 'surat-masuk-20200207_081036.pdf', NULL, 'Subbag renkeu siapkan bahan2 agenda kadinkes ', NULL, NULL, '2020-02-06', 3, 310, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (321, '2020-01-09', '15', '252/Pusdiklat/01/2020', '-', 'Pelatihan pengadaan barang jasa/jasa tingkat dasar angkatan V', '-', 'LKPP', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200207_081247.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-02-06', 1, 311, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (322, '2020-01-30', '8', '440/33', 'SEGERA', 'Rujukun audit internal ', '-', 'UPTD Mayong I', NULL, NULL, NULL, 'Bidang yankes dan sdk tindaklanjuti', 'surat-masuk-20200207_082007.pdf', NULL, 'Bidang yankes dan sdk tindaklanjuti', 'tindaklanjuti', NULL, '2020-02-06', 2, 312, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (323, '2020-02-06', '4', '005/785/1.2', '-', 'Ralat undangan penanggulangan indera ', '-', 'Dinkes provinsi jawa tengah', NULL, NULL, NULL, 'Seksi promkes dengan seksi ptm koordinasi ', 'surat-masuk-20200207_082159.pdf', NULL, 'Seksi promkes dengan seksi ptm koordinasi ', 'Seksi promkes dengan seksi ptm koordinasi ', NULL, '2020-02-06', 2, 313, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (324, '2020-02-03', '8', '-', '-', 'Permohonan data stunting, kanker payudara, data jumlah pemakai BPJS ', '-', 'DPR RI', NULL, NULL, NULL, 'Seksi p2pm dan seksi yankes tindaklanjuti', 'surat-masuk-20200207_082539.pdf', NULL, 'Seksi p2pm dan seksi yankes tindaklanjuti', NULL, NULL, '2020-02-06', 1, 314, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (325, '2020-02-03', '13', '8/00/092/2020', '-', 'Daftar usulan pejabat fungsional 2020', '-', 'RSUD RA KARTINI', NULL, NULL, NULL, 'Seksi sdmk tindaklanjuti', 'surat-masuk-20200207_083419.pdf', NULL, 'Seksi sdmk tindaklanjuti', 'tindaklanjuti', NULL, '2020-02-06', 2, 315, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (326, '2020-01-27', '10', 'HM.02.00/002/KSMG/I/2020', '-', 'Prakiraan hujan nulan februari 2020', '-', 'BMKG', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200207_085003.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-02-06', 1, 316, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (327, '2020-01-08', '10', '003/CP-JY/I/2020', '-', 'Perkenalan perusahaan ', '1 satu berkas', 'CV. JAYADI', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200210_142809.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-02-10', 1, 317, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (328, '2020-01-05', '12', '4210/D-7/UMK/II/2020', '-', 'Surat permohonan ijin ', '1 satu bendel', 'UK KUDUS', NULL, NULL, NULL, 'Subbag umpeg fasilitasi', 'surat-masuk-20200210_143023.pdf', NULL, 'Subbag umpeg fasilitasi', NULL, NULL, '2020-02-10', 1, 318, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (329, '2020-01-28', '10', 'UM.01.05/1171/2020', '-', 'Surat pengantar kalender 2020', '-', 'Kemenkes RI', NULL, NULL, NULL, 'Subbag umpeg UMP', 'surat-masuk-20200210_143245.pdf', NULL, 'Subbag umpeg UMP', NULL, NULL, '2020-02-10', 1, 319, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (330, '2020-02-03', '10', '060/0591', 'SEGERA', 'Permohonan data pelayanan publik', '-', 'SETDA', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200210_143413.pdf', NULL, 'Subbag renkeu tindaklanjuti', NULL, NULL, '2020-02-10', 1, 320, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (331, '2020-02-05', '4', '893.3/311/2020', 'SEGERA', 'Undangan penutupan pelatihan teknis pengawasan kearsipan internal tahun 2020', '-', 'SETDA', NULL, NULL, NULL, 'PLT. sekdin hadiri \r\nSubbag umpeg ingatkan', 'surat-masuk-20200210_143614.pdf', NULL, 'PLT. sekdin hadiri \r\nSubbag umpeg ingatkan', NULL, NULL, '2020-02-10', 1, 321, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (332, '2020-02-03', '4', '005/643', 'PENTING', 'Undagan permohonan ijin pelepasan hak dan pengadaan tanah bengkok petinggi pringtulis kecamatan nalumsari untuk pengembangan puskesmas nalumsari', '-', 'Setda', NULL, NULL, NULL, 'agenda kadin Subbag umpeg ingatkan kadinkes ', 'surat-masuk-20200210_143951.pdf', NULL, 'agenda kadin Subbag umpeg ingatkan kadinkes ', NULL, NULL, '2020-02-10', 1, 322, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (333, '2020-02-06', '8', '440/037/ii/2020', 'PENTING', 'Permohonan ijin pengembangan SDM', '-', 'UPTD Jepara ', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200210_144256.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-02-10', 1, 323, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (334, '2020-02-07', '8', '440/36/ii/2020', '-', 'Perubahan jadwal kaji banding ke pusk sibela Surakarta', '-', 'UPTD Kalinyamatan', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200210_144512.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-02-10', 1, 324, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (335, '2020-02-06', '4', '005/0626', 'PENTING', 'Undangan pencanangaan pelaksanaan sensus penduduk tahun 2020 ', '-', 'SETDA', NULL, NULL, NULL, 'Subbag umpeg ingatkan plt. sekdin', 'surat-masuk-20200210_144920.pdf', NULL, 'Subbag umpeg ingatkan plt. sekdin', NULL, NULL, '2020-02-10', 1, 325, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (336, '2020-02-05', '8', '440/101/II/2020', 'PENTING', 'Permohonan fogging ', '-', 'UPTD MLONGGO', NULL, NULL, NULL, 'Seksi P2PM Tindaklanjuti', 'surat-masuk-20200210_145124.pdf', NULL, 'Seksi P2PM Tindaklanjuti', NULL, NULL, '2020-02-10', 1, 326, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (337, '2020-02-06', '8', '009/gow-jpr/ii/2020', '-', 'Rencana pelayanan skrining ca cervic dan sadanis', '-', 'GOW', NULL, NULL, NULL, 'Kabid p2 tindaklanjuti', 'surat-masuk-20200210_145312.pdf', NULL, 'Kabid p2 tindaklanjuti', NULL, NULL, '2020-02-10', 1, 327, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (338, '2020-02-07', '4', '005/069/II/2020', '-', 'Undangan linta sektor tinkat kecamatan kedung', '-', 'Kecmatan kedung ', NULL, NULL, NULL, 'Subbag renkeu tindaklanjuti', 'surat-masuk-20200210_145551.pdf', NULL, 'Subbag renkeu tindaklanjuti', NULL, NULL, '2020-02-10', 3, 328, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (339, '2020-02-09', '8', '228/C/PCMNU/Jpr/II/2020', '-', 'Pelayanan IV A', '-', 'Muslimat NU', NULL, NULL, NULL, 'Kabid yankes tindaklanjuti', 'surat-masuk-20200210_145743.pdf', NULL, 'Kabid yankes tindaklanjuti', NULL, NULL, '2020-02-10', 1, 329, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (340, '2020-02-04', '4', '005/272', 'SEGERA', 'Pengucapan sumpah janji anggota DPRD Kabupaten Jepara ', '-', 'DPRD', NULL, NULL, NULL, 'PLT. SEKDIN HADIRI subbag umpeg ingatkan ', 'surat-masuk-20200210_145928.pdf', NULL, 'PLT. SEKDIN HADIRI subbag umpeg ingatkan ', NULL, NULL, '2020-02-10', 1, 330, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (341, '2020-02-05', '8', '441.9/245', '-', 'Penetapan hasil verifikasi PNI APBD Kab. Jepara', '-', 'Dinsospermades', NULL, NULL, NULL, 'Seksiyankes tindaklanjuti', 'surat-masuk-20200211_100852.pdf', NULL, 'Seksiyankes tindaklanjuti', 'Tindaklanjuti', NULL, '2020-02-11', 2, 331, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (342, '2020-02-04', '8', '443.24/371/3', 'SEGERA', 'Tindaklanjut hasil pertemuan workshop tim pelatih STB', '-', 'Dinkes provinsi jawa tengah', NULL, NULL, NULL, 'kabid p2 tindaklanjuti', 'surat-masuk-20200211_101040.pdf', NULL, 'kabid p2 tindaklanjuti', NULL, NULL, '2020-02-11', 1, 332, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (343, '2020-02-07', '4', '005/0053', '', 'Undangan Sosialisasi pelaksanaan PMK No. 130/PMK.07/2019 DAN pmk No. 205PMK.07/2019', '-', 'Setda ', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200211_101346.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-02-11', 1, 333, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (344, '2020-01-30', '4', '005/269/2020', '-', 'Permohonan Sambutan ', '-', 'Dinkes Jepara', NULL, NULL, NULL, 'Seksi p2 tindaklanjuti', 'surat-masuk-20200211_101927.pdf', NULL, 'Seksi p2 tindaklanjuti', NULL, NULL, '2020-02-11', 1, 334, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (345, '2020-02-04', '13', '800/148', '-', 'Pemberitahuan ', '-', 'UPTD Pakis aji', NULL, NULL, NULL, 'Seksi yankes tindaklanjuti', 'surat-masuk-20200211_102129.pdf', NULL, 'Seksi yankes tindaklanjuti', 'Tindaklanjuti', NULL, '2020-02-11', 2, 335, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (346, '2020-02-08', '4', '005/187/II/2020', 'PENTING', 'Undangan permohonan kaji banding dari puskesmas gondosari', '1', 'UPTD KEDUNG II', NULL, NULL, NULL, 'Agenda kadin ', 'surat-masuk-20200211_103435.pdf', NULL, 'Agenda kadin ', NULL, NULL, '2020-02-11', 1, 336, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (347, '2020-02-07', '4', '005/0662', '-', 'Undangan sosialisasi pengadaan barang jasa dan penatausahaan keuangan tahun 2020', 'Segera ', 'SETDA', NULL, NULL, NULL, 'Subbag umpeg tindak lanjuti ', 'surat-masuk-20200211_103740.pdf', NULL, 'Subbag umpeg tindak lanjuti ', NULL, NULL, '2020-02-11', 1, 337, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (348, '2020-02-10', '15', '090.1/0668/2020', 'PENTING', 'Pewrsonil TTPP DPUPR Kabupaten Jepara ', '-', 'DPUPR', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200211_104201.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-02-11', 1, 338, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (349, '2020-02-11', '4', '005/0248', '-', 'Undangan pendampingan penyempurnaan inovasi daerah', '1 satu bendel', 'BAPPEDA', NULL, NULL, NULL, 'Agenda kadin', 'surat-masuk-20200212_130628.pdf', NULL, 'Agenda kadin', NULL, NULL, '2020-02-12', 1, 339, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (350, '2020-01-30', '12', '78/KH.UL/PM/I/2020', '-', 'Permohonan study pendahuluan untuk survey pengambilan data sdr siti zumroh', '-', 'STIKES Semarang', NULL, NULL, NULL, 'Subbag umpeg fasilitasi ', 'surat-masuk-20200212_130814.pdf', NULL, 'Subbag umpeg fasilitasi ', NULL, NULL, '2020-02-12', 1, 340, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (351, '2020-02-10', '13', '865.1/422', 'PENTING', 'Panggilan Yunita Sintawati ', '-', 'BKD JEPARA', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti koordinasikan dengan YBS', 'surat-masuk-20200212_130958.pdf', NULL, 'Subbag umpeg tindaklanjuti koordinasikan dengan YBS', NULL, NULL, '2020-02-12', 1, 341, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (352, '2020-02-10', '29', '032/Org/II/2020', '-', 'Permohonan dispensasi', '1 satu bendel', 'PMI', NULL, NULL, NULL, 'Subbag umpeg fasilitasi', 'surat-masuk-20200212_131156.pdf', NULL, 'Subbag umpeg fasilitasi', NULL, NULL, '2020-02-12', 1, 342, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (353, '2020-02-10', '8', '440/II/2020', '-', 'Laporan Mutu klinis dan keselamatan pasien ', '-', 'UPTD KEDUNG I', NULL, NULL, NULL, 'Kabid Yankes dan sdk tindaklanjuti', 'surat-masuk-20200212_131401.pdf', NULL, 'Kabid Yankes dan sdk tindaklanjuti', NULL, NULL, '2020-02-12', 1, 343, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (354, '2020-02-01', '13', '800/01/II/2020', '-', 'Laporan mekanisme kepegawaian', '-', 'UPTD batealit', NULL, NULL, NULL, 'Subbag umpeg tindaklanjuti', 'surat-masuk-20200212_131533.pdf', NULL, 'Subbag umpeg tindaklanjuti', NULL, NULL, '2020-02-12', 1, 344, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (355, '2020-02-10', '8', '440/01/II/BOK/2020', '-', 'Permohonan narasumber FKD', '-', 'UPTD Pakis aji', NULL, NULL, NULL, 'Seksi promkes tindaklanjuti', 'surat-masuk-20200212_131740.pdf', NULL, 'Seksi promkes tindaklanjuti', 'Seksi promkes tindaklanjuti', NULL, '2020-02-12', 2, 345, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (356, '2020-02-11', '4', '005/4936', '-', 'Undangan temu teknik pelaksanaan POPDA Se karisedenan pati', '-', 'Disdikpora ', NULL, NULL, NULL, 'Seksi yankes hadiri', 'surat-masuk-20200212_131929.pdf', NULL, 'Seksi yankes hadiri', NULL, NULL, '2020-02-12', 1, 346, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (357, '2020-02-05', '8', '440/4903', '-', 'Permohonan bantuan tenaga medis', '-', 'Disdikpora ', NULL, NULL, NULL, 'Seksi yankes tindaklanjuti', 'surat-masuk-20200212_132104.pdf', NULL, 'Seksi yankes tindaklanjuti', NULL, NULL, '2020-02-12', 1, 347, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (358, '2020-01-31', '4', '005/0509', '-', 'Daftar usulanpejabat fungsional yang akan mengikuti uji kompetensi kenaikanjenjang jabatan fungsioanl tahun 2020', '-', 'UPTD Mayong II', NULL, NULL, NULL, 'SDMK Tindaklanjuti', 'surat-masuk-20200213_101130.pdf', NULL, 'SDMK Tindaklanjuti', NULL, NULL, '2020-02-13', 1, 348, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (359, '2020-02-11', '4', '005/0256', '-', 'Undangan rapat pembahasan persiapanpenyusunan materi paparan musrenbangwil', '-', 'Bapppeda', NULL, NULL, NULL, 'Subbag renkeu hadiri ', 'surat-masuk-20200213_101603.pdf', NULL, 'Subbag renkeu hadiri ', NULL, NULL, '2020-02-13', 1, 349, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (360, '2020-02-11', '13', '800/95/II/2020', '-', 'Pengeriman daftar peserta ukom tahun 2020 puskesmas kembang', '-', 'UPTD Kembang', NULL, NULL, NULL, 'seksi sdmk tindaklanjuti', 'surat-masuk-20200213_102009.pdf', NULL, 'seksi sdmk tindaklanjuti', NULL, NULL, '2020-02-13', 1, 350, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (361, '2020-02-10', '4', '005/1119/4', 'SEGERA', 'Evaluasi Pelaksanaan STBM 2019dan persiapan kegiatan STBM dan Pamsimas tahun 2020', '-', 'Dinkes prov', NULL, NULL, NULL, 'Seksi kesling hadiri', 'surat-masuk-20200213_102536.pdf', NULL, 'Seksi kesling hadiri', 'Seksi kesling hadiri', NULL, '2020-02-13', 2, 351, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (362, '2020-02-10', '4', '005/062', 'SEGERA', 'Undangan lokakarya mini tribulanan yang pertama', '-', 'Kecamatan Kembang', NULL, NULL, NULL, 'Seksi SDMK hadiri', 'surat-masuk-20200213_103029.pdf', NULL, 'Seksi SDMK hadiri', NULL, NULL, '2020-02-13', 1, 352, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (363, '2020-02-10', '8', '440/064', 'SEGERA', 'Permohonan Bimbingan', '-', 'Kecamatan kembang', NULL, NULL, NULL, 'Seksi SDMK tindak lanjuti', 'surat-masuk-20200213_103501.pdf', NULL, 'Seksi SDMK tindak lanjuti', NULL, NULL, '2020-02-13', 1, 353, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (364, '2020-02-11', '4', '005/302', '-', 'Verivikasi dan Validai data PBIN, PBID I, PBID II', '-', 'DINSOSPERMADES', NULL, NULL, NULL, 'Subbag Renkeu hadiri', 'surat-masuk-20200213_103926.pdf', NULL, 'Subbag Renkeu hadiri', NULL, NULL, '2020-02-13', 1, 354, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (365, '2020-02-11', '8', '440/43/2020', 'SEGERA', 'Laporan Program Peningkatan Mutu ', '-', 'UPTD Mayong I', NULL, NULL, NULL, 'Kabid Yankes Tindak Lanjuti', 'surat-masuk-20200213_104240.pdf', NULL, 'Kabid Yankes Tindak Lanjuti', NULL, NULL, '2020-02-13', 1, 355, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (366, '2020-01-30', '31', '500/0611', 'PENTING', 'Himbauan Menggunakan Produk Daerah', '-', 'SETDA', NULL, NULL, NULL, 'Subbag Umpeg Tindak Lanjuti', 'surat-masuk-20200213_105212.pdf', NULL, 'Subbag Umpeg Tindak Lanjuti', NULL, NULL, '2020-02-13', 1, 356, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (367, '2020-02-10', '4', '005/665/Bangda', 'SEGERA', 'Seminar dan Lokakarya Nasional Kesehatan', '-', 'Kementrian dalam negeri RI', NULL, NULL, NULL, 'Subbag Umpeg Hadiri', 'surat-masuk-20200213_105823.pdf', NULL, 'Subbag Umpeg Hadiri', NULL, NULL, '2020-02-13', 1, 357, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (368, '2020-02-03', '4', '005/10724', 'PENTING', 'Undangan Pengelola Informasi dan Dokumentasi ', '-', 'SETDA', NULL, NULL, NULL, 'Subbag Renkeu Hadiri', 'surat-masuk-20200213_110349.pdf', NULL, 'Subbag Renkeu Hadiri', NULL, NULL, '2020-02-13', 1, 358, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (369, '2020-02-11', '8', '440/92/II/2020', 'PENTING', 'Permohonan Pengolahan Limbah', '-', 'UPTD KEMBANG', NULL, NULL, NULL, 'Seksi Kesling Tindak Lanjuti', 'surat-masuk-20200213_111014.pdf', NULL, 'Seksi Kesling Tindak Lanjuti', 'Seksi Kesling Tindak Lanjuti', NULL, '2020-02-13', 2, 359, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (370, '2020-01-16', '13', '800/065/2020', '-', 'Permohonan Pindah tugas', '1 satu lembar', 'UPT Bangsri 1', NULL, NULL, NULL, 'Subbag Umpeg Tindak Lanjuti', 'surat-masuk-20200213_111511.pdf', NULL, 'Subbag Umpeg Tindak Lanjuti', NULL, NULL, '2020-02-13', 1, 360, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (371, '2020-02-10', '32', '045/090/II/2020', '-', 'Narasumber Gizi optimal untuk Generasi Millineal', '-', 'UPTD Tahunan', NULL, NULL, NULL, 'Seksi KesGa Gizi Tindak Lanjuti', 'surat-masuk-20200213_112115.pdf', NULL, 'Seksi KesGa Gizi Tindak Lanjuti', 'Seksi KesGa Gizi Tindak Lanjuti', NULL, '2020-02-13', 2, 361, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (372, '2020-02-12', '8', '440/45/2020', 'SEGERA', 'KAK Program PMKP 2019', '-', 'UPTD Mayong I', NULL, NULL, NULL, 'Kabid Yankes Tindak Lanjuti', 'surat-masuk-20200213_112540.pdf', NULL, 'Kabid Yankes Tindak Lanjuti', NULL, NULL, '2020-02-13', 1, 362, 0, 0, 0);
INSERT INTO `tb_surat_masuk` VALUES (373, '2020-01-31', '4', '005/0509', 'PENTING', 'Bimbinan teknis Penyusunan Sop makro', '-', 'SETDA', NULL, NULL, NULL, 'Subbag Umpeg Hadiri', 'surat-masuk-20200213_113628.pdf', NULL, 'Subbag Umpeg Hadiri', NULL, NULL, '2020-02-13', 1, 363, 0, 0, 0);

-- ----------------------------
-- Table structure for tb_surat_tugas
-- ----------------------------
DROP TABLE IF EXISTS `tb_surat_tugas`;
CREATE TABLE `tb_surat_tugas`  (
  `id_surat_tugas` int(11) NOT NULL AUTO_INCREMENT,
  `tgl_surat` date NULL DEFAULT NULL,
  `nomor_surat` int(11) NULL DEFAULT NULL,
  `dasar_surat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `tgl_kegiatan` date NULL DEFAULT NULL,
  `tgl_kegiatan_2` date NULL DEFAULT NULL,
  `lokasi_kegiatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nama_kegiatan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nominal` int(11) NULL DEFAULT NULL,
  `dalam_luar_tugas` int(2) NULL DEFAULT NULL,
  `ttd_surat` int(2) NULL DEFAULT NULL,
  `sppd_surat` int(2) NULL DEFAULT NULL,
  `nomor_sppd` int(11) NULL DEFAULT NULL,
  `kendaraan` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `nopol` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mata_perdin` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `mata_bbm` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `validasi` int(2) NULL DEFAULT 0,
  `file_surat` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  `created_at` date NULL DEFAULT NULL,
  `created_by` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `qrcode` text CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL,
  PRIMARY KEY (`id_surat_tugas`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 242 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_surat_tugas
-- ----------------------------
INSERT INTO `tb_surat_tugas` VALUES (3, '2020-01-17', 2, '', '2020-01-15', '2020-01-15', 'BBPOM  Semarang', 'Konsultasi kegiatan pembinaan dan perizinan kesehatan', NULL, 1, 0, 1, NULL, 'Pribadi', 'K7326HC', NULL, NULL, 1, NULL, '2020-01-14', '12', NULL);
INSERT INTO `tb_surat_tugas` VALUES (4, '2020-01-15', 3, '', '2020-01-15', '2020-01-15', 'desa kedung leper, Desa Bandengan, Desa Guyangan ', 'Visitasi Inspeksi kesling dan pengambilan sampel air DAM baru.', NULL, 0, 0, 1, NULL, 'Dinas', NULL, NULL, NULL, 1, NULL, '2020-01-14', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (5, '2020-01-15', 4, '', '2020-01-16', '2020-01-16', 'Desa Tubanan dan Desa Cepogo', 'visitasi, inspeksi kesling dan pengambilan sampel air DAM baru ', NULL, 0, 0, 1, NULL, 'Dinas', NULL, NULL, NULL, 1, NULL, '2020-01-14', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (6, '2020-01-13', 5, '', '2020-01-14', '2020-01-14', 'Desa Mayong Lor ', 'visitasi penerbitan sertifikat sarana TPM / IRTP', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-13', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (7, '2020-01-15', 6, '', '2020-01-15', '2020-01-15', 'RSUD Kelet', 'Pengambilan data DBD', NULL, 0, 1, 1, NULL, 'Pribadi', 'B 1675 ETB', NULL, NULL, 1, NULL, '2020-01-15', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (8, '2020-02-12', 7, '', '2020-01-13', '2020-01-13', 'UPTD Puskesmas Donorojo', 'monitoring pelaksanaan pelayanan kesehatan di Puskesmas', NULL, 0, 0, 1, NULL, 'Dinas', 'K 73 C', NULL, NULL, 1, NULL, '2020-01-12', '6', 'QR-20200203114848.png');
INSERT INTO `tb_surat_tugas` VALUES (9, '2020-01-17', 8, '', '2020-01-14', '2020-01-14', 'Dinas Kesehatan Provinsi Jawa Tengah', 'mengambil hasil penilaian angka kredit dan sertifikat ukom', NULL, 1, 0, 1, NULL, 'Dinas', 'K 9501 RL', NULL, NULL, 1, NULL, '2020-01-13', '13', NULL);
INSERT INTO `tb_surat_tugas` VALUES (10, '2020-01-13', 9, '', '2020-01-14', '2020-01-14', 'P2KS Semarang', 'Konsultasi pelaksanaan Diklat Poned', NULL, 1, 1, 1, NULL, 'Dinas', 'K 9501 RL', NULL, NULL, 1, NULL, '2020-01-13', '13', NULL);
INSERT INTO `tb_surat_tugas` VALUES (11, '2020-01-10', 10, '', '2020-01-13', '2020-01-13', 'Dinas Kesehatan Kabupaten Pati', 'Konsultasi Penilaian Angka Kredit Fungsional Adminkes', NULL, 1, 1, 1, NULL, 'Pribadi', 'K 8989 OQ', NULL, NULL, 1, NULL, '2020-01-10', '13', NULL);
INSERT INTO `tb_surat_tugas` VALUES (12, '2020-01-07', 11, '', '2020-01-08', '2020-01-08', 'Mba Alif Snack and catering Ds. Sinanggul, Danish snack and Backery Ds. Karanggondang, Ds. Kedung Leper', 'perjalanan dinas dalam rangka pengawasan  sarana IRTP', NULL, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-15', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (13, '2020-01-14', 12, '', '2020-01-13', '2020-01-13', 'Toko JEHA, Toko agung lestari, Toko Hikmah', 'perjalanan dinas dalam daerah dalam rangka pengawasan sarana IRTP', NULL, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-15', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (16, '2020-01-15', 14, '', '2020-01-16', '2020-01-16', 'BPSDMD Provinsi Jawa tengah Semarang', 'Rapat persiapan Penyelenggaraan Pelatihan Teknis/Fungsional', NULL, 1, 1, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-15', '13', NULL);
INSERT INTO `tb_surat_tugas` VALUES (17, '2020-01-16', 15, 'ROK-DAK-Perjalanan dinas dalam daerah dalam rangka droping obat & perbekes ke Puskesmas Kalinyamatan', '2020-01-16', '2020-01-16', 'Puskesmas Kalinyamatan', 'Pengiriman / droping obat - obatan & perbekes', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-16', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (18, '2020-01-10', 16, 'SM-Undagan kunjungan kerja dalam rangka monitoring pelaksanaan pendidikan di sekolahan, bantuan hibah kepada masjid/musholla dan pelayanan kesehatan di puskesmas', '2020-01-13', '2020-01-13', 'UPTD Puskesmas Donorojo', 'monitoring pelaksanaan pelayanan kesehatan di Puskesmas', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-10', '6', NULL);
INSERT INTO `tb_surat_tugas` VALUES (20, '2020-01-17', 18, 'ROK-DAK-Perjalanan dinas dalam daerah dalam rangka droping obat & perbekes ke Puskesmas Batealit', '2020-01-17', '2020-01-17', 'Puskesmas Batealit', 'Pengiriman / droping obat - obatan / cairan infus & perbekes', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-17', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (21, '2020-01-14', 19, '', '2020-01-14', '2020-01-14', 'Dinas Kesehatan Provinsi Jawa Tengah', 'Mengantar Perjalanan Dinas Luar Daerah (Pengambilan Hasil Penilaian DUPAK dan Sertifikat Ukom serta Konsultasi Diklat Poned ke P2KS)', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-13', '13', NULL);
INSERT INTO `tb_surat_tugas` VALUES (22, '2020-01-22', 20, 'SM-Kordinasi penanganan anak punk di kabupaten jepara', '2020-01-23', '2020-01-23', 'BLK Pecangaan', 'Pembinaan Anak PUNK di BLK Pecangaan Kab.Jepara', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-20', '11', NULL);
INSERT INTO `tb_surat_tugas` VALUES (23, '2020-01-20', 21, 'ROK-DAK-Perjalanan dinas dalam daerah dalam rangka droping obat & perbekes ke Puskesmas Welahan I', '2020-01-20', '2020-01-20', 'Puskesmas Welahan I', 'Pengiriman / droping obat - obatan / cairan infus / perbekes', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-20', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (24, '2020-01-20', 22, '', '2020-01-21', '2020-01-21', 'Badan Pemberdayaan Masyarakat dan Desa Provinsi Jawa Tengah', 'Koordinasi tentang izin pelepasan hak sebagian tanah kas desa Gemiring Lor kecamatan Nalumsari', NULL, 1, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-20', '6', NULL);
INSERT INTO `tb_surat_tugas` VALUES (25, '2020-01-20', 23, '', '2020-01-20', '2020-01-20', 'Puskesmas Pecangaan', 'Melakukan pendampingan pelaksanaan tes triple eliminasi anak punk di Balai Latihan Kerja Jepara', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-21', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (26, '2020-01-21', 24, '', '2020-01-21', '2020-01-21', 'Puskesmas Mlonggo ,Bangsri I ,Keling I', 'Pembinaan pelayanan kefarmasian dan monitoring alkes di Puskesmas ', NULL, 0, 0, 1, NULL, 'Pribadi', 'K7326HC', NULL, NULL, 1, NULL, '2020-01-21', '12', NULL);
INSERT INTO `tb_surat_tugas` VALUES (28, '2020-01-20', 25, '', '2020-01-21', '2020-01-21', 'Puskesmas Mayong I', 'Bimtek Surveilans', NULL, 0, 1, 1, NULL, 'Pribadi', 'K 8618 VC', NULL, NULL, 1, NULL, '2020-01-21', '9', NULL);
INSERT INTO `tb_surat_tugas` VALUES (29, '2020-01-20', 26, '', '2020-01-22', '2020-01-22', 'Puskesmas Donorojo', 'Pemantauan Desa Universal Child Immunization (UCI)', NULL, 0, 1, 1, NULL, 'Pribadi', 'B 1026 PFH', NULL, NULL, 1, NULL, '2020-01-21', '9', NULL);
INSERT INTO `tb_surat_tugas` VALUES (30, '2020-01-20', 27, '', '2020-01-21', '2020-01-21', 'Desa Kepuk dan Desa Tengguli ', 'Kunjungan pasien Pre Operasi dengan kasus Katarak a.n. Mustoha, Desa Kepuk RT. 01 RW.08, Bangsri, Jepara dan pasien dengan kasus kelainan usus a.n. Embun Pagi, Desa Tengguli RT. 01 RW.02, Bangsri, Jepara', NULL, 0, 0, 1, NULL, 'Pribadi', 'H 9004 IY', NULL, NULL, 1, NULL, '2020-01-21', '15', NULL);
INSERT INTO `tb_surat_tugas` VALUES (32, '2020-01-23', 28, '', '2020-01-21', '2020-01-21', 'Puskesmas Welahan I', 'Mengambil berkas Profil Kesehatan Puskesmas sebagai kelengkapan Puskesmas Satelit', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-21', '13', NULL);
INSERT INTO `tb_surat_tugas` VALUES (33, '2020-01-22', 29, '', '2020-01-28', '2020-01-31', 'Hotel Noormans Semarang', 'Workshop Tim Pelatihan Sistem Informasi Tuberkulosis ( TBC) ', NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-12-21', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (35, '2020-01-21', 30, '', '2020-01-21', '2020-01-21', 'Puskesmas Kalinyamatan dan Puskesmas Mayong I', 'Musrenbang dan pendampingan reakreditasi', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-21', '2', NULL);
INSERT INTO `tb_surat_tugas` VALUES (39, '2020-01-22', 34, '', '2020-01-22', '2020-01-22', 'Desa teluk wetan', 'Pelaksanaan fogging fokus DBD', NULL, 0, 1, 1, NULL, 'Dinas', 'K 9656 JC', NULL, NULL, 1, NULL, '2020-01-21', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (40, '2020-01-22', 35, 'ROK-APBD-Transport petugas pengawas dan pemantau fogging DEsa Teluk Wetan', '2020-01-22', '2020-01-22', 'Desa teluk wetan', 'Pemantauan dan pengawasan fogging fokus DBD', NULL, 0, 1, 1, NULL, 'Pribadi', 'H 3684 GF', NULL, NULL, 1, NULL, '2020-01-21', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (41, '2020-01-22', 36, '', '2020-01-24', '2020-01-24', 'Kecamatan Mayong', 'Narasumber Bimbingan Calon Jemaah Haji Tahun 1441H/2020M', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-22', '2', NULL);
INSERT INTO `tb_surat_tugas` VALUES (42, '2020-01-17', 37, 'ROK-APBD-Pertemuan penyusunan formasi program Nusantara Sehat ke BBPK Jakarta', '2020-01-20', '2020-01-22', 'BBPK Jakarta', 'Pertemuan Penyusunan Formasi Penugasan Khusus Tenaga Kesehatan dalam mendukung Nusantara Sehat tahun 2020 ', NULL, 1, 1, 1, NULL, 'Umum', NULL, NULL, NULL, 1, NULL, '2020-01-17', '13', NULL);
INSERT INTO `tb_surat_tugas` VALUES (43, '2020-01-20', 38, '', '2020-01-21', '2020-01-21', 'UPTD Puskesmas Pakis Aji', 'Monitoring pembinaan karyawan UPTD Puskesmas Pakis Aji dan Survey lokasi tanah untuk pengembangan UPTD Puskesmas Pakis Aji', NULL, 0, 0, 1, NULL, 'Dinas', 'K 73 C', NULL, NULL, 1, NULL, '2020-01-20', '6', NULL);
INSERT INTO `tb_surat_tugas` VALUES (44, '2020-01-20', 39, '', '2020-01-21', '2020-01-21', 'UPTD Puskesmas Pakis Aji ', 'Monitoring pembinaan karyawan UPTD Puskesmas Pakis Aji dan Survey lokasi tanah untuk pengembangan UPTD Puskesmas Pakis Aji', NULL, 0, 0, 1, NULL, 'Dinas', 'K 73 C', NULL, NULL, 1, NULL, '2020-01-20', '6', NULL);
INSERT INTO `tb_surat_tugas` VALUES (46, '2020-01-22', 41, '', '2020-01-23', '2020-01-23', 'SMK Negeri 1 Jepara', 'Narasumber pertemuan sosialisasi HIV AIDS', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-22', '2', NULL);
INSERT INTO `tb_surat_tugas` VALUES (47, '2020-01-22', 42, '', '2020-01-23', '2020-01-23', 'Dinas Kesehatan Provinsi Jawa Tengah', 'Konsultasi Proposal Dana Hibah', NULL, 1, 1, 1, NULL, 'Pribadi', 'K 7811 HC', NULL, NULL, 1, NULL, '2020-01-22', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (48, '2020-01-22', 43, '', '2020-01-23', '2020-01-23', 'Dinkes Prov. Jateng', 'Konsultasi Tehnis Program Surveilans', NULL, 1, 1, 1, NULL, 'Pribadi', 'K 8618 VC', NULL, NULL, 1, NULL, '2020-01-22', '9', NULL);
INSERT INTO `tb_surat_tugas` VALUES (49, '2020-01-22', 44, '', '2020-01-23', '2020-01-23', 'Astrea Tirta pecangaan, JRF Karang randu, Cahaya Tirta Desa Bantrung', 'visitasi inspeksi kesling dan pengambilan sampel air DAM baru', NULL, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-22', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (50, '2020-01-16', 45, '', '2020-01-16', '2020-01-16', 'Pusk. Welahan I', 'Bimtek DBD', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-16', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (52, '2020-01-22', 46, '', '2020-01-23', '2020-01-23', 'DINAS KESEHATAN PROVINSI JAWA TENGAH', 'PENGAMBILAN LOGISTIK DAN OBAT OBATAN TBC', NULL, 1, 1, 1, NULL, 'Pribadi', 'K 9078 TC', NULL, NULL, 1, NULL, '2020-01-22', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (53, '2020-01-22', 47, '', '2020-01-23', '2020-01-23', 'Puskesmas Nalumsari', 'Monitoring Desa UCI', NULL, 0, 1, 1, NULL, 'Pribadi', 'B 1048 PFH', NULL, NULL, 1, NULL, '2020-01-22', '9', NULL);
INSERT INTO `tb_surat_tugas` VALUES (54, '2020-01-22', 48, '', '2020-01-23', '2020-01-23', 'KPPN Kudus', 'Input Data Omspan DAK Penugasan 2019', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-22', '8', NULL);
INSERT INTO `tb_surat_tugas` VALUES (55, '2020-01-23', 49, 'SM-Permohonan narasumber phbs ', '2020-01-22', '2020-01-22', 'Balaidesa Tengguli Kecamatan Bangsri', 'Pemberian Narasumber dalam rangka peningkatan pengetahuan dan ketrampilan Kader dalam survey PHBS', NULL, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-20', '10', NULL);
INSERT INTO `tb_surat_tugas` VALUES (56, '2020-02-19', 50, '', '2020-01-20', '2020-01-20', 'UPTD Puskesmas Bangsri II', 'monitoring pelaksanaan pelayanan kesehatan di Puskesmas', NULL, 0, 0, 1, NULL, 'Dinas', 'K 73 C', NULL, NULL, 1, NULL, '2020-01-17', '6', 'QR-20200203114702.png');
INSERT INTO `tb_surat_tugas` VALUES (57, '2020-01-17', 51, '', '2020-01-20', '2020-01-20', 'UPTD Puskesmas Bangsri II', 'monitoring pelaksanaan pelayanan kesehatan di Puskesmas', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-17', '6', NULL);
INSERT INTO `tb_surat_tugas` VALUES (59, '2020-01-23', 52, '', '2020-01-23', '2020-01-23', 'Puskesmas Batealit ,Mayong II', 'Pembinaan pelayanan kefarmasian dan monitoring alkes ', NULL, 0, 0, 1, NULL, 'Pribadi', 'K 7525 FC', NULL, NULL, 1, NULL, '2020-01-23', '12', NULL);
INSERT INTO `tb_surat_tugas` VALUES (60, '2020-01-22', 53, '', '2020-01-22', '2020-01-22', 'Puskesmas Nalumsari ', 'Pembinaan pelayaanan kefarmasian dan monitoring alkes ', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-22', '12', NULL);
INSERT INTO `tb_surat_tugas` VALUES (61, '2020-01-21', 54, '', '2020-01-21', '2020-01-21', 'Puskesmas Kalinyamatan', 'Bimtek SIK Ke Puskesmas', NULL, 0, 0, 1, NULL, 'Pribadi', '-', NULL, NULL, 1, NULL, '2020-01-23', '5', NULL);
INSERT INTO `tb_surat_tugas` VALUES (62, '2020-01-13', 55, '', '2020-01-13', '2020-01-13', 'Puskesmas Donorojo', 'Monitoring pelaksanaan pelayanan kesehatan di puskesmas', NULL, 0, 0, 1, NULL, 'Pribadi', '-', NULL, NULL, 1, NULL, '2020-01-10', '5', NULL);
INSERT INTO `tb_surat_tugas` VALUES (63, '2020-01-23', 56, '', '2020-01-23', '2020-01-23', 'Desa Pecangaan Wetan', 'Melakukan pendampingan pemulasaran Jenazah ODHA', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-23', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (64, '2020-01-24', 57, '', '2020-01-29', '2020-02-14', 'Ruang Rapat BKD Kabupaten Jepara', 'Pelatihan Teknis Pengawas Kearsipan Internal Th 2020', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-24', '6', NULL);
INSERT INTO `tb_surat_tugas` VALUES (66, '2020-01-24', 58, '', '2020-01-24', '2020-01-24', 'PT Kanindo 2 Pecangaan dan Klinik Kimia Farma Mayong', 'Visitasi Izin Operasional Klinik PT Kanindo 2 Pecangaan dan Klinik Kimia Farma Mayong.', 114750, 0, 1, 1, NULL, NULL, 'K 9509 RL', NULL, NULL, 1, NULL, '2020-01-24', '15', NULL);
INSERT INTO `tb_surat_tugas` VALUES (67, '2020-01-24', 59, '', '2020-01-21', '2020-01-21', 'Klinik Hanis dan Klinik Yasmin', 'Visitasi Perijinan', 414750, 0, 1, 1, NULL, 'Pribadi', 'K 7187 AC', NULL, NULL, 1, NULL, '2020-01-20', '15', NULL);
INSERT INTO `tb_surat_tugas` VALUES (68, '2020-01-24', 60, '', '2020-01-24', '2020-01-24', 'Puskesmas Mlonggo', 'Bimbingan teknis tatalaksana ARV pada ODHA', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-24', '2', NULL);
INSERT INTO `tb_surat_tugas` VALUES (69, '2020-01-22', 61, '', '2020-01-23', '2020-01-23', 'UPTD Puskesmas Kedung II', 'monitoring dan pembinaan karyawan UPTD Puskesmas', 350000, 0, 0, 1, NULL, 'Dinas', 'K 73 C', NULL, NULL, 1, NULL, '2020-01-24', '6', NULL);
INSERT INTO `tb_surat_tugas` VALUES (70, '2020-01-24', 62, '', '2020-01-17', '2020-01-17', 'Mayong', 'Visitasi dan pembinaan Klinik Beauty Lux', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-16', '13', NULL);
INSERT INTO `tb_surat_tugas` VALUES (71, '2020-01-22', 63, '', '2020-01-23', '2020-01-23', 'UPTD Puskesmas Kedung II', 'monitoring dan pembinaan karyawan UPTD Puskesmas', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-24', '6', NULL);
INSERT INTO `tb_surat_tugas` VALUES (72, '2020-01-24', 64, '', '2020-01-24', '2020-01-24', 'Puskesmas Kalinyamatan', 'Surveilans PD3I', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-24', '9', NULL);
INSERT INTO `tb_surat_tugas` VALUES (73, '2020-01-24', 65, '', '2020-01-24', '2020-01-24', 'RS PKU Mayong', 'Koordinasi pelaporan DBD dengan Form KDRS', NULL, 0, 1, 1, NULL, 'Pribadi', 'B 1675', NULL, NULL, 1, NULL, '2020-01-24', '7', 'QR-20200131075454.png');
INSERT INTO `tb_surat_tugas` VALUES (74, '2020-01-07', 66, '', '2020-01-08', '2020-01-08', 'UPTD Puskesmas Welahan I dan UPTD Puskesmas Welahan II', 'kegiatan monitoring terpadu FKTP dan UPTD Puskesmas', NULL, 0, 0, 1, NULL, 'Dinas', 'K 73 C', NULL, NULL, 1, NULL, '2020-01-27', '6', NULL);
INSERT INTO `tb_surat_tugas` VALUES (76, '2020-01-08', 67, '', '2020-01-09', '2020-01-09', 'Aula RS PKU Muhammadiyah Mayong ', 'peletakan batu pertama pada pembangunan RS PKU Muhammadiyah Mayong Jepara', 100000, 0, 0, 1, NULL, 'Dinas', 'K 73 C', NULL, NULL, 1, NULL, '2020-01-27', '6', NULL);
INSERT INTO `tb_surat_tugas` VALUES (77, '2020-02-05', 68, 'SM-Undangan kunjungan kerja dalam rangka monitoring pelaksanaan pendidikan di sekolahan, bantuan hibah kepada masjid/musholla/yayasan dan pelayanan kesehatan di puskesmas ', '2020-01-06', '2020-01-06', 'UPTD Puskesmas Keling I', 'monitoring pelaksanaan pelayanan kesehatan di UPTD Puskesmas ', NULL, 0, 1, 1, NULL, 'Dinas', 'K 73 C', '', '', 1, NULL, '2020-01-27', '6', 'QR-20200211140533.png');
INSERT INTO `tb_surat_tugas` VALUES (78, '2020-01-02', 69, '', '2020-01-03', '2020-01-03', ' UPTD Puskesmas Mayong I dan UPTD Puskesmas Nalumsari', 'kunjungan kerja dalam rangka monitoring Pelaksanaan Kesehatan di Puskesmas', 100000, 0, 0, 1, NULL, 'Dinas', 'K 73 C', NULL, NULL, 1, NULL, '2020-01-27', '6', NULL);
INSERT INTO `tb_surat_tugas` VALUES (79, '2020-01-23', 70, 'ROK-DAK-Perjalanan dinas dalam daerah dalam rangka droping obat & perbekes ke Puskesmas Mayong II', '2020-01-23', '2020-01-23', 'Puskesmas Mayong II', 'Pengiriman / droping obat', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-23', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (80, '2020-01-27', 71, '', '2020-01-27', '2020-01-27', 'Ds Sinanggul, Ds Sekuro, Ds Karanggondang, Ds Srobyong dan Ds Ujung Batu Kabupaten Jepara', 'Kunjungan Pasien Pre Operasi dengan Kelainan Kongenital, a.n. Raka Rangga Dharmawan dengan kasus Hypospadia,Ds Sinanggul 28/5, Shazia Naureen Maiaika dengan kasus Bibir Sumbing, Ds Sekuro 10/02,Lery Wijaya dengan kasus Bibir Sumbing,Ds Karanggondang 02/06', NULL, 0, 1, 1, NULL, 'Dinas', 'B 1865 SHX', NULL, NULL, 1, NULL, '2020-01-27', '15', NULL);
INSERT INTO `tb_surat_tugas` VALUES (81, '2020-01-24', 72, 'ROK-DAK-Perjalanan dinas dalam daerah dalam rangka droping obat & perbekes ke Puskesmas Pecangaan', '2020-01-24', '2020-01-24', 'Puskesmas Pecangaan', 'Pengiriman / droping obat', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-24', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (82, '2020-01-27', 73, 'ROK-DAK-Perjalanan dinas dalam daerah dalam rangka droping obat & perbekes ke Puskesmas Welahan II', '2020-01-27', '2020-01-27', 'Puskesmas Welahan II', 'Pengiriman / droping obat', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-27', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (83, '2020-01-30', 74, '', '2020-01-28', '2020-01-28', 'Ds. Pancur, Ngroto, Buaran dab Datar', 'Kunjungan pasien Pre Operasi Kelainan Kongenital a. n.  Muh Rizqi Al Karim, Ds Pancur dengan kasus Kaki Clubfoot, Ahm Mudofikin Aziz, Ds ngroto 1/3 dengan kasus lumpuh,  Muh Jauhari, Ds Buaran 11/3 dengan kasus down sindrom, devano angga saputra, ds datar', NULL, 0, 0, 1, NULL, 'Pribadi', 'H 9004 IY', NULL, NULL, 1, NULL, '2020-01-27', '15', NULL);
INSERT INTO `tb_surat_tugas` VALUES (84, '2020-01-24', 75, '', '2020-01-27', '2020-01-27', 'UPTD Puskesmas Nalumsari II', 'cek lokasi dan monitoring untuk operasional UPTD Puskesmas Nalumsari II', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-28', '6', NULL);
INSERT INTO `tb_surat_tugas` VALUES (86, '2020-01-28', 76, '', '2020-01-28', '2020-01-28', 'Klinik Sentra Husada', 'Melakukan Monev Triple Eliminasi (HIV, Shipilis, dan Hepatitis)', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-28', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (87, '2020-02-04', 77, '', '2020-01-28', '2020-01-28', 'Dinkes prov. Jateng', 'Konsultasi program DBD/Malaria', 950000, 1, 1, 1, NULL, 'Pribadi', 'H 4684 GF', NULL, NULL, 1, NULL, '2020-01-28', '7', 'QR-20200204144722.png');
INSERT INTO `tb_surat_tugas` VALUES (88, '2020-01-27', 78, '', '2020-01-27', '2020-01-27', 'Puskesmas Pecangaan', 'Bimtek Surveilans', 60000, 0, 1, 1, NULL, 'Pribadi', 'K 8618 VC', NULL, NULL, 1, NULL, '2020-01-27', '9', 'QR-20200207152527.png');
INSERT INTO `tb_surat_tugas` VALUES (89, '2020-01-28', 79, '', '2020-01-29', '2020-01-29', 'Puskesmas Bangsri I ', 'Bimtek dan Monev Haji ', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-28', '9', NULL);
INSERT INTO `tb_surat_tugas` VALUES (90, '2020-01-28', 80, '', '2020-01-28', '2020-01-28', 'Dinas Kesehatan Prov.Jateng Semarang', 'Mengirim dokumen profil kesehatan dan usulan Puskesmas Satelit', 900000, 1, 1, 1, NULL, 'Pribadi', 'K 8776 JL', NULL, NULL, 1, NULL, '2020-01-28', '13', NULL);
INSERT INTO `tb_surat_tugas` VALUES (91, '2020-01-29', 81, '', '2020-01-29', '2020-01-29', 'Desa keling', 'PE DBD', NULL, 0, 1, 1, NULL, 'Pribadi', 'B 1675 ETB', NULL, NULL, 1, NULL, '2020-01-28', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (93, '2020-01-21', 82, 'SM-Jadwal musrenbang RKPD Kecamatan tahun 2020', '2020-01-21', '2020-01-21', 'Kecamatan Bangsri', 'Musrenbang Tingkat Kecamatan', 80000, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-21', '5', NULL);
INSERT INTO `tb_surat_tugas` VALUES (94, '2020-01-22', 83, 'SM-Jadwal musrenbang RKPD Kecamatan tahun 2020', '2020-01-22', '2020-01-22', 'Kecamatan Donorojo', 'Musrenbang Tingkat Kecamatan', NULL, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-22', '5', NULL);
INSERT INTO `tb_surat_tugas` VALUES (95, '2020-01-22', 84, 'SM-Jadwal musrenbang RKPD Kecamatan tahun 2020', '2020-01-22', '2020-01-22', 'Kecamatan Nalumsari', 'Musrenbang Tingkat Kecamatan', 114750, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-22', '5', NULL);
INSERT INTO `tb_surat_tugas` VALUES (96, '2020-01-23', 85, 'SM-Jadwal musrenbang RKPD Kecamatan tahun 2020', '2020-01-23', '2020-01-23', 'Kecamatan Kembang', 'Musrenbang Tingkat Kecamatan', 110400, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-23', '5', NULL);
INSERT INTO `tb_surat_tugas` VALUES (97, '2020-01-27', 86, 'SM-Jadwal musrenbang RKPD Kecamatan tahun 2020', '2020-01-27', '2020-01-27', 'Kecamatan Batealit', 'Musrenbang Tingkat Kecamatan', 73600, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-27', '5', NULL);
INSERT INTO `tb_surat_tugas` VALUES (98, '2020-01-27', 87, 'SM-Jadwal musrenbang RKPD Kecamatan tahun 2020', '2020-01-27', '2020-01-27', 'Kecamatan Pecangaan ', 'Musrenbang Tingkat Kecamatan', 80000, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-27', '5', NULL);
INSERT INTO `tb_surat_tugas` VALUES (99, '2020-01-21', 88, 'SM-Jadwal musrenbang RKPD Kecamatan tahun 2020', '2020-01-21', '2020-01-21', 'Kecamatan Kalinyamatan ', 'Musrenbang Tingkat Kecamatan', NULL, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-21', '5', NULL);
INSERT INTO `tb_surat_tugas` VALUES (100, '2020-01-22', 89, 'SM-Jadwal musrenbang RKPD Kecamatan tahun 2020', '2020-01-22', '2020-01-22', 'Kecamatan Welahan', 'Musrenbang Tingkat Kecamatan', 135774, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-22', '5', NULL);
INSERT INTO `tb_surat_tugas` VALUES (101, '2020-01-21', 90, 'SM-Jadwal musrenbang RKPD Kecamatan tahun 2020', '2020-01-21', '2020-01-21', 'Kecamatan Mlonggo', 'Musrenbang Tingkat Kecamatan', NULL, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-21', '5', NULL);
INSERT INTO `tb_surat_tugas` VALUES (102, '2020-01-23', 91, 'SM-Jadwal musrenbang RKPD Kecamatan tahun 2020', '2020-01-23', '2020-01-23', 'Kecamatan Mayong', 'Musrenbang Tingkat Kecamatan', NULL, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-23', '5', NULL);
INSERT INTO `tb_surat_tugas` VALUES (104, '2020-01-27', 92, 'ROK-APBD-Konsultasi Program Ke Dinkes Prov.Jateng', '2020-01-28', '2020-01-28', 'Dinkes Provinsi Jateng', 'Konsultasi Program SBH', 1350000, 1, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-29', '10', NULL);
INSERT INTO `tb_surat_tugas` VALUES (105, '2020-01-27', 93, 'ROK-APBD-Konsultasi Program Ke Dinkes Prov.Jateng', '2020-01-28', '2020-01-28', 'Dinsospermadesdukcapil Provinsi Jawa Tengah', 'Meningkatkan kapasitas Pokjanal Posyandu di Jawa Tengah', 350000, 1, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-29', '10', NULL);
INSERT INTO `tb_surat_tugas` VALUES (106, '2020-01-21', 94, '', '2020-01-22', '2020-01-22', 'desa pengkol, desa pulau darat dan desa welahan ', 'perjalanan dinas dalam daerah dalam rangka pengawasan sarana IRTP', NULL, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-29', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (107, '2020-01-29', 95, '', '2020-02-03', '2020-02-05', 'Hotel Harris Semarang', 'sebagai peserta pertemuan Perencanaan dan Evaluasi Program SDM Kesehatan Tingkat Provinsi', 1640000, 1, 0, 1, NULL, 'Umum', 'TRAVEL', NULL, NULL, 1, NULL, '2020-01-29', '13', 'QR-20200206074302.png');
INSERT INTO `tb_surat_tugas` VALUES (108, '2020-01-21', 96, '', '2020-01-22', '2020-01-22', 'di desa pengkol, desa pulau darat, desa welahan dan desa mayong', 'perjalanan dinas dalam daerah dalam rangka pengawasan sarana IRTP\r\n', 300000, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-29', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (109, '2020-01-27', 97, '', '2020-01-27', '2020-01-27', 'desa teluk awur, dasa pulodarat dan kecamatan welahan ', 'pengawasan dalam rangka penerbitan SP PIRT ', 300000, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-29', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (110, '2020-01-27', 98, '', '2020-01-28', '2020-01-28', 'di desa Sukodono, dasa Ngabul dan Desa Bandungrejo', 'pengawasan dalam rangka penerbitan SP PIRT\r\n', 450000, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-29', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (111, '2020-01-23', 99, 'SM-Jadwal musrenbang RKPD Kecamatan tahun 2020', '2020-01-23', '2020-01-23', 'Kecamatan Keling', 'Musrenbang Tingkat Kecamatan ', 150000, 0, 1, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-29', '5', 'QR-20200204142617.png');
INSERT INTO `tb_surat_tugas` VALUES (112, '2020-02-04', 100, 'ROK-APBD-BBM konsul/pengambilan bahan program DBD/malaria', '2020-01-30', '2020-01-30', 'Gudang Tambak Aji Semarang', 'Pengambilan bahan/obat program DBD/Malaria', NULL, 1, 1, 1, NULL, 'Dinas', 'K 9609 RL', NULL, NULL, 1, NULL, '2020-01-29', '7', 'QR-20200204144833.png');
INSERT INTO `tb_surat_tugas` VALUES (113, '2020-01-31', 101, 'SM-Jadwal musrenbang RKPD Kecamatan tahun 2020', '2020-01-28', '2020-01-28', 'Kecamatan Kedung', 'Musrenbang Tingkat Kecamatan', 80000, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-28', '5', 'QR-20200131074309.png');
INSERT INTO `tb_surat_tugas` VALUES (114, '2020-01-30', 102, 'SM-Peremohonan narasumber platihan entri data EPPBGM bagi kader', '2020-01-30', '2020-01-30', 'Puskesmas  Pecangaan', 'Menjadi Narasumber Kegiatan Pelatihan Entri Data EPPGBM Bagi Kader', 0, 0, 0, 1, NULL, NULL, NULL, NULL, NULL, 1, NULL, '2020-01-30', '11', NULL);
INSERT INTO `tb_surat_tugas` VALUES (115, '2020-01-28', 103, 'ROK-APBD-Monev PIS-PK', '2020-01-29', '2020-01-29', 'Puskesmas Welahan II dan Desa Guwosobokerto', 'Monitoring dan Evaluasi PIS-PK', 300000, 0, 0, 1, NULL, 'Pribadi', NULL, '', '', 1, NULL, '2020-01-28', '10', 'QR-20200203074242.png');
INSERT INTO `tb_surat_tugas` VALUES (116, '2020-01-27', 104, 'SM-Dalam rangka kunjungan presiden pada kegitan gerakan bersama menuju eliminasi TBC indonesia tahun 2030', '2020-01-28', '2020-01-28', 'Dinas Kesehatan Provinsi Jawa Tengah', 'megantar Kepala Dinas dalam rangka rapat koordinasi kesiapsiagaan pandemi corona virus', 1050000, 1, 1, 1, NULL, 'Dinas', 'K 73 C', NULL, NULL, 1, NULL, '2020-01-30', '6', NULL);
INSERT INTO `tb_surat_tugas` VALUES (117, '2020-01-29', 105, '', '2020-01-29', '2020-01-29', 'Puskesmas Kedung I', 'Bimtek Program Surveilans', 50000, 0, 1, 1, NULL, 'Pribadi', 'K 8618 VC', NULL, NULL, 1, NULL, '2020-01-29', '9', 'QR-20200207145756.png');
INSERT INTO `tb_surat_tugas` VALUES (118, '2020-01-31', 106, 'ROK-APBD-Pelacakan kasus kematian maternal neonatal 1 ', '2020-01-31', '2020-01-31', 'Desa Lebak RT 5/5', 'Melaksanakan pelacakan kasus kematian ibu di Desa Lebak, Kecamatan Pakis Aji', 300000, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-30', '11', 'QR-20200131084604.png');
INSERT INTO `tb_surat_tugas` VALUES (120, '2020-01-27', 108, 'SM-Jadwal musrenbang RKPD Kecamatan tahun 2020', '2020-01-27', '2020-01-27', 'Kecamatan Tahunan', 'Musrenbang Tingkat Kecamatan', 50000, 0, 0, 1, NULL, 'Pribadi', NULL, NULL, NULL, 1, NULL, '2020-01-27', '5', 'QR-20200202230527.png');
INSERT INTO `tb_surat_tugas` VALUES (121, '2020-01-29', 109, 'ROK-APBD-Monev PIS-PK', '2020-01-30', '2020-01-30', 'Puskesmas Donorojo dan Desa Tulakan', 'Monitoring dan Evaluasi PIS-PK', 450000, 0, 0, 1, NULL, 'Pribadi', NULL, '', '', 1, NULL, '2020-01-29', '10', 'QR-20200203073613.png');
INSERT INTO `tb_surat_tugas` VALUES (122, '2020-02-03', 110, 'ROK-DAK-Perjalanan dinas dalam daerah dalam rangka monev kegiatan program kesga di PKD ', '2020-02-03', '2020-02-03', 'PKD Desa Bulungan', 'Perjalanan dinas dalam daerah dalam rangka supervisi fasilitatif di PKD Bulungan Kecamatan Pakis Aji', NULL, 0, 0, 1, NULL, 'Dinas', 'K 9501 RL', '', '', 1, NULL, '2020-01-31', '11', 'QR-20200203083516.png');
INSERT INTO `tb_surat_tugas` VALUES (123, '2020-02-03', 111, 'ROK-APBD-Pelacakan kasus kematian maternal neonatal ', '2020-02-03', '2020-02-03', 'Desa Bulungan', 'Perjalanan dinas dalam daerah dalam rangka pelacakan kasus kematian maternal di Desa Bulungan', 300000, 0, 0, 1, NULL, 'Pribadi', NULL, '', '', 1, NULL, '2020-01-31', '11', 'QR-20200203080846.png');
INSERT INTO `tb_surat_tugas` VALUES (125, '2020-01-31', 113, 'SM-Laporan data Hais', '2020-01-31', '2020-01-31', 'Pusk. Bangsri 2', 'Bimtek laporan data HIV', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-31', '2', NULL);
INSERT INTO `tb_surat_tugas` VALUES (126, '2020-02-03', 114, 'ROK-APBD-perdin serah terima pasien TB MDR ke RS paru', '2020-02-04', '2020-02-04', 'Rsud kudus', 'Serah terima pasien tbc mdr ke rsud kudus atas nama pasien fathur rohman pada tanggal 4 februari 2020', NULL, 1, 1, 1, NULL, 'Pribadi', 'K 9078 TC', '810000', '200000', 1, NULL, '2020-02-02', '7', 'QR-20200204080001.png');
INSERT INTO `tb_surat_tugas` VALUES (127, '2020-02-03', 115, 'SM-Peremohonan narasumber platihan entri data EPPBGM bagi kader', '2020-02-03', '2020-02-04', 'Puskesmas Mayong II', 'Narasumber ePPGBM', NULL, 0, 0, 1, NULL, NULL, NULL, '0', '0', 1, NULL, '2020-02-03', '11', 'QR-20200203081238.png');
INSERT INTO `tb_surat_tugas` VALUES (128, '2020-02-03', 116, 'ROK-APBD-Uang Harian Pelacakan gizi buruk', '2020-02-03', '2020-02-03', 'Puskesmas Mayong II', 'Pelacakan Gizi Buruk ke Wilayah Puskesmas  Mayong II', NULL, 0, 0, 1, NULL, NULL, NULL, '0', '0', 1, NULL, '2020-02-03', '11', 'QR-20200203083753.png');
INSERT INTO `tb_surat_tugas` VALUES (129, '2020-02-03', 117, 'ROK-DAK-Monev pelaksanaan posbindu diwilayah puskesmas Kedung I', '2020-02-03', '2020-02-03', 'Puskesmas Kedung I', 'Monitoring & Evaluasi Pelaksanaan Posbindu di wilayah Puskesmas Kedung I', NULL, 0, 1, 1, NULL, 'Pribadi', NULL, '300000', '60000', 1, NULL, '2020-02-03', '8', 'QR-20200203092200.png');
INSERT INTO `tb_surat_tugas` VALUES (131, '2020-01-27', 119, 'SM-Surat izin operasional fasilitas kesehatan', '2020-01-28', '2020-01-28', 'Dinas Kesehatan Provinsi Jawa tengah', 'Konsultasi Perizinan', NULL, 1, 1, 1, NULL, 'Pribadi', 'K 8427 LL', '300000', '200000', 1, NULL, '2020-02-03', '15', 'QR-20200203141200.png');
INSERT INTO `tb_surat_tugas` VALUES (132, '2020-01-31', 120, 'ROK-DAK-BBM perjadin konsultasi kab. sehat', '2020-01-31', '2020-01-31', 'desa Ujung watu, Kecamatan Donorojo', 'perjalanan dinas dalam rangka kunjungan paska bencana alam rumah roboh ', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-03', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (133, '2020-01-13', 121, 'ROK-DAK-Perjalanan dinas dalam rangka Bimtek ke calon desa STBM', '2020-01-13', '2020-01-13', 'desa Kaliaman kecamatan kembang ', 'Perjalanan dinas dalam rangka Bimtek ke calon desa STBM', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-03', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (134, '2020-01-15', 122, 'ROK-APBD-visitasi inspeksi kesling dan pengambilan sampel air DAM baru ', '2020-01-16', '2020-01-16', 'di Desa Tubanan dan Desa Cepogo', 'visitasi, inspeksi kesling dan pengambilan sampel air DAM baru\r\n', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-03', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (135, '2020-01-20', 123, 'ROK-DAK-perjalanan dinas dalam rangka penerbitan SPP IRT', '2020-01-20', '2020-01-20', 'di kecamatan bangsri', 'DAK-perjalanan dinas dalam rangka penerbitan SPP IRT', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-03', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (136, '2020-01-08', 124, 'ROK-DAK-perjalanan dinas dalam daerah dalam rangka pengawasan sarana industri rumah tangga pangan', '2020-01-09', '2020-01-09', 'desa bandungrejo kecamatan kalinyamatan ', 'perjalanan dinas dalam daerah dalam rangka pengawasan sarana industri rumah tangga pangan', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-03', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (137, '2020-01-02', 125, 'ROK-DAK-perjalanan dinas dalam rangka penerbitan SPP IRT', '2020-01-03', '2020-01-03', 'desa pulodarat', 'perjalanan dinas dalam rangka penerbitan SPP IRT', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-03', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (138, '2020-01-30', 126, 'ROK-DAK-perjalanan dinas dalam daerah dalam rangka pengawasan sarana industri rumah tangga pangan', '2020-01-31', '2020-01-31', 'desa jugo (Anismad Snack )', ' pengawasan sarana industri rumah tangga pangan', NULL, 0, 0, 1, NULL, 'Pribadi', NULL, '300000', '0', 1, NULL, '2020-02-03', '14', 'QR-20200203150318.png');
INSERT INTO `tb_surat_tugas` VALUES (139, '2020-01-31', 127, 'ROK-APBD-Perdin pemantauna foging desa kuwasen1', '2020-02-01', '2020-02-01', 'Desa Kuwasen', 'Pemantauan fogging ', NULL, 0, 0, 1, NULL, 'Pribadi', 'H 3684 GF', '150000', '0', 1, NULL, '2020-02-01', '7', 'QR-20200212134601.png');
INSERT INTO `tb_surat_tugas` VALUES (140, '2020-02-04', 128, 'ROK-APBD-BBM kendaraan roda 4 foging desa keling', '2020-02-04', '2020-02-04', 'Desa keling', 'Fogging fokus', NULL, 0, 0, 1, NULL, 'Dinas', 'K 9656 JC', '0', '100000', 1, NULL, '2020-02-03', '7', 'QR-20200213084113.png');
INSERT INTO `tb_surat_tugas` VALUES (141, '2020-02-03', 129, 'ROK-APBD-perdin pemantauan foging desa keling ', '2020-02-04', '2020-02-04', 'Desa keling', 'Pemantauan fogging', NULL, 0, 0, 1, NULL, 'Pribadi', NULL, '150000', '100000', 1, NULL, '2020-02-03', '7', 'QR-20200212142025.png');
INSERT INTO `tb_surat_tugas` VALUES (142, '2020-02-10', 130, 'ROK-DAK-BBM dalam rangka pendampingan pasca akreditasi Puskesmas Donorojo,Kembang,Pakisaji, Batealit Tahap I', '2020-02-04', '2020-02-04', 'Puskesmas Bangsri II', 'Pendampingan pasca survey Akreditasi Puskesmas Bangsri II', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-04', '15', NULL);
INSERT INTO `tb_surat_tugas` VALUES (143, '2020-02-04', 131, 'SM-Pendampingan & penatalaksanaan penyakit menular kabupaten jepara ', '2020-02-04', '2020-02-04', 'Puskesmas Kalinyamatan', 'Melaksanakan supervisi Klinik PDP', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-04', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (144, '2020-02-04', 132, 'ROK-APBD-BBM Monev JKN ke Puskesmas Donorojo', '2020-02-05', '2020-02-05', 'Puskesmas Donorojo', 'Monitoring dan Evaluasi JKN', NULL, 0, 1, 1, NULL, NULL, NULL, '0', '0', 1, NULL, '2020-02-04', '15', 'QR-20200204115958.png');
INSERT INTO `tb_surat_tugas` VALUES (146, '2020-02-06', 133, 'ROK-APBD-Uang saku perjalanan dinas kaji banding Ukom Inpassing ke Dinas Kesehatan Kab. Grobogan pada tanggal 7 Pebruari 2020', '2020-02-07', '2020-02-07', 'Dinas Kesehatan Kabupaten Grobogan', 'Kaji banding Ukom Inpassing Jabatan Fungsional Kesehatan', NULL, 1, 1, 1, NULL, 'Dinas', 'K 9501 RL', '1200000', '200000', 1, NULL, '2020-02-04', '13', 'QR-20200205103721.png');
INSERT INTO `tb_surat_tugas` VALUES (147, '2020-02-04', 134, '', '2020-01-16', '2020-01-16', 'Puskesmas Keling I ', 'Monev Program Imunisasi', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-04', '9', NULL);
INSERT INTO `tb_surat_tugas` VALUES (148, '2020-02-04', 135, '', '2020-02-28', '2020-02-28', 'Puskesmas Nalumsari ', 'Monev Program Imunisasi ', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-04', '9', NULL);
INSERT INTO `tb_surat_tugas` VALUES (149, '2020-02-04', 136, 'ROK-DAK-Home Visite Kasus Jiwa di wilayah Puskesmas Kembang ', '2020-02-05', '2020-02-05', 'Puskesmas Kembang', 'Home visite kasus jiwa di wilayah puskesmas kembang', NULL, 0, 1, 1, NULL, 'Pribadi', NULL, '300000', '90000', 1, NULL, '2020-02-04', '8', 'QR-20200204132433.png');
INSERT INTO `tb_surat_tugas` VALUES (150, '2020-02-04', 137, 'ROK-APBD-Monev Posbindu di wilayah puskesmas Bangsri II', '2020-02-05', '2020-02-05', 'Puskesmas Bangsri II', 'Monev Pelaksanaan Posbindu di wilayah Puskesmas Bangsri II', NULL, 0, 1, 1, NULL, 'Pribadi', NULL, '300000', '0', 1, NULL, '2020-02-04', '8', 'QR-20200204132831.png');
INSERT INTO `tb_surat_tugas` VALUES (151, '2020-02-04', 138, 'ROK-DAK-Home visite kasus jiwa di wilayah Puskesmas Batealit', '2020-02-06', '2020-02-06', 'Puskesmas Batealit', 'Home Visite Pasien Jiwa di wilayah Puskesmas Batealit', NULL, 0, 1, 1, NULL, 'Pribadi', NULL, '300000', '60000', 1, NULL, '2020-02-04', '8', 'QR-20200204134951.png');
INSERT INTO `tb_surat_tugas` VALUES (152, '2020-02-04', 139, 'ROK-DAK-Monev Pelaksanaan IVA di Puskesmas Kalinyamatan', '2020-02-06', '2020-02-06', 'Puskesmas Kalinyamatan', 'Monev Pelaksanaan IVA di Puskesmas Kalinyamatan', NULL, 0, 1, 1, NULL, 'Pribadi', NULL, '300000', '0', 1, NULL, '2020-02-04', '8', 'QR-20200204142614.png');
INSERT INTO `tb_surat_tugas` VALUES (153, '2020-02-04', 140, 'ROK-APBD-BBM bimtek program DBD/malaria', '2020-01-09', '2020-01-09', 'Pusk. Keling 1', 'Bimtek program Malaria', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-04', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (154, '2020-02-04', 141, 'ROK-APBD-BBM bimtek program DBD/malaria', '2020-01-13', '2020-01-13', 'Pusk. Bangsri 2', 'Bimtek program Malaria', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-01', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (155, '2020-02-04', 142, 'ROK-APBD-BBM bimtek program DBD/malaria', '2020-01-16', '2020-01-16', 'Pusk. Batealit', 'Bimtek program Malaria', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-15', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (156, NULL, 143, 'ROK-APBD-BBM bimtek program DBD/malaria', '2020-01-17', '2020-01-17', 'PKU Mayong', 'Mengantar surat bimtek terpadu p2pm', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-17', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (157, '2020-02-04', 144, 'ROK-APBD-BBM pemantau jentik desa (DBD)', '2020-01-24', '2020-01-24', 'Desa Keling', 'Pemantauan jentik berkala', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-01-24', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (158, NULL, 145, 'ROK-APBD-BBM kroscheck data DBD ke RS Kudus', '2020-01-31', '2020-01-31', 'RSI Kudus', 'Bimtek program DBD/Malaria', NULL, 1, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-04', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (159, NULL, 146, 'ROK-APBD-BBM serah terima TB MDR ke RS Kudus', '2020-02-05', '2020-02-05', 'RS PARU ARIO WIRAWAN SALATIGA', 'Serah terima pasien MDR ke RS Paru Ario Wirawan Salatiga', NULL, 1, NULL, 1, NULL, 'Pribadi', 'K 9078 TC', '1400000', '267750', 1, NULL, '2020-02-04', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (160, '2020-02-05', 147, 'ROK-APBD-BBM kendaraan roda 4 foging desa kedungmalang', '2020-02-05', '2020-02-05', 'Desa Kedung Malang', 'Fogging Fokus DBD', NULL, 0, 0, 1, NULL, 'Dinas', 'K 9565 JC', '0', '50000', 1, NULL, '2020-02-05', '7', 'QR-20200213092648.png');
INSERT INTO `tb_surat_tugas` VALUES (161, '2020-02-05', 148, 'ROK-APBD-perdin pemantauan foging kedungmalang', '2020-02-05', '2020-02-05', 'Desa Kedung Malang', 'Pemantauan Fogging ', NULL, 0, 0, 1, NULL, 'Pribadi', 'H 3684 GF', '150000', '65000', 1, NULL, '2020-02-05', '7', 'QR-20200213093806.png');
INSERT INTO `tb_surat_tugas` VALUES (162, '2020-02-03', 149, 'ROK-APBD-Perdin Monev PIS-PK', '2020-02-04', '2020-02-04', 'Puskesmas Mayong II dan Desa Jebol', 'Monitoring dan Evaluasi PIS-PK', NULL, 0, 0, 1, NULL, 'Pribadi', NULL, '400000', '110000', 1, NULL, '2020-02-05', '10', 'QR-20200212081444.png');
INSERT INTO `tb_surat_tugas` VALUES (163, '2020-02-05', 150, 'ROK-DAK-Belanja BBM dalam rangka droping obat & perbekes ke Puskesmas Mayong I', '2020-02-05', '2020-02-05', 'Puskesmas Mayong I', 'Droping obat / cairan infus', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-05', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (164, '2020-01-28', 151, 'ROK-DAK-perjalanan dinas dalam rangka penerbitan SPP IRT', '2020-01-29', '2020-01-29', 'di desa jugo (Anismad Snack )', 'pengawasan sarana industri rumah tangga pangan\r\n', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-06', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (165, '2020-02-07', 152, '', '2020-02-07', '2020-02-07', 'Dinas Kesehatan Kabupaten Grobogan', 'Kaji banding Ukom Inpassing Jabatan Fungsional Kesehatan', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-06', '13', NULL);
INSERT INTO `tb_surat_tugas` VALUES (166, '2020-02-06', 153, 'ROK-APBD-Perdin ke Jakarta OL Diklat kearsipan ', '2020-02-10', '2020-02-13', 'Dinas Perpustakaan dan Kearsipan Provinsi DKI Jakarta', 'Pelatihan teknis pengawas kearsipan internal Tahun 2020', NULL, 1, 0, 1, NULL, 'Umum', 'BUS', '6800000', '0', 1, NULL, '2020-02-06', '6', 'QR-20200206113529.png');
INSERT INTO `tb_surat_tugas` VALUES (167, '2020-02-06', 154, 'ROK-DAK-Perjalanan dinas dalam daerah dalam rangka droping obat & perbekes ke Puskesmas Pecangaan', '2020-02-06', '2020-02-06', 'Puskesmas Pecangaan', 'Droping / pengiriman obat / cairan infus', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-06', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (168, '2020-02-07', 155, 'ROK-APBD-BBM bimtek program DBD/malaria', '2020-02-07', '2020-02-07', 'PKU Mayong', 'Bimtek terpadu program P2PM', NULL, 0, 0, 1, NULL, 'Pribadi', 'B 1675 ETB', '0', '120000', 1, NULL, '2020-02-06', '7', 'QR-20200213134939.png');
INSERT INTO `tb_surat_tugas` VALUES (169, '2020-02-06', 156, 'ROK-APBD-BBM Bimtek SIK di Puskesmas Pecangaan', '2020-02-06', '2020-02-06', 'Puskesmas Pecangaan', 'Bimtek SIK ke Puskesmas Pecangaan ', NULL, 0, 0, 1, NULL, 'Pribadi', NULL, '0', '70000', 1, NULL, '2020-02-06', '5', 'QR-20200211084810.png');
INSERT INTO `tb_surat_tugas` VALUES (170, '2020-02-07', 157, '', '2020-02-07', '2020-02-07', 'Puskesmas Kedung 1', 'Monitoring dan Evaluasi Posbindu', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-07', '8', NULL);
INSERT INTO `tb_surat_tugas` VALUES (171, NULL, 158, 'ROK-APBD-Bimtek Surveilans dan KLB', '2020-01-27', '2020-01-27', 'Puskesmas Pecangaan', 'Bimtek Surveilans', NULL, 0, NULL, 1, NULL, 'Pribadi', 'K 8618 VC', '0', '60000', 1, NULL, '2020-01-27', '9', NULL);
INSERT INTO `tb_surat_tugas` VALUES (172, '2020-01-28', 159, 'ROK-APBD-Bimtek, Monev Haji', '2020-01-28', '2020-01-28', 'Puskesmas Batealit', 'Bimtek Program Haji', NULL, 0, 1, 1, NULL, 'Pribadi', 'K 9384 NC', '0', '60000', 1, NULL, '2020-01-28', '9', 'QR-20200207153933.png');
INSERT INTO `tb_surat_tugas` VALUES (173, '2020-02-07', 160, 'ROK-DAK-Belanja BBM dalam rangka droping obat & perbekes ke Puskesmas Batealit', '2020-02-07', '2020-02-07', 'Puskesmas Batealit', 'Droping / pengiriman obat / cairan infus', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-07', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (174, NULL, 161, 'ROK-APBD-Bimtek Surveilans dan KLB', '2020-01-29', '2020-01-29', 'Puskesmas Kedung I', 'Bimtek Surveilans', NULL, 0, NULL, 1, NULL, 'Pribadi', 'K 8618 VC', '0', '50000', 1, NULL, '2020-01-29', '9', NULL);
INSERT INTO `tb_surat_tugas` VALUES (175, '2020-02-03', 162, 'ROK-APBD-Bimtek Surveilans dan KLB', '2020-02-03', '2020-02-03', 'Puskesmas Mayong II, PT DCP Travelling Product', 'Bimtek Surveilans dan KLB (Pendampingan pelacakan kasus nCoV)', NULL, 0, 1, 1, NULL, 'Dinas', 'K 9509 RL', '0', '50000', 1, NULL, '2020-02-03', '9', 'QR-20200214100525.png');
INSERT INTO `tb_surat_tugas` VALUES (176, '2020-02-04', 163, 'ROK-APBD-Surveilans PD3I', '2020-02-04', '2020-02-04', 'Puskesmas Pakis Aji', 'Surveilans PD3I kasus AFP', NULL, 0, 1, 1, NULL, 'Pribadi', 'K 8618 VC', '0', '50000', 1, NULL, '2020-02-04', '9', 'QR-20200214084943.png');
INSERT INTO `tb_surat_tugas` VALUES (177, '2020-02-04', 164, 'ROK-APBD-Pengiriman sampel campak ke Balabkes DIY', '2020-02-05', '2020-02-05', 'Balabkes DIY', 'Pengiriman serum campak', NULL, 1, 1, 1, NULL, 'Umum', '-', '780000', '0', 1, NULL, '2020-02-04', '9', 'QR-20200214084143.png');
INSERT INTO `tb_surat_tugas` VALUES (178, '2020-02-07', 165, 'ROK-APBD-BBM bimtek program DBD/malaria', '2020-02-07', '2020-02-07', 'PKU Muhammadiyah Mayong', 'bimbingan teknis program penanggulangan penyakit', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-07', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (179, NULL, 166, 'ROK-APBD-BBM Bimtek SIK di Puskesmas Batealit', '2020-02-07', '2020-02-07', 'Puskesmas Batealit', 'Bimtek SIK ke Puskesmas ', NULL, 0, NULL, 1, NULL, 'Pribadi', NULL, '0', '70000', 1, NULL, '2020-02-07', '5', NULL);
INSERT INTO `tb_surat_tugas` VALUES (181, '2020-02-10', 168, 'SM-Permintaan data pengobatn tradisional di kab. jepara ', '2020-02-10', '2020-02-10', 'Puskesmas', 'Sosialisasi STPT  di Puskesmas Welahan II', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-10', '15', NULL);
INSERT INTO `tb_surat_tugas` VALUES (182, '2020-02-10', 169, 'ROK-APBD-BBM pengambilan obat ke dinkes prov jateng', '2020-02-10', '2020-02-10', 'Dinas Kesehatan Provinsi Jawa Tengah', 'Pengambilan obat buffer', NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-10', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (183, '2020-02-10', 170, 'ROK-DAK-Belanja BBM dalam rangka droping obat/cairan infus ke Puskesmas Bangsri I', '2020-02-10', '2020-02-10', 'Puskesmas Bangsri I', 'Pengiriman / droping obat - obatan & perbekes', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-10', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (184, '2020-02-10', 171, '', '2020-02-12', '2020-02-12', 'Dinas Kesehatan Provinsi Jawa Tengah', 'Pertemuan Teknis Penanggulangan Gangguan Indera Terpadu di Jawa Tengah', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-10', '8', NULL);
INSERT INTO `tb_surat_tugas` VALUES (185, '2020-02-10', 172, 'ROK-DAK-Home visite kasus jiwa di wilayah Puskesmas Nalumsari', '2020-02-10', '2020-02-10', 'Puskesmas Nalumsari', 'Home Visite Pasien jiwa di wilayah Puskesmas Nalumsari', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-10', '8', NULL);
INSERT INTO `tb_surat_tugas` VALUES (186, '2020-02-10', 173, 'ROK-DAK-Monev pelaksanaan IVA di Puskesmas Mayong I', '2020-02-10', '2020-02-10', 'Puskesmas Mayong I', 'Monev Pelaksanaan Pemeriksaan IVA ', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-10', '8', NULL);
INSERT INTO `tb_surat_tugas` VALUES (187, '2020-02-10', 174, 'ROK-DAK-Home visite kasus jiwa di wilayah Puskesmas Mayong II', '2020-02-11', '2020-02-11', 'Puskesmas Mayong II', 'Home visite pasien jiwa', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-10', '8', NULL);
INSERT INTO `tb_surat_tugas` VALUES (188, '2020-02-10', 175, 'ROK-DAK-Monev Pelaksanaan Posbindu di wilayah puskesmas Mayong II', '2020-02-11', '2020-02-11', 'Puskesmas Mayong II', 'Monev Pelaksanaan Posbindu ', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-10', '8', NULL);
INSERT INTO `tb_surat_tugas` VALUES (189, '2020-02-10', 176, '', '2020-02-07', '2020-02-07', 'RS Loekmono Hadi Kudus', 'Serah Terima Pasien TBC MDR', NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-07', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (190, '2020-02-12', 177, 'ROK-APBD-BBM Perdin home visite kasus jiwa di wilayah puskesmas donorojo', '2020-02-12', '2020-02-12', 'Puskesmas Donorojo', 'Home Visite Pasien Jiwa di wilayah Puskesmas Donorojo', NULL, 0, 1, 1, NULL, 'Pribadi', NULL, '30000', '0', 1, NULL, '2020-02-10', '8', 'QR-20200212081221.png');
INSERT INTO `tb_surat_tugas` VALUES (191, '2020-02-13', 178, 'ROK-DAK-Home Visite Kasus Jiwa di wilayah Puskesmas Kembang ', '2020-02-13', '2020-02-13', 'Puskesmas Kembang', 'Home Visite Pasien Jiwa di Wilayah Puskesmas Kembang', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-10', '8', NULL);
INSERT INTO `tb_surat_tugas` VALUES (192, '2020-02-10', 179, '', '2020-02-10', '2020-02-10', 'RS PKU Muhammadiyah Mayong', 'Pengambilan sampel', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-10', '17', NULL);
INSERT INTO `tb_surat_tugas` VALUES (193, '2020-02-10', 180, 'ROK-APBD-Uang Harian Pelacakan Gizi Buruk Puskesmas Mayong II dan ds Kuanyar', '2020-02-10', '2020-02-10', 'Puskesmas Mayong II dan Desa Kuanyar', 'Pelacakan Gizi Buruk', NULL, 0, 0, 1, NULL, 'Pribadi', 'K9134VC', '150000', '', 1, NULL, '2020-02-10', '11', 'QR-20200211142753.png');
INSERT INTO `tb_surat_tugas` VALUES (194, '2020-02-10', 181, 'ROK-DAK-BBM dalam rangka pendampingan pasca akreditasi Puskesmas Donorojo, Tahap II', '2020-02-10', '2020-02-10', 'Puskesmas Kalinyamatan', 'Pendampingan pasca survei Akreditasi Puskesmas Kalinyamatan', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-10', '15', NULL);
INSERT INTO `tb_surat_tugas` VALUES (195, '2020-02-06', 182, 'ROK-APBD-Kunjungan malaria positif', '2020-02-06', '2020-02-06', 'Desa jlegong', 'Kunjungan rumah malaria positif', NULL, 0, 0, 1, NULL, 'Pribadi', 'H 3684 GF', '150000', '0', 1, NULL, '2020-02-06', '7', 'QR-20200213144229.png');
INSERT INTO `tb_surat_tugas` VALUES (196, NULL, 183, 'ROK-APBD-BBM pemantau jentik desa (DBD)', '2020-02-10', '2020-02-10', 'Desa suwawal', 'PE Program DBD', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-10', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (197, '2020-02-12', 184, 'ROK-DAK-Perjalanan dinas dalam daerah dalam rangka monev kegiatan program kesga di PKD Tritis', '2020-02-11', '2020-02-11', 'PKD wilayah Puskesmas Nalumsari dan PKD Tritis', 'Dinas dalam daerah dalam rangka supervisi fasilitatif ', NULL, 0, 1, 1, NULL, 'Dinas', NULL, '400000', '0', 1, NULL, '2020-02-11', '11', 'QR-20200212090809.png');
INSERT INTO `tb_surat_tugas` VALUES (198, '2020-02-11', 185, '', '2020-02-11', '2020-02-11', 'Puskesmas Bangsri I', 'Monev program diare  ', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-11', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (199, '2020-02-11', 186, '', '2020-02-07', '2020-02-07', 'Dinas Kesehatan Propinsi Jawa Tengah ', 'Konsultasi Kegiatan Pembinaan pelayanan kefarmasian ', NULL, 1, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-11', '12', NULL);
INSERT INTO `tb_surat_tugas` VALUES (200, '2020-02-07', 187, 'ROK-APBD-Belanja BBM pembinaan perijinan', '2020-02-10', '2020-02-10', 'dr. Muhammad Naufal M., Desa Gedangan Welahan', 'Pembinaan perijinan', NULL, 0, 1, 1, NULL, 'Pribadi', 'K 8776 JL', '', '120000', 1, NULL, '2020-02-10', '13', 'QR-20200211123902.png');
INSERT INTO `tb_surat_tugas` VALUES (201, '2020-02-11', 188, 'ROK-APBD-visitasi inspeksi kesling dan pengambilan sampel air DAM baru', '2020-02-12', '2020-02-12', 'Desa Tulakan Donorojo', 'visitasi inspeksi kesling dan pengambilan sampel air DAM baru', NULL, 0, 0, 1, NULL, 'Pribadi', NULL, '300000', '190000', 1, NULL, '2020-02-11', '14', 'QR-20200213111641.png');
INSERT INTO `tb_surat_tugas` VALUES (202, '2020-02-11', 189, 'ROK-DAK-Perjalanan dinas dalam rangka Bimtek ke calon desa STBM', '2020-02-19', '2020-02-19', 'Desa Jugo donorojo', 'DAK-Perjalanan dinas dalam rangka Bimtek ke calon desa STBM', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-11', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (203, '2020-02-10', 190, 'ROK-APBD-BBM penyuluhan pangan bagi IRTP', '2020-02-10', '2020-02-10', 'desa Kecapi, Desa Bawu Dan Desa Sengon Bugel', 'perjalanan dinas dalam daerah dalam rangka pengawasan sarana industri rumah tangga pangan ', NULL, 0, 0, 1, NULL, 'Pribadi', NULL, '0', '100000', 1, NULL, '2020-02-11', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (206, '2020-02-12', 192, 'SM-Undangan Sosialisasi pelaksanaan PMK No. 130/PMK.07/2019 DAN pmk No. 205PMK.07/2019', '2020-02-14', '2020-02-15', 'Hotel Laras Asri, Jl. Jend. Sudirman No.335 Salatiga', 'Sosialiasasi pelaksanaan PMK No. 130/PMK.07/2019 dan PMK No.205/PMK.07/2019', NULL, 1, 0, 1, NULL, 'Dinas', 'K 73 C', '5900000', '200000', 1, NULL, '2020-02-11', '6', 'QR-20200212090924.png');
INSERT INTO `tb_surat_tugas` VALUES (208, '2020-02-11', 194, 'ROK-APBD-Uang harian pelacakan gizi buruk ke Wil. Puskesmas Welahan I', '2020-02-11', '2020-02-11', 'Puskesmas Welahan I  dan Desa Teluk  Wetan', 'Pelacakan Gizi Buruk', NULL, 0, 0, 1, NULL, 'Pribadi', 'K9134VC', '114750', '0', 1, NULL, '2020-02-11', '11', 'QR-20200211143412.png');
INSERT INTO `tb_surat_tugas` VALUES (209, '2020-02-11', 195, '', '2020-02-12', '2020-02-13', 'Hotel Sekuro Village', 'Pertemuan koordinasi dan Konvergensi dalam rangka analisis situasi program penerunan stanting th. 2021', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-11', '14', NULL);
INSERT INTO `tb_surat_tugas` VALUES (210, '2020-02-14', 196, '', '2020-02-12', '2020-02-13', 'Sekuro Village Jepara', 'Pertemuan Koordinasi Dan Konvergensi Dalam Rangka Analisis Situasi Program Penurunan Stunting Tahun 2021', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-11', '11', NULL);
INSERT INTO `tb_surat_tugas` VALUES (211, '2020-02-11', 197, 'ROK-APBD-Transport petugas pengawas dan pemantau foging Desa suwawal', '2020-02-11', '2020-02-11', 'Desa Suwawal dan Desa Jambu', 'Pemantauan fogging DBD', NULL, 0, 0, 1, NULL, 'Pribadi', 'H 3684 GF', '150000', '0', 1, NULL, '2020-02-11', '7', 'QR-20200214100016.png');
INSERT INTO `tb_surat_tugas` VALUES (212, '2020-02-11', 198, 'ROK-APBD-BBM kendaraan roda 4 Desa Suwawal', '2020-02-11', '2020-02-11', 'Desa Suwawal dan Desa Jambu', 'Pelaksanaan fogging DBD', NULL, 0, 0, 1, NULL, 'Pribadi', 'K 9565 JC', '0', '100000', 1, NULL, '2020-02-11', '7', 'QR-20200214095923.png');
INSERT INTO `tb_surat_tugas` VALUES (214, '2020-02-05', 200, 'ROK-APBD-Monev PIS-PK', '2020-02-06', '2020-02-06', 'Puskesmas Bangsri I dan Desa Wedelan', 'Monitoring dan Evaluasi PIS-PK', NULL, 0, 0, 1, NULL, 'Pribadi', NULL, '400000', '70000', 1, NULL, '2020-02-05', '10', 'QR-20200212082151.png');
INSERT INTO `tb_surat_tugas` VALUES (215, '2020-02-12', 201, 'ROK-APBD-BBM supervisi program HIV AIDS ke puskesmas Nalumsari', '2020-02-12', '2020-02-12', 'Puskesmas Nalumsari', 'Melaksanakan Supervisi HIV dan Kecacingan', NULL, 0, 0, 1, NULL, 'Pribadi', 'K 9493 AN', '0', '142500', 1, NULL, '2020-02-12', '7', 'QR-20200212082850.png');
INSERT INTO `tb_surat_tugas` VALUES (217, '2020-02-12', 203, 'ROK-APBD-BBM pengambilan logistik HIV AIDS', '2020-02-13', '2020-02-13', 'Dinas Kesehatan Provinsi Jawa Tengah', 'Mengambil logistik HIV dan Siphilis', NULL, 1, 0, 1, NULL, 'Dinas', 'K 9501 RL', '700000', '128750', 1, NULL, '2020-02-12', '7', 'QR-20200214100747.png');
INSERT INTO `tb_surat_tugas` VALUES (218, '2020-02-04', 204, 'ROK-Penambahan Anggaran Bulan Febuari 2020 - UPT Instalasi Farmasi Kabupaten', '2020-02-04', '2020-02-04', 'Puskesmas Keling I', 'Droping / pengiriman RL / cairan infus', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-04', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (219, '2020-02-11', 205, 'ROK-DAK-BBM ke Pusk. Bangsri II', '2020-02-11', '2020-02-11', 'Puskesmas Bangsri II', 'Pengiriman / droping obat-obatan & perbekes', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-11', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (220, NULL, 206, 'SM-Undangan evaluasi program kefarmasian ', '2020-02-19', '2020-02-21', 'The Sunan Hotel Jl. Ahmad Yani 40 Solo 57143', 'Mengikuti Pertemuan Koordinasi dan Evaluasi Program Kefarmasian dan Perbekalan Kesehatan di Jawa Tengah ', NULL, 1, NULL, 1, NULL, 'Umum', NULL, '2400000', '0', 1, NULL, '2020-02-12', '12', NULL);
INSERT INTO `tb_surat_tugas` VALUES (221, '2020-02-12', 207, 'ROK-APBD-Belanja BBM pembinaan perijinan', '2020-02-11', '2020-02-11', 'BPM Yuana Andriyani Desa Rajekwesi Mayong', 'Pembinaan perijinan', NULL, 0, 1, 1, NULL, 'Pribadi', 'K 8776 JL', '0', '100000', 1, NULL, '2020-02-11', '13', 'QR-20200212114435.png');
INSERT INTO `tb_surat_tugas` VALUES (222, '2020-02-12', 208, '', '2020-02-12', '2020-02-12', 'Puskesmas Bangsri II', 'monev program Diare', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-12', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (223, '2020-02-12', 209, 'ROK-DAK-Perdin ke Pusk. Kembang', '2020-02-12', '2020-02-12', 'Puskesmas Kembang', 'Pengiriman / droping obat - obatan & perbekes', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-12', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (224, NULL, 210, 'ROK-APBD-Pembinaan pelayanan kefarmasian ', '2020-02-12', '2020-02-12', 'Apotek Arjuna Kedungmalang  Tedunan , Klinik Armina Aulia Bangsri ', 'Pembinaan Pelayanan Kefarmasian ', NULL, 0, NULL, 1, NULL, 'Pribadi', 'K7326HC', '100000', '13', 1, NULL, '2020-02-03', '12', NULL);
INSERT INTO `tb_surat_tugas` VALUES (225, NULL, 211, 'ROK-APBD-Pembinaan pelayanan kefarmasian dan monitoring alkes ', '2020-02-05', '2020-02-05', 'Puskesmas Welahan I, Pecangaan , Tahunan ', 'Pembinaan pelayanan kefarmasian dan monitoring alkes ', NULL, 0, NULL, 1, NULL, 'Pribadi', 'K7326HC', '150000', '19', 1, NULL, '2020-02-05', '12', NULL);
INSERT INTO `tb_surat_tugas` VALUES (227, NULL, 212, 'ROK-APBD-BBM pemantau jentik desa (DBD)', '2020-02-12', '2020-02-12', 'Pusk. Kedung 2', 'Pemantauan jentik berkala', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-12', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (228, NULL, 213, '', '2020-02-13', '2020-02-13', 'PONPES BALEKAMBANG', 'Skrining TBC pada kelompok beresiko', NULL, 0, NULL, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-12', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (229, '2020-02-14', 214, '', '2020-02-13', '2020-02-13', 'PONPES BALEKAMBANG', 'skrining TBC pada kelompok beresiko', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-12', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (230, '2020-02-13', 215, '', '2020-02-13', '2020-02-13', '', 'monev program diare ke Puskesmas keling I', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-13', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (232, '2020-02-14', 216, 'SM-Surat izin operasional fasilitas kesehatan', '2020-02-13', '2020-02-13', 'RS PKU MUHAMMADIYAH MAYONG', 'Visitasi perijinan penyelenggaraan operasinal HD ( Haeodialisa)', NULL, 0, 1, 1, NULL, 'Dinas', 'K 9509 RL', '', '91800', 1, NULL, '2020-02-13', '15', 'QR-20200214082830.png');
INSERT INTO `tb_surat_tugas` VALUES (233, '2020-02-14', 217, 'ROK-DAK-BBM dalam rangka pendampingan pasca akreditasi Puskesmas Donorojo,Kembang,Pakisaji, Batealit Tahap I', '2020-02-12', '2020-02-12', 'Puskesmas Donorojo', 'Pendampingan pasca survey Akreditasi Puskesmas Donorojo', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-11', '15', NULL);
INSERT INTO `tb_surat_tugas` VALUES (234, NULL, 218, 'ROK-APBD-Pembinaan pelayanan kefarmasian ', '2020-02-03', '2020-02-03', 'Apotek Arjuna Kedungmalang  Tedunan , Klinik Armina Aulia Bangsri ', 'Pembinaan pelayanan kefarmasian ', NULL, 0, NULL, 1, NULL, 'Pribadi', 'K7326HC', '100000', '13', 1, NULL, '2020-02-03', '12', NULL);
INSERT INTO `tb_surat_tugas` VALUES (235, NULL, 219, 'ROK-APBD-Pembinaan pelayanan kefarmasian dan monitoring alkes ', '2020-02-13', '2020-02-13', 'Puskesmas Pecangaan , Welahan I, Tahunan ', 'Pembinaan yanfar dan monitoring alkes ', NULL, 0, NULL, 1, NULL, 'Pribadi', 'K7326HC', '150000', '19', 1, NULL, '2020-02-05', '12', NULL);
INSERT INTO `tb_surat_tugas` VALUES (236, '2020-02-13', 220, 'ROK-DAK-Perdin ke Pusk. Keling I', '2020-02-13', '2020-02-13', 'Puskesmas Keling I', 'Droping / pengiriman obat - obatan & perbekes', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-13', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (237, '2020-02-14', 221, '', '2020-02-17', '2020-02-17', 'PUSKESMAS KEDUNG I DAN PUSKESMAS KEDUNG II', 'Pendampingan dan Tatalaksana Pasien TBC oleh BALKESMAS SEMARANG dan DinKes Jepara pada tanggal 17 Februari 2020', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-14', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (238, '2020-02-13', 222, 'ROK-APBD-Belanja perjalanan dinas pembinaan perijinan', '2020-02-13', '2020-02-13', 'dr. Nor Farikhah Ds.Bakalan Kalinyamatan', 'Pembinaan perijinan', NULL, 0, 1, 1, NULL, 'Pribadi', 'K 8907 MT', '0', '76000', 1, NULL, '2020-02-14', '13', 'QR-20200214101955.png');
INSERT INTO `tb_surat_tugas` VALUES (239, '2020-02-14', 223, '', '2020-02-14', '2020-02-14', 'Puskesmas Keling II', 'Monev program diare', NULL, 0, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-14', '7', NULL);
INSERT INTO `tb_surat_tugas` VALUES (240, '2020-02-14', 224, 'ROK-DAK-Perdin ke Pusk. Pakis aji', '2020-02-14', '2020-02-14', 'Puskesmas Pakis aji', 'Droping / pengiriman obat - obatan & perbekes', NULL, 0, 0, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-14', '16', NULL);
INSERT INTO `tb_surat_tugas` VALUES (241, '2020-02-14', 225, '', '2020-02-03', '2020-02-03', 'Gedung Grandhika Bhakti Praja (Jalan Pahlawan No. 9 Semarang)', 'Mengikuti pertemuan peringatan hari kusta tahun 2020 \" Kusta Dapat di Sembuhkan\"', NULL, 1, 1, 0, NULL, NULL, NULL, NULL, NULL, 0, NULL, '2020-02-14', '7', NULL);

-- ----------------------------
-- Table structure for tb_user
-- ----------------------------
DROP TABLE IF EXISTS `tb_user`;
CREATE TABLE `tb_user`  (
  `id_user` int(11) NOT NULL AUTO_INCREMENT,
  `username_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `pass_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `level_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `posisi_user` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `id_pegawai` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  `ket` varchar(255) CHARACTER SET latin1 COLLATE latin1_swedish_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id_user`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 26 CHARACTER SET = latin1 COLLATE = latin1_swedish_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of tb_user
-- ----------------------------
INSERT INTO `tb_user` VALUES (3, 'Kadin', '73a2af8864fc500fa49048bf3003776c19938f360e56bd03663866fb3087884a', '2', '1', '54', '0');
INSERT INTO `tb_user` VALUES (8, 'Sekdin', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '3', '19', '5', '1');
INSERT INTO `tb_user` VALUES (10, 'Pemberantasan Penyakit', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2', '2', '6', '19');
INSERT INTO `tb_user` VALUES (11, 'Kesehatan Masyarakat', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2', '3', '7', '19');
INSERT INTO `tb_user` VALUES (12, 'Yankes dan SDK', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2', '4', '8', '19');
INSERT INTO `tb_user` VALUES (13, 'Renval Keuangan', '8e2970b99bd8e42d1843b2701941b617f0a05b076e8f908015b65906e6666e40', '2', '5', '23', '19');
INSERT INTO `tb_user` VALUES (14, 'Umum Kepegawaian', '84d89877f0d4041efb6bf91a16f0248f2fd573e6af05c19f96bedb9f882f7882', '2', '6', '110', '19');
INSERT INTO `tb_user` VALUES (15, 'Surveilans dan Imunisasi', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2', '9', '10', '2');
INSERT INTO `tb_user` VALUES (16, 'P2PM', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2', '7', '60', '2');
INSERT INTO `tb_user` VALUES (17, 'P2PTM', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2', '8', '6', '2');
INSERT INTO `tb_user` VALUES (18, 'Promkes dan Pemberdayaan Masyarakat', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2', '10', '25', '3');
INSERT INTO `tb_user` VALUES (19, 'Kesling', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2', '14', '59', '3');
INSERT INTO `tb_user` VALUES (20, 'Kesga Gizi', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2', '11', '5', '3');
INSERT INTO `tb_user` VALUES (21, 'Yankes', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2', '15', '7', '4');
INSERT INTO `tb_user` VALUES (22, 'Farmalkes dan Perbelkes', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2', '12', '18', '4');
INSERT INTO `tb_user` VALUES (23, 'SDMK', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2', '13', '15', '4');
INSERT INTO `tb_user` VALUES (24, 'Instalasi Farmasi Kabupaten', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2', '16', '61', '19');
INSERT INTO `tb_user` VALUES (25, 'Laboratorium Kesehatan', 'a665a45920422f9d417e4867efdc4fb8a04a1f3fff1fa07e998e86f7f7a27ae3', '2', '17', '56', '19');

-- ----------------------------
-- View structure for v_nota_detail
-- ----------------------------
DROP VIEW IF EXISTS `v_nota_detail`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_nota_detail` AS SELECT
tb_nota_detail.nomor_dinas,
tb_nota_detail.rok,
tb_nota_detail.nominal,
tb_nota_detail.alasan,
tb_rekening.kode_rekening,
tb_rekening.uraian_rekening
FROM
tb_nota_detail
INNER JOIN tb_rekening ON tb_nota_detail.id_rekening = tb_rekening.id_rekening ;

-- ----------------------------
-- View structure for v_pegawai
-- ----------------------------
DROP VIEW IF EXISTS `v_pegawai`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `v_pegawai` AS SELECT
tb_pegawai.id_pegawai,
tb_pegawai.nama_pegawai,
tb_pegawai.nip_pegawai,
tb_pegawai.pangkat_pegawai,
tb_pegawai.level_user,
tb_pegawai.posisi_user
FROM
tb_pegawai
ORDER BY
tb_pegawai.level_user ASC,
tb_pegawai.pangkat_pegawai ASC ;

SET FOREIGN_KEY_CHECKS = 1;
