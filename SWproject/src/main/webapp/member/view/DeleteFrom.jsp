<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Ż�� ȭ��</title>
<style>
	div{padding-left: 800px;}
    body{background-color : LemonChiffon}
</style>

 <script type="text/javascript">
        // ��й�ȣ ���Է½� ���â
        function checkValue(){
            if(!document.deleteform.password.value){
                alert("��й�ȣ�� �Է����� �ʾҽ��ϴ�.");
                return false;
            }
        }
    </script>
</head>
<body>
<div>
		<br>
        <b><font size="6" color="black">�� ����</font></b>
        <br><br>
        
        <form name="deleteform" method="post" action="MainForm.jsp?contentPage=member/pro/DeletePro.jsp"
        onsubmit="return checkValue()">
 
        <table>
            <tr>
                <td>��й�ȣ</td>
                <td><input type="password" name="password" maxlength="50"></td>
            </tr>
        </table>
        
        <br> 
        <input type="button" value="���" onclick="javascript:window.location='MainForm.jsp'">
        <input type="submit" value="Ż��" /> 
    </form> 
</div>       
</body>
</html>