-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- 主机: localhost
-- 生成日期: 2018 年 08 月 05 日 10:58
-- 服务器版本: 5.6.12-log
-- PHP 版本: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- 数据库: `lechun`
--
CREATE DATABASE IF NOT EXISTS `lechun` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `lechun`;

-- --------------------------------------------------------

--
-- 表的结构 `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `pwd` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `type` enum('1','2','3') COLLATE utf8_unicode_ci NOT NULL,
  `img` varchar(500) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=3 ;

--
-- 转存表中的数据 `admin`
--

INSERT INTO `admin` (`id`, `name`, `pwd`, `type`, `img`) VALUES
(1, '雅三世', '123', '1', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1533199985556&di=4c0230bed44d0318fd19f88dc52341c9&imgtype=0&src=http%3A%2F%2Fpic35.photophoto.cn%2F20150626%2F0005018787746586_b.jpg'),
(2, '小疯子', '456', '2', 'https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1533200125687&di=9f61adb7895ec9291a7a453c2877e9ce&imgtype=0&src=http%3A%2F%2Fimg.zcool.cn%2Fcommunity%2F0194495548c85e0000019ae92dc5e7.jpg%401280w_1l_2o_100sh.png');

-- --------------------------------------------------------

--
-- 表的结构 `classification`
--

CREATE TABLE IF NOT EXISTS `classification` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `sTitle` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `list` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `its` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=5 ;

--
-- 转存表中的数据 `classification`
--

INSERT INTO `classification` (`id`, `title`, `sTitle`, `list`, `its`) VALUES
(1, '乐纯三三三倍酸奶·经典 135g', '三倍鲜牛奶 · 三倍乳酸菌 · 三倍优质蛋白', '[1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18]', 'A'),
(2, '乐纯三三三倍酸奶·纤巧 80g', '一次吃的完 · 想吃就吃无负担', '[2,7]', 'B'),
(3, '乐纯三三三倍酸奶·家庭装 500g', '全家人都喜欢 · 百搭基础款', '[19,20]', 'C'),
(4, '福利社·只选全球尖货', '用最划算的价格 · 买最优质的产品', '[9,6]', 'D');

-- --------------------------------------------------------

--
-- 表的结构 `list`
--

CREATE TABLE IF NOT EXISTS `list` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `phone` varchar(20) COLLATE utf8_bin NOT NULL,
  `paw` varchar(20) COLLATE utf8_bin NOT NULL,
  `message` varchar(200) COLLATE utf8_bin NOT NULL,
  `headerimg` varchar(600) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `list`
--

INSERT INTO `list` (`id`, `phone`, `paw`, `message`, `headerimg`) VALUES
(1, '18813049617', '666', '小疯子', 'http://imgtu.5011.net/uploads/content/20170209/4934501486627131.jpg'),
(7, '15534100700', '111', 'father', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1110741018,2010207349&fm=27&gp=0.jpg'),
(8, '15935892524', '111', '晨奇', 'https://ss1.bdstatic.com/70cFvXSh_Q1YnxGkpoWK1HF6hhy/it/u=1110741018,2010207349&fm=27&gp=0.jpg');

-- --------------------------------------------------------

--
-- 表的结构 `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `img_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `describe` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `bg_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `detail_img` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` float NOT NULL,
  `spec` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `introduce` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `constituent` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `ingredients` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `stock` varchar(200) COLLATE ujis_bin NOT NULL,
  `updataTime` varchar(200) COLLATE ujis_bin NOT NULL,
  `status` enum('1','2','3') CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '1',
  `goods` text COLLATE ujis_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=ujis COLLATE=ujis_bin AUTO_INCREMENT=30 ;

--
-- 转存表中的数据 `product`
--

INSERT INTO `product` (`id`, `img_url`, `title`, `describe`, `bg_url`, `detail_img`, `price`, `spec`, `introduce`, `constituent`, `ingredients`, `stock`, `updataTime`, `status`, `goods`) VALUES
(1, 'http://resource1.lechun.cc/proImgStorage/3197559187037236019_O.jpg', '紫薯黑米三三三倍酸奶', '紫粉色的 饱腹粗粮', 'http://resource2.lechun.cc/proImgStorage/3191573042574337165_O.jpg', 'http://resource2.lechun.cc/proImgStorage/3191408215534529521_O.jpg', 17.9, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">作为国内第一家紫薯黑米风味的希腊酸奶，紫薯搭配着黑米，口感很丰富，每一口都非常紧实。新鲜的紫薯碾压成泥，加上经过了多道工序精心烘焙的紫薯粉，使其颜色、风味和营养价值都得到了最大的保留。紫色的花青素混合上醇厚的酸奶，创造出了时尚浪漫的紫粉色，给你满满的幸福感</p>', 'http://resource2.lechun.cc/proImgStorage/3191408495227845245_O.jpg', '生牛乳（＞80%）、紫薯黑米椰子果味酱（添加量≥10%）、白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '300', '', '2', '50'),
(2, 'http://resource1.lechun.cc/proImgStorage/3192666236740573904_O.jpg', '红枣枸杞三三三倍酸奶', '美丽要趁枣;真实大枣肉', 'http://resource1.lechun.cc/proImgStorage/3178714186403588394_O.jpg', 'http://resource1.lechun.cc/proImgStorage/3178714124791574845_O.jpg', 15.9, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">红枣酸奶，是经典中的经典酸奶风味，乐纯一直在坚持寻找天然可以达成理想风味的原料。因此分别精选了原产地食材，以新疆楼兰红枣及宁夏枸杞作为原料添加，让每一口都可以吃到真实的红枣颗粒。红枣的甜糯，酸奶的醇厚，加上枸杞暖冬的感觉。一杯红枣枸杞酸奶让生活又健康又营养</p>', 'http://resource1.lechun.cc/proImgStorage/3178715420772962116_O.jpg', '生牛乳（＞80%）、红枣枸杞果酱（添加量≥10%）、白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '200', '', '2', '49'),
(3, 'http://resource1.lechun.cc/proImgStorage/3165351918121642215_O.jpg', '原味三三三倍酸奶', '每一口都像在舔盖儿', 'http://resource1.lechun.cc/proImgStorage/3190127499062577832_O.jpg', 'http://resource1.lechun.cc/proImgStorage/3146316697035152266_O.jpg', 15, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">只用高品质生牛乳，加上三种乳酸菌，做成这一款经典的原味酸奶。搭配独立蜂蜜包，可以根据你的喜好自由添加。配蜂蜜，配麦片，配核桃，配牛油果……配什么都好吃。</p>', 'http://resource2.lechun.cc/proImgStorage/3077430089496596981_O.jpg', '生牛乳、 白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '500', '', '1', '17'),
(4, 'http://resource1.lechun.cc/proImgStorage/3165352257186294240_O.jpg', '跳跳原味三三三倍酸奶', '一盒活蹦乱跳的酸奶', 'http://resource.lechun.cc/proImgStorage/3150826716902037025_O.jpg', 'http://resource2.lechun.cc/proImgStorage/3150826757416979346_O.jpg', 15.9, '[{"label":"净含量","value":"风味发酵乳135g，跳跳糖4g"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">还记得你最后一次吃跳跳糖是什么时候？即将为你带来全新创意吃法的，限量版跳跳糖酸奶，和100亿活菌一起，在你的嘴里霹雳啪啦的爆炸，每一口都能带你穿越回童年。在这之前，你应该从来没有想过，酸奶居然还能这样吃。</p>', 'http://resource2.lechun.cc/proImgStorage/3150826846582368116_O.jpg', '生牛乳、白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '15', '', '1', '13'),
(5, 'http://resource1.lechun.cc/proImgStorage/3165352493340651846_O.jpg', '抹茶三三三倍酸奶', '恬静清新', 'http://resource2.lechun.cc/proImgStorage/3190127260909653438_O.jpg', 'http://resource.lechun.cc/proImgStorage/3146316171937165718_O.jpg', 15.9, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">精选抹茶粉与三三三倍的滤乳清酸奶融合，抹茶的甘甜清香和元气酸奶的香浓醇厚相碰撞，就有了和抹茶冰淇淋一样好吃，而且还能越吃越轻的抹茶味乐纯。</p>', 'http://resource.lechun.cc/proImgStorage/3077429772201538444_O.jpg', '生牛乳、白砂糖、抹茶粉（添加量≥1%）、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '18', '', '1', '10'),
(6, 'http://resource2.lechun.cc/proImgStorage/3193599037574677743_O.jpg', '椰子玫瑰三三三倍酸奶', '口味升级;粉嫩少女心', 'http://resource1.lechun.cc/proImgStorage/3190127160033574940_O.jpg', 'http://resource.lechun.cc/proImgStorage/3146316591523293636_O.jpg', 15.9, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">如果你在谷歌上搜索Coconut Rose Yogurt，搜索结果中很难找到任何成型的菜谱或配方。而乐纯用一片片食用玫瑰花瓣和天然椰子粉做出了令酸奶爱好者惊艳的健康美食。</p>', 'http://resource2.lechun.cc/proImgStorage/3077430513432478550_O.jpg', '生牛乳（＞80%）、椰子玫瑰果酱（添加量≥10%）、白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌。', '90', '', '1', '8'),
(7, 'http://resource1.lechun.cc/proImgStorage/3165351216405808280_O.jpg', '榛子香草三三三倍酸奶', '经典甜品', 'http://resource.lechun.cc/proImgStorage/3190126289129192969_O.jpg', 'http://resource1.lechun.cc/proImgStorage/3146316822057967073_O.jpg', 15.9, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">取材于风靡全美的美国芝加哥华尔道夫酒店的Paris-Brest（车轮泡芙），我们用香浓的榛子酱和天然的香草粉做出了这一款令你停不下来的健康酸奶。</p>', 'http://resource1.lechun.cc/proImgStorage/3077430590753310804_O.jpg', '生牛乳（>80%）、 榛子香草苹果果味酱（添加量≥10%）、白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '88', '', '2', '10'),
(8, 'http://resource1.lechun.cc/proImgStorage/3165353411569231546_O.jpg', '零脂肪三三三倍酸奶', '0蔗糖', 'http://resource.lechun.cc/proImgStorage/3190126565669047339_O.jpg', 'http://resource2.lechun.cc/proImgStorage/3146316953718294737_O.jpg', 15.9, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">它和瓜果蔬菜一样自然，配料表：生牛乳，三种乳酸菌，没了。 更特别的是：0%脂肪，0%蔗糖，卡路里减半，却有超强饱腹感的300%蛋白质。</p>', 'http://resource1.lechun.cc/proImgStorage/3077430263322448488_O.jpg', '脱脂生牛乳、 保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '13', '', '1', '26'),
(9, 'http://resource2.lechun.cc/proImgStorage/3165352340730262527_O.jpg', '提拉米苏三三三倍酸奶', '用一盒酸奶的时间唤醒自己', 'http://resource2.lechun.cc/proImgStorage/3190126461946732663_O.jpg', 'http://resource2.lechun.cc/proImgStorage/3146316339587929774_O.jpg', 17.9, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">在这忙碌的日子里，用一盒酸奶的时间唤醒自己。我们时常会有昏昏欲睡，或是午后小疲惫的时候，这个比甜点低热量，还更营养的「下午茶必备」介绍给你，有它作伴的下午，为自己打打气。</p>', 'http://resource2.lechun.cc/proImgStorage/3142479537542536767_O.jpg', '生牛乳（＞80%）、提拉米苏苹果果味酱（添加量≥10%，内含1.5%酒精）、白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '6', '', '1', '100'),
(10, 'http://resource2.lechun.cc/proImgStorage/3173162976850800440_O.jpg', '桂花马蹄三三三倍酸奶', '凡吃过 口留香', 'http://resource2.lechun.cc/proImgStorage/3166058164753824253_O.jpg', 'http://resource.lechun.cc/proImgStorage/3166058116051484617_O.jpg', 17.9, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">采用浓郁纯粹的古法丹桂，配合达达的马蹄，召唤着你一口一口咀嚼它的爽脆，绵软的酸奶在口中融化，让你的味蕾感受到丰富有趣的层次。这股桂花的清香，还会化作一股优雅的气质，让你从内而外散发出来。水润香甜，一起愉快得对冬季的小燥气，say goodbye！</p>', 'http://resource1.lechun.cc/proImgStorage/3166057762411420902_O.jpg', '配料：生牛乳（＞80%）、桂花马蹄白桃果味酱（添加量≥10%）、白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '8', '', '1', '23'),
(11, 'http://resource2.lechun.cc/proImgStorage/3165352561419215075_O.jpg', '芒果菠萝三三三倍酸奶', '热情碰撞;带你到夏威夷', 'http://resource.lechun.cc/proImgStorage/3190126707337829053_O.jpg', 'http://resource.lechun.cc/proImgStorage/3146316108332295202_O.jpg', 15.9, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">选用正宗印度阿方索芒果、广西菠萝，带给你扑面而来的热带风情，一盒绝对不过瘾！</p>', 'http://resource2.lechun.cc/proImgStorage/3078891344385764989_O.jpg', '生牛乳、芒果菠萝果酱（添加量≥10%）、白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '5', '', '1', '18'),
(12, 'http://resource.lechun.cc/proImgStorage/3165352852202291989_O.jpg', '朗姆味红提三三三倍酸奶', '每一口都像在吻你', 'http://resource.lechun.cc/proImgStorage/3190126111273938652_O.jpg', 'http://resource.lechun.cc/proImgStorage/3146315886950514213_O.jpg', 15.9, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">它拥有意大利撩人的冰淇淋口味——朗姆红提，在此之前，从来没有人类想过把这个味道用在酸奶里。朗姆的甜润芬芳，配上来自美国红提干的葡萄香与果木香，第一口就能尝到爱的味道。</p>', 'http://resource1.lechun.cc/proImgStorage/3118273666995489806_O.jpg', '生牛乳、朗姆味提子干果味酱（添加量≥10%）、白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '4', '', '2', '19'),
(13, 'http://resource1.lechun.cc/proImgStorage/3183464980855457967_O.jpg', '蓝纹芝士三三三倍酸奶', '芝士就是力量;热销回归', 'http://resource1.lechun.cc/proImgStorage/3155747595842610024_O.jpg', 'http://resource2.lechun.cc/proImgStorage/3155747641117582004_O.jpg', 17.9, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">几乎没有人会拒绝芝士醇厚丝滑的奶香，而当我们把诞生于法国的蓝纹芝士和三三三倍的乐纯融为一体——不同层次的奶香碰撞出鲜美浓郁的幸福感。不管是直接吃，还是作为佐餐，这盒芝士味的乐纯都刚刚好，让人一整天都充满快乐的力量。</p>', 'http://resource.lechun.cc/proImgStorage/3155748816230204016_O.jpg', '生牛乳（＞80%）、蓝纹芝士酱（再制干酪）（添加量≥10%）、白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '9', '', '1', '12'),
(14, 'http://resource2.lechun.cc/proImgStorage/3165352792373024382_O.jpg', '藜麦燕麦三三三倍酸奶', '拯救上班族的全营养食物', 'http://resource2.lechun.cc/proImgStorage/3190126383368964589_O.jpg', 'http://resource.lechun.cc/proImgStorage/3146315955021437992_O.jpg', 17.9, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">根据饮食结构，成年人的每一顿饭需要摄入谷、肉、果、菜，才能获取到均衡的营养；这款选取安第斯山脉的原产白藜麦，作为“适宜人类的全营养食品”，就算工作再忙碌，也能让你方便地摄取全方位的营养噢，1盒藜麦燕麦味的乐纯就能帮你搞定。</p>', 'http://resource1.lechun.cc/proImgStorage/3123080447948215516_O.jpg', '生牛乳、藜麦燕麦柠檬果味酱（添加量≥14%）、白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '14', '', '1', '8'),
(15, 'http://resource.lechun.cc/proImgStorage/3165352409752943917_O.jpg', '茉莉花茶三三三倍酸奶', '让你一口就远离城市喧嚣', 'http://resource2.lechun.cc/proImgStorage/3190126197957247625_O.jpg', 'http://resource.lechun.cc/proImgStorage/3146316274268581089_O.jpg', 17.9, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">这款可以吃的花茶，选用了上等的茉莉花茶调制而成，它特有的芳香和茶味，应该能解救，正被困在来自环境、情绪、身体和精神等各种压力之中的你。用这个气定神闲的花茶酸奶犒劳一下自己。毕竟生活不止眼前的苟且，还有诗和远方。</p>', 'http://resource.lechun.cc/proImgStorage/3128519808519115808_O.jpg', '生牛乳、茉莉花茶柠檬果味酱（添加量≥10%）、白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '18', '', '1', '6'),
(16, 'http://resource.lechun.cc/proImgStorage/3165352154689540922_O.jpg', '小补给复合谷物零食包', '一盒5包;吃不停', 'http://resource.lechun.cc/proImgStorage/3146316417009179426_O.jpg', 'http://resource.lechun.cc/proImgStorage/3146316431631725649_O.jpg', 19.8, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">椰片、坚果、燕麦、果干等天然原料，富含不饱和脂肪酸、膳食纤维和维生素C，让久坐办公室的你也能持续集中注意力，腰肢变细，小腹变平，哪怕加班熬夜，皮肤也能水水的。今天，你需要一点儿「小补给」。</p>', 'http://resource2.lechun.cc/proImgStorage/3111719274749644615_O.jpg', '全麦脆粒（粳米、黑麦、淀粉、麦芽糊精、麦精、白砂糖、椰蓉（片）、植物油、全麦粉、磷脂、食用盐、甘油、柠檬酸、迷迭香提取物、维生素C）、原味核桃仁、蔓越橘干、甜味椰片、南瓜子仁', '44', '', '2', '4'),
(17, 'http://resource2.lechun.cc/proImgStorage/3193595050460596398_O.jpg', '谷物杯三三三倍酸奶', '谷物包+酸奶;体验升级', 'http://resource1.lechun.cc/proImgStorage/3172250122690735152_O.jpg', 'http://resource1.lechun.cc/proImgStorage/3172250083187612165_O.jpg', 20, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">自从大家学会了小补给加酸奶的吃法，很多伙伴们都反馈爱上了这种“有硬货”的口感。为了让大家更方便地体验到“嚼着吃的谷物酸奶”，所以谷物杯上线了。嘎嘣脆的混合谷物加上浓稠丝滑的酸奶，不仅是快捷的代餐选择更是健康的零食点心。嚼着吃的谷物酸奶，让饮食过程充满乐趣。</p>', 'http://resource2.lechun.cc/proImgStorage/3172251241979326270_O.jpg', '酸奶：生牛乳、 白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌 ；谷物包：燕麦脆（燕麦片、植物油、白砂糖、麦芽糖、全脂乳粉）、核桃仁、椰片、蔓越莓干、南瓜籽仁、扁桃仁、腰果、葡萄干。', '33', '', '2', '12'),
(18, 'http://resource.lechun.cc/proImgStorage/3170929287925553112_O.jpg', '巴旦木杏仁三三三倍酸奶', '可以吃的美颜秘籍', 'http://resource2.lechun.cc/proImgStorage/3164067986410997416_O.jpg', 'http://resource1.lechun.cc/proImgStorage/3164067418734181501_O.jpg', 17.9, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">古代宫廷，就有宫女和嫔妃们使用杏仁美容的记载，这一次我们将杏仁这个独具传统风味的食材，与来自西方的发酵工艺进行了结合，三倍原料包裹着浓郁的杏仁味道，并含有维生素E。杏仁20%的蛋白质，和丰富的不饱和脂肪酸，搭配巴旦木，每一口既香甜饱满又不失清爽。</p>', 'http://resource.lechun.cc/proImgStorage/3164817278371045559_O.jpg', '生牛乳（＞80%）、巴旦木杏仁椰浆果味酱（添加量≥10%）、白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '200', '', '2', '56'),
(19, 'http://resource.lechun.cc/proImgStorage/3179707695857687179_O.png', '家庭装原味三三三倍酸奶', '大包袋装;家庭装', 'http://resource1.lechun.cc/proImgStorage/3179707138302183764_O.png', 'http://resource.lechun.cc/proImgStorage/3204670396099809464_O.jpg', 41.85, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">原味家庭装500g，还是那个只用高品质生牛乳，加上三种乳酸菌的经典原味酸奶。家庭装，更多分享的乐趣。搭配独立蜂蜜包，可以根据你的喜好自由添加。配蜂蜜，配麦片，配核桃，配牛油果……配什么都好吃。分享的时刻最幸福。</p>', 'http://resource2.lechun.cc/proImgStorage/3179706386932198867_O.jpg', '生牛乳、 白砂糖、保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '150', '', '2', '12'),
(20, 'http://resource.lechun.cc/proImgStorage/3179708089212231263_O.png', '家庭装零脂肪三三三倍酸奶', '0蔗糖;健康的家庭生活', 'http://resource1.lechun.cc/proImgStorage/3179708201149303306_O.png', 'http://resource2.lechun.cc/proImgStorage/3204678482634440905_O.jpg', 45, '[{"label":"净含量","value":"135g/盒"},{"label":"保质期","value":"21天"},{"label":"储藏条件","value":"请于2-6 ℃冷藏保存"}]', '<p data-v-03afd364="">零脂家庭装，全家人的健康生活需要一起分享。它和瓜果蔬菜一样自然，配料表：生牛乳，三种乳酸菌，没了。 更特别的是：0%脂肪，0%蔗糖，卡路里减半，却有超强饱腹感的300%蛋白质。分享的时刻更加幸福。</p>', 'http://resource.lechun.cc/proImgStorage/3179706564495940388_O.jpg', '脱脂生牛乳、 保加利亚乳杆菌、嗜热链球菌、乳双歧杆菌', '11', '', '2', '80');

-- --------------------------------------------------------

--
-- 表的结构 `userdetail`
--

CREATE TABLE IF NOT EXISTS `userdetail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `label` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=50 ;

--
-- 转存表中的数据 `userdetail`
--

INSERT INTO `userdetail` (`id`, `name`, `phone`, `city`, `address`, `label`) VALUES
(11, '连小菊', '18813049617', '111', '北京', '公司'),
(17, '良子薇', '13111152648', '中国', '中国广东', '住宅'),
(25, '连小菊', '18813049617', '北京', '北京海淀', '住宅'),
(26, '雅三世', '18813042343', '山东', '山东济南大学', '住宅'),
(27, 'w3ew', '13111152648', 'dd', 'ss', '住宅'),
(28, 'w3ew', '13111152648', 'dd', 'ss', '住宅'),
(29, '111', '18813049617', '11', '11', '住宅'),
(30, 'lpk', '1881304892', '1', '1', '住宅'),
(31, 'lpk', '18813048922', '1', '1', '住宅'),
(32, '111', '13313237383', '1', '1', '住宅'),
(33, '111', '13313237383', '1', '1', '住宅'),
(34, '111', '13111176783', '1', '1', '住宅'),
(35, '111', '15935892524', '1', '1', '住宅'),
(36, 'werw', '13111163892', '1', '1', '住宅'),
(37, '111', '15534100700', '1', '1', '住宅'),
(38, '111', '18813049617', '11111', '111', '住宅'),
(39, '1111', '15534100700', '2', '2', '住宅'),
(40, '111', '13111176362', '2', '2', '住宅'),
(41, '123', '13111163728', '1', '1', '住宅'),
(42, '111', '13111152647', '11', '22', '住宅'),
(43, '111', '13111173827', '1', '2', '住宅'),
(44, '111', '15534100700', '1', '21', '住宅'),
(45, '雅疯子', '18813049716', '山西省', '山西省长治市', '住宅'),
(46, '2222', '18813049617', '111', '1111', '住宅'),
(47, '111', '1331138767', '·2', '1', '住宅'),
(48, '111', '13311387674', '·2', '1', '住宅'),
(49, '111', '13111152648', '111', '222', '住宅');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
