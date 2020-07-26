
function login() {
  var username = document.getElementById('username');
  var pass = document.getElementById('password');

  if (!/^1\d{10}$/.test(username.value)) {
    alert('请输入正确用户名');
  } else if (pass.value == '') {
    alert('密码不能为空');
  } else {
    window.location.href =
      'ope.jsp?op=login&username=' + username.value + '&password=' + pass.value;
  }
}
function regist() {
  var username = document.getElementById('username');
  var pass = document.getElementById('password');
  if (!/^1\d{10}$/.test(username.value)) {
    alert('请输入正确用户名');
  } else if (pass.value == '') {
    alert('密码不能为空');
  } else {
    window.location.href =
      'ope.jsp?op=regist&username=' + username.value + '&password=' + pass.value;
  }
}
function backlogin(){
    localStorage.removeItem("token");
    window.location.href ='Home.jsp';
}