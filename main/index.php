<?php
// セッションスタート
session_start();

// 0.外部ファイル読み込み
include('functions.php');

// ログイン状態のチェック
checkSessionId();

// ヘッダー読み込み
$menu = menu();
$menu_admin = menu_admin();
$menu_index = '';
if ($_SESSION['kanri_flg'] == 0) {
  $menu_index = $menu;
} else {
  $menu_index = $menu_admin;
}

?>


<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>ブックマーク</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
  <script type="text/javascript" src="js/check.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

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
      <a class="navbar-brand" href="#">ブックマーク登録</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <?= $menu_index ?>
        </ul>
      </div>
    </nav>
  </header>

  <form action="insert.php" method="post" name="form">
    <div class="form-group">
      <label for="name">BookName</label>
      <input type="text" class="form-control" id="name" name="name">
    </div>
    <div class="form-group">
      <label for="url">URL</label>
      <input type="text" class="form-control" id="url" name="url">
    </div>
    <div class="form-group">
      <label for="comment">Comment</label>
      <textarea class="form-control" id="comment" name="comment" rows="3"></textarea>
    </div>
    <div class="form-group">
      <label for="score">Score</label>
      <select required class="form-control" id="score" name="score">
        <option value="" hidden>点数を選択</option>
        <option value="1">1</option>>
        <option value="2">2</option>>
        <option value="3">3</option>>
        <option value="4">4</option>>
        <option value="5">5</option>>
      </select>
    </div>
    <div class="form-group">
      <button type="submit" class="btn btn-primary" onclick="return checkForm()" ;>Submit</button>
    </div>

  </form>

</body>

</html>