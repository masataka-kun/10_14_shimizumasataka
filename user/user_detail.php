<?php
// セッションスタート
session_start();

// 関数ファイルの読み込み
include('functions.php');

// ログイン状態の確認
checkSessionId();

// ヘッダーメニュー呼び出し
$menu = menu();

// getで送信されたidを取得
if (!isset($_GET['id'])) {
  exit("Error");
}
$id = $_GET['id'];

//DB接続します
$pdo = connectToDb();

//データ登録SQL作成，指定したidのみ表示する
$sql = 'SELECT * FROM user_table WHERE id=:id';
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

//データ表示
if ($status == false) {
  // エラーのとき
  showSqlErrorMsg($stmt);
} else {
  // エラーでないとき
  $rs = $stmt->fetch();
  // var_dump($rs);
  // exit();
  // fetch()で1レコードを取得して$rsに入れる
  // $rsは配列で返ってくる．$rs["id"], $rs["task"]などで値をとれる
  // var_dump()で見てみよう
}
?>


<!DOCTYPE html>
<html lang="ja">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>todo更新ページ</title>
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
      <a class="navbar-brand" href="#">ユーザー更新</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item">
            <a class="nav-link" href="user_index.php">ユーザー登録</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="user_select.php">ユーザー一覧</a>
          </li>
        </ul>
      </div>
    </nav>
  </header>

  <form method="post" action="user_update.php">
    <div class="form-group">
      <label for="name">UserName</label>
      <input type="text" class="form-control" id="name" name="name" value=<?= $rs['name'] ?>>
    </div>
    <div class="form-group">
      <label for="lid">LoginId</label>
      <input type="text" class="form-control" id="lid" name="lid" value=<?= $rs['lid'] ?>>
    </div>
    <div class="form-group">
      <label for="lpw">LoginPassWord</label>
      <input type="text" class="form-control" id="lpw" name="lpw" value=<?= $rs['lpw'] ?>>
    </div>
    <div class="form-group">
      <label for="kanri_flg">UserAdmin</label>
      <select required class="form-control" id="kanri_flg" name="kanri_flg">
        <option value=<?= $rs['kanri_flg'] ?> hidden><?= $rs['kanri_flg'] ?></option>
        <option value="0">0：一般</option>
        <option value="1">1：管理者</option>
      </select>
    </div>
    <div class="form-group">
      <label for="life_flg">Active</label>
      <select required class="form-control" id="life_flg" name="life_flg">
        <option value=<?= $rs['life_flg'] ?> hidden><?= $rs['life_flg'] ?></option>
        <option value="0">0：アクティブ</option>
        <option value="1">1：非アクティブ</option>
      </select>
    </div>
    <div class="form-group">
      <button type="submit" class="btn btn-primary">Submit</button>
    </div>
    <!-- idは変えたくない = ユーザーから見えないようにする-->
    <input type="hidden" name="id" value="<?= $rs['id'] ?>">
  </form>

</body>

</html>