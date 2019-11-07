// グレースケールフィルタ
function GrayButtonClick() {
    // Canvas上に画像を表示
    var img = new Image();
    //  修正１
    img.src = canvas.toDataURL();;
    img.onload = () => {
        canvas.width = img.width;
        canvas.height = img.height;
        context.drawImage(img, 0, 0);

        // 画像情報の取得（offsetX, offsetY, 幅、高さ）
        const imageData = context.getImageData(0, 0, canvas.clientWidth, canvas.clientHeight);

        // imageData.dataが1pxごとのRGBAが含まれる
        let data = imageData.data;

        // ここでimageData.dataに対して画像処理を行う
        for (let i = 0; i < data.length; i += 4) {
            // (r+g+b)/3 
            const color = (data[i] + data[i + 1] + data[i + 2]) / 3;
            data[i] = data[i + 1] = data[i + 2] = color;
        };
        //  修正2
        // 画像情報からCanvasに書き戻す 
        context.putImageData(imageData, 0, 0);
        // ダウンロードリンクを生成して出力

        var dlLink = document.createElement('a');
        dlLink.href = data;
        dlLink.download = 'sample.png';
        dlLink.innerText = 'ダウンロード';
        document.getElementById('result').innerHTML = '';
        document.getElementById('result').appendChild(dlLink);
    };
}

// ネガポジフィルタ
function NegaButtonClick() {
    // Canvas上に画像を表示
    var img = new Image();
    //  修正１
    img.src = canvas.toDataURL();;
    img.onload = () => {
        canvas.width = img.width;
        canvas.height = img.height;
        context.drawImage(img, 0, 0);

        // 画像情報の取得（offsetX, offsetY, 幅、高さ）
        const imageData = context.getImageData(0, 0, canvas.clientWidth, canvas.clientHeight);

        // imageData.dataが1pxごとのRGBAが含まれる
        let data = imageData.data;

        // ここでimageData.dataに対して画像処理を行う
        for (let i = 0; i < data.length; i += 4) {
            // 255-(r|g|b) 
            data[i] = 255 - data[i];
            data[i + 1] = 255 - data[i + 1];
            data[i + 2] = 255 - data[i + 2];
        }
        //  修正2
        // 画像情報からCanvasに書き戻す 
        context.putImageData(imageData, 0, 0);
        // ダウンロードリンクを生成して出力

        var dlLink = document.createElement('a');
        dlLink.href = data;
        dlLink.download = 'sample.png';
        dlLink.innerText = 'ダウンロード';
        document.getElementById('result').innerHTML = '';
        document.getElementById('result').appendChild(dlLink);
    };
}
