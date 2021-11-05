<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>탈퇴 화면</title>
<style>
	div{padding-left: 800px;}
    body{background-color : LemonChiffon}
</style>

 <script type="text/javascript">
        // 비밀번호 미입력시 경고창
        function checkValue(){
            if(!document.deleteform.password.value){
                alert("비밀번호를 입력하지 않았습니다.");
                return false;
            }
        }
    </script>
</head>
<body>
<div>
		<br>
        <b><font size="6" color="black">내 정보</font></b>
        <br><br>
        
        <form name="deleteform" method="post" action="MainForm.jsp?contentPage=member/pro/DeletePro.jsp"
        onsubmit="return checkValue()">
 
        <table>
            <tr>
                <td>비밀번호</td>
                <td><input type="password" name="password" maxlength="50"></td>
            </tr>
        </table>
        
        <br> 
        <input type="button" value="취소" onclick="javascript:window.location='MainForm.jsp'">
        <input type="submit" value="탈퇴" /> 
    </form> 
</div>       
</body>
</html>