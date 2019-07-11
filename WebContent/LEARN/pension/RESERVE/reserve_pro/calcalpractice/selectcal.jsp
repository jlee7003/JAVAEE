JSP - ������ �⵵, �� onchange�� �̿��� �޷� ���
http://marcus215.egloos.com/106658

<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.Calendar"%>
<%
    String result = "";
    // ������ ����
    String syear = request.getParameter("year");
    String smonth = request.getParameter("month"); 
    
    Calendar cal = Calendar.getInstance();
    int nowYear = 0;
    int nowMonth = 0;
    if(syear == null || smonth == null) {
        nowYear = cal.get(Calendar.YEAR);
        nowMonth = cal.get(Calendar.MONTH);
    }
    else {
        nowYear = Integer.parseInt(syear);
        nowMonth = Integer.parseInt(smonth);
    }
    
    cal.set(nowYear, nowMonth-1, 1);
    int startDay = 1;
    int endDay = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
    int week = cal.get(Calendar.DAY_OF_WEEK);
    
    int newLine = 0;
    result += "<tr>";
    for(int i=1; i<week; i++) {
        result += "<td>&nbsp;</td>";
        newLine++;
    }
    
    for(int i=startDay; i<=endDay; i++) {
        if(newLine == 6) {
            result += "<td height='30' width='30' align='center'><font color='BLUE'>" + i + "</font></td>";
        }
        else if(newLine == 0) {
            result += "<td height='30' width='30' align='center'><font color='RED'>" + i + "</font></td>";
        }
        else {
            result += "<td height='30' width='30' align='center'>" + i + "</td>";
        }
        newLine++;
        if(newLine==7 && i!=endDay) {
            result += "</tr><tr>";
            newLine = 0;
        }
    }
    
    while(newLine>0 && newLine<7) {
        result += "<td>&nbsp;</td>";
        newLine++;
    }
    
    result += "</tr>";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>�޷� ���(�� ������ �ȿ���)</title>
<script type="text/javascript">
function fsubmit(obj) {
    // �ڹٽ�ũ��Ʈ������ �� ����
    // ->submit() �޼ҵ� �̿�
    obj.form.submit();
}
</script>
</head>
<body>
�޷� ��� <br><br>
<form method="post">
�⵵ : <select name="year" onchange="fsubmit(this);">
    <% for(int i=1950; i<2020; i++) {
        %><option value="<%= i %>" 
        <% if(Integer.parseInt(syear)==i) out.println("selected='selected'");%>> <%= i %><%     
    }
    %></option>
</select>�� &nbsp;
�� : <select name="month" onchange="fsubmit(this);">
    <% for(int i=1; i<13; i++) {
        %><option value="<%= i %>" 
        <% if(Integer.parseInt(smonth)==i) out.println("selected='selected'");%>> <%= i %><%     
    }
    %></option>
</select>��
</form>
<br><br>
<table border="3">
    <tr>
        <td height="30" width="30" align="center">��</td>
        <td height="30" width="30" align="center">��</td>
        <td height="30" width="30" align="center">ȭ</td>
        <td height="30" width="30" align="center">��</td>
        <td height="30" width="30" align="center">��</td>
        <td height="30" width="30" align="center">��</td>
        <td height="30" width="30" align="center">��</td>
    </tr>
<%= result %>
</table>
</body>
</html> 