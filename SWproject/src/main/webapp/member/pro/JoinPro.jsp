<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%-- �ڹٺ� Ŭ���� import --%>      
<%@ page import="jsp.member.model.MemberBean" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>ȸ������ ó������</title>
<style>
	div{padding-left: 800px;}
    body{background-color : LemonChiffon}
</style> 
</head>
<body>
<% 
        // �ѱ� ������ �����ϱ� ���� ���ڵ� ó��
        request.setCharacterEncoding("euc-kr"); 
%>

<jsp:useBean id="memberBean" class="jsp.member.model.MemberBean" />
<jsp:setProperty property="*" name="memberBean"/>


       
<div id="wrap">
        <br>
        <b><font size="5" color="gray">ȸ������ ������ Ȯ���ϼ���.</font></b>
        <br><br>
        <font color="blue"><%=memberBean.getName() %></font>�� ������ ���ϵ帳�ϴ�.
        <br><br>
        <br><br>
        
            <table>
                <tr>
                    <td id="title"><b>���̵�</b></td>
                </tr>
                <tr>
                    <td><%=memberBean.getId() %></td> 
                </tr>
                        
                <tr>
                    <td id="title"><b>��й�ȣ</b></td>
                  </tr>
                <tr>
                    <td><%=memberBean.getPassword() %></td>
                </tr>
                                    
                <tr>
                    <td id="title"><b>�̸�</b></td>
                </tr>
                <tr>
                    <td><%=memberBean.getName() %></td>
                </tr>
                    
                <tr>
                    <td id="title"><b>����</b></td>
                </tr>
                <tr>
                    <td><%=memberBean.getGender() %></td>
                </tr>  
                
                <tr>
                <td id="title"><b>����</b></td>
                </tr>
                <tr>
                	<td>
                    	<%=memberBean.getBirthyy() %>�� 
                   	 	<%=memberBean.getBirthmm() %>�� 
                    	<%=memberBean.getBirthdd() %>��
                </td>
            </tr>
           
                                   
                <tr>
                    <td id="title"><b>�̸���</b></td>
                </tr>
                <tr>
                    <td>
                    	<%=memberBean.getMail1() %>@<%=memberBean.getMail2() %>
                    </td>
                </tr>
                    
                <tr>
                    <td id="title"><b>��ȭ��ȣ</b></td>
                </tr>
                <tr>
                    <td><%=memberBean.getPhone() %></td>
                </tr>
                <tr>
                    <td id="title"><b>�ּ�</b></td>
                </tr>
                <tr>
                    <td> <%=memberBean.getAddress() %></td>
                </tr>
            </table>            
            <br> 
            <input type="button" value="Ȯ��">
    </div>
</body>
</html>