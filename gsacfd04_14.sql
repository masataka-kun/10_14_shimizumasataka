-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- ホスト: localhost
-- 生成日時: 2019 年 10 月 22 日 10:11
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
(12, 'ONEPEICE', 'https://www.amazon.co.jp/ONEPIECE-%E3%83%AF%E3%83%B3%E3%83%94%E3%83%BC%E3%82%B9/b?ie=UTF8&node=289203011', '話長すぎ', 3, '2019-10-09 19:51:42'),
(13, 'ONEPEICE', 'https://www.amazon.co.jp/ONEPIECE-%E3%83%AF%E3%83%B3%E3%83%94%E3%83%BC%E3%82%B9/b?ie=UTF8&node=289203011', '強くなりすぎ', 3, '2019-10-09 19:51:58'),
(15, 'ONEPEICE', 'https://www.amazon.co.jp/ONEPIECE-%E3%83%AF%E3%83%B3%E3%83%94%E3%83%BC%E3%82%B9/b?ie=UTF8&node=289203011', '悪魔の実食べたい', 4, '2019-10-09 19:52:34'),
(16, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW6RrZypyZp6FfJmk3ZzjbmzT-AEjIPLAK3lfSEAifafTCrkC2mWizhoCqmgQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t1&hvqmt=e&hvrand=11763280971020882863&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', '今の時代に生まれてよかった', 5, '2019-10-10 20:51:51'),
(17, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW6RrZypyZp6FfJmk3ZzjbmzT-AEjIPLAK3lfSEAifafTCrkC2mWizhoCqmgQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t1&hvqmt=e&hvrand=11763280971020882863&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', '世界感がすごい', 4, '2019-10-10 21:01:42'),
(18, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW0ub5bMV8_dfPhYA17SYvQWEhgnhYwKkyeqVbeREEbOkFJ7Rrl5rQhoC0IsQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t2&hvqmt=e&hvrand=13127973631121393133&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', 'おもろい、ちょっとあきた', 4, '2019-10-13 13:57:12'),
(19, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW0ub5bMV8_dfPhYA17SYvQWEhgnhYwKkyeqVbeREEbOkFJ7Rrl5rQhoC0IsQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t2&hvqmt=e&hvrand=13127973631121393133&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', 'おもろい、ちょっとあきたけど。。。　やっぱすごい！！！', 5, '2019-10-13 14:01:31'),
(20, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW0ub5bMV8_dfPhYA17SYvQWEhgnhYwKkyeqVbeREEbOkFJ7Rrl5rQhoC0IsQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t2&hvqmt=e&hvrand=13127973631121393133&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', 'おもろい', 4, '2019-10-13 14:02:06'),
(21, 'キングダム', 'https://www.amazon.co.jp/s?k=%E3%82%AD%E3%83%B3%E3%82%B0%E3%83%80%E3%83%A0%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF&adgrpid=50064565861&gclid=CjwKCAjw5_DsBRBPEiwAIEDRW0ub5bMV8_dfPhYA17SYvQWEhgnhYwKkyeqVbeREEbOkFJ7Rrl5rQhoC0IsQAvD_BwE&hvadid=259538309409&hvdev=c&hvlocphy=1009717&hvnetw=g&hvpos=1t2&hvqmt=e&hvrand=13127973631121393133&hvtargid=aud-759377471933%3Akwd-333121613179&hydadcr=14638_9424381&jp-ad-ap=0&tag=googhydr-22&ref=pd_sl_3ym70q9qpf_e', 'おもろい', 3, '2019-10-13 14:51:41'),
(22, 'king golf', 'https://www.amazon.co.jp/KING-GOLF-1-%E5%B0%91%E5%B9%B4%E3%82%B5%E3%83%B3%E3%83%87%E3%83%BC%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9-%E4%BD%90%E3%80%85%E6%9C%A8/dp/4091215785', 'プロゴルファーになる', 3, '2019-10-22 16:06:04'),
(23, 'king golf', 'https://www.amazon.co.jp/KING-GOLF-1-%E5%B0%91%E5%B9%B4%E3%82%B5%E3%83%B3%E3%83%87%E3%83%BC%E3%82%B3%E3%83%9F%E3%83%83%E3%82%AF%E3%82%B9-%E4%BD%90%E3%80%85%E6%9C%A8/dp/4091215785', 'ドレッド', 4, '2019-10-22 16:21:31');

-- --------------------------------------------------------

--
-- テーブルの構造 `php02_table`
--

CREATE TABLE `php02_table` (
  `id` int(12) NOT NULL,
  `task` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `deadline` date NOT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `indate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- テーブルのデータのダンプ `php02_table`
--

INSERT INTO `php02_table` (`id`, `task`, `deadline`, `comment`, `indate`) VALUES
(2, 'kadai2', '2019-10-05', 'test', '2019-10-05 15:52:58'),
(3, 'allohaBllosam', '2019-10-05', 'test', '2019-10-05 15:54:45'),
(5, 'EngnierdGerments', '2019-10-06', 'suzuki', '2019-10-05 15:56:11'),
(7, 'UnderCover', '2019-10-06', 'takahashi', '2019-10-05 15:57:16'),
(8, 'stussy', '2019-10-06', 'stussyi', '2019-10-05 15:58:27'),
(9, 'Supreme', '2019-10-06', '不明', '2019-10-05 15:59:37'),
(10, 'FL', '2019-10-06', 'Futura', '2019-10-05 16:00:03'),
(13, 'test', '2019-10-12', 'come', '2019-10-12 14:51:45');

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
(2, 'masa', 't', 'nnnn1234', 0, 0),
(5, 'a', 'a', '1234', 0, 0),
(7, 'abc', 'abc', '123', 0, 0);

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
('king golf', 3.50),
('ONEPEICE', 4.00),
('キングダム', 4.30),
('珍遊記', 2.75);

--
-- ダンプしたテーブルのインデックス
--

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
-- テーブルのAUTO_INCREMENT `gs_bm_table`
--
ALTER TABLE `gs_bm_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- テーブルのAUTO_INCREMENT `php02_table`
--
ALTER TABLE `php02_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- テーブルのAUTO_INCREMENT `user_table`
--
ALTER TABLE `user_table`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
