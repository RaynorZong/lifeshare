/*
 Navicat Premium Data Transfer

 Source Server         : MySQL1
 Source Server Type    : MySQL
 Source Server Version : 50643
 Source Host           : localhost:3306
 Source Schema         : kayla

 Target Server Type    : MySQL
 Target Server Version : 50643
 File Encoding         : 65001

 Date: 26/05/2019 19:42:03
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for t_admin
-- ----------------------------
DROP TABLE IF EXISTS `t_admin`;
CREATE TABLE `t_admin`  (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `head_portrait` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `password` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `phone` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `sex` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `signature` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `true_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `user_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`admin_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_admin
-- ----------------------------
INSERT INTO `t_admin` VALUES (1, '20190506054229.jpg', 'admin', '18533625690', '男', 'admin111', 'Admin', 'admin');

-- ----------------------------
-- Table structure for t_article
-- ----------------------------
DROP TABLE IF EXISTS `t_article`;
CREATE TABLE `t_article`  (
  `article_id` int(11) NOT NULL AUTO_INCREMENT,
  `author` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `click` int(11) NULL DEFAULT NULL,
  `comment_num` int(11) NULL DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL,
  `image_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `is_original` int(11) NULL DEFAULT NULL,
  `is_top` int(11) NULL DEFAULT NULL,
  `publish_date` datetime(0) NULL DEFAULT NULL,
  `title` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `classify_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`article_id`) USING BTREE,
  INDEX `FKo4fros4yfq1m9ay7sgtlcvbc4`(`classify_id`) USING BTREE,
  CONSTRAINT `FKo4fros4yfq1m9ay7sgtlcvbc4` FOREIGN KEY (`classify_id`) REFERENCES `t_classify` (`classify_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 61 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_article
-- ----------------------------
INSERT INTO `t_article` VALUES (11, 'Single·湘潭', 122, 3, '<p>接入支付宝的话，我们必须先成为支付宝开发者，我们要先入驻下，然后才能接入开发；</p>\n\n<p>&nbsp;</p>\n\n<p>登录&nbsp;<a href=\"https://open.alipay.com/\" target=\"_blank\" title=\"https://open.alipay.com/\">https://open.alipay.com/</a>&nbsp; 蚂蚁金服开放平台</p>\n\n<p>&nbsp;</p>\n\n<p>支付宝登录下</p>\n\n<p>点击右上角管理中心</p>\n\n<p><img alt=\"\" src=\"/static/images/20180610031331.jpg\" style=\"height:100%; width:100%\" /></p>\n\n<p>点击&ldquo;开始入驻&rdquo;，</p>\n\n<p>跳转到新页面，我们输入我们的个人信息，然后提交即可；</p>\n\n<p>&nbsp;</p>\n\n<p>入驻完毕后，进入后台管理；</p>\n\n<p><img alt=\"\" src=\"/static/images/20180610031408.jpg\" style=\"height:100%; width:100%\" /></p>\n\n<p>&nbsp;</p>\n\n<p>开发者中心，有开发者接入，比如我们可以接入网页&amp;移动应用快速支付，但是个人无法申请，需要有企业营业执照，所以我们学习的话，直接是右侧开发服务，研发服务，用到里面的沙箱模拟；</p>\n', '20180610031459.jpg', 1, 1, '2018-06-10 15:15:07', '支付宝开发者入驻', 12, 1);
INSERT INTO `t_article` VALUES (13, 'Single·湘潭', 67, 2, '<p>百度seo搜索引擎优化工具</p>\n\n<p>&nbsp;</p>\n\n<p>百度链接提交工具: http://zhanzhang.baidu.com/linksubmit/index&nbsp;</p>\n\n<p>百度博客提交: http://ping.baidu.com/ping.html</p>\n\n<p>百度信誉申请: http://trust.baidu.com/vstar/feedback</p>\n\n<p>百度死链提交入口: http://zhanzhang.baidu.com/badlink/index</p>\n\n<p>百度数据标注工具: http://zhanzhang.baidu.com/itemannotator/index</p>\n\n<p>百度站点子链工具: http://zhanzhang.baidu.com/sitelink/index</p>\n\n<p>百度站点属性工具: http://zhanzhang.baidu.com/property/index</p>\n\n<p>百度抓取频次检测工具: http://zhanzhang.baidu.com/pressure/index</p>\n\n<p>百度死链提交工具: http://zhanzhang.baidu.com/badlink/index</p>\n\n<p>百度新闻源投诉：http://tool.lusongsong.com/post/497.html<br />\n百度网页申诉：http://zhanzhang.baidu.com/feedback<br />\n百度百科删除工具：http://help.baidu.com/add?prod_id=10#3<br />\n百度百科举报工具：http://quzhanzhang.com/baidu/baikejubao/url/<br />\n百度百科投诉工具：http://quzhanzhang.com/baidu/baiketousu/url/<br />\n百度贴吧投诉工具：http://tieba.baidu.com/helpcenter/index#/index<br />\n百度快照更新工具：http://help.baidu.com/webmaster/add/#1<br />\n百度快照删除：http://quzhanzhang.com/baidu/kuaizhaoshanchu/url/<br />\n百度推广举报工具：http://quzhanzhang.com/baidu/tuiguangjubao/url/<br />\n百度快照更新投诉地址：http://help.baidu.com/webmaster/add/</p>\n\n<p>转自：<a href=\"http://www.tyseo.cn/seo/107.html\" target=\"_blank\">http://www.tyseo.cn/seo/107.html</a></p>\n', 'jzytp.JPG', 0, 0, '2018-07-15 11:46:44', '百度seo搜索引擎优化工具', 2, 1);
INSERT INTO `t_article` VALUES (15, 'Single·湘潭', 1178, 0, '<p>首先我们要下载 &nbsp;Centos&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://www.centos.org/\">https://www.centos.org/</a>&nbsp;这个是Centos官方 最新版本 7 &nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p><a href=\"https://www.centos.org/download/\">https://www.centos.org/download/</a></p>\n\n<p>&nbsp;</p>\n\n<p>提供有 DVD安装版本 &nbsp;完整版 以及Min版；</p>\n\n<p>&nbsp;</p>\n\n<p>我们为了方便在虚拟机中安装 我们要下载DVD版本，由于是国外线路 比较慢，我们一般是建议下载国内镜像。</p>\n\n<p>&nbsp;</p>\n\n<p>有很多科研机构 院校 大型互联网IT公司都提供有镜像下载，我个人推荐 阿里云镜像&nbsp;<a href=\"https://mirrors.aliyun.com/centos/7/isos/x86_64/\">https://mirrors.aliyun.com/centos/7/isos/x86_64/</a></p>\n\n<p>&nbsp;</p>\n\n<p>下载那个 DVD版本即可。</p>\n\n<p>&nbsp;</p>\n\n<p>我们打开之前安装的VM,</p>\n\n<p>点击 &ldquo;创建新的虚拟机&rdquo;：</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084134.jpg\" style=\"height:571px; width:917px\" /></p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084228.jpg\" style=\"height:490px; width:503px\" /></p>\n\n<p>我们选 典型 安装 &nbsp;简单点 然后下一步：</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084258.jpg\" style=\"height:490px; width:503px\" /></p>\n\n<p>我们稍后安装操作系统 ，点下一步：</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084315.jpg\" style=\"height:490px; width:503px\" /></p>\n\n<p>这里选 Linux 然后下拉 选CentOS 64位，然后下一步：</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084343.jpg\" style=\"height:490px; width:503px\" /></p>\n\n<p>这里我们选择下虚拟机的位置 （不要太复杂）；</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084401.jpg\" style=\"height:490px; width:503px\" /></p>\n\n<p>默认 下一步：</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084415.jpg\" style=\"height:490px; width:503px\" /></p>\n\n<p>点完成，</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084430.jpg\" style=\"height:571px; width:917px\" /></p>\n\n<p>OK 至此 一个类似没有操作系统的空壳&ldquo;机器&rdquo;安装好了；</p>\n\n<p>&nbsp;</p>\n\n<p>接下来，我们在这个&ldquo;机器&rdquo;上安装下 Centos操作系统；</p>\n\n<p>&nbsp;</p>\n\n<p>在安装操作系统之前 我们来给这个&ldquo;机器&rdquo;搞下配置；</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084450.jpg\" style=\"height:571px; width:917px\" /></p>\n\n<p>双击这些配置项，进入配置界面：</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084507.jpg\" style=\"height:664px; width:735px\" /></p>\n\n<p>这里有个CD/DVD要配置下：</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084531.jpg\" style=\"height:664px; width:735px\" /></p>\n\n<p>选择使用ISO镜像，要选择我们下载的Centos操作系统的文件；</p>\n\n<p>&nbsp;</p>\n\n<p>以及网络适配器要改下：</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084548.jpg\" style=\"height:664px; width:735px\" /></p>\n\n<p>改成&ldquo;桥接模式&rdquo;，这样可以使我们的真是机器和虚拟机能通信；</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>接下来 我们点击 VM里的 &ldquo;开启此虚拟机&rdquo;来安装Centos操作系统</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084603.jpg\" style=\"height:553px; width:739px\" /></p>\n\n<p>选第一个 安装；</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084619.jpg\" style=\"height:347px; width:593px\" /></p>\n\n<p>按 &quot;Enter&quot;，开始安装程序；执行一会会出现如下，进入图形界面配置：</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084633.jpg\" style=\"height:616px; width:811px\" /></p>\n\n<p>我们选中文简体，然后 点&ldquo;继续&rdquo;：</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084647.jpg\" style=\"height:611px; width:766px\" /></p>\n\n<p>这里 假如有 感叹号的地方 要双击进去配置下 然后点&ldquo;开始安装&rdquo;：</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084704.jpg\" style=\"height:610px; width:763px\" /></p>\n\n<p>这里要给最好权限用户 Root 设置下密码 正式环境要复杂点 我们学习的话 简单点的 123456 即可；</p>\n\n<p>&nbsp;</p>\n\n<p>然后再等个大概10分钟，让它慢慢安装吧；</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084722.jpg\" style=\"height:605px; width:736px\" /></p>\n\n<p>安装完后，点下 &ldquo;重新启动&rdquo;；</p>\n\n<p><img alt=\"\" src=\"/static/images/20180611084736.jpg\" style=\"height:447px; width:668px\" /></p>\n\n<p>OK 至此 Centos在虚拟机中安装成功 ；</p>\n', '20180611084101.jpg', 1, 0, '2018-07-15 11:46:28', '在VM虚拟机中安装Centos操作系统', 9, 1);
INSERT INTO `t_article` VALUES (19, 'Single·湘潭', 48, 0, '<p>Dubbo是阿里巴巴公司开源的一个高性能优秀的服务框架，使得应用可通过高性能的 RPC 实现服务的输出和输入功能，可以和Spring框架无缝集成。</p>\n\n<p>具体可以看 百度百科&nbsp;<a href=\"https://baike.baidu.com/item/Dubbo/18907815?fr=aladdin\" target=\"_blank\" title=\"https://baike.baidu.com/item/Dubbo/18907815?fr=aladdin\"><span style=\"color:#3498db\">https://baike.baidu.com/item/Dubbo/18907815?fr=aladdin</span></a></p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp; &nbsp; &nbsp; Dubbo主页地址&nbsp;&nbsp;<a href=\"http://dubbo.io/\" target=\"_blank\" title=\"http://dubbo.io/\"><span style=\"color:#3498db\">http://dubbo.io/</span></a>&nbsp; &nbsp;</p>\n\n<p>&nbsp; &nbsp; &nbsp; 托管GitHub&nbsp;<a href=\"https://github.com/alibaba/dubbo\" target=\"_blank\" title=\"https://github.com/alibaba/dubbo\"><span style=\"color:#3498db\">https://github.com/alibaba/dubbo</span></a>&nbsp; &nbsp;我们学习的话 主要看这个github主页。</p>\n\n<p>&nbsp; &nbsp; &nbsp; Dubbo用户手册<a href=\"http://dubbo.apache.org/books/dubbo-user-book/\" target=\"_blank\"><span style=\"color:#3498db\">http://dubbo.apache.org/books/dubbo-user-book/</span></a>&nbsp;Dubbo介绍以及使用方案以及很多的实例；</p>\n\n<p>&nbsp; &nbsp; &nbsp; Dubbo开发指南&nbsp;<a href=\"http://dubbo.apache.org/books/dubbo-dev-book/\" target=\"_blank\" title=\"http://dubbo.io/books/dubbo-dev-book/\"><span style=\"color:#3498db\">http://dubbo.apache.org/books/dubbo-dev-book/</span></a>&nbsp; Dubbo底层源码以及设计的介绍；</p>\n\n<p>&nbsp; &nbsp; &nbsp; Dubbo管理手册&nbsp;<a href=\"http://dubbo.apache.org/books/dubbo-admin-book/\" target=\"_blank\" title=\"http://dubbo.io/books/dubbo-admin-book/\"><span style=\"color:#3498db\">http://dubbo.apache.org/books/dubbo-admin-book/</span></a>&nbsp; Dubbo注册中心，管理控制台的安装和使用；</p>\n\n<p>&nbsp;</p>\n\n<p>下载是Dubbo的简介，内容来自Dubbo用户手册；</p>\n\n<p>&nbsp;</p>\n\n<h1><span style=\"font-size:36px\">背景</span></h1>\n\n<p>随着互联网的发展，网站应用的规模不断扩大，常规的垂直应用架构已无法应对，分布式服务架构以及流动计算架构势在必行，亟需一个治理系统确保架构有条不紊的演进。</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/static/images/20180615103011.png\" style=\"height:210px; width:701px\" /></p>\n\n<p>&nbsp;</p>\n\n<h2>单一应用架构</h2>\n\n<p>当网站流量很小时，只需一个应用，将所有功能都部署在一起，以减少部署节点和成本。此时，用于简化增删改查工作量的数据访问框架(ORM)是关键。</p>\n\n<h2>垂直应用架构</h2>\n\n<p>当访问量逐渐增大，单一应用增加机器带来的加速度越来越小，将应用拆成互不相干的几个应用，以提升效率。此时，用于加速前端页面开发的Web框架(MVC)是关键。</p>\n\n<h2>分布式服务架构</h2>\n\n<p>当垂直应用越来越多，应用之间交互不可避免，将核心业务抽取出来，作为独立的服务，逐渐形成稳定的服务中心，使前端应用能更快速的响应多变的市场需求。此时，用于提高业务复用及整合的分布式服务框架(RPC)是关键。</p>\n\n<h2>流动计算架构</h2>\n\n<p>当服务越来越多，容量的评估，小服务资源的浪费等问题逐渐显现，此时需增加一个调度中心基于访问压力实时管理集群容量，提高集群利用率。此时，用于提高机器利用率的资源调度和治理中心(SOA)是关键。</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n\n<h1><span style=\"font-size:36px\">需求</span></h1>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/static/images/20180615102950.jpg\" style=\"height:400px; width:700px\" /></p>\n\n<p>&nbsp;</p>\n\n<p>在大规模服务化之前，应用可能只是通过 RMI 或 Hessian 等工具，简单的暴露和引用远程服务，通过配置服务的URL地址进行调用，通过 F5 等硬件进行负载均衡。</p>\n\n<p>当服务越来越多时，服务 URL 配置管理变得非常困难，F5 硬件负载均衡器的单点压力也越来越大。&nbsp;此时需要一个服务注册中心，动态的注册和发现服务，使服务的位置透明。并通过在消费方获取服务提供方地址列表，实现软负载均衡和 Failover，降低对 F5 硬件负载均衡器的依赖，也能减少部分成本。</p>\n\n<p>当进一步发展，服务间依赖关系变得错踪复杂，甚至分不清哪个应用要在哪个应用之前启动，架构师都不能完整的描述应用的架构关系。&nbsp;这时，需要自动画出应用间的依赖关系图，以帮助架构师理清理关系。</p>\n\n<p>接着，服务的调用量越来越大，服务的容量问题就暴露出来，这个服务需要多少机器支撑？什么时候该加机器？&nbsp;为了解决这些问题，第一步，要将服务现在每天的调用量，响应时间，都统计出来，作为容量规划的参考指标。其次，要可以动态调整权重，在线上，将某台机器的权重一直加大，并在加大的过程中记录响应时间的变化，直到响应时间到达阀值，记录此时的访问量，再以此访问量乘以机器数反推总容量。</p>\n\n<p>以上是 Dubbo 最基本的几个需求。</p>\n\n<h1>&nbsp;</h1>\n\n<h1><span style=\"font-size:36px\">架构</span></h1>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/static/images/20180615103209.jpg\" style=\"height:300px; width:450px\" /></p>\n\n<p>&nbsp;</p>\n\n<h5>节点角色说明</h5>\n\n<table style=\"width:770px\">\n	<thead>\n		<tr>\n			<th>节点</th>\n			<th>角色说明</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td><code>Provider</code></td>\n			<td>暴露服务的服务提供方</td>\n		</tr>\n		<tr>\n			<td><code>Consumer</code></td>\n			<td>调用远程服务的服务消费方</td>\n		</tr>\n		<tr>\n			<td><code>Registry</code></td>\n			<td>服务注册与发现的注册中心</td>\n		</tr>\n		<tr>\n			<td><code>Monitor</code></td>\n			<td>统计服务的调用次数和调用时间的监控中心</td>\n		</tr>\n		<tr>\n			<td><code>Container</code></td>\n			<td>服务运行容器</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<h5>调用关系说明</h5>\n\n<ol>\n	<li>\n	<p>服务容器负责启动，加载，运行服务提供者。</p>\n	</li>\n	<li>\n	<p>服务提供者在启动时，向注册中心注册自己提供的服务。</p>\n	</li>\n	<li>\n	<p>服务消费者在启动时，向注册中心订阅自己所需的服务。</p>\n	</li>\n	<li>\n	<p>注册中心返回服务提供者地址列表给消费者，如果有变更，注册中心将基于长连接推送变更数据给消费者。</p>\n	</li>\n	<li>\n	<p>服务消费者，从提供者地址列表中，基于软负载均衡算法，选一台提供者进行调用，如果调用失败，再选另一台调用。</p>\n	</li>\n	<li>\n	<p>服务消费者和提供者，在内存中累计调用次数和调用时间，定时每分钟发送一次统计数据到监控中心。</p>\n	</li>\n</ol>\n\n<p>Dubbo 架构具有以下几个特点，分别是连通性、健壮性、伸缩性、以及向未来架构的升级性。</p>\n\n<h2>连通性</h2>\n\n<ul>\n	<li>\n	<p>注册中心负责服务地址的注册与查找，相当于目录服务，服务提供者和消费者只在启动时与注册中心交互，注册中心不转发请求，压力较小</p>\n	</li>\n	<li>\n	<p>监控中心负责统计各服务调用次数，调用时间等，统计先在内存汇总后每分钟一次发送到监控中心服务器，并以报表展示</p>\n	</li>\n	<li>\n	<p>服务提供者向注册中心注册其提供的服务，并汇报调用时间到监控中心，此时间不包含网络开销</p>\n	</li>\n	<li>\n	<p>服务消费者向注册中心获取服务提供者地址列表，并根据负载算法直接调用提供者，同时汇报调用时间到监控中心，此时间包含网络开销</p>\n	</li>\n	<li>\n	<p>注册中心，服务提供者，服务消费者三者之间均为长连接，监控中心除外</p>\n	</li>\n	<li>\n	<p>注册中心通过长连接感知服务提供者的存在，服务提供者宕机，注册中心将立即推送事件通知消费者</p>\n	</li>\n	<li>\n	<p>注册中心和监控中心全部宕机，不影响已运行的提供者和消费者，消费者在本地缓存了提供者列表</p>\n	</li>\n	<li>\n	<p>注册中心和监控中心都是可选的，服务消费者可以直连服务提供者</p>\n	</li>\n</ul>\n\n<h2>健状性</h2>\n\n<ul>\n	<li>\n	<p>监控中心宕掉不影响使用，只是丢失部分采样数据</p>\n	</li>\n	<li>\n	<p>数据库宕掉后，注册中心仍能通过缓存提供服务列表查询，但不能注册新服务</p>\n	</li>\n	<li>\n	<p>注册中心对等集群，任意一台宕掉后，将自动切换到另一台</p>\n	</li>\n	<li>\n	<p>注册中心全部宕掉后，服务提供者和服务消费者仍能通过本地缓存通讯</p>\n	</li>\n	<li>\n	<p>服务提供者无状态，任意一台宕掉后，不影响使用</p>\n	</li>\n	<li>\n	<p>服务提供者全部宕掉后，服务消费者应用将无法使用，并无限次重连等待服务提供者恢复</p>\n	</li>\n</ul>\n\n<h2>伸缩性</h2>\n\n<ul>\n	<li>\n	<p>注册中心为对等集群，可动态增加机器部署实例，所有客户端将自动发现新的注册中心</p>\n	</li>\n	<li>\n	<p>服务提供者无状态，可动态增加机器部署实例，注册中心将推送新的服务提供者信息给消费者</p>\n	</li>\n</ul>\n\n<h2>升级性</h2>\n\n<p>当服务集群规模进一步扩大，带动IT治理结构进一步升级，需要实现动态部署，进行流动计算，现有分布式服务架构不会带来阻力。下图是未来可能的一种架构：</p>\n\n<p>&nbsp;</p>\n\n<p><img alt=\"\" src=\"/static/images/20180615103459.jpg\" style=\"height:400px; width:600px\" /></p>\n\n<h5>节点角色说明</h5>\n\n<table style=\"width:770px\">\n	<thead>\n		<tr>\n			<th>节点</th>\n			<th>角色说明</th>\n		</tr>\n	</thead>\n	<tbody>\n		<tr>\n			<td><code>Deployer</code></td>\n			<td>自动部署服务的本地代理</td>\n		</tr>\n		<tr>\n			<td><code>Repository</code></td>\n			<td>仓库用于存储服务应用发布包</td>\n		</tr>\n		<tr>\n			<td><code>Scheduler</code></td>\n			<td>调度中心基于访问压力自动增减服务提供者</td>\n		</tr>\n		<tr>\n			<td><code>Admin</code></td>\n			<td>统一管理控制台</td>\n		</tr>\n		<tr>\n			<td><code>Registry</code></td>\n			<td>服务注册与发现的注册中心</td>\n		</tr>\n		<tr>\n			<td><code>Monitor</code></td>\n			<td>统计服务的调用次数和调用时间的监控中心</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', '20180615103615.jpg', 1, 0, '2018-07-15 11:46:05', 'Dubbo 简介', 8, 1);
INSERT INTO `t_article` VALUES (37, 'Single·湘潭', 7, 0, '<p>Spring boot下的Spring mvc 和之前的Spring mvc使用是完全一样的：</p>\n\n<p>&nbsp; &nbsp; &nbsp; &nbsp;</p>\n\n<table border=\"1\" cellpadding=\"1\" cellspacing=\"1\" style=\"width:500px\">\n	<tbody>\n		<tr>\n			<td>@Controller</td>\n			<td>即为Spring mvc的注解，处理http请求；</td>\n		</tr>\n		<tr>\n			<td>@RestController</td>\n			<td>\n			<p>是@Controller与@ResponseBody的组合注解；</p>\n\n			<p>用于返回字符串或json数据；</p>\n			</td>\n		</tr>\n		<tr>\n			<td>@GetMapping</td>\n			<td>RequestMapping 和 Get请求方法的组合；</td>\n		</tr>\n		<tr>\n			<td>@PostMapping</td>\n			<td>RequestMapping 和 Post请求方法的组合；</td>\n		</tr>\n		<tr>\n			<td>@PutMapping</td>\n			<td>RequestMapping 和 Put请求方法的组合；</td>\n		</tr>\n		<tr>\n			<td>@DeleteMapping</td>\n			<td>RequestMapping 和 Delete请求方法的组合；</td>\n		</tr>\n	</tbody>\n</table>\n\n<p>&nbsp;</p>\n', 'jzytp.JPG', 1, 0, '2018-07-14 20:03:07', 'Spring boot 下的 Spring mvc', 10, 1);
INSERT INTO `t_article` VALUES (39, 'Single·湘潭', 7, 0, '<p>部分人在开发中不会习惯用data jpa，下面给大家带来springboot集成mybatis的教程；</p>\n\n<p>新建一个boot项目；</p>\n\n<p>1、在pom.xml中配置相关jar依赖；</p>\n\n<pre>\n<code class=\"language-xml\">&lt;!-- 加载mybatis整合springboot --&gt;\n&lt;dependency&gt;\n	&lt;groupId&gt;org.mybatis.spring.boot&lt;/groupId&gt;\n	&lt;artifactId&gt;mybatis-spring-boot-starter&lt;/artifactId&gt;\n	&lt;version&gt;1.3.1&lt;/version&gt;\n&lt;/dependency&gt;\n\n&lt;!-- MySQL的jdbc驱动包 --&gt;\n&lt;dependency&gt;\n	&lt;groupId&gt;mysql&lt;/groupId&gt;\n	&lt;artifactId&gt;mysql-connector-java&lt;/artifactId&gt;\n&lt;/dependency&gt;</code></pre>\n\n<p>&nbsp;</p>\n\n<p>2、在Springboot的核心配置文件 application.properties 中配置MyBatis的Mapper.xml文件所在位置：</p>\n\n<p>mybatis.mapper-locations=classpath:com/bjpowernode/springboot/mapper/*.xml</p>\n\n<p><img alt=\"\" src=\"/static/images/20180715112743.png\" style=\"height:194px; width:970px\" /></p>\n\n<p>&nbsp;</p>\n\n<p>3、在Springboot的核心配置文件application.properties中配置数据源：</p>\n\n<p><img alt=\"\" src=\"/static/images/20180715112943.png\" style=\"height:143px; width:956px\" /></p>\n\n<p>&nbsp;</p>\n\n<p>4、在MyBatis的Mapper接口中添加@Mapper注解 或者&nbsp;</p>\n\n<p>在运行的主类上添加 @MapperScan(&quot;com.longwang.mapper&quot;) 注解包扫描</p>\n\n<p><img alt=\"\" src=\"/static/images/20180715113509.png\" style=\"height:491px; width:879px\" /></p>\n\n<p>&nbsp;</p>\n\n<p>这样就可以在springboot中使用mybatis了；</p>\n\n<p>&nbsp;</p>\n\n<p>&nbsp;</p>\n', 'jzytp.JPG', 1, 0, '2018-07-15 11:36:46', 'Spring boot 集成 MyBatis', 10, 1);
INSERT INTO `t_article` VALUES (40, 'Single·湘潭', 10, 0, '<p>springboot对事务的支持非常简单；</p>\n\n<p>1、在入口类中使用注解 @EnableTransactionManagement 开启事务支持（<span style=\"color:#cc0000\">貌似可以省略</span>）；</p>\n\n<p>&nbsp;</p>\n\n<p>2、在访问数据库的Service方法上添加注解 @Transactional 即可；</p>\n\n<pre>\n<code class=\"language-java\">package com.longwang.service.impl;\n\nimport com.longwang.entity.Student;\nimport com.longwang.mapper.StudentMapper;\nimport com.longwang.service.StudentService;\nimport org.springframework.beans.factory.annotation.Autowired;\nimport org.springframework.stereotype.Service;\nimport org.springframework.transaction.annotation.Transactional;\n\nimport java.util.List;\n\n@Service\npublic class StudentServiceImpl implements StudentService {\n\n    @Autowired\n    private StudentMapper studentMapper;\n\n    @Transactional\n    @Override\n    public int update() {\n        Student student=new Student();\n        student.setId(1);\n        student.setName(\"zhouxiaoxiao\");\n        student.setAge(19);\n        student.setSex(\"女\");\n        int update = studentMapper.updateByPrimaryKeySelective(student);\n        System.out.println(\"更新结果：\" + update);\n        int a = 10 / 0; // 抛出运行时异常\n        return update;\n    }\n}\n</code></pre>\n\n<p>这样就开启事务了，会回滚。</p>\n', 'jzytp.JPG', 1, 0, '2018-07-15 11:45:29', 'Spring boot 事务支持', 10, 1);
INSERT INTO `t_article` VALUES (49, 'Single·湘潭', 23, 0, '<p>最近发现centos7已经更换了防火墙，使用firewall作为防火墙，因此以前的iptables那套已经不管用了。</p>\n\n<p>下面代码亲测有效：</p>\n\n<p>#centos查询端口是不是开放的<br />\nfirewall-cmd --permanent --query-port=8080/tcp</p>\n\n<p>yes为对外开放，no为未对外开放</p>\n\n<p>&nbsp;</p>\n\n<p>#添加对外开放端口<br />\nfirewall-cmd --permanent --add-port=8080/tcp</p>\n\n<p>success表示成功<br />\n<br />\n#重启防火墙<br />\nfirewall-cmd --reload</p>\n\n<p>success表示成功</p>\n\n<p>以上我是开放的8080端口，如果你想开放其他的端口可以将8080修改成你要对外开放的端口。</p>\n', 'jzytp.JPG', 1, 0, '2018-07-16 11:03:42', 'centos7对外开放端口', 9, 1);
INSERT INTO `t_article` VALUES (50, '1', 6, 0, '<p>1111111</p>\n', '20190506033344.jpg', 1, 1, '2019-05-07 09:30:37', '1', 1, 1);
INSERT INTO `t_article` VALUES (51, 'JehuXie', 16, 0, '<p>,ready: function(date){//控件在打开时触发，回调返回一个参数<br />\n&nbsp; &nbsp; console.log(date); //得到初始的日期时间对象：{year: 2017, month: 8, date: 18, hours: 0, minutes: 0, seconds: 0}<br />\n&nbsp; }<br />\n&nbsp; ,change: function(value, date, endDate){//日期时间被切换后的回调<br />\n&nbsp; &nbsp; console.log(value); //得到日期生成的值，如：2017-08-18<br />\n&nbsp; &nbsp; console.log(date); //得到日期时间对象：{year: 2017, month: 8, date: 18, hours: 0, minutes: 0, seconds: 0}<br />\n&nbsp; &nbsp; console.log(endDate); //得结束的日期时间对象，开启范围选择（range: true）才会返回。对象成员同上。</p>\n', '20190507112519.jpg', 1, 1, '2019-05-07 11:25:44', 'spring cloud 解读', 1, 1);
INSERT INTO `t_article` VALUES (52, 'Dave', 4, 0, '<h2><strong>Features</strong></h2>\n\n<ul>\n	<li>\n	<p><span style=\"color:#c0392b\">Create stand-alone Spring applications</span></p>\n	</li>\n	<li>\n	<p><span style=\"color:#c0392b\">Embed Tomcat, Jetty or Undertow directly (no need to deploy WAR files)</span></p>\n	</li>\n	<li>\n	<p><span style=\"color:#c0392b\">Provide opinionated &#39;starter&#39; dependencies to simplify your build configuration</span></p>\n	</li>\n	<li>\n	<p><span style=\"color:#c0392b\">Automatically configure Spring and 3rd party libraries whenever possible</span></p>\n	</li>\n	<li>\n	<p><span style=\"color:#c0392b\">Provide production-ready features such as metrics, health checks and externalized configuration</span></p>\n	</li>\n	<li>\n	<p><span style=\"color:#c0392b\">Absolutely no code generation and no requirement for XML configuration</span></p>\n	</li>\n</ul>\n\n<p><span style=\"color:#c0392b\">You can also&nbsp;</span><a href=\"https://gitter.im/spring-projects/spring-boot\"><span style=\"color:#c0392b\">join the Spring Boot community on Gitter</span></a><span style=\"color:#c0392b\">!</span></p>\n\n<h2>Talks and videos</h2>\n\n<ul>\n	<li>\n	<p><a href=\"https://content.pivotal.io/springone-platform-2017/its-a-kind-of-magic-under-the-covers-of-spring-boot-brian-clozel-st%C3%A9phane-nicoll\">It&rsquo;s a Kind of Magic: Under the Covers of Spring Boot</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://content.pivotal.io/springone-platform-2017/whats-new-in-spring-boot-2-0-phillip-webb-madhura-bhave\">What&rsquo;s New in Spring Boot 2.0</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://content.pivotal.io/webinars/mar-13-introducing-spring-boot-2-0-webinar\">Introducing Spring Boot 2.0 webinar</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://content.pivotal.io/springone-platform-2017/test-driven-development-with-spring-boot-sannidhi-jalukar-madhura-bhave\">Test Driven Development with Spring Boot</a></p>\n	</li>\n	<li>\n	<p><a href=\"https://content.pivotal.io/springone-platform-2017/from-zero-to-hero-with-spring-boot-brian-clozel\">From Zero to Hero with Spring Boot 2.0</a></p>\n	</li>\n</ul>\n\n<h2>Quick start</h2>\n\n<p>Bootstrap your application with&nbsp;<a href=\"https://start.spring.io/\" target=\"_blank\">Spring Initializr</a>.</p>\n', '20190507113623.jpg', 1, 0, '2019-05-07 11:51:26', 'springboot详解', 10, 1);
INSERT INTO `t_article` VALUES (53, 'Jeff', 9, 1, '<p>显示效果：&nbsp;<br />\n<br />\n<br />\n<img src=\"http://dl2.iteye.com/upload/attachment/0127/2883/e96bb528-c129-317e-82cb-3c0657fac69e.png\" />&nbsp;<br />\n<br />\n2.动态实现select 级联：&nbsp;<br />\n&lt;tr&gt;&nbsp;<br />\n&lt;td&gt;发货地&lt;/td&gt;&nbsp;<br />\n&lt;td class=&quot;ls0&quot;&gt;&nbsp;<br />\n&lt;select class=&quot;area_select notnull&quot; name=&quot;startArea1&quot; id=&quot;start_select1&quot;&gt;&nbsp;<br />\n&lt;option value=&quot;&quot;&gt;-选择省-&lt;/option&gt;&nbsp;<br />\n&lt;option&nbsp; th:each=&quot;area:${listAreas}&quot; th:value=&quot;${area.regionCode}&quot; th:text=&quot;${area.regionName}&quot; &gt;&lt;/option&gt;&nbsp;</p>\n', '20190507113936.jpg', 0, 1, '2019-05-07 13:01:48', '数据库安全', 6, 1);
INSERT INTO `t_article` VALUES (54, 'timo', 302, 2, '<p>thymeleaf学习</p>\n', '20190507033616.jpg', NULL, 1, '2019-05-07 15:36:32', 'thymeleaf', 4, 1);
INSERT INTO `t_article` VALUES (55, '宗阔雄', 3, 0, '<p>犬瘟热犬瘟热</p>\n', '', NULL, NULL, '2019-05-23 23:13:13', '宗阔雄', 1, 1);
INSERT INTO `t_article` VALUES (56, '谢谢', 1, 0, '<p><a href=\"https://www.appinn.com/\" rel=\"v:url\">Home</a></p>\n\n<p><a href=\"https://www.appinn.com/category/ios/\" rel=\"v:url\">iOS</a></p>\n\n<p><a href=\"https://www.appinn.com/category/ios/iphone/\" rel=\"v:url\">iPhone</a></p>\n\n<p>睡眠小镇 &ndash; 找个一起睡的人来创建世界奇观</p>\n\n<h1>睡眠小镇 &ndash; 找个一起睡的人来创建世界奇观</h1>\n\n<p><a href=\"https://www.appinn.com/category/android/\" title=\"View all posts in Android\">Android</a>&nbsp;<a href=\"https://www.appinn.com/category/ios/\" title=\"View all posts in iOS\">iOS</a>&nbsp;<a href=\"https://www.appinn.com/category/ios/iphone/\" title=\"View all posts in iPhone\">iPhone</a>&nbsp;<a href=\"https://www.appinn.com/category/games/\" title=\"View all posts in 游戏\">游戏</a>&nbsp;&nbsp;2019/05/05&nbsp;&nbsp;<a href=\"https://www.appinn.com/author/qingwa/\" rel=\"author\" title=\"由青小蛙发布\">青小蛙</a></p>\n\n<p><img alt=\"1 星\" id=\"rating_32448_1\" src=\"https://www.appinn.com/wp-content/plugins/wp-postratings/images/inn/rating_on.png\" title=\"1 星\" /><img alt=\"2 星\" id=\"rating_32448_2\" src=\"https://www.appinn.com/wp-content/plugins/wp-postratings/images/inn/rating_on.png\" title=\"2 星\" /><img alt=\"3 星\" id=\"rating_32448_3\" src=\"https://www.appinn.com/wp-content/plugins/wp-postratings/images/inn/rating_on.png\" title=\"3 星\" /><img alt=\"4 星\" id=\"rating_32448_4\" src=\"https://www.appinn.com/wp-content/plugins/wp-postratings/images/inn/rating_half.png\" title=\"4 星\" /><img alt=\"5 星\" id=\"rating_32448_5\" src=\"https://www.appinn.com/wp-content/plugins/wp-postratings/images/inn/rating_off.png\" title=\"5 星\" />&nbsp;<em>(<strong>4</strong>&nbsp;票)</em></p>\n\n<p>&nbsp;&nbsp;<a href=\"https://www.appinn.com/sleeptown/#comments\">3</a></p>\n\n<p><a href=\"https://www.appinn.com/sleeptown/\">睡眠小镇</a>&nbsp;首先是一款闹钟，其次是一款规律睡眠习惯养成工具，最后是一款组队睡觉创建世界奇观的应用，有 iPhone 与 Android 客户端。@Appinn</p>\n\n<p><img alt=\"睡眠小镇 - 找个一起睡的人来创建世界奇观 1\" src=\"https://img3.appinn.com/images/201905/sleeptown.jpg!o\" title=\"睡眠小镇 - 找个一起睡的人来创建世界奇观 1\" /></p>\n\n<p>睡眠小镇的开发者也是 Forest 的开发者，<a href=\"https://www.appinn.com/forestapp/\">Forest</a>（小众软件介绍）可以让你摆脱低头族，少用手机。</p>\n\n<p>睡眠小镇用游戏的玩法来帮你养成良好的睡眠习惯，来自 Play 商店的个性化推荐，可能是觉得青小蛙最近的睡眠不太好&hellip;</p>\n\n<p>首次运行睡眠小镇，需要设置想要的睡眠时间以及起床时间。每次完成任务（按时睡觉、起床），就会随机创建一栋小屋，完不成任务，建造中的小屋将被摧毁，不过没关系之前的小屋没事。</p>\n\n<p><img alt=\"睡眠小镇 - 找个一起睡的人来创建世界奇观 2\" src=\"https://img3.appinn.com/images/201905/photo_2019-05-05_10-54-52.jpg!o\" title=\"睡眠小镇 - 找个一起睡的人来创建世界奇观 2\" /></p>\n\n<p>睡觉、起床前两个小时都算完成任务，但超过起床时间 10 分钟，房屋会倒塌。支持启动摇晃一段时间手机才算起床，未完成摇晃任务房屋倒塌。</p>\n\n<p><img alt=\"睡眠小镇 - 找个一起睡的人来创建世界奇观 3\" src=\"https://img3.appinn.com/images/201905/photo_2019-05-05_11-02-10.jpg!o\" style=\"height:960px; width:492px\" title=\"睡眠小镇 - 找个一起睡的人来创建世界奇观 3\" /></p>\n\n<p>每次达成目标都会建造一栋小屋，小屋数量与连续性决定了税收。连续 7 天能召唤「神龙」，可以让你更大几率获得稀有小屋。</p>\n\n<p>每次建成的小屋，都可以根据自己的意愿摆放在小镇里，有超过 70 种房屋种类，比如商业区、游乐场、住宅之类，青小蛙找了一张来自 @<a href=\"https://www.zhihu.com/question/317989579/answer/635966360\" rel=\"noopener\" target=\"_blank\">池鱼游啊游</a>&nbsp;同学的截图，非常有意思：</p>\n\n<p><img alt=\"睡眠小镇 - 找个一起睡的人来创建世界奇观 4\" src=\"https://img3.appinn.com/images/201905/v2-5e8dd64ec722dac8e3e786ddd977aee3_r.jpg\" style=\"height:640px; width:360px\" title=\"睡眠小镇 - 找个一起睡的人来创建世界奇观 4\" /></p>\n\n<p>最后，还可以创建小圈圈，与好友一起组队睡觉（需要同样的睡眠目标，一起睡觉至少需要两个人），能&hellip;建造世界奇观。（该功能在 Android 需要内购解锁。）</p>\n\n<p>睡眠城镇在&nbsp;<a href=\"https://itunes.apple.com/cn/app/id1210251567\" rel=\"noopener\" target=\"_blank\">App Store</a>&nbsp;售价 12 元，无内购，在&nbsp;<a href=\"https://play.google.com/store/apps/details?id=seekrtech.sleep&amp;hl=zh&amp;rdid=seekrtech.sleep\" rel=\"noopener\" target=\"_blank\">Google Play</a>&nbsp;和<a href=\"https://android.myapp.com/myapp/detail.htm?apkName=seekrtech.sleep\" rel=\"noopener\" target=\"_blank\">应用宝</a>&nbsp;免费安装。</p>\n\n<p>不过一个问题是，你能找到几个和你一起睡觉的家伙？</p>\n\n<p>最后，还有一段视频：</p>\n\n<p><iframe frameborder=\"no\" scrolling=\"no\" src=\"https://player.bilibili.com/player.html?aid=51507939&amp;cid=90157516&amp;page=1\"></iframe></p>\n\n<p>收藏&nbsp;1</p>\n\n<h3>喜欢</h3>\n', '', NULL, 1, '2019-05-25 15:24:16', '嘻嘻嘻', 1, 16);
INSERT INTO `t_article` VALUES (57, '撒打发', 1, 0, '<p><iframe frameborder=\"0\" scrolling=\"no\" src=\"https://www.bilibili.com/video/av53487839\"></iframe></p>\n', '', NULL, NULL, '2019-05-25 15:25:44', '士大夫是', 1, 16);
INSERT INTO `t_article` VALUES (58, '啊实打实', 2, 0, '<p><iframe frameborder=\"0\" scrolling=\"no\" src=\"&lt;iframe src=&quot;//player.bilibili.com/player.html?aid=53487839&amp;cid=93574011&amp;page=1&quot; scrolling=&quot;no&quot; border=&quot;0&quot; frameborder=&quot;no&quot; framespacing=&quot;0&quot; allowfullscreen=&quot;true&quot;&gt; &lt;/iframe&gt;\"></iframe></p>\n', '', NULL, 1, '2019-05-25 15:27:13', '士大夫撒', 1, 16);
INSERT INTO `t_article` VALUES (59, '撒旦飞洒地方', 2, 0, '<p>&lt;iframe src=&quot;//player.bilibili.com/player.html?aid=53487839&amp;cid=93574011&amp;page=1&quot; scrolling=&quot;no&quot; border=&quot;0&quot; frameborder=&quot;no&quot; framespacing=&quot;0&quot; allowfullscreen=&quot;true&quot;&gt; &lt;/iframe&gt;</p>\n', '', NULL, 1, '2019-05-25 15:27:34', '撒旦飞洒地方', 1, 16);
INSERT INTO `t_article` VALUES (60, '撒打发', 1, 0, '<p>网站首页&gt; 笔记专栏&gt; 撒旦飞洒地方<br />\n撒旦飞洒地方<br />\n编辑时间：2019-05-25 15:27:34.0 作者：撒旦飞洒地方 浏览量：1<br />\n￼<br />\n&lt;iframe src=&quot;<iframe frameborder=\"0\" scrolling=\"no\" src=\"//player.bilibili.com/player.html?aid=53487839&amp;cid=93574011&amp;page=1\"></iframe>&quot; scrolling=&quot;no&quot; border=&quot;0&quot; frameborder=&quot;no&quot; framespacing=&quot;0&quot; allowfullscreen=&quot;true&quot;&gt; &lt;/iframe</p>\n', '', NULL, NULL, '2019-05-25 15:29:03', '士大夫撒 ', 1, 16);

-- ----------------------------
-- Table structure for t_blogger
-- ----------------------------
DROP TABLE IF EXISTS `t_blogger`;
CREATE TABLE `t_blogger`  (
  `blogger_id` int(11) NOT NULL AUTO_INCREMENT,
  `head_portrait` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `motto` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nick_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `site` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `signature` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`blogger_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_blogger
-- ----------------------------
INSERT INTO `t_blogger` VALUES (1, '20180610034905.jpg', '有个被嘲笑的梦想万一有天实现了呢？up up~', 'Single', '湖南 - 湘潭', 'Single，一枚90后的java程序员，好奇心比较强，目前是一个码农，从事Java方向的研究和开发。-- Single');

-- ----------------------------
-- Table structure for t_classify
-- ----------------------------
DROP TABLE IF EXISTS `t_classify`;
CREATE TABLE `t_classify`  (
  `classify_id` int(11) NOT NULL AUTO_INCREMENT,
  `classify_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`classify_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 15 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_classify
-- ----------------------------
INSERT INTO `t_classify` VALUES (1, '心情日记');
INSERT INTO `t_classify` VALUES (2, '杂七杂八');
INSERT INTO `t_classify` VALUES (3, 'web前端');
INSERT INTO `t_classify` VALUES (4, 'Java基础');
INSERT INTO `t_classify` VALUES (5, '开发工具');
INSERT INTO `t_classify` VALUES (6, 'Mysql');
INSERT INTO `t_classify` VALUES (7, 'Maven');
INSERT INTO `t_classify` VALUES (8, 'Dubbo');
INSERT INTO `t_classify` VALUES (9, 'Centos');
INSERT INTO `t_classify` VALUES (10, 'SpringBoot');
INSERT INTO `t_classify` VALUES (11, 'Hibernate');
INSERT INTO `t_classify` VALUES (12, '支付宝接口');
INSERT INTO `t_classify` VALUES (13, 'Tomcat');
INSERT INTO `t_classify` VALUES (14, 'Redis');

-- ----------------------------
-- Table structure for t_comment
-- ----------------------------
DROP TABLE IF EXISTS `t_comment`;
CREATE TABLE `t_comment`  (
  `comment_id` int(11) NOT NULL AUTO_INCREMENT,
  `comment_date` datetime(0) NULL DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `article_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`comment_id`) USING BTREE,
  INDEX `FKlsvvc2ob8lxg2m9qqry15ru0y`(`article_id`) USING BTREE,
  INDEX `FKtamaoacctq4qpko6bvtv0ke1p`(`user_id`) USING BTREE,
  CONSTRAINT `FKlsvvc2ob8lxg2m9qqry15ru0y` FOREIGN KEY (`article_id`) REFERENCES `t_article` (`article_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_comment_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 13 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_comment
-- ----------------------------
INSERT INTO `t_comment` VALUES (1, '2018-06-10 18:49:30', '<p><span>世界上只有10种人，懂二进制和不懂二进制的。<img src=\"http://www.long225.cn/static/foreground/layui/images/face/3.gif\" alt=\"[可爱]\"></span></p>', NULL, 1);
INSERT INTO `t_comment` VALUES (2, '2018-06-10 19:44:13', 'gyhj', 11, 3);
INSERT INTO `t_comment` VALUES (3, '2018-06-10 19:44:34', 'hdvd&nbsp;', 11, 1);
INSERT INTO `t_comment` VALUES (4, '2018-06-10 21:50:28', '<p>这个歌可以不要换一个页面就重播一次嘛，可以换一个页面就换一首歌或者唱完再重播嘛</p><p>给你一个666，嘿嘿</p>', NULL, 6);
INSERT INTO `t_comment` VALUES (5, '2018-06-11 13:21:46', '1', 13, 7);
INSERT INTO `t_comment` VALUES (6, '2018-06-13 16:53:24', 'asd as a', 13, 13);
INSERT INTO `t_comment` VALUES (7, '2018-07-03 00:22:15', '对学习毫无兴趣了，怎么办。', NULL, 1);
INSERT INTO `t_comment` VALUES (8, '2018-07-11 17:40:37', '百度第一页了，老铁，66666', NULL, 11);
INSERT INTO `t_comment` VALUES (9, '2019-05-06 12:06:49', '学习了', 11, 1);
INSERT INTO `t_comment` VALUES (10, '2019-05-07 12:58:36', 'mysql', 53, 1);
INSERT INTO `t_comment` VALUES (11, '2019-05-23 22:49:24', 'sdfdsf', 54, 1);
INSERT INTO `t_comment` VALUES (12, '2019-05-25 15:18:49', '风格化风格化', 54, 16);

-- ----------------------------
-- Table structure for t_link
-- ----------------------------
DROP TABLE IF EXISTS `t_link`;
CREATE TABLE `t_link`  (
  `link_id` int(11) NOT NULL AUTO_INCREMENT,
  `link_email` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link_name` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `link_url` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `order_num` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`link_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_link
-- ----------------------------
INSERT INTO `t_link` VALUES (1, 'baidu@qq.com', '百度一下', 'https://www.baidu.com/', 1);
INSERT INTO `t_link` VALUES (2, 'layui@qq.com', 'Layui', 'http://www.layui.com/', 2);
INSERT INTO `t_link` VALUES (3, '13262629692@qq.com', '勿扰个人博客', 'http://wurao.xin/index.html', 3);
INSERT INTO `t_link` VALUES (4, '694076359@qq.com', 'ITcodai博客', 'http://blog.itcodai.com/', 4);

-- ----------------------------
-- Table structure for t_music
-- ----------------------------
DROP TABLE IF EXISTS `t_music`;
CREATE TABLE `t_music`  (
  `music_id` int(11) NOT NULL AUTO_INCREMENT,
  `artist` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `cover` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `url` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`music_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 6 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_music
-- ----------------------------
INSERT INTO `t_music` VALUES (1, '暗杠', 'http://p1.music.126.net/HP69gdNMpzh6yq9_Ws6Nvw==/109951163317309202.jpg?param=130y130', '童话镇', 'http://link.hhtjim.com/163/566443468.mp3');
INSERT INTO `t_music` VALUES (3, '林宥嘉', 'http://p1.music.126.net/jI1EcP0FrAVpPlZdGXd5Cw==/109951163304640811.jpg?param=130y130', '成全', 'http://link.hhtjim.com/163/562594267.mp3');
INSERT INTO `t_music` VALUES (2, '李荣浩', 'http://p1.music.126.net/rVkRzdKkIqVxRjDhN4LFHQ==/18342052975051883.jpg?param=130y130', '戒烟', 'http://link.hhtjim.com/163/518686034.mp3');
INSERT INTO `t_music` VALUES (4, '宋冬野', 'http://p1.music.126.net/GcRunGm02vZBicYmIN6GXw==/109951163200249252.jpg?param=130y130', '安河桥', 'http://link.hhtjim.com/163/27646205.mp3');
INSERT INTO `t_music` VALUES (5, '宋冬野', 'http://p1.music.126.net/GcRunGm02vZBicYmIN6GXw==/109951163200249252.jpg?param=130y130', '董小姐', 'http://link.hhtjim.com/163/27646198.mp3');

-- ----------------------------
-- Table structure for t_notice
-- ----------------------------
DROP TABLE IF EXISTS `t_notice`;
CREATE TABLE `t_notice`  (
  `notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `grade` int(11) NULL DEFAULT NULL,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `publish_date` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`notice_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_notice
-- ----------------------------
INSERT INTO `t_notice` VALUES (1, 0, '<p><span style=\"color:#ff0000\">本博客前端采用的是zuoqy博客的界面风格。</span></p>\n', '2018-05-16 20:12:29');
INSERT INTO `t_notice` VALUES (2, 1, '<p>推荐用谷歌或火狐浏览器</p>\n', '2018-05-16 20:19:21');
INSERT INTO `t_notice` VALUES (3, 0, '<p><span style=\"color:#ff0000\">有BUG留言告诉我，谢谢</span></p>\n', '2018-05-16 20:20:57');

-- ----------------------------
-- Table structure for t_reply
-- ----------------------------
DROP TABLE IF EXISTS `t_reply`;
CREATE TABLE `t_reply`  (
  `reply_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `reply_date` datetime(0) NULL DEFAULT NULL,
  `comment_id` int(11) NULL DEFAULT NULL,
  `user_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`reply_id`) USING BTREE,
  INDEX `FKk4ydp71wampdbnguly8iks4rf`(`comment_id`) USING BTREE,
  INDEX `FKslt6r79iw1p9cbxns09erjv6v`(`user_id`) USING BTREE,
  CONSTRAINT `FKk4ydp71wampdbnguly8iks4rf` FOREIGN KEY (`comment_id`) REFERENCES `t_comment` (`comment_id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `t_reply_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `t_user` (`user_id`) ON DELETE RESTRICT ON UPDATE RESTRICT
) ENGINE = InnoDB AUTO_INCREMENT = 11 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_reply
-- ----------------------------
INSERT INTO `t_reply` VALUES (1, 'jsbd d ', '2018-06-10 19:44:41', 2, 1);
INSERT INTO `t_reply` VALUES (2, '上个版本不会重播，但那影响到百度抓取我的页面，所以改了。', '2018-06-10 22:11:44', 4, 1);
INSERT INTO `t_reply` VALUES (3, '2', '2018-06-11 13:21:50', 5, 7);
INSERT INTO `t_reply` VALUES (4, '3', '2018-06-11 15:08:20', 5, 1);
INSERT INTO `t_reply` VALUES (5, '感谢前端大佬光临本站，嘿嘿。', '2018-07-14 20:25:10', 8, 1);
INSERT INTO `t_reply` VALUES (9, '123', '2019-05-06 12:49:49', 2, 1);
INSERT INTO `t_reply` VALUES (10, 'dfsfsdf', '2019-05-23 22:49:35', 11, 1);

-- ----------------------------
-- Table structure for t_timeline
-- ----------------------------
DROP TABLE IF EXISTS `t_timeline`;
CREATE TABLE `t_timeline`  (
  `timeline_id` int(11) NOT NULL AUTO_INCREMENT,
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `publish_date` datetime(0) NULL DEFAULT NULL,
  `month` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `year` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`timeline_id`) USING BTREE
) ENGINE = MyISAM AUTO_INCREMENT = 13 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of t_timeline
-- ----------------------------
INSERT INTO `t_timeline` VALUES (1, '蓝色牛仔裤博客项目启动！', '2018-06-02 15:16:23', '06', '2018');
INSERT INTO `t_timeline` VALUES (2, '<p>本博客前台采用Layui框架，后台使用springboot框架1！</p>\n', '2018-06-03 21:16:43', '06', '2018');
INSERT INTO `t_timeline` VALUES (3, '你就是我不爱别人的理由。', '2018-05-18 05:44:57', '05', '2018');
INSERT INTO `t_timeline` VALUES (4, '采用shiro作为安全权限框架!', '2018-05-22 19:45:16', '05', '2018');
INSERT INTO `t_timeline` VALUES (5, 'l love three things in this world. Sun,Moon and You. Sun for morning,Moon for night,and You forever.', '2018-05-30 23:45:38', '05', '2018');
INSERT INTO `t_timeline` VALUES (6, '博客持续更新中...', '2018-03-22 15:45:52', '03', '2018');
INSERT INTO `t_timeline` VALUES (7, '感觉自己写的样式太丑了,兼容性不好,发现了zuoqy博客的风格', '2018-02-14 12:46:09', '02', '2018');
INSERT INTO `t_timeline` VALUES (8, '开始学习java，嘻嘻', '2017-09-20 08:46:09', '09', '2017');
INSERT INTO `t_timeline` VALUES (10, '<p>发布测试</p>\n', '2018-06-05 20:25:29', '06', '2018');
INSERT INTO `t_timeline` VALUES (11, '<p><span style=\"color:#ff0000\">文章专栏开通关键词搜索功能，使用Lucene作为全文检索，SmartChineseAnalyzer中文分词器。</span></p>\n', '2018-06-10 15:54:42', '06', '2018');
INSERT INTO `t_timeline` VALUES (12, '<p>项目考核凉了，B班见。</p>\n', '2018-06-19 19:47:58', '06', '2018');

-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user`  (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `head_portrait` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `lately_login_time` datetime(0) NULL DEFAULT NULL,
  `nickname` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `registration_date` datetime(0) NULL DEFAULT NULL,
  `sex` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `open_id` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `article_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT '',
  `user_ids` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `momo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Compact;

-- ----------------------------
-- Records of t_user
-- ----------------------------
INSERT INTO `t_user` VALUES (1, '20180516160352.jpg', '2019-05-24 15:15:57', 'hello', '2019-05-07 11:01:04', '男', '', '1', 'xiao', '2019-05-25', '13655258945', ',54', '', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (2, '20180516160352.jpg', '2018-06-10 18:52:12', 'Mr.Long', '2018-06-10 18:52:12', '男', 'asdasdasds', NULL, NULL, '2019-05-07', '13655258945', '', '', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (3, 'http://qzapp.qlogo.cn/qzapp/101477629/0ABFEA14AAF50D3C07B6489440FEE081/100', '2018-07-02 11:53:40', '一念之间', '2018-06-10 18:56:19', '男', 'sdfsdf', NULL, NULL, '2019-05-07', '13655258945', '', '', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (4, 'http://qzapp.qlogo.cn/qzapp/101477629/142350DC6080D761759CA72042447829/100', '2018-06-12 12:00:56', '十七', '2018-06-10 19:07:29', '男', 'sdfsdfghg', NULL, NULL, '2019-05-07', '13655258945', '', '', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (5, 'http://qzapp.qlogo.cn/qzapp/101477629/E79436B993353FA72023157E21CD2C3F/100', '2018-06-10 20:06:11', 'Single', '2018-06-10 20:06:11', '男', 'sdfsd', NULL, NULL, '2019-05-07', '13655258945', '', '', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (6, 'http://qzapp.qlogo.cn/qzapp/101477629/88A9474D1A53563D118543E48F59F721/100', '2018-06-10 21:48:49', '我跑不动啊', '2018-06-10 21:48:49', '女', 'sdfgrsd', NULL, NULL, '2019-05-07', '13655258945', '', '', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (7, 'http://qzapp.qlogo.cn/qzapp/101477629/E5DB0905E97D1C1D0429638180659871/100', '2018-06-11 13:19:55', 'the lack of sleep', '2018-06-11 13:19:55', '男', 'dgbtgd', NULL, NULL, '2019-05-07', '13655258945', '', '', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (8, 'http://qzapp.qlogo.cn/qzapp/101477629/A4ADB5EFBC940831DE19D512169184A8/100', '2018-06-12 15:47:35', 'Pingchas', '2018-06-12 15:47:35', '男', 'gdfgtrg', NULL, NULL, '2019-05-07', '13655258945', '', '', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (9, 'http://qzapp.qlogo.cn/qzapp/101477629/78392FE441D2DBDA7FB2234B5D3EE3FB/100', '2018-06-12 15:50:10', '友人A', '2018-06-12 15:50:10', '男', '345345', NULL, NULL, '2019-05-07', '13655258945', '', '', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (10, 'http://qzapp.qlogo.cn/qzapp/101477629/D2EED660C5B57BF4EFD247CC2CA137F0/100', '2018-06-12 21:56:43', 'Ms.Right', '2018-06-12 21:56:43', '男', '345reggdg', NULL, NULL, '2019-05-07', '13655258945', '', '', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (11, 'http://qzapp.qlogo.cn/qzapp/101477629/2D4D8F55CF18BD03F1FF9351CB744116/100', '2018-07-11 17:40:15', '如果，雨之后', '2018-06-13 14:07:13', '男', 'dfgrgdrg', NULL, NULL, '2019-05-07', '13655258945', '', '', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (12, 'http://qzapp.qlogo.cn/qzapp/101477629/3279E599883D7D2E9468C8A8A7E11E5D/100', '2018-06-13 15:21:20', '绿乄茶', '2018-06-13 15:21:20', '男', 'ghgfhnn', NULL, NULL, '2019-05-07', '13655258945', '', '', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (13, 'http://qzapp.qlogo.cn/qzapp/101477629/F2A070ABD05227F5A2AF61CC81A2B5F8/100', '2018-06-13 16:53:17', '超越', '2018-06-13 16:53:17', '男', 'dfgergd', NULL, NULL, '2019-05-07', '13655258945', '', '', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (14, 'http://qzapp.qlogo.cn/qzapp/101477629/FFC7B2289731ABCFFB01D21467FF04A5/100', '2018-07-10 15:24:48', 'Arc', '2018-07-10 15:24:48', '男', 'dffff', NULL, NULL, '2019-05-07', '13655258945', '', ' ', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (15, 'http://qzapp.qlogo.cn/qzapp/101477629/F15203D785A4EE987A28B92A617A2DA8/100', '2018-07-23 13:57:44', 'Yuu', '2018-07-23 13:57:44', '男', 'aaaaaa', NULL, NULL, '2019-05-07', '13655258945', '', '', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (16, 'lock-bg.jpg', '2019-05-25 15:16:24', '谢', '2019-05-07 11:01:08', '男', NULL, '1', 'xie', '2019-05-07', '13655258945', ',54', ',1', '年轻的时候，多忙活点，是好事，不管是徒劳的还是有用的，这都促使你成熟。');
INSERT INTO `t_user` VALUES (20, NULL, NULL, '1', '2019-05-24 15:29:07', '1', NULL, 'admin', 'admin1', NULL, NULL, '', '', NULL);

SET FOREIGN_KEY_CHECKS = 1;
