/*
Navicat PGSQL Data Transfer

Source Server         : postgresql_192.168.71.49
Source Server Version : 90212
Source Host           : 192.168.71.49:5432
Source Database       : china
Source Schema         : china

Target Server Type    : PGSQL
Target Server Version : 90212
File Encoding         : 65001

Date: 2017-07-28 09:21:05
*/


-- ----------------------------
-- Table structure for s_city
-- ----------------------------
DROP TABLE IF EXISTS "china"."s_city";
CREATE TABLE "china"."s_city" (
"CityID" int8 NOT NULL,
"CityName" varchar(50) COLLATE "default",
"ZipCode" varchar(50) COLLATE "default",
"ProvinceID" int8
)
WITH (OIDS=FALSE)

;

-- ----------------------------
-- Records of s_city
-- ----------------------------
INSERT INTO "china"."s_city" VALUES ('1', '北京市', '100000', '1');
INSERT INTO "china"."s_city" VALUES ('2', '天津市', '100000', '2');
INSERT INTO "china"."s_city" VALUES ('3', '石家庄市', '050000', '3');
INSERT INTO "china"."s_city" VALUES ('4', '唐山市', '063000', '3');
INSERT INTO "china"."s_city" VALUES ('5', '秦皇岛市', '066000', '3');
INSERT INTO "china"."s_city" VALUES ('6', '邯郸市', '056000', '3');
INSERT INTO "china"."s_city" VALUES ('7', '邢台市', '054000', '3');
INSERT INTO "china"."s_city" VALUES ('8', '保定市', '071000', '3');
INSERT INTO "china"."s_city" VALUES ('9', '张家口市', '075000', '3');
INSERT INTO "china"."s_city" VALUES ('10', '承德市', '067000', '3');
INSERT INTO "china"."s_city" VALUES ('11', '沧州市', '061000', '3');
INSERT INTO "china"."s_city" VALUES ('12', '廊坊市', '065000', '3');
INSERT INTO "china"."s_city" VALUES ('13', '衡水市', '053000', '3');
INSERT INTO "china"."s_city" VALUES ('14', '太原市', '030000', '4');
INSERT INTO "china"."s_city" VALUES ('15', '大同市', '037000', '4');
INSERT INTO "china"."s_city" VALUES ('16', '阳泉市', '045000', '4');
INSERT INTO "china"."s_city" VALUES ('17', '长治市', '046000', '4');
INSERT INTO "china"."s_city" VALUES ('18', '晋城市', '048000', '4');
INSERT INTO "china"."s_city" VALUES ('19', '朔州市', '036000', '4');
INSERT INTO "china"."s_city" VALUES ('20', '晋中市', '030600', '4');
INSERT INTO "china"."s_city" VALUES ('21', '运城市', '044000', '4');
INSERT INTO "china"."s_city" VALUES ('22', '忻州市', '034000', '4');
INSERT INTO "china"."s_city" VALUES ('23', '临汾市', '041000', '4');
INSERT INTO "china"."s_city" VALUES ('24', '吕梁市', '030500', '4');
INSERT INTO "china"."s_city" VALUES ('25', '呼和浩特市', '010000', '5');
INSERT INTO "china"."s_city" VALUES ('26', '包头市', '014000', '5');
INSERT INTO "china"."s_city" VALUES ('27', '乌海市', '016000', '5');
INSERT INTO "china"."s_city" VALUES ('28', '赤峰市', '024000', '5');
INSERT INTO "china"."s_city" VALUES ('29', '通辽市', '028000', '5');
INSERT INTO "china"."s_city" VALUES ('30', '鄂尔多斯市', '010300', '5');
INSERT INTO "china"."s_city" VALUES ('31', '呼伦贝尔市', '021000', '5');
INSERT INTO "china"."s_city" VALUES ('32', '巴彦淖尔市', '014400', '5');
INSERT INTO "china"."s_city" VALUES ('33', '乌兰察布市', '011800', '5');
INSERT INTO "china"."s_city" VALUES ('34', '兴安盟', '137500', '5');
INSERT INTO "china"."s_city" VALUES ('35', '锡林郭勒盟', '011100', '5');
INSERT INTO "china"."s_city" VALUES ('36', '阿拉善盟', '016000', '5');
INSERT INTO "china"."s_city" VALUES ('37', '沈阳市', '110000', '6');
INSERT INTO "china"."s_city" VALUES ('38', '大连市', '116000', '6');
INSERT INTO "china"."s_city" VALUES ('39', '鞍山市', '114000', '6');
INSERT INTO "china"."s_city" VALUES ('40', '抚顺市', '113000', '6');
INSERT INTO "china"."s_city" VALUES ('41', '本溪市', '117000', '6');
INSERT INTO "china"."s_city" VALUES ('42', '丹东市', '118000', '6');
INSERT INTO "china"."s_city" VALUES ('43', '锦州市', '121000', '6');
INSERT INTO "china"."s_city" VALUES ('44', '营口市', '115000', '6');
INSERT INTO "china"."s_city" VALUES ('45', '阜新市', '123000', '6');
INSERT INTO "china"."s_city" VALUES ('46', '辽阳市', '111000', '6');
INSERT INTO "china"."s_city" VALUES ('47', '盘锦市', '124000', '6');
INSERT INTO "china"."s_city" VALUES ('48', '铁岭市', '112000', '6');
INSERT INTO "china"."s_city" VALUES ('49', '朝阳市', '122000', '6');
INSERT INTO "china"."s_city" VALUES ('50', '葫芦岛市', '125000', '6');
INSERT INTO "china"."s_city" VALUES ('51', '长春市', '130000', '7');
INSERT INTO "china"."s_city" VALUES ('52', '吉林市', '132000', '7');
INSERT INTO "china"."s_city" VALUES ('53', '四平市', '136000', '7');
INSERT INTO "china"."s_city" VALUES ('54', '辽源市', '136200', '7');
INSERT INTO "china"."s_city" VALUES ('55', '通化市', '134000', '7');
INSERT INTO "china"."s_city" VALUES ('56', '白山市', '134300', '7');
INSERT INTO "china"."s_city" VALUES ('57', '松原市', '131100', '7');
INSERT INTO "china"."s_city" VALUES ('58', '白城市', '137000', '7');
INSERT INTO "china"."s_city" VALUES ('59', '延边朝鲜族自治州', '133000', '7');
INSERT INTO "china"."s_city" VALUES ('60', '哈尔滨市', '150000', '8');
INSERT INTO "china"."s_city" VALUES ('61', '齐齐哈尔市', '161000', '8');
INSERT INTO "china"."s_city" VALUES ('62', '鸡西市', '158100', '8');
INSERT INTO "china"."s_city" VALUES ('63', '鹤岗市', '154100', '8');
INSERT INTO "china"."s_city" VALUES ('64', '双鸭山市', '155100', '8');
INSERT INTO "china"."s_city" VALUES ('65', '大庆市', '163000', '8');
INSERT INTO "china"."s_city" VALUES ('66', '伊春市', '152300', '8');
INSERT INTO "china"."s_city" VALUES ('67', '佳木斯市', '154000', '8');
INSERT INTO "china"."s_city" VALUES ('68', '七台河市', '154600', '8');
INSERT INTO "china"."s_city" VALUES ('69', '牡丹江市', '157000', '8');
INSERT INTO "china"."s_city" VALUES ('70', '黑河市', '164300', '8');
INSERT INTO "china"."s_city" VALUES ('71', '绥化市', '152000', '8');
INSERT INTO "china"."s_city" VALUES ('72', '大兴安岭地区', '165000', '8');
INSERT INTO "china"."s_city" VALUES ('73', '上海市', '200000', '9');
INSERT INTO "china"."s_city" VALUES ('74', '南京市', '210000', '10');
INSERT INTO "china"."s_city" VALUES ('75', '无锡市', '214000', '10');
INSERT INTO "china"."s_city" VALUES ('76', '徐州市', '221000', '10');
INSERT INTO "china"."s_city" VALUES ('77', '常州市', '213000', '10');
INSERT INTO "china"."s_city" VALUES ('78', '苏州市', '215000', '10');
INSERT INTO "china"."s_city" VALUES ('79', '南通市', '226000', '10');
INSERT INTO "china"."s_city" VALUES ('80', '连云港市', '222000', '10');
INSERT INTO "china"."s_city" VALUES ('81', '淮安市', '223200', '10');
INSERT INTO "china"."s_city" VALUES ('82', '盐城市', '224000', '10');
INSERT INTO "china"."s_city" VALUES ('83', '扬州市', '225000', '10');
INSERT INTO "china"."s_city" VALUES ('84', '镇江市', '212000', '10');
INSERT INTO "china"."s_city" VALUES ('85', '泰州市', '225300', '10');
INSERT INTO "china"."s_city" VALUES ('86', '宿迁市', '223800', '10');
INSERT INTO "china"."s_city" VALUES ('87', '杭州市', '310000', '11');
INSERT INTO "china"."s_city" VALUES ('88', '宁波市', '315000', '11');
INSERT INTO "china"."s_city" VALUES ('89', '温州市', '325000', '11');
INSERT INTO "china"."s_city" VALUES ('90', '嘉兴市', '314000', '11');
INSERT INTO "china"."s_city" VALUES ('91', '湖州市', '313000', '11');
INSERT INTO "china"."s_city" VALUES ('92', '绍兴市', '312000', '11');
INSERT INTO "china"."s_city" VALUES ('93', '金华市', '321000', '11');
INSERT INTO "china"."s_city" VALUES ('94', '衢州市', '324000', '11');
INSERT INTO "china"."s_city" VALUES ('95', '舟山市', '316000', '11');
INSERT INTO "china"."s_city" VALUES ('96', '台州市', '318000', '11');
INSERT INTO "china"."s_city" VALUES ('97', '丽水市', '323000', '11');
INSERT INTO "china"."s_city" VALUES ('98', '合肥市', '230000', '12');
INSERT INTO "china"."s_city" VALUES ('99', '芜湖市', '241000', '12');
INSERT INTO "china"."s_city" VALUES ('100', '蚌埠市', '233000', '12');
INSERT INTO "china"."s_city" VALUES ('101', '淮南市', '232000', '12');
INSERT INTO "china"."s_city" VALUES ('102', '马鞍山市', '243000', '12');
INSERT INTO "china"."s_city" VALUES ('103', '淮北市', '235000', '12');
INSERT INTO "china"."s_city" VALUES ('104', '铜陵市', '244000', '12');
INSERT INTO "china"."s_city" VALUES ('105', '安庆市', '246000', '12');
INSERT INTO "china"."s_city" VALUES ('106', '黄山市', '242700', '12');
INSERT INTO "china"."s_city" VALUES ('107', '滁州市', '239000', '12');
INSERT INTO "china"."s_city" VALUES ('108', '阜阳市', '236100', '12');
INSERT INTO "china"."s_city" VALUES ('109', '宿州市', '234100', '12');
INSERT INTO "china"."s_city" VALUES ('110', '巢湖市', '238000', '12');
INSERT INTO "china"."s_city" VALUES ('111', '六安市', '237000', '12');
INSERT INTO "china"."s_city" VALUES ('112', '亳州市', '236800', '12');
INSERT INTO "china"."s_city" VALUES ('113', '池州市', '247100', '12');
INSERT INTO "china"."s_city" VALUES ('114', '宣城市', '366000', '12');
INSERT INTO "china"."s_city" VALUES ('115', '福州市', '350000', '13');
INSERT INTO "china"."s_city" VALUES ('116', '厦门市', '361000', '13');
INSERT INTO "china"."s_city" VALUES ('117', '莆田市', '351100', '13');
INSERT INTO "china"."s_city" VALUES ('118', '三明市', '365000', '13');
INSERT INTO "china"."s_city" VALUES ('119', '泉州市', '362000', '13');
INSERT INTO "china"."s_city" VALUES ('120', '漳州市', '363000', '13');
INSERT INTO "china"."s_city" VALUES ('121', '南平市', '353000', '13');
INSERT INTO "china"."s_city" VALUES ('122', '龙岩市', '364000', '13');
INSERT INTO "china"."s_city" VALUES ('123', '宁德市', '352100', '13');
INSERT INTO "china"."s_city" VALUES ('124', '南昌市', '330000', '14');
INSERT INTO "china"."s_city" VALUES ('125', '景德镇市', '333000', '14');
INSERT INTO "china"."s_city" VALUES ('126', '萍乡市', '337000', '14');
INSERT INTO "china"."s_city" VALUES ('127', '九江市', '332000', '14');
INSERT INTO "china"."s_city" VALUES ('128', '新余市', '338000', '14');
INSERT INTO "china"."s_city" VALUES ('129', '鹰潭市', '335000', '14');
INSERT INTO "china"."s_city" VALUES ('130', '赣州市', '341000', '14');
INSERT INTO "china"."s_city" VALUES ('131', '吉安市', '343000', '14');
INSERT INTO "china"."s_city" VALUES ('132', '宜春市', '336000', '14');
INSERT INTO "china"."s_city" VALUES ('133', '抚州市', '332900', '14');
INSERT INTO "china"."s_city" VALUES ('134', '上饶市', '334000', '14');
INSERT INTO "china"."s_city" VALUES ('135', '济南市', '250000', '15');
INSERT INTO "china"."s_city" VALUES ('136', '青岛市', '266000', '15');
INSERT INTO "china"."s_city" VALUES ('137', '淄博市', '255000', '15');
INSERT INTO "china"."s_city" VALUES ('138', '枣庄市', '277100', '15');
INSERT INTO "china"."s_city" VALUES ('139', '东营市', '257000', '15');
INSERT INTO "china"."s_city" VALUES ('140', '烟台市', '264000', '15');
INSERT INTO "china"."s_city" VALUES ('141', '潍坊市', '261000', '15');
INSERT INTO "china"."s_city" VALUES ('142', '济宁市', '272100', '15');
INSERT INTO "china"."s_city" VALUES ('143', '泰安市', '271000', '15');
INSERT INTO "china"."s_city" VALUES ('144', '威海市', '265700', '15');
INSERT INTO "china"."s_city" VALUES ('145', '日照市', '276800', '15');
INSERT INTO "china"."s_city" VALUES ('146', '莱芜市', '271100', '15');
INSERT INTO "china"."s_city" VALUES ('147', '临沂市', '276000', '15');
INSERT INTO "china"."s_city" VALUES ('148', '德州市', '253000', '15');
INSERT INTO "china"."s_city" VALUES ('149', '聊城市', '252000', '15');
INSERT INTO "china"."s_city" VALUES ('150', '滨州市', '256600', '15');
INSERT INTO "china"."s_city" VALUES ('151', '荷泽市', '255000', '15');
INSERT INTO "china"."s_city" VALUES ('152', '郑州市', '450000', '16');
INSERT INTO "china"."s_city" VALUES ('153', '开封市', '475000', '16');
INSERT INTO "china"."s_city" VALUES ('154', '洛阳市', '471000', '16');
INSERT INTO "china"."s_city" VALUES ('155', '平顶山市', '467000', '16');
INSERT INTO "china"."s_city" VALUES ('156', '安阳市', '454900', '16');
INSERT INTO "china"."s_city" VALUES ('157', '鹤壁市', '456600', '16');
INSERT INTO "china"."s_city" VALUES ('158', '新乡市', '453000', '16');
INSERT INTO "china"."s_city" VALUES ('159', '焦作市', '454100', '16');
INSERT INTO "china"."s_city" VALUES ('160', '濮阳市', '457000', '16');
INSERT INTO "china"."s_city" VALUES ('161', '许昌市', '461000', '16');
INSERT INTO "china"."s_city" VALUES ('162', '漯河市', '462000', '16');
INSERT INTO "china"."s_city" VALUES ('163', '三门峡市', '472000', '16');
INSERT INTO "china"."s_city" VALUES ('164', '南阳市', '473000', '16');
INSERT INTO "china"."s_city" VALUES ('165', '商丘市', '476000', '16');
INSERT INTO "china"."s_city" VALUES ('166', '信阳市', '464000', '16');
INSERT INTO "china"."s_city" VALUES ('167', '周口市', '466000', '16');
INSERT INTO "china"."s_city" VALUES ('168', '驻马店市', '463000', '16');
INSERT INTO "china"."s_city" VALUES ('169', '武汉市', '430000', '17');
INSERT INTO "china"."s_city" VALUES ('170', '黄石市', '435000', '17');
INSERT INTO "china"."s_city" VALUES ('171', '十堰市', '442000', '17');
INSERT INTO "china"."s_city" VALUES ('172', '宜昌市', '443000', '17');
INSERT INTO "china"."s_city" VALUES ('173', '襄樊市', '441000', '17');
INSERT INTO "china"."s_city" VALUES ('174', '鄂州市', '436000', '17');
INSERT INTO "china"."s_city" VALUES ('175', '荆门市', '448000', '17');
INSERT INTO "china"."s_city" VALUES ('176', '孝感市', '432100', '17');
INSERT INTO "china"."s_city" VALUES ('177', '荆州市', '434000', '17');
INSERT INTO "china"."s_city" VALUES ('178', '黄冈市', '438000', '17');
INSERT INTO "china"."s_city" VALUES ('179', '咸宁市', '437000', '17');
INSERT INTO "china"."s_city" VALUES ('180', '随州市', '441300', '17');
INSERT INTO "china"."s_city" VALUES ('181', '恩施土家族苗族自治州', '445000', '17');
INSERT INTO "china"."s_city" VALUES ('182', '神农架', '442400', '17');
INSERT INTO "china"."s_city" VALUES ('183', '长沙市', '410000', '18');
INSERT INTO "china"."s_city" VALUES ('184', '株洲市', '412000', '18');
INSERT INTO "china"."s_city" VALUES ('185', '湘潭市', '411100', '18');
INSERT INTO "china"."s_city" VALUES ('186', '衡阳市', '421000', '18');
INSERT INTO "china"."s_city" VALUES ('187', '邵阳市', '422000', '18');
INSERT INTO "china"."s_city" VALUES ('188', '岳阳市', '414000', '18');
INSERT INTO "china"."s_city" VALUES ('189', '常德市', '415000', '18');
INSERT INTO "china"."s_city" VALUES ('190', '张家界市', '427000', '18');
INSERT INTO "china"."s_city" VALUES ('191', '益阳市', '413000', '18');
INSERT INTO "china"."s_city" VALUES ('192', '郴州市', '423000', '18');
INSERT INTO "china"."s_city" VALUES ('193', '永州市', '425000', '18');
INSERT INTO "china"."s_city" VALUES ('194', '怀化市', '418000', '18');
INSERT INTO "china"."s_city" VALUES ('195', '娄底市', '417000', '18');
INSERT INTO "china"."s_city" VALUES ('196', '湘西土家族苗族自治州', '416000', '18');
INSERT INTO "china"."s_city" VALUES ('197', '广州市', '510000', '19');
INSERT INTO "china"."s_city" VALUES ('198', '韶关市', '521000', '19');
INSERT INTO "china"."s_city" VALUES ('199', '深圳市', '518000', '19');
INSERT INTO "china"."s_city" VALUES ('200', '珠海市', '519000', '19');
INSERT INTO "china"."s_city" VALUES ('201', '汕头市', '515000', '19');
INSERT INTO "china"."s_city" VALUES ('202', '佛山市', '528000', '19');
INSERT INTO "china"."s_city" VALUES ('203', '江门市', '529000', '19');
INSERT INTO "china"."s_city" VALUES ('204', '湛江市', '524000', '19');
INSERT INTO "china"."s_city" VALUES ('205', '茂名市', '525000', '19');
INSERT INTO "china"."s_city" VALUES ('206', '肇庆市', '526000', '19');
INSERT INTO "china"."s_city" VALUES ('207', '惠州市', '516000', '19');
INSERT INTO "china"."s_city" VALUES ('208', '梅州市', '514000', '19');
INSERT INTO "china"."s_city" VALUES ('209', '汕尾市', '516600', '19');
INSERT INTO "china"."s_city" VALUES ('210', '河源市', '517000', '19');
INSERT INTO "china"."s_city" VALUES ('211', '阳江市', '529500', '19');
INSERT INTO "china"."s_city" VALUES ('212', '清远市', '511500', '19');
INSERT INTO "china"."s_city" VALUES ('213', '东莞市', '511700', '19');
INSERT INTO "china"."s_city" VALUES ('214', '中山市', '528400', '19');
INSERT INTO "china"."s_city" VALUES ('215', '潮州市', '515600', '19');
INSERT INTO "china"."s_city" VALUES ('216', '揭阳市', '522000', '19');
INSERT INTO "china"."s_city" VALUES ('217', '云浮市', '527300', '19');
INSERT INTO "china"."s_city" VALUES ('218', '南宁市', '530000', '20');
INSERT INTO "china"."s_city" VALUES ('219', '柳州市', '545000', '20');
INSERT INTO "china"."s_city" VALUES ('220', '桂林市', '541000', '20');
INSERT INTO "china"."s_city" VALUES ('221', '梧州市', '543000', '20');
INSERT INTO "china"."s_city" VALUES ('222', '北海市', '536000', '20');
INSERT INTO "china"."s_city" VALUES ('223', '防城港市', '538000', '20');
INSERT INTO "china"."s_city" VALUES ('224', '钦州市', '535000', '20');
INSERT INTO "china"."s_city" VALUES ('225', '贵港市', '537100', '20');
INSERT INTO "china"."s_city" VALUES ('226', '玉林市', '537000', '20');
INSERT INTO "china"."s_city" VALUES ('227', '百色市', '533000', '20');
INSERT INTO "china"."s_city" VALUES ('228', '贺州市', '542800', '20');
INSERT INTO "china"."s_city" VALUES ('229', '河池市', '547000', '20');
INSERT INTO "china"."s_city" VALUES ('230', '来宾市', '546100', '20');
INSERT INTO "china"."s_city" VALUES ('231', '崇左市', '532200', '20');
INSERT INTO "china"."s_city" VALUES ('232', '海口市', '570000', '21');
INSERT INTO "china"."s_city" VALUES ('233', '三亚市', '572000', '21');
INSERT INTO "china"."s_city" VALUES ('234', '重庆市', '400000', '22');
INSERT INTO "china"."s_city" VALUES ('235', '成都市', '610000', '23');
INSERT INTO "china"."s_city" VALUES ('236', '自贡市', '643000', '23');
INSERT INTO "china"."s_city" VALUES ('237', '攀枝花市', '617000', '23');
INSERT INTO "china"."s_city" VALUES ('238', '泸州市', '646100', '23');
INSERT INTO "china"."s_city" VALUES ('239', '德阳市', '618000', '23');
INSERT INTO "china"."s_city" VALUES ('240', '绵阳市', '621000', '23');
INSERT INTO "china"."s_city" VALUES ('241', '广元市', '628000', '23');
INSERT INTO "china"."s_city" VALUES ('242', '遂宁市', '629000', '23');
INSERT INTO "china"."s_city" VALUES ('243', '内江市', '641000', '23');
INSERT INTO "china"."s_city" VALUES ('244', '乐山市', '614000', '23');
INSERT INTO "china"."s_city" VALUES ('245', '南充市', '637000', '23');
INSERT INTO "china"."s_city" VALUES ('246', '眉山市', '612100', '23');
INSERT INTO "china"."s_city" VALUES ('247', '宜宾市', '644000', '23');
INSERT INTO "china"."s_city" VALUES ('248', '广安市', '638000', '23');
INSERT INTO "china"."s_city" VALUES ('249', '达州市', '635000', '23');
INSERT INTO "china"."s_city" VALUES ('250', '雅安市', '625000', '23');
INSERT INTO "china"."s_city" VALUES ('251', '巴中市', '635500', '23');
INSERT INTO "china"."s_city" VALUES ('252', '资阳市', '641300', '23');
INSERT INTO "china"."s_city" VALUES ('253', '阿坝藏族羌族自治州', '624600', '23');
INSERT INTO "china"."s_city" VALUES ('254', '甘孜藏族自治州', '626000', '23');
INSERT INTO "china"."s_city" VALUES ('255', '凉山彝族自治州', '615000', '23');
INSERT INTO "china"."s_city" VALUES ('256', '贵阳市', '55000', '24');
INSERT INTO "china"."s_city" VALUES ('257', '六盘水市', '553000', '24');
INSERT INTO "china"."s_city" VALUES ('258', '遵义市', '563000', '24');
INSERT INTO "china"."s_city" VALUES ('259', '安顺市', '561000', '24');
INSERT INTO "china"."s_city" VALUES ('260', '铜仁地区', '554300', '24');
INSERT INTO "china"."s_city" VALUES ('261', '黔西南布依族苗族自治州', '551500', '24');
INSERT INTO "china"."s_city" VALUES ('262', '毕节地区', '551700', '24');
INSERT INTO "china"."s_city" VALUES ('263', '黔东南苗族侗族自治州', '551500', '24');
INSERT INTO "china"."s_city" VALUES ('264', '黔南布依族苗族自治州', '550100', '24');
INSERT INTO "china"."s_city" VALUES ('265', '昆明市', '650000', '25');
INSERT INTO "china"."s_city" VALUES ('266', '曲靖市', '655000', '25');
INSERT INTO "china"."s_city" VALUES ('267', '玉溪市', '653100', '25');
INSERT INTO "china"."s_city" VALUES ('268', '保山市', '678000', '25');
INSERT INTO "china"."s_city" VALUES ('269', '昭通市', '657000', '25');
INSERT INTO "china"."s_city" VALUES ('270', '丽江市', '674100', '25');
INSERT INTO "china"."s_city" VALUES ('271', '思茅市', '665000', '25');
INSERT INTO "china"."s_city" VALUES ('272', '临沧市', '677000', '25');
INSERT INTO "china"."s_city" VALUES ('273', '楚雄彝族自治州', '675000', '25');
INSERT INTO "china"."s_city" VALUES ('274', '红河哈尼族彝族自治州', '654400', '25');
INSERT INTO "china"."s_city" VALUES ('275', '文山壮族苗族自治州', '663000', '25');
INSERT INTO "china"."s_city" VALUES ('276', '西双版纳傣族自治州', '666200', '25');
INSERT INTO "china"."s_city" VALUES ('277', '大理白族自治州', '671000', '25');
INSERT INTO "china"."s_city" VALUES ('278', '德宏傣族景颇族自治州', '678400', '25');
INSERT INTO "china"."s_city" VALUES ('279', '怒江傈僳族自治州', '671400', '25');
INSERT INTO "china"."s_city" VALUES ('280', '迪庆藏族自治州', '674400', '25');
INSERT INTO "china"."s_city" VALUES ('281', '拉萨市', '850000', '26');
INSERT INTO "china"."s_city" VALUES ('282', '昌都地区', '854000', '26');
INSERT INTO "china"."s_city" VALUES ('283', '山南地区', '856000', '26');
INSERT INTO "china"."s_city" VALUES ('284', '日喀则地区', '857000', '26');
INSERT INTO "china"."s_city" VALUES ('285', '那曲地区', '852000', '26');
INSERT INTO "china"."s_city" VALUES ('286', '阿里地区', '859100', '26');
INSERT INTO "china"."s_city" VALUES ('287', '林芝地区', '860100', '26');
INSERT INTO "china"."s_city" VALUES ('288', '西安市', '710000', '27');
INSERT INTO "china"."s_city" VALUES ('289', '铜川市', '727000', '27');
INSERT INTO "china"."s_city" VALUES ('290', '宝鸡市', '721000', '27');
INSERT INTO "china"."s_city" VALUES ('291', '咸阳市', '712000', '27');
INSERT INTO "china"."s_city" VALUES ('292', '渭南市', '714000', '27');
INSERT INTO "china"."s_city" VALUES ('293', '延安市', '716000', '27');
INSERT INTO "china"."s_city" VALUES ('294', '汉中市', '723000', '27');
INSERT INTO "china"."s_city" VALUES ('295', '榆林市', '719000', '27');
INSERT INTO "china"."s_city" VALUES ('296', '安康市', '725000', '27');
INSERT INTO "china"."s_city" VALUES ('297', '商洛市', '711500', '27');
INSERT INTO "china"."s_city" VALUES ('298', '兰州市', '730000', '28');
INSERT INTO "china"."s_city" VALUES ('299', '嘉峪关市', '735100', '28');
INSERT INTO "china"."s_city" VALUES ('300', '金昌市', '737100', '28');
INSERT INTO "china"."s_city" VALUES ('301', '白银市', '730900', '28');
INSERT INTO "china"."s_city" VALUES ('302', '天水市', '741000', '28');
INSERT INTO "china"."s_city" VALUES ('303', '武威市', '733000', '28');
INSERT INTO "china"."s_city" VALUES ('304', '张掖市', '734000', '28');
INSERT INTO "china"."s_city" VALUES ('305', '平凉市', '744000', '28');
INSERT INTO "china"."s_city" VALUES ('306', '酒泉市', '735000', '28');
INSERT INTO "china"."s_city" VALUES ('307', '庆阳市', '744500', '28');
INSERT INTO "china"."s_city" VALUES ('308', '定西市', '743000', '28');
INSERT INTO "china"."s_city" VALUES ('309', '陇南市', '742100', '28');
INSERT INTO "china"."s_city" VALUES ('310', '临夏回族自治州', '731100', '28');
INSERT INTO "china"."s_city" VALUES ('311', '甘南藏族自治州', '747000', '28');
INSERT INTO "china"."s_city" VALUES ('312', '西宁市', '810000', '29');
INSERT INTO "china"."s_city" VALUES ('313', '海东地区', '810600', '29');
INSERT INTO "china"."s_city" VALUES ('314', '海北藏族自治州', '810300', '29');
INSERT INTO "china"."s_city" VALUES ('315', '黄南藏族自治州', '811300', '29');
INSERT INTO "china"."s_city" VALUES ('316', '海南藏族自治州', '813000', '29');
INSERT INTO "china"."s_city" VALUES ('317', '果洛藏族自治州', '814000', '29');
INSERT INTO "china"."s_city" VALUES ('318', '玉树藏族自治州', '815000', '29');
INSERT INTO "china"."s_city" VALUES ('319', '海西蒙古族藏族自治州', '817000', '29');
INSERT INTO "china"."s_city" VALUES ('320', '银川市', '750000', '30');
INSERT INTO "china"."s_city" VALUES ('321', '石嘴山市', '753000', '30');
INSERT INTO "china"."s_city" VALUES ('322', '吴忠市', '751100', '30');
INSERT INTO "china"."s_city" VALUES ('323', '固原市', '756000', '30');
INSERT INTO "china"."s_city" VALUES ('324', '中卫市', '751700', '30');
INSERT INTO "china"."s_city" VALUES ('325', '乌鲁木齐市', '830000', '31');
INSERT INTO "china"."s_city" VALUES ('326', '克拉玛依市', '834000', '31');
INSERT INTO "china"."s_city" VALUES ('327', '吐鲁番地区', '838000', '31');
INSERT INTO "china"."s_city" VALUES ('328', '哈密地区', '839000', '31');
INSERT INTO "china"."s_city" VALUES ('329', '昌吉回族自治州', '831100', '31');
INSERT INTO "china"."s_city" VALUES ('330', '博尔塔拉蒙古自治州', '833400', '31');
INSERT INTO "china"."s_city" VALUES ('331', '巴音郭楞蒙古自治州', '841000', '31');
INSERT INTO "china"."s_city" VALUES ('332', '阿克苏地区', '843000', '31');
INSERT INTO "china"."s_city" VALUES ('333', '克孜勒苏柯尔克孜自治州', '835600', '31');
INSERT INTO "china"."s_city" VALUES ('334', '喀什地区', '844000', '31');
INSERT INTO "china"."s_city" VALUES ('335', '和田地区', '848000', '31');
INSERT INTO "china"."s_city" VALUES ('336', '伊犁哈萨克自治州', '833200', '31');
INSERT INTO "china"."s_city" VALUES ('337', '塔城地区', '834700', '31');
INSERT INTO "china"."s_city" VALUES ('338', '阿勒泰地区', '836500', '31');
INSERT INTO "china"."s_city" VALUES ('339', '石河子市', '832000', '31');
INSERT INTO "china"."s_city" VALUES ('340', '阿拉尔市', '843300', '31');
INSERT INTO "china"."s_city" VALUES ('341', '图木舒克市', '843900', '31');
INSERT INTO "china"."s_city" VALUES ('342', '五家渠市', '831300', '31');
INSERT INTO "china"."s_city" VALUES ('343', '香港特别行政区', '000000', '32');
INSERT INTO "china"."s_city" VALUES ('344', '澳门特别行政区', '000000', '33');
INSERT INTO "china"."s_city" VALUES ('345', '台湾省', '000000', '34');

-- ----------------------------
-- Alter Sequences Owned By 
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table s_city
-- ----------------------------
ALTER TABLE "china"."s_city" ADD PRIMARY KEY ("CityID");
