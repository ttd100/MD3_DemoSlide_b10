<%@ page import="java.util.List" %>
<%@ page import="rikkei.academy.Student" %>
<%@ page import="java.util.ArrayList" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/9/2022
  Time: 8:22 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    List<Student> studentList = new ArrayList<>();
    studentList.add(new Student(1,"Star Đạt",22,"Hải Phòng","image/img.png"));
    studentList.add(new Student(2,"hùng",18,"Nam Định","image/img.png"));
    studentList.add(new Student(2,"hà",8,"Hà Nội","image/img.png"));
    pageContext.setAttribute("listStudent",studentList);
%>
<table border="1" style="width: 100%">
    <tr>
        <th>STT</th>
        <th>NAME</th>
        <th>AGE</th>
        <th>ADDRESS</th>
        <th>IMAGE</th>
    </tr>
    <c:forEach var="st" items="#{listStudent}">
        <tr>
            <td><c:out value="${st.id}"></c:out></td>
            <td><c:out value="${st.name}"></c:out></td>
            <td><c:choose>
                <c:when test="${st.age>8&&st.age<=18}">
                    <c:out value="${'trẻ trâu'}"></c:out>
                </c:when>
                <c:when test="${st.age<=8}">
                    <c:out value="${'trẻ nghé'}"></c:out>
                </c:when>
                <c:otherwise>
                    <c:out value="${'người lớn'}"></c:out>
                </c:otherwise>
            </c:choose></td>
            <td>
                <c:set var="dia_chi" value="${st.address}"></c:set>
                <c:out value="${dia_chi}"></c:out>
            </td>
            <td align="center"><img  width="200" height="200" src="${st.image}"></td>
        </tr>
    </c:forEach>



</table>
</body>
</html>
