<?php
// セッションスタート
session_start();

// 0.外部ファイル読み込み
include('functions.php');

// ログイン状態のチェック
checkSessionId();

// ヘッダー読み込み
$menu_canvas = menu_canvas();

?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>CANVAS</title>
    <!-- <link rel="stylesheet" href="css/colorbox.css">
    <link rel="stylesheet" href="css/reset.css">
    <link rel="stylesheet" href="css/style.css"> -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.2.1/css/bootstrap.min.css" integrity="sha384-GJzZqFGwb1QTTN6wy59ffF1BuGJpLSa9DkKMp0DgiMDm4iYMj70gZWKYbI706tWS" crossorigin="anonymous">
    <link href="https://fonts.googleapis.com/css?family=M+PLUS+1p" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Josefin+Slab&display=swap" rel="stylesheet">
    <link href="https://use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.10.0/themes/base/jquery-ui.css" />
    <script type="text/javascript" src="js/check.js"></script>
    <script type="text/javascript" src="js/imgProcessing.js"></script>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>

<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">CANVAS</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav">
                <?= $menu_canvas ?>
            </ul>
        </div>
    </nav>
</header>

<body>
    <section>
        <h1>Entry</h1>
        <div>
            <!-- 線の太さを変更するHTML -->
            <input id="bold" type="range" name="太さ" value="5" min="1" max="9" step="1">

            <!-- 線の透明度を変更する -->
            <input id="alpha" type="range" name="透明度" value="1" min="0" max="1" step="0.1">

            <!-- 線の色を変更するHTML要素 -->
            <input id="color" type="color" name="色" value="#000000">

            <!-- ペン -->
            <button id="pen">ペン</button>

            <!-- 消しゴム -->
            <button id="erase">消しゴム</button>

            <!-- 戻るボタン -->
            <!-- <button id="back">一つ戻る</button> -->

            <!-- クリアボタン -->
            <button id="clea_btn">クリア</button>

            <!-- グレースケール フィルタ-->
            <input type="button" value="グレースケールフィルタ" onclick="GrayButtonClick();" />

            <!-- ネガポジ変換 フィルタ-->
            <input type="button" value="ネガポジフィルタ" onclick="NegaButtonClick();" />

        </div>

        <!-- コメント入力 -->
        <div class="form-group">
            <textarea class="form-control" id="comment" name="comment" rows="3" placeholder="コメント"></textarea>
        </div>

        <!-- ファイル選択 キャンバス-->
        <div class="upload"><input type="file" name="file" id="file"></div>
        <canvas id="canvas" style="border:1px"></canvas>
        <div id="result"></div>

        <div class="form-group">
            <!-- type="button"にすること．submitにするとリロードされるため実行されない -->
            <button type="button" id="send" class="btn btn-primary">Submit</button>
        </div>

    </section>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js "></script>
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <script src="http://code.jquery.com/ui/1.10.0/jquery-ui.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/html2canvas/0.4.1/html2canvas.js"></script>

    <script>
        // 初期化
        let isDraw = false;
        let txy = 0;
        let oldX = 0;
        let oldY = 0;
        let bold_line = 3;
        let color = '#000';
        let alpha = 1;


        var file = document.getElementById('file');
        var canvas = document.getElementById('canvas');
        // var canvasWidth = 400;
        // var canvasWidth = 960;
        var canvasWidth = 848;
        // var canvasHeight = 300;
        // var canvasHeight = 870;
        var canvasHeight = 636;
        var uploadImgSrc;

        // Canvasの準備
        canvas.width = canvasWidth;
        canvas.height = canvasHeight;
        // let canvas = $('#canvas')[0];
        const context = canvas.getContext('2d');
        const undoList = [];

        function loadLocalImage(e) {
            // ファイル情報を取得
            var fileData = e.target.files[0];

            // 画像ファイル以外は処理を止める
            if (!fileData.type.match('image.*')) {
                alert('画像を選択してください');
                return;
            }

            // FileReaderオブジェクトを使ってファイル読み込み
            var reader = new FileReader();
            // ファイル読み込みに成功したときの処理
            reader.onload = function() {
                // Canvas上に表示する
                uploadImgSrc = reader.result;
                canvasDraw();
            }
            // ファイル読み込みを実行
            reader.readAsDataURL(fileData);
        }

        // ファイルが指定された時にloadLocalImage()を実行
        file.addEventListener('change', loadLocalImage, false);

        // Canvas上に画像を表示する
        function canvasDraw(imgSrc) {
            // canvas内の要素をクリアする
            // ctx.clearRect(0, 0, canvasWidth, canvasHeight);
            context.clearRect(0, 0, canvasWidth, canvasHeight);

            // Canvas上に画像を表示
            var img = new Image();
            img.src = uploadImgSrc;
            img.onload = function() {
                // ctx.drawImage(img, 0, 0, canvasWidth, this.height * (canvasWidth / this.width));
                context.drawImage(img, 0, 0, canvasWidth, this.height * (canvasWidth / this.width));


                // canvasを画像に変換
                var data = canvas.toDataURL();

                // ダウンロードリンクを生成して出力
                var dlLink = document.createElement('a');
                dlLink.href = data;
                dlLink.download = 'sample.png';
                dlLink.innerText = 'ダウンロード';
                console.log(dlLink);
                document.getElementById('result').innerHTML = '';
                document.getElementById('result').appendChild(dlLink);
            }
        }

        // MouseDownイベント
        $(canvas).on('mousedown', function(e) {
            // console.long(e);
            // 座標を取得して描画状態にする処理を記述
            oldX = e.offsetX;
            oldY = e.offsetY - txy;
            isDraw = true;
            var imageData = context.getImageData(0, 0, canvas.width, canvas.height);
            undoList.push(function() {
                context.putImageData(imageData, 0, 0);
            });
        });

        // MouseMove:ライン引く処理
        $(canvas).on('mousemove', function(e) {
            if (isDraw == true) {
                // console.log(e.offsetX, e.offsetY);
                // 【注意】mousedownはクリックしていてもいなくても発火するので条件分岐する必要あり！
                context.strokeStyle = color;
                context.lineWidth = bold_line;
                context.glibalAlpha = alpha;
                context.lineJoin = 'round';
                context.lineCap = 'round';
                // 線を引く処理を記述
                context.beginPath();
                context.moveTo(oldX, oldY);
                context.lineTo(e.offsetX, e.offsetY - txy);
                context.stroke();
                // 一つ前の座標に現在の座標を保持する記述
                oldX = e.offsetX;
                oldY = e.offsetY - txy;
            }
        });

        // MouseUpフラグをfalse
        $(canvas).on('mouseup', function(e) {
            // 書かなくする処理
            isDraw = false;

            // canvasを画像に変換
            var data = canvas.toDataURL();
            console.log(data);

            // ダウンロードリンクを生成して出力
            var dlLink = document.createElement('a');
            dlLink.href = data;
            dlLink.download = 'sample.png';
            dlLink.innerText = 'ダウンロード';
            document.getElementById('result').innerHTML = '';
            document.getElementById('result').appendChild(dlLink);

        });

        // カーソルがキャンバスから外れると描画を中止する処理
        $(canvas).on('mouseout', function(e) {
            // 書かなくする処理
            isDraw = false;
        });

        // 線の太さを編集
        $('#bold').on('change', function(e) {
            console.log('太さ変更！');
            // 太さを設定する処理
            bold_line = $('#bold').val();
        });

        // 透明度を編集
        $('#alpha').on('change', function(e) {
            console.log('透明度を変更！');
            // 透明度を設定処理
            alpha = $('#alpha').val();
        });

        // カラーボタン　編集
        $('#color').on('change', function(e) {
            console.log('色変更！');
            // 色を設定
            color = $('#color').val();
        });

        // ペン（線を書く状態にする処理　デフォは線を書く状態）
        $('#pen').on('click', function(e) {
            console.log('ペンモードです！');
            // ペン状態にする処理
            context.globalCompositeOperation = 'source-over';
        });

        // 消しゴム編集
        $('#erase').on('click', function(e) {
            console.log('消しゴムモードです！');
            // 消しゴムの状態にする処理
            context.globalCompositeOperation = 'destination-out';
        });

        // 戻るボタン処理
        // $('#back').on('click', function() {
        //     if (undoList.length > 0) {
        //         undoList.pop()();
        //     }
        // });

        // クリアボタン処理
        $('#clear_btn').on('click', function(e) {
            console.log('クリア！');
            // 消去処理
            context.clearRect(0, 0, canvas.width, canvas.height);
        });
    </script>
</body>

</html>