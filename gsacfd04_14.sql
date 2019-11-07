-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2019 年 11 月 07 日 12:22
-- サーバのバージョン： 10.4.6-MariaDB
-- PHP のバージョン: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- データベース: `gsacfd04_14`
--
CREATE DATABASE IF NOT EXISTS `gsacfd04_14` DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
USE `gsacfd04_14`;

-- --------------------------------------------------------

--
-- テーブルの構造 `ajax_table`
--

CREATE TABLE `ajax_table` (
  `id` int(12) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `ajax_table`
--

INSERT INTO `ajax_table` (`id`, `name`, `comment`, `image`, `indate`) VALUES
(1, 'hihi', 'kkkk', NULL, '2019-11-05 00:00:00'),
(2, 'hihi', 'kkkk', NULL, '2019-11-05 00:00:00'),
(3, 'sa', 'admin', NULL, '2019-11-03 00:00:00'),
(4, ' ', 'zzzz', NULL, '2019-11-05 22:39:01'),
(5, 'sssssss', 'aa', 'upload/20191105023957d41d8cd98f00b204e9800998ecf8427e.jpg', '2019-11-05 22:39:57'),
(6, ' ', 'da', 'upload/20191105025037d41d8cd98f00b204e9800998ecf8427e.jpg', '2019-11-05 22:50:37');

-- --------------------------------------------------------

--
-- テーブルの構造 `canvas_table`
--

CREATE TABLE `canvas_table` (
  `id` int(12) NOT NULL,
  `name` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `comment` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- テーブルの構造 `gs_bm_table`
--

CREATE TABLE `gs_bm_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `url` text COLLATE utf8_unicode_ci NOT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `score` int(11) NOT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `gs_bm_table`
--

INSERT INTO `gs_bm_table` (`id`, `name`, `url`, `comment`, `score`, `indate`) VALUES
(2, '珍遊記', 'https://www.amazon.co.jp/%E7%8F%8D%E9%81%8A%E8%A8%98-%E5%85%A86%E5%B7%BB%E5%AE%8C%E7%B5%90-%E3%83%9E%E3%83%BC%E3%82%B1%E3%83%83%E3%83%88%E3%83%97%E3%83%AC%E3%82%A4%E3%82%B9%E3%82%BB%E3%83%83%E3%83%88-%E6%BC%AB%E2%98%86%E7%94%BB%E5%A4%AA%E9%83%8E/dp/B002M77FR0', '絵が無理', 2, '2019-10-09 19:41:50'),
(3, '珍遊記', 'https://www.amazon.co.jp/%E7%8F%8D%E9%81%8A%E8%A8%98-%E5%85%A86%E5%B7%BB%E5%AE%8C%E7%B5%90-%E3%83%9E%E3%83%BC%E3%82%B1%E3%83%83%E3%83%88%E3%83%97%E3%83%AC%E3%82%A4%E3%82%B9%E3%82%BB%E3%83%83%E3%83%88-%E6%BC%AB%E2%98%86%E7%94%BB%E5%A4%AA%E9%83%8E/dp/B002M77FR0', '絵が無理', 1, '2019-10-09 19:42:14'),
(4, '珍遊記', 'https://www.amazon.co.jp/%E7%8F%8D%E9%81%8A%E8%A8%98-%E5%85%A86%E5%B7%BB%E5%AE%8C%E7%B5%90-%E3%83%9E%E3%83%BC%E3%82%B1%E3%83%83%E3%83%88%E3%83%97%E3%83%AC%E3%82%A4%E3%82%B9%E3%82%BB%E3%83%83%E3%83%88-%E6%BC%AB%E2%98%86%E7%94%BB%E5%A4%AA%E9%83%8E/dp/B002M77FR0', '絵がざつ', 3, '2019-10-09 19:42:37'),
(5, '珍遊記', 'https://www.amazon.co.jp/%E7%8F%8D%E9%81%8A%E8%A8%98-%E5%85%A86%E5%B7%BB%E5%AE%8C%E7%B5%90-%E3%83%9E%E3%83%BC%E3%82%B1%E3%83%83%E3%83%88%E3%83%97%E3%83%AC%E3%82%A4%E3%82%B9%E3%82%BB%E3%83%83%E3%83%88-%E6%BC%AB%E2%98%86%E7%94%BB%E5%A4%AA%E9%83%8E/dp/B002M77FR0', 'おもしろい', 5, '2019-10-09 19:42:59'),
(6, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW0ub5bMV8_dfPhYA17SYvQWEhgnhYwKkyeqVbeREEbOkFJ7Rrl5rQhoC0IsQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t2&hvqmt=e&hvrand=13127973631121393133&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', '面白い', 5, '2019-10-09 19:48:15'),
(7, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW0ub5bMV8_dfPhYA17SYvQWEhgnhYwKkyeqVbeREEbOkFJ7Rrl5rQhoC0IsQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t2&hvqmt=e&hvrand=13127973631121393133&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', 'ぐろい', 4, '2019-10-09 19:48:39'),
(8, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW0ub5bMV8_dfPhYA17SYvQWEhgnhYwKkyeqVbeREEbOkFJ7Rrl5rQhoC0IsQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t2&hvqmt=e&hvrand=13127973631121393133&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', '勉強になる', 4, '2019-10-09 19:48:58'),
(9, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW0ub5bMV8_dfPhYA17SYvQWEhgnhYwKkyeqVbeREEbOkFJ7Rrl5rQhoC0IsQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t2&hvqmt=e&hvrand=13127973631121393133&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', '最高', 5, '2019-10-09 19:49:32'),
(10, 'ONEPEICE', 'https://www.amazon.co.jp/ONEPIECE-%E3%83%AF%E3%83%B3%E3%83%94%E3%83%BC%E3%82%B9/b?ie=UTF8&node=289203011', '最高', 5, '2019-10-09 19:51:09'),
(11, 'ONEPEICE', 'https://www.amazon.co.jp/ONEPIECE-%E3%83%AF%E3%83%B3%E3%83%94%E3%83%BC%E3%82%B9/b?ie=UTF8&node=289203011', '仲間になりたい', 5, '2019-10-09 19:51:21'),
(13, 'ONEPEICE', 'https://www.amazon.co.jp/ONEPIECE-%E3%83%AF%E3%83%B3%E3%83%94%E3%83%BC%E3%82%B9/b?ie=UTF8&node=289203011', '強くなりすぎ', 3, '2019-10-09 19:51:58'),
(15, 'ONEPEICE', 'https://www.amazon.co.jp/ONEPIECE-%E3%83%AF%E3%83%B3%E3%83%94%E3%83%BC%E3%82%B9/b?ie=UTF8&node=289203011', '悪魔の実食べたい', 4, '2019-10-09 19:52:34'),
(16, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW6RrZypyZp6FfJmk3ZzjbmzT-AEjIPLAK3lfSEAifafTCrkC2mWizhoCqmgQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t1&hvqmt=e&hvrand=11763280971020882863&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', '今の時代に生まれてよかった', 5, '2019-10-10 20:51:51'),
(17, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW6RrZypyZp6FfJmk3ZzjbmzT-AEjIPLAK3lfSEAifafTCrkC2mWizhoCqmgQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t1&hvqmt=e&hvrand=11763280971020882863&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', '世界感がすごい', 4, '2019-10-10 21:01:42'),
(18, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW0ub5bMV8_dfPhYA17SYvQWEhgnhYwKkyeqVbeREEbOkFJ7Rrl5rQhoC0IsQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t2&hvqmt=e&hvrand=13127973631121393133&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', 'おもろい、ちょっとあきた', 4, '2019-10-13 13:57:12'),
(19, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW0ub5bMV8_dfPhYA17SYvQWEhgnhYwKkyeqVbeREEbOkFJ7Rrl5rQhoC0IsQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t2&hvqmt=e&hvrand=13127973631121393133&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', 'おもろい、ちょっとあきたけど。。。　やっぱすごい！！！', 5, '2019-10-13 14:01:31'),
(20, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW0ub5bMV8_dfPhYA17SYvQWEhgnhYwKkyeqVbeREEbOkFJ7Rrl5rQhoC0IsQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t2&hvqmt=e&hvrand=13127973631121393133&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', 'おもろい', 4, '2019-10-13 14:02:06'),
(21, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW0ub5bMV8_dfPhYA17SYvQWEhgnhYwKkyeqVbeREEbOkFJ7Rrl5rQhoC0IsQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t2&hvqmt=e&hvrand=13127973631121393133&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', 'おもろい', 3, '2019-10-13 14:51:41'),
(22, 'king golf', 'https://www.amazon.co.jp/KING-GOLF-1-%E5%B0%91%E5%B9%B4%E3%82%B5%E3%83%B3%E3%83%87%E3%83%BC%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9-%E4%BD%90%E3%80%85%E6%9C%A8/dp/4091215785', 'プロゴルファーになる', 3, '2019-10-22 16:06:04'),
(23, 'king golf', 'https://www.amazon.co.jp/KING-GOLF-1-%E5%B0%91%E5%B9%B4%E3%82%B5%E3%83%B3%E3%83%87%E3%83%BC%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9-%E4%BD%90%E3%80%85%E6%9C%A8/dp/4091215785', 'ドレッド', 4, '2019-10-22 16:21:31'),
(24, 'banana fish', 'https://www.amazon.co.jp/Banana-fish-%E5%B0%8F%E5%AD%A6%E9%A4%A8%E6%96%87%E5%BA%AB-%E5%90%89%E7%94%B0-%E7%A7%8B%E7%94%9F/dp/4091911617', '実写版の映画に出来そう', 4, '2019-10-23 18:05:26');

-- --------------------------------------------------------

--
-- テーブルの構造 `php02_table`
--

CREATE TABLE `php02_table` (
  `id` int(12) NOT NULL,
  `task` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `image` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `php02_table`
--

INSERT INTO `php02_table` (`id`, `task`, `deadline`, `comment`, `image`, `indate`) VALUES
(2, 'kadai2', '2019-10-05', 'test', NULL, '2019-10-05 15:52:58'),
(3, 'allohaBllosam', '2019-10-05', 'test', NULL, '2019-10-05 15:54:45'),
(5, 'EngnierdGerments', '2019-10-06', 'suzuki', NULL, '2019-10-05 15:56:11'),
(7, 'UnderCover', '2019-10-06', 'takahashi', NULL, '2019-10-05 15:57:16'),
(8, 'stussy', '2019-10-06', 'stussyi', NULL, '2019-10-05 15:58:27'),
(9, 'Supreme', '2019-10-06', '不明', NULL, '2019-10-05 15:59:37'),
(10, 'FL', '2019-10-06', 'Futura', NULL, '2019-10-05 16:00:03'),
(13, 'test', '2019-10-12', 'come', NULL, '2019-10-12 14:51:45'),
(14, 'kadai10', '2019-10-25', 'sa', 'upload/20191026091715d41d8cd98f00b204e9800998ecf8427e.png', '2019-10-26 16:17:15'),
(15, 'aaaaa', '2019-10-26', 'dddd', 'upload/20191026092041d41d8cd98f00b204e9800998ecf8427e.png', '2019-10-26 16:20:41'),
(16, 'zzzz', '2019-10-26', 'sss', 'upload/20191026092056d41d8cd98f00b204e9800998ecf8427e.png', '2019-10-26 16:20:56'),
(17, 'kadai', '2019-10-31', 'z', NULL, '2019-10-26 17:29:52'),
(18, 'kadai10', '2019-10-31', 'aaa', NULL, '2019-10-26 17:32:08'),
(19, 'kadai', '2019-10-26', 'w', 'upload/20191026104548d41d8cd98f00b204e9800998ecf8427e.png', '2019-10-26 17:45:48');

-- --------------------------------------------------------

--
-- テーブルの構造 `user_table`
--

CREATE TABLE `user_table` (
  `id` int(12) NOT NULL,
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `lid` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `lpw` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `kanri_flg` int(1) NOT NULL,
  `life_flg` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `user_table`
--

INSERT INTO `user_table` (`id`, `name`, `lid`, `lpw`, `kanri_flg`, `life_flg`) VALUES
(1, 'admin', 'sa', '1234', 1, 0),
(5, 'a', 'a', '1234', 0, 0),
(7, 'abc', 'abc', '123', 0, 0),
(8, 'k', 'q', 'j', 1, 0),
(9, 'zzzzzzzz', 'z1', 'qwe', 0, 0),
(10, 'sssssss', 'shi', 'ma', 0, 0);

-- --------------------------------------------------------

--
-- テーブルの構造 `wk_gs_bm_rank_table`
--

CREATE TABLE `wk_gs_bm_rank_table` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `score` float(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `wk_gs_bm_rank_table`
--

INSERT INTO `wk_gs_bm_rank_table` (`name`, `score`) VALUES
('banana fish', 4.00),
('king golf', 3.50),
('ONEPEICE', 4.25),
('キングダム', 4.30),
('珍遊記', 2.75);

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `ajax_table`
--
ALTER TABLE `ajax_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `canvas_table`
--
ALTER TABLE `canvas_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `php02_table`
--
ALTER TABLE `php02_table`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `user_table`
--
ALTER TABLE `user_table`
  ADD PRIMARY KEY (`id`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `ajax_table`
--
ALTER TABLE `ajax_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- テーブルのAUTO_INCREMENT `canvas_table`
--
ALTER TABLE `canvas_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- テーブルのAUTO_INCREMENT `php02_table`
--
ALTER TABLE `php02_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- テーブルのAUTO_INCREMENT `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- データベース: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin DEFAULT NULL,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp(),
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- テーブルのデータのダンプ `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"gsacfd04_14\",\"table\":\"canvas_table\"},{\"db\":\"gsacfd04_14\",\"table\":\"ajax_table\"},{\"db\":\"gsacfd04_14\",\"table\":\"php02_table\"},{\"db\":\"gsacfd04_14\",\"table\":\"user_table\"},{\"db\":\"gsacfd04_14\",\"table\":\"gs_bm_table\"},{\"db\":\"gsacfd04_14\",\"table\":\"test\"},{\"db\":\"gsacfd04_14\",\"table\":\"wk_gs_bm_rank_table\"}]');

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT 0,
  `x` float UNSIGNED NOT NULL DEFAULT 0,
  `y` float UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

--
-- テーブルのデータのダンプ `pma__table_uiprefs`
--

INSERT INTO `pma__table_uiprefs` (`username`, `db_name`, `table_name`, `prefs`, `last_update`) VALUES
('root', 'gsacfd04_14', 'user_table', '{\"sorted_col\":\"`user_table`.`kanri_flg` ASC\"}', '2019-10-19 07:51:57');

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin DEFAULT NULL,
  `data_sql` longtext COLLATE utf8_bin DEFAULT NULL,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- テーブルのデータのダンプ `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2019-11-07 10:57:01', '{\"lang\":\"ja\",\"Console\\/Mode\":\"collapse\"}');

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- テーブルの構造 `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- ダンプしたテーブルのインデックス
--

--
-- テーブルのインデックス `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- テーブルのインデックス `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- テーブルのインデックス `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- テーブルのインデックス `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- テーブルのインデックス `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- テーブルのインデックス `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- テーブルのインデックス `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- テーブルのインデックス `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- テーブルのインデックス `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- テーブルのインデックス `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- テーブルのインデックス `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- テーブルのインデックス `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- テーブルのインデックス `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- テーブルのインデックス `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- テーブルのインデックス `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- テーブルのインデックス `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- ダンプしたテーブルのAUTO_INCREMENT
--

--
-- テーブルのAUTO_INCREMENT `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- テーブルのAUTO_INCREMENT `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- データベース: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
