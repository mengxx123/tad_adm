CREATE TABLE `tad_adm` (
  `uid` smallint(6) unsigned NOT NULL COMMENT 'uid',
  `email` varchar(255) NOT NULL COMMENT 'email',
  `result` varchar(255) NOT NULL COMMENT '檢查結果',
  `chk_date` datetime NOT NULL COMMENT '檢查日',
PRIMARY KEY (`uid`)
) ENGINE=MyISAM;

