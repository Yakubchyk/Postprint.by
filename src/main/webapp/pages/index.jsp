<%--
  Created by IntelliJ IDEA.
  User: yakubchyk
  Date: 21.07.24
  Time: 07:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
    <title>Calculator</title>
</head>
<body>

<jsp:include page="_bootstrap.jsp"/>
<jsp:include page="_header.jsp"/>

<div class="container">
    <div class="container text-center">
        <h3>Калькулятор расчета стоимости тиснения</h3>

        <div class="row align-items-start">
            <div class="col-3"></div>
            <div class="col-6 mt-5">
                <form class="row g-3" action="/" method="post">
                    <div class="col-md-4 mb-3">
                        <label>Стоимость оттиска</label>
                        <input type="text" name="oneOttiskPrice" id="oneOttiskPrice" class="form-control" value="${oneOttiskPrice}" placeholder="oneOttiskPrice">

                    </div>
                    <div class="col-md-4 mb-3">
                        <label>Стоимость приладки</label>
                        <input type="text" name="montageWorkPrice" id="montageWorkPrice" class="form-control" value="${montageWorkPrice}"
                               placeholder="montageWorkPrice">
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>Стоимость фольги М2.</label>
                        <input type="text" name="oneQuadratMetterFoilPrice" id="oneQuadratMetterFoilPrice" class="form-control" value="${oneQuadratMetterFoilPrice}"
                               placeholder="oneQuadratMetterFoilPrice">
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>Ширина в СМ.</label>
                        <input type="text" name="widthSM" id="widthSM" class="form-control" value="${widthSM}"
                               placeholder="widthSM">
                    </div>
                    <div class="col-md-4 mb-3">
                        <label>Длинна в СМ.</label>
                        <input type="text" name="lengthSM" id="lengthSM" class="form-control" value="${lengthSM}"
                               placeholder="lengthSM">
                    </div>
                    <div class="col-md-4 mb-3">
                        <input type="text" name="quantity" id="quantity" class="form-control" value="${quantity}"
                               class="form-control" placeholder="quantity">
                    </div>

                    <div class="alert alert-info mt-3" role="alert">
                        <h3>Result: <span id="result">${result}</span></h3>
                    </div>

                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>

            </div>
            <div class="col-3"></div>
        </div>
    </div>
</div>
</body>
</html>
