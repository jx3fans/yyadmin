/*
SQLyog Ultimate v11.24 (32 bit)
MySQL - 5.5.54 : Database - adminlte-admin
*********************************************************************
*/


/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
/*Table structure for table `sys_dept` */

DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `deptName` varchar(100) NOT NULL COMMENT '部门名称',
  `deptDesc` varchar(300) DEFAULT NULL COMMENT '描述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='部门表';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`id`,`deptName`,`deptDesc`) values ('9a329b597d754c4180c6b40cdfb0f565','产品部','cpb');

/*Table structure for table `sys_log` */

DROP TABLE IF EXISTS `sys_log`;

CREATE TABLE `sys_log` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `userName` varchar(50) NOT NULL COMMENT '用户',
  `title` varchar(300) DEFAULT NULL COMMENT '日志',
  `url` varchar(300) DEFAULT NULL COMMENT '地址',
  `params` text COMMENT '参数',
  `createTime` datetime DEFAULT NULL COMMENT '日志时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='日志表';

/*Data for the table `sys_log` */

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `menuName` varchar(50) NOT NULL COMMENT '菜单名称',
  `pid` varchar(50) NOT NULL COMMENT '父级菜单ID',
  `url` varchar(255) DEFAULT NULL COMMENT '连接地址',
  `icon` varchar(50) DEFAULT NULL COMMENT '图标',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `deep` int(11) DEFAULT NULL COMMENT '深度',
  `code` varchar(50) DEFAULT NULL COMMENT '编码',
  `resource` varchar(50) DEFAULT NULL COMMENT '资源名称',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='菜单表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`id`,`menuName`,`pid`,`url`,`icon`,`sort`,`deep`,`code`,`resource`) values ('0818e1c76bbd44eba3a698547ec4e637','查询系统设置','10',NULL,NULL,0,3,'010600','listSetting'),('0c9b5fc8b44b41d1871a8fc8300247ec','删除菜单','4',NULL,NULL,4,3,'010303','deleteMenu'),('1','系统管理','0',NULL,'fa fa-cogs',1,1,'01',NULL),('10','系统配置','1','system/setting/page',' fa-cog',6,2,'0106','setting'),('1db9105008404a3485b6fac30dba3c0e','查看角色列表','3',NULL,NULL,0,3,'010200','listRole'),('2','用户管理','1','system/user/list/1','fa-user-circle-o',1,2,'0101','user'),('22e38e885f9b40b9aae6a36deb78e89c','部门管理','1','system/dept/list/1','fa-graduation-cap',4,2,'0104','dept'),('3','角色管理','1','system/role/list/1','fa-users',2,2,'0102','role'),('363a778e78a346a68210b2590163a943','编辑部门','22e38e885f9b40b9aae6a36deb78e89c',NULL,NULL,2,3,'010402','editDept'),('3f26102ef0e04c3c9328cb97067cc5fa','创建菜单','4',NULL,NULL,1,3,'010301','addMenu'),('3fb6a7a5935b4efabf3de82e7e1baeb6','新增部门','22e38e885f9b40b9aae6a36deb78e89c',NULL,NULL,1,3,'010401','addDept'),('4','菜单管理','1','system/menu/list/1','fa-list',3,2,'0103','menu'),('4253190001c1480fb0d631d64d150535','编辑用户','2',NULL,NULL,2,3,'010102','editUser'),('42dd5ae31e3a43b3a197440e8ec19a94','监控列表','f5a20c82110b4a3ea9e30ca01a038680',NULL,NULL,1,3,'010701','monitorList'),('488ef1eff57b4827acade7c0744278ce','查看菜单列表','4',NULL,NULL,0,3,'010300','listMenu'),('4e816a9854714d24b0413d929d637a2b','查看部门列表','22e38e885f9b40b9aae6a36deb78e89c',NULL,NULL,0,3,'010400','listDept'),('5','业务日志','1','system/log/list/1','fa-info-circle',5,2,'0105','log'),('5bb55dd90ba44db39d6e3d7f3f316af0','类目管理','661a1f4a6ec94fa89ec6f90ce77a8eb3','goods/cat/list','fa-file',2,2,'0202',NULL),('5d3dd56c16ff4e32aecae1b3228159c7','查看日志列表','5',NULL,NULL,0,3,'010500','listLog'),('60dda993d87647f5989c15f14f866df9','新增角色','3',NULL,NULL,1,3,'010201','addRole'),('649b484b58414d91aefa5a26143e6557','删除用户','2',NULL,NULL,3,3,'010103','deleteUser'),('661a1f4a6ec94fa89ec6f90ce77a8eb3','商品管理','0',NULL,'fa-folder',1,1,'02',NULL),('686630c7cb624cc786dcdc9958971a6b','编辑角色','3',NULL,NULL,2,3,'010202','editRole'),('79d78b8357174cac8f44abd275dec597','删除部门','22e38e885f9b40b9aae6a36deb78e89c',NULL,NULL,3,3,'010403','deleteDept'),('915c309ebe5047b68645b3eb777dd8c9','操作系统设置','10',NULL,NULL,1,3,'010601','doSetting'),('a5ebf29168234406939856bc6890c86b','角色授权','3',NULL,NULL,4,3,'010204','authRole'),('a73802e513cc4465883530ec8074abbb','新增用户','2',NULL,NULL,1,3,'010101','addUser'),('b1487b113b324e79b7fbadbe28660349','采购管理','0',NULL,'fa-folder',3,1,'03',NULL),('b4e7232189b14cf3ba160cf7b0d3bf37','删除角色','3',NULL,NULL,3,3,'010203','deleteRole'),('d2bc30feb5474a1bb7e02d48d39a3f8a','查看用户列表','2',NULL,NULL,0,3,'010100','listUser'),('dc5f478d98ed4297a8ae638fe90df050','编辑菜单','4',NULL,NULL,3,3,'010302','editMenu'),('e0ff3505df7c4aff87c60bb510c6d274','仓库管理','0',NULL,'fa-folder',4,1,'04',NULL),('f5a20c82110b4a3ea9e30ca01a038680','系统监控','1','system/monitor/list','fa-eye',7,2,'0107',NULL),('f899f3d3baec4571b1c786717f9906fd','批量删除角色','3',NULL,NULL,5,3,'010205','deleteBatchRole'),('f8db3e5b12d04a46b07026e2828791fc','SPU管理','661a1f4a6ec94fa89ec6f90ce77a8eb3','spu/list','fa-file',1,2,'0201',NULL);

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `roleName` varchar(50) NOT NULL COMMENT '角色名称',
  `roleDesc` varchar(300) DEFAULT NULL COMMENT '角色描述',
  `roleState` int(2) DEFAULT '1' COMMENT '状态,1-启用,-1禁用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`id`,`roleName`,`roleDesc`,`roleState`,`createTime`) values ('b1f9ce5543a049be9f169a3f5e6b72a8','超级管理员','超级管理员',1,'2017-09-14 15:02:16');

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `roleId` varchar(50) NOT NULL COMMENT '角色主键',
  `menuId` varchar(50) NOT NULL COMMENT '菜单主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='角色菜单关联表';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`id`,`roleId`,`menuId`) values ('0209d5630f144ffbbee5b87bfb3633b5','b1f9ce5543a049be9f169a3f5e6b72a8','1db9105008404a3485b6fac30dba3c0e'),('04481a17a42b4c179c9d73fb72e58869','b1f9ce5543a049be9f169a3f5e6b72a8','3fb6a7a5935b4efabf3de82e7e1baeb6'),('0a1b67383a244c90a06b2973a9e77ee3','b1f9ce5543a049be9f169a3f5e6b72a8','363a778e78a346a68210b2590163a943'),('1546982656984864a00b403f1c075e02','b1f9ce5543a049be9f169a3f5e6b72a8','5bb55dd90ba44db39d6e3d7f3f316af0'),('234ba688192f4c9aaea36c0ef73b7b7b','b1f9ce5543a049be9f169a3f5e6b72a8','0818e1c76bbd44eba3a698547ec4e637'),('26253d20c5494d999e18298002580bb3','b1f9ce5543a049be9f169a3f5e6b72a8','686630c7cb624cc786dcdc9958971a6b'),('285f9f9815b0494f8cb8cae890dc9d4e','b1f9ce5543a049be9f169a3f5e6b72a8','60dda993d87647f5989c15f14f866df9'),('29b02d61b9374121960c392b0c095b0a','b1f9ce5543a049be9f169a3f5e6b72a8','b1487b113b324e79b7fbadbe28660349'),('2fabcb4bac8d481491bcf8efe91c6e3a','b1f9ce5543a049be9f169a3f5e6b72a8','a5ebf29168234406939856bc6890c86b'),('34eb1b3c61564ac98e8bfff5ebd4b847','b1f9ce5543a049be9f169a3f5e6b72a8','2'),('4567d99cf52a496787fa65f3a23f1c32','b1f9ce5543a049be9f169a3f5e6b72a8','5'),('45f7c9c93cef4e449699b688c2af038c','b1f9ce5543a049be9f169a3f5e6b72a8','b4e7232189b14cf3ba160cf7b0d3bf37'),('4e4274f007bf4e3f93b90160839622a2','b1f9ce5543a049be9f169a3f5e6b72a8','5d3dd56c16ff4e32aecae1b3228159c7'),('637ec8b6ad784b4bb5165c3998c5c05e','b1f9ce5543a049be9f169a3f5e6b72a8','4'),('6a56a5747c3048299a4da7c184b10a69','b1f9ce5543a049be9f169a3f5e6b72a8','d2bc30feb5474a1bb7e02d48d39a3f8a'),('70a5c8804764426481a1d6b55f2d279d','b1f9ce5543a049be9f169a3f5e6b72a8','4253190001c1480fb0d631d64d150535'),('733a9ca9d52e4ef8865dd1295a94d37b','b1f9ce5543a049be9f169a3f5e6b72a8','e0ff3505df7c4aff87c60bb510c6d274'),('7b5f175c5de7451ba5460a0bde201436','b1f9ce5543a049be9f169a3f5e6b72a8','f8db3e5b12d04a46b07026e2828791fc'),('818f045d067f46968f71e615fa28a575','b1f9ce5543a049be9f169a3f5e6b72a8','a73802e513cc4465883530ec8074abbb'),('91031c79a6fb458a8c34e8c478d64ba8','b1f9ce5543a049be9f169a3f5e6b72a8','42dd5ae31e3a43b3a197440e8ec19a94'),('ab84311db94b41d0bb9ed4c393689d4f','b1f9ce5543a049be9f169a3f5e6b72a8','488ef1eff57b4827acade7c0744278ce'),('b650b5c3fbde4493a43d6328acba8486','b1f9ce5543a049be9f169a3f5e6b72a8','915c309ebe5047b68645b3eb777dd8c9'),('bd6b73f9f9684399916de064ef2b2783','b1f9ce5543a049be9f169a3f5e6b72a8','4e816a9854714d24b0413d929d637a2b'),('c360227f9dc742519a6d01cb5e3ad151','b1f9ce5543a049be9f169a3f5e6b72a8','649b484b58414d91aefa5a26143e6557'),('cbf7eb64790f420abe53a75e515fee60','b1f9ce5543a049be9f169a3f5e6b72a8','79d78b8357174cac8f44abd275dec597'),('cc8c2d7437fd4779a808322a18aa49c2','b1f9ce5543a049be9f169a3f5e6b72a8','3f26102ef0e04c3c9328cb97067cc5fa'),('cc9c02a620424fc9965e4a643cdea378','b1f9ce5543a049be9f169a3f5e6b72a8','0c9b5fc8b44b41d1871a8fc8300247ec'),('df33a02b1b7747fa94a0bde927bc3cc8','b1f9ce5543a049be9f169a3f5e6b72a8','10'),('e7c413029ab54535a57f0e083b09ba7b','b1f9ce5543a049be9f169a3f5e6b72a8','1'),('ec877f815a064ef2be395aaf3e7c6f5d','b1f9ce5543a049be9f169a3f5e6b72a8','f899f3d3baec4571b1c786717f9906fd'),('f21c2e4cef114496872833d683b06330','b1f9ce5543a049be9f169a3f5e6b72a8','22e38e885f9b40b9aae6a36deb78e89c'),('fbc1e4a1b2ae4fca860b3f93e6bffe05','b1f9ce5543a049be9f169a3f5e6b72a8','661a1f4a6ec94fa89ec6f90ce77a8eb3'),('fd1d7e6b1f264e199d0b894acc4a9d8f','b1f9ce5543a049be9f169a3f5e6b72a8','f5a20c82110b4a3ea9e30ca01a038680'),('fdc18605311a4a37a65e1e39defa38be','b1f9ce5543a049be9f169a3f5e6b72a8','3'),('fef7263f7cef475596aef61c56b7f710','b1f9ce5543a049be9f169a3f5e6b72a8','dc5f478d98ed4297a8ae638fe90df050');

/*Table structure for table `sys_setting` */

DROP TABLE IF EXISTS `sys_setting`;

CREATE TABLE `sys_setting` (
  `Id` varchar(50) NOT NULL COMMENT '主键',
  `sysKey` varchar(50) NOT NULL COMMENT 'KEY',
  `sysName` varchar(50) NOT NULL COMMENT '名称',
  `sysValue` varchar(300) DEFAULT NULL COMMENT '值',
  `sort` int(11) DEFAULT '0' COMMENT '排序',
  `sysDesc` varchar(300) DEFAULT NULL COMMENT '说明',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='系统设置表';

/*Data for the table `sys_setting` */

insert  into `sys_setting`(`Id`,`sysKey`,`sysName`,`sysValue`,`sort`,`sysDesc`) values ('1','systemName','系统名称','YYAdmin后管平台',0,NULL),('2','systemSubName','系统简称','AA',1,NULL),('3','bottomCopyright','许可说明','Copyright © 2017 XX电商. All rights reserved.',2,NULL);

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `id` varchar(50) NOT NULL COMMENT '主键',
  `userName` varchar(50) NOT NULL COMMENT '用户名',
  `password` varchar(50) NOT NULL COMMENT '密码',
  `userState` int(2) NOT NULL DEFAULT '1' COMMENT '用户状态,1-启用,-1禁用',
  `createTime` datetime DEFAULT NULL COMMENT '创建时间',
  `userDesc` varchar(300) DEFAULT NULL COMMENT '描述',
  `userImg` varchar(300) DEFAULT 'http://news.mydrivers.com/Img/20110518/04481549.png' COMMENT '头像',
  `deptId` varchar(50) DEFAULT NULL COMMENT '部门主键',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`id`,`userName`,`password`,`userState`,`createTime`,`userDesc`,`userImg`,`deptId`) values ('c79ba431f9f74dfbae585b87b0cde933','admin','038bdaf98f2037b31f1e75b5b4c9b26e',1,'2017-09-14 15:02:17','','http://news.mydrivers.com/Img/20110518/04481549.png','9a329b597d754c4180c6b40cdfb0f565');

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `Id` varchar(50) NOT NULL COMMENT '主键',
  `userId` varchar(50) NOT NULL COMMENT '用户主键',
  `roleId` varchar(50) NOT NULL COMMENT '角色主键',
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户角色关联表';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`Id`,`userId`,`roleId`) values ('7d32e28ee3d1452d952f29764e989bab','c79ba431f9f74dfbae585b87b0cde933','b1f9ce5543a049be9f169a3f5e6b72a8');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
