<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
    <title>ȸ������ ȭ��</title>
    <style>
    div{padding-left: 800px;}
    body{background-color : LemonChiffon}
    </style>    
    
    <link href='../../css/join_style.css' rel='stylesheet' style='text/css'/>
 
    <script type="text/javascript">
    
        // �ʼ� �Է������� ���̵�, ��й�ȣ�� �ԷµǾ����� Ȯ���ϴ� �Լ�
        function checkValue()
        {
            if(!document.userInfo.id.value){
                alert("���̵� �Է��ϼ���.");
                return false;
            }
            
            if(!document.userInfo.password.value){
                alert("��й�ȣ�� �Է��ϼ���.");
                return false;
            }
            
            // ��й�ȣ�� ��й�ȣ Ȯ�ο� �Էµ� ���� �������� Ȯ��
            if(document.userInfo.password.value != document.userInfo.passwordcheck.value ){
                alert("��й�ȣ�� �����ϰ� �Է��ϼ���.");
                return false;
            }
        }
        
        // ��� ��ư Ŭ���� �α��� ȭ������ �̵�
        function goLoginForm() {
            location.href="LoginForm.jsp";
        }
    </script>
</head>
<body>
    <div id="wrap">
        <br>
        <b><font size="6" color="black">ȸ������</font></b>
        <br><br>
        
        <form method="post" action="../pro/JoinPro.jsp">
            <table>
                <tr>
                    <td id="title">���̵�</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="id"  size="30" placeholder="���̵� �Է�(5~11����)" maxlength="20">
                        <input type="button" value="�ߺ�Ȯ��" >    
                    </td>
                </tr>
                        
                <tr>
                    <td id="title">��й�ȣ</td>
                  </tr>
                <tr>
                    <td>
                        <input type="password" name="password" size="40" placeholder="��й�ȣ(����,����,Ư������ ���� �ּ� 8��)" maxlength="15">
                    </td>
                </tr>
                
                <tr>
                </tr>
                <tr>
                    <td>
                        <input type="password" name="password" size="40" maxlength="15">
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">�̸�</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="name" size="40" maxlength="40">
                    </td>
                </tr>
                    
                 <tr>
                    <td id="title">����</td>
                </tr>
                <tr>
                    <td>
                         <input type="text" name="birthyy" maxlength="4" placeholder="��(4��)" size="6" >
                        <select name="birthmm">
                            <option value="">��</option>
                            <option value="01" >1</option>
                            <option value="02" >2</option>
                            <option value="03" >3</option>
                            <option value="04" >4</option>
                            <option value="05" >5</option>
                            <option value="06" >6</option>
                            <option value="07" >7</option>
                            <option value="08" >8</option>
                            <option value="09" >9</option>
                            <option value="10" >10</option>
                            <option value="11" >11</option>
                            <option value="12" >12</option>
                        </select>
                        <input type="text" name="birthdd" maxlength="2" placeholder="��" size="4" >
                    </td>

                </tr>
                
                 <tr>
                    <td id="title">����</td>
                </tr>
                <tr>
                    <td>
                        <input type="radio" name="gender" value="��" checked>��
                        <input type="radio" name="gender" value="��" >��
                    </td>
                </tr>                 
                                   
                <tr>
                    <td id="title">�̸���</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" name="mail1" size="20" maxlength="30"> @
                        <select name="mail2">
                            <option>naver.com</option>
                            <option>daum.net</option>
                            <option>gmail.com</option>
                            <option>nate.com</option>                        
                        </select>
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">��ȭ��ȣ</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" size="40" name="phone" />
                    </td>
                </tr>
                <tr>
                    <td id="title">�ּ�</td>
                </tr>
                <tr>
                    <td>
                        <input type="text" size="40" name="address"/>
                    </td>
                </tr>
            </table>            
            <br>            
            <input type="submit" value="����"/>  
            <input type="button" value="���">
        </form>
    </div>
</body>
</html>