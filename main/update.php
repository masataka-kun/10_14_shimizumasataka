<?php
// 関数ファイル読み込み
include('functions.php');

// 入力チェック（受診確認処理追加）
if (
    !isset($_POST['name']) || $_POST['name'] == '' ||
    !isset($_POST['url']) || $_POST['url'] == ''
) {
    exit('ParamError');
}

// POSTデータ取得
$name = $_POST['name'];
$url = $_POST['url'];
$comment = $_POST['comment'];
$score = $_POST['score'];
$id = $_POST['id'];

// DB接続します（エラー処理を追加）
$pdo = connectToDb();

// データ処理SQL作成
$sql = 'UPDATE gs_bm_table SET name=:a1, url=:a2, comment=:a3, score=:a4 WHERE id=:id';
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':a1', $name, PDO::PARAM_STR);
$stmt->bindValue(':a2', $url, PDO::PARAM_STR);
$stmt->bindValue(':a3', $comment, PDO::PARAM_STR);
$stmt->bindValue(':a4', $score, PDO::PARAM_STR);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

// データ登録後処理
if ($status == false) {
    showSqlErrorMsg($stmt);
} else {
    header('Location: select.php');
    exit;
}
