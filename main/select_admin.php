<?php
// セッションスタート
session_start();

// 0.外部ファイル読み込み
include('functions.php');

// ログイン状態のチェック
checkSessionId();

// ヘッダーメニュー読み込み
$menu_admin = menu_admin();

//1. DB接続
$pdo = connectToDb();

//2. データ表示SQL作成
$sql = 'SELECT * FROM gs_bm_table';
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

//3. データ表示
$view = '';
if ($status == false) {
  showSqlErrorMsg($stmt);
} else {
  while ($result = $stmt->fetch(PDO::FETCH_ASSOC)) {
    $view .= '<li class="list-group-item">';
    $view .= '<p>' . '<a href=' . $result['url'] . ' target=&quot;_blank&quot; rel=&quot;noopener&quot;>' . $result['name'] . '</a>' . '-' . $result['comment'] . '-' . $result['score'] . '</p>';
    $view .= '<a href="detail.php?id=' . $result['id'] . '" class="badge badge-primary">Edit</a>';
    $view .= '<a href="delete.php?id=' . $result['id'] . '" class="badge badge-danger">Delete</a>';
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
      <a class="navbar-brand" href="#">データ一覧</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="navbar navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <?= $menu_admin ?>
        </ul>
      </div>
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