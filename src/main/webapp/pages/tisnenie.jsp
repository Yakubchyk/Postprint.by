<%--
  Created by IntelliJ IDEA.
  User: yakubchyk
  Date: 21.07.24
  Time: 07:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html>
<head>
    <title>Calculator</title>
</head>
<body>

<jsp:include page="_bootstrap.jsp"/>
<jsp:include page="_header.jsp"/>

<div class="container text-center">
    <h3>Калькулятор расчета стоимости тиснения</h3>

    <div class="row align-items-start">
        <div class="col-3"></div>
        <div class="col-6 mt-5">
            <form class="row g-3" action="/tisnenie" method="post">
                <div class="col-md-4 mb-3">
                    <label>Стоимость оттиска</label>
                    <input type="text" name="oneOttiskPrice" class="form-control" value="${oneOttiskPrice}">
                </div>
                <div class="col-md-4 mb-3">
                    <label>Стоимость приладки</label>
                    <input type="text" name="montageWorkPrice" class="form-control" value="${montageWorkPrice}">
                </div>
                <div class="col-md-4 mb-3">
                    <label>Стоимость фольги М2.</label>
                    <input type="text" name="oneQuadratMetterFoilPrice" class="form-control" value="${oneQuadratMetterFoilPrice}">
                </div>
                <div class="col-md-4 mb-3">
                    <label>Ширина в СМ.</label>
                    <input type="text" name="widthSM" class="form-control" value="${widthSM}">
                </div>
                <div class="col-md-4 mb-3">
                    <label>Длинна в СМ.</label>
                    <input type="text" name="lengthSM" class="form-control" value="${lengthSM}">
                </div>
                <div class="col-md-4 mb-3">
                    <label>Тираж ШТ.</label>
                    <input type="text" name="quantity" class="form-control" value="${quantity}">
                </div>

                <%--<div class="alert alert-info mt-3" role="alert">--%>
                <h5>Итого: <span id="result"><fmt:formatNumber value="${result}" type="number" maxFractionDigits="2"/></span></h5>
                <%-- </div>--%>
                <div class="col mb-3">
                    <button type="submit" class="btn btn-primary">Submit</button>
                </div>

            </form>

        </div>
        <div class="col-3"></div>
    </div>
</div>

</body>
</html>