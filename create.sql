DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  `filename` varchar(255) NOT NULL,
  `type` varchar(16) DEFAULT NULL COMMENT '元画像タイプ',
  `width` int(10) unsigned DEFAULT NULL COMMENT '元画像幅',
  `height` int(10) unsigned DEFAULT NULL COMMENT '元画像高さ',
  `bits` int(10) unsigned DEFAULT NULL COMMENT '元画像ビット/ピクセル',
  `channels` int(10) unsigned DEFAULT NULL COMMENT '元画像チャンネル数',
  `processing_time` float DEFAULT NULL COMMENT '処理時間',
  `face_count` int(11) DEFAULT NULL COMMENT '認識された顔の数',
  `face_data` longtext COMMENT '解析結果データ',
  `cascade_xml_id` int(11) NOT NULL COMMENT '使用検出器ID',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=54 ;


DROP TABLE IF EXISTS `cascade_xmls`;
CREATE TABLE IF NOT EXISTS `cascade_xmls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `discription` varchar(255) NOT NULL COMMENT '説明',
  `filename` varchar(255) NOT NULL COMMENT 'XMLファイル名',
  `order` int(10) unsigned DEFAULT 0 COMMENT '表示順',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=20 ;

INSERT INTO `cascade_xmls` (`id`, `discription`, `filename`, `order`) VALUES
(1, '目', 'haarcascade_eye.xml', 0),
(2, '眼鏡をかけた目', 'haarcascade_eye_tree_eyeglasses.xml', 0),
(3, '正面顔(alt)', 'haarcascade_frontalface_alt.xml', 0),
(4, '正面顔(alt_tree)', 'haarcascade_frontalface_alt_tree.xml', 0),
(5, '正面顔(alt2)', 'haarcascade_frontalface_alt2.xml', 0),
(6, '正面顔(default)', 'haarcascade_frontalface_default.xml', 0),
(7, '全身', 'haarcascade_fullbody.xml', 0),
(8, '左目', 'haarcascade_lefteye_2splits.xml', 0),
(9, '下半身', 'haarcascade_lowerbody.xml', 0),
(10, '目(big)', 'haarcascade_mcs_eyepair_big.xml', 0),
(11, '目(small)', 'haarcascade_mcs_eyepair_small.xml', 0),
(12, '左目', 'haarcascade_mcs_lefteye.xml', 0),
(13, '口', 'haarcascade_mcs_mouth.xml', 0),
(14, '鼻', 'haarcascade_mcs_nose.xml', 0),
(15, '右目', 'haarcascade_mcs_righteye.xml', 0),
(16, '上半身', 'haarcascade_mcs_upperbody.xml', 0),
(17, '横顔', 'haarcascade_profileface.xml', 0),
(18, '右目', 'haarcascade_righteye_2splits.xml', 0),
(19, '上半身', 'haarcascade_upperbody.xml', 0),
(20, 'おっぱい', 'cascade_oppai.xml', 0),
(21, 'アニメ顔', 'haarcascade_animeface2.xml', 0),
(22, '手', 'haarcascade_hand.xml', 0);
