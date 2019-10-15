<?php
// 関数ファイルの読み込み
include('functions.php');

// GETデータ取得
$id = $_GET['id'];

// DB接続（エラー処理追加）
$pdo = connectTodb();

// データ登録SQL作成
$sql = 'DELETE FROM gs_bm_table WHERE id=:id';
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

// データ登録処理後
if ($status == false) {
    showSqlErrorMsg($stmt);
} else {
    // select.phpへのリダイレクト
    header('Location: select.php');
    exit;
}
