function validate() {
	var re = /^[a-zA-Z0-9]{4,12}$/
	var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	var re2 = /^[0-9]{3,3}*-[0-9]{4,4}*-[0-9]{4,4}$/i;
	 var email = document.getElementById("email");
	 var pw = document.getElementById("pw");
	 if(email.value=="") {

         alert("이메일을 입력해 주세요");

         email.focus();

         return false;

     }
	 if(!check(re2, email, "적합하지 않은 이메일 형식입니다.")) {

         return false;

     }
	 if(!check(re,pw,"패스워드는 4~12자의 영문 대소문자와 숫자로만 입력")) {

         return false;

     }
	 if(join.pw.value != join.checkpw.value) {

         alert("비밀번호가 다릅니다. 다시 확인해 주세요.");

         join.checkpw.value = "";

         join.checkpw.focus();

         return false;

     }
}
function check(re, what, message) {

    if(re.test(what.value)) {

        return true;

    }

    alert(message);

    what.value = "";

    what.focus();

    //return false;

}