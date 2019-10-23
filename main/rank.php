<?php
// セッションスタート
session_start();

//0.外部ファイル読み込み
include('functions.php');

// ログイン状態チェック
checkSessionId();

// ヘッダー読み込み
$menu = menu();
$menu_admin = menu_admin();
$menu_rank = '';
if ($_SESSION['kanri_flg'] == 0) {
  $menu_rank = $menu;
} else {
  $menu_rank = $menu_admin;
}

// 1.DB接続します。
$pdo = connectToDb();

//2. データ表示SQL作成
//ワークテーブルの初期化
$sql = 'DELETE FROM `wk_gs_bm_rank_table`';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();
//データ集計とインサート
$sql = 'INSERT INTO `wk_gs_bm_rank_table`(`name`, `score`) SELECT name, avg(score) FROM `gs_bm_table` GROUP BY name';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();
// データ表示SQL作成
$sql = 'SELECT * FROM wk_gs_bm_rank_table ORDER BY score DESC';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

//3. データ表示
$view = '';
if ($status == false) {
  //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit('sqlError:' . $error[2]);
} else {
  //Selectデータの数だけ自動でループしてくれる
  //http://php.net/manual/ja/pdostatement.fetch.php
  while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $view .= '<li class="list-group-item">';
    // $view .= '<p>' . $result['name'] . '-' . '<a href=' . $result['url'] . ' target=&quot;_blank&quot; rel=&quot;noopener&quot;>リンク</a>' . '-' . $result['comment'] . '-' . $result['score'] . '</p>';
    $view .= '<p>' . $result['name'] . '-' . $result['score'] . '</p>';
    $view .= '</li>';
  }
}
?>



<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>ブックマーク</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
  <style>
    div {
      padding: 10px;
      font-size: 16px;
    }
  </style>
</head>

<body>
  <header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="#">ランキング一覧</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="navbar navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <?= $menu_rank ?>
        </ul>
      </div>

      <!-- <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="index.php">ブックマーク登録</a>
          </li>
        </ul>
      </div>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="index.php">データ一覧</a>
          </li>
        </ul>
      </div> -->
    </nav>
  </header>

  <div>
    <ul class="list-group">
      <!-- ここにDBから取得したデータを表示しよう -->
      <?= $view ?>
    </ul>
  </div>

</body>

</html>