<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ taglib uri= "http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ taglib  uri="http://www.springframework.org/tags/form" prefix="form"%>

</head>
<body>
<div class="col-md-12">
            <div class="panel panel-default panel-table">
              <div class="panel-heading">
                <div class="row">
                  <div class="col col-xs-6">
                    <h1 class="panel-title" style="font-size:30px"><b>My Cart</b></h1>
                  </div>
                </div>
              </div>
              <div class="panel-body">
                <table class="table table-striped table-bordered table-list" style="text-align:center">
                  <thead>
                    <tr>
                        <th style="text-align:center">ID</th>
                        <th style="text-align:center"> Name</th>
                        <th style="text-align:center">Quantity</th>
                        <th style="text-align:center">Price</th>
                        <th style="text-align:center">Status</th>
                        <th style="text-align:center">Sum</th>
                        <th style="text-align:center">Date Added</th>
                        <th style="text-align:center"><em class="fa fa-cog"></em></th>
                    </tr> 
                  </thead>
                  <tbody>
                  	<c:forEach var="myCart" items="${showcartlist }">
                          <tr>
                            <td>${myCart.cartid }</td>
                            <td>${myCart.proName }</td>
                            <td>${myCart.proQuan }</td>
                            <td>${myCart.status }</td>
                            <td>${myCart.sum }</td>
                            <td>${myCart.dateadded }</td>
                            <td><a href="<c:url value='/increasequantity/${myCart.cartid}' />">
  	<button type="submit" class="btn btn-info"><span class="glyphicon glyphicon-plus"></span>
  	</button></a>&nbsp;${myCart.proQuan}&nbsp;<a href="<c:url value='/decreasequantity/${myCart.cartid}' />">
  	<button type="submit" class="btn btn-default" style="color:#FF3349;">
  	<span class="glyphicon glyphicon-minus"></span></button></a></td>
  	<td>${myCart.sum}</td>
                            <td align="center">
                              <a href="deletecart?id=${myCart.cartid }"> <button type="submit" class="btn btn-danger">Delete<span class="glyphicon glyphicon-remove"></span></button></a>
                            </td>
                          </tr>
                	</c:forEach>
                	<tr>
                		<td colspan="5">Total</td>
                     	<td colspan="3">${total }</td>
                   	</tr>
                 </tbody>
        </table>
     </div>
  </div>
</div>
<a href="Checkout"><button type="submit" class="btn btn-success">Checkout</button></a>

  <jsp:include page="CommonFooter.jsp"></jsp:include>

</body>
</html>