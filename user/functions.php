<?php
//共通で使うものを別ファイルにしておきましょう。
//DB接続関数（PDO）
function connectToDb()
{
  $dbn = 'mysql:dbname=gsacfd04_14;charset=utf8;port=3306;host=localhost';
  $user = 'root';
  $pwd = '';

  try {
    return new PDO($dbn, $user, $pwd);
  } catch (PDOException $e) {
    exit('dbError:' . $e->getMessage());
  }
}


//SQL処理エラー
function showSqlErrorMsg($stmt)
{
  $error = $stmt->errorInfo();
  exit('sqlError:' . $error[2]);
}

// function h($str)
// {
//   return htmlspecialchars($str, ENT_QUOTES, 'UTF-8');
// }

// SESSIONチェック＆リジェンレイト
function checkSessionId()
{
  //ログイン失敗時の処理（ログイン画面に遷移）
  //ログイン成功時の処理（一覧画面に遷移）
  if (!isset($_SESSION['session_id']) || $_SESSION['session_id'] != session_id()) {
    header('Location: login.php');
  } else {
    session_regenerate_id(true);
    $_SESSION['session_id'] = session_id();
  }
}

// ヘッダーメニュー
function menu()
{
  $menu = '<li class="nav-item"><a class="nav-link" href="/09_14_shimizumasataka/main/index.php">ブックマーク登録</a></li>';
  $menu .= '<li class="nav-item"><a class="nav-link" href="/09_14_shimizumasataka/main/select.php">登録一覧</a></li>';
  $menu .= '<li class="nav-item"><a class="nav-link" href="/09_14_shimizumasataka/main/rank.php">ランキング</a></li>';
  $menu .= '<li class="nav-item"><a class="nav-link" href="user_index.php">ユーザー登録</a></li>';
  $menu .= '<li class="nav-item"><a class="nav-link" href="user_select.php">ユーザー一覧</a></li>';
  $menu .= '<li class="nav-item"><a class="nav-link" href="/09_14_shimizumasataka/main/logout.php">ログアウト</a></li>';
  return $menu;
}
