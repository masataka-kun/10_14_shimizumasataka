<?php
// DB接続関数（PDO）
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

// SESSIONチェック＆リジェネレイト
function checkSessionId()
{
    // ログイン失敗時の処理（ログイン画面に移動）
    // ログイン成功時の処理（一覧画面に移動）
    if (!isset($_SESSION['session_id']) || $_SESSION['session_id'] != session_id()) {
        header('Location: login.php');
    } else {
        session_regenerate_id(true);
        $_SESSION['session_id'] = session_id();
    }
}

// menuを決める
function menu()
{
    $menu = '<li class="nav-item"><a class="nav-link" href="index.php">ブックマーク登録</a></li><li class="nav-item"><a class="nav-link" href="select.php">登録一覧</a></li>';
    $menu .= '<li class="nav-item"><a class="nav-link" href="rank.php">ランキング</a></li>';
    $menu .= '<li class="nav-item"><a class="nav-link" href="logout.php">ログアウト</a></li>';
    return $menu;
}

function menu_nologin()
{
    $menu_nologin = '<li class="nav-item"><a class="nav-link" href="select_nologin.php">登録一覧</a></li>';
    $menu_nologin .= '<li class="nav-item"><a class="nav-link" href="logout.php">ログアウト</a></li>';
    return $menu_nologin;
}

function menu_admin()
{
    $menu_admin = '<li class="nav-item"><a class="nav-link" href="index.php">ブックマーク登録</a></li>';
    $menu_admin .= '<li class="nav-item"><a class="nav-link" href="select.php">登録一覧</a></li>';
    $menu_admin .= '<li class="nav-item"><a class="nav-link" href="rank.php">ランキング</a></li>';
    $menu_admin .= '<li class="nav-item"><a class="nav-link" href="/09_14_shimizumasataka/user/user_index.php">ユーザー登録</a></li>';
    $menu_admin .= '<li class="nav-item"><a class="nav-link" href="/09_14_shimizumasataka/user/user_select.php">ユーザー一覧</a></li>';
    $menu_admin .= '<li class="nav-item"><a class="nav-link" href="logout.php">ログアウト</a></li>';
    return $menu_admin;
}

function menu_login()
{
    $menu_login = '<li class="nav-item"><a class="nav-link" href="select_nologin.php">登録一覧</a></li>';
    return $menu_login;
}

function menu_user()
{
    $menu_user = '<li class="nav-item"><a class="nav-link" href="/09_14_shimizumasataka/main/index.php">ブックマーク登録</a></li>';
    $menu_user .= '<li class="nav-item"><a class="nav-link" href="/09_14_shimizumasataka/main/select.php">登録一覧</a></li>';
    $menu_user .= '<li class="nav-item"><a class="nav-link" href="/09_14_shimizumasataka/main/rank.php">ランキング</a></li>';
    $menu_user .= '<li class="nav-item"><a class="nav-link" href="user_index.php">ユーザー登録</a></li>';
    $menu_user .= '<li class="nav-item"><a class="nav-link" href="user_select.php">ユーザー一覧</a></li>';
    $menu_user .= '<li class="nav-item"><a class="nav-link" href="/09_14_shimizumasataka/main/logout.php"">ログアウト</a></li>';
    return $menu_user;
}
