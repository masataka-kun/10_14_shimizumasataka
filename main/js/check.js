function checkForm() {
  if (document.form.name.value == "") {
    alert("名前を入力して下さい。");
    return false;
  } else if (document.form.url.value == "") {
    alert("URLを入力して下さい。");
    return false;
  } else {
    return true;
  }

}
