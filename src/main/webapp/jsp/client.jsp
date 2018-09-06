<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="icon" href="../img/favicon.ico">
<title>Home, sweet home</title>
</head>
<body>
  <!-- SERARCH -->
  <form method="get">
    <input type="hidden" name="command" value="search">
    <select name="master">
      <option value="vit">Vitalik</option>
      <option value="bog">Bogdan</option>
    </select>
  </form>
  
  
  <!-- SHIW -->
  <table>
    <thead>
      <tr>
        <th>master</th>
        <th>day</th>
        <th>start</th>
        <th>end</th>
        <th>availability</th>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>Vitalik</td>
        <td>monday</td>
        <td>13:00</td>
        <td>15:00</td>
        <td>No</td>
      </tr>
    </tbody>
    <tfoot>
    </tfoot>
  </table>
  
  <a href="${pageContext.request.contextPath }/app/main">Mainpage</a>
</body>
</html>