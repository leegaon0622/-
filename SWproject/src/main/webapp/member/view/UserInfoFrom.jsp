<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="jsp.member.model.MemberDAO" %>  
<%@ page import="jsp.member.model.MemberBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>���� �� ���� ��� ȭ��</title>
<style>
    div{padding-left: 800px;}
    body{background-color : LemonChiffon}
</style>

<script type="text/javascript">
    
        function changeForm(val){
            if(val == "-1"){
                location.href="MainForm.jsp";
            }else if(val == "0"){
                location.href="MainForm.jsp?contentPage=member/view/ModifyFrom.jsp";
            }else if(val == "1"){
                location.href="MainForm.jsp?contentPage=member/view/DeleteForm.jsp";
            }
        }        
</script>

</head>
<body>
 <%
        String id = session.getAttribute("sessionID").toString();
        
        // ���ǿ� ����� ���̵� �����ͼ�
        // �� ���̵� �ش��ϴ� ȸ�������� �����´�.
        MemberDAO dao = MemberDAO.getInstance();
        MemberBean memberBean = dao.getUserInfo(id);
    %>
    	<br>
        <b><font size="6" color="black">�� ����</font></b>
        <br><br>
        
            <table>
                <tr>
                    <td id="title">���̵�</td>
                </tr>
                <tr>
                    <td><%=memberBean.getId() %></td> 
                </tr>
                        
                <tr>
                    <td id="title">��й�ȣ</td>
                  </tr>
                <tr>
                    <td><%=memberBean.getPassword() %></td>
                </tr>
                                    
                <tr>
                    <td id="title">�̸�</td>
                </tr>
                <tr>
                    <td><%=memberBean.getName() %></td>
                </tr>
                    
                <tr>
                    <td id="title">����</td>
                </tr>
                <tr>
                    <td><%=memberBean.getGender() %></td>
                </tr>           
                
                <tr>
                <td id="title">����</td>
                <td>
                    <%=memberBean.getBirthyy() %>�� 
                    <%=memberBean.getBirthmm() %>�� 
                    <%=memberBean.getBirthdd() %>��
                </td>
            </tr>     
                                   
                <tr>
                    <td id="title">�̸���</td>
                </tr>
                <tr>
                    <td>
                    	<%=memberBean.getMail1() %>@<%=memberBean.getMail2() %>
                    </td>
                </tr>
                    
                <tr>
                    <td id="title">��ȭ��ȣ</td>
                </tr>
                <tr>
                    <td><%=memberBean.getPhone() %></td>
                </tr>
                <tr>
                    <td id="title">�ּ�</td>
                </tr>
                <tr>
                    <td> <%=memberBean.getAddress() %></td>
                </tr>
            </table>            
            <br> 
            <input type="button" value="ȸ�� ���� ����" onclick="changeForm(0)">
            <input type="button" value="Ż��" onclick="changeForm(1)">
            <input type="button" value="Ȯ��"onclick="changeForm(-1)">
</body>
</html>