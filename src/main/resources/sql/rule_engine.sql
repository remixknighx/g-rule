
CREATE TABLE `t_application` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `app_name` varchar(50) DEFAULT NOT NULL COMMENT '系统名称',
  `status` tinyint(4) DEFAULT NOT NULL COMMENT '状态: 1 启用 0 停用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '更新用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='业务系统表';

CREATE TABLE `t_interface` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` bigint(20) unsigned NOT NULL COMMENT 't_application表主键',
  `name` VARCHAR(50) NOT NULL COMMENT '接口名称',
  `url` VARCHAR(512) NOT NULL COMMENT '接口url',
  `type` TINYINT(4) NOT NULL COMMENT '接口类型 1:http接口 2:tcp接口 3:udp接口',
  `http_method` VARCHAR(50) NULL COMMENT 'http接口方法 GET POST PUT DELETE...',
  `sample_method` TINYINT(4) NOT NULL COMMENT '采样方式 1: count 2: 直接取值',
  `valid_param` VARCHAR(50) DEFAULT NULL COMMENT '待校验参数',
  `valid_type` VARCHAR(50) DEFAULT NULL COMMENT '校验类型 大于, 大于等于，小于，小于等于，等于',
  `threshold_value` INT(10) DEFAULT NULL COMMENT '阀值',
  `alarm_type` TINYINT(4)  DEFAULT NOT NULL COMMENT '告警方式 1: 短信 2: 邮件 3: 微信',
  `alarm_user` TINYINT(4)  DEFAULT NOT NULL COMMENT '告警人',
  `status` tinyint(4) DEFAULT NOT NULL COMMENT '状态: 1 启用 0 停用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '更新用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='接口表';

CREATE TABLE `t_interface_param` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `if_id` bigint(20) unsigned NOT NULL COMMENT 't_interface表主键',
  `param_type` tinyint(4) NOT NULL COMMENT '参数类型 1:header参数 2:body参数',
  `content_type` varchar(64) NULL COMMENT 'body的content_type application/json'
  `key` VARCHAR(50) NOT NULL COMMENT '参数名称',
  `value` VARCHAR(50) NOT NULL COMMENT '参数值',
  `status` tinyint(4) DEFAULT NOT NULL COMMENT '状态: 1 启用 0 停用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '更新用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='接口参数表';

CREATE TABLE `asso_if_monitor` (
    `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
    `if_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 't_interface表id',
    `template_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 't_monitor_template表id',
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='接口监控模板中间表';

CREATE TABLE `t_monitor_template` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `rule_name` VARCHAR(500) DEFAULT NOT NULL COMMENT '规则模板名称',
  `script` TEXT DEFAULT NOT NULL COMMENT 'groovy脚本',
  `description` VARCHAR(100) DEFAULT NULL COMMENT '规则模板描述',
  `status` tinyint(4) DEFAULT NOT NULL COMMENT '状态: 1 启用 0 停用',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `create_user` varchar(50) DEFAULT NULL COMMENT '创建用户',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `update_user` varchar(50) DEFAULT NULL COMMENT '更新用户',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='监控模板表';

CREATE TABLE `t_monitor_his` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `if_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 't_interface表id',
  `template_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT COMMENT 't_monitor_template表id',
  `status` tinyint(4) DEFAULT NOT NULL COMMENT '规则执行状态: 1: 成功 0:失败',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1 DEFAULT CHARSET=utf8 COMMENT='监控历史表';





