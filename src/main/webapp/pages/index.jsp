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

                <form class="row g-3 needs-validation" novalidate>
                    <div class="col-md-4 position-relative">
                        <label for="validationTooltip01" class="form-label">Стоимость фольги</label>
                        <input type="text" class="form-control" id="validationTooltip01" value="" required>

                    </div>
                    <div class="col-md-4 position-relative">
                        <label for="validationTooltip02" class="form-label">Стоимость оттиска</label>
                        <input type="text" class="form-control" id="validationTooltip02" value="" required>

                    </div>
                    <div class="col-md-4 position-relative">
                        <label for="validationTooltip02" class="form-label">Стоимость приладки</label>
                        <input type="text" class="form-control" id="validationTooltip03" value="" required>

                    </div>
                    <div class="col-md-4 position-relative">
                        <label for="validationTooltip01" class="form-label">Ширина в см.</label>
                        <input type="text" class="form-control" id="validationTooltip04" value="" required>

                    </div>
                    <div class="col-md-4 position-relative">
                        <label for="validationTooltip01" class="form-label">Длинна в см.</label>
                        <input type="text" class="form-control" id="validationTooltip05" value="" required>

                    </div>
                    <div class="col-md-4 position-relative">
                        <label for="validationTooltip01" class="form-label">Тираж</label>
                        <input type="text" class="form-control" id="validationTooltip06" value="" required>

                    </div>
                    <div class="alert alert-info mt-3 col-md-4 mb-3 position-relative" role="alert">
                        <h6>Фольга: <span id="result1">${result}</span></h6>
                    </div>
                    <div class="alert alert-info mt-3 col-md-4 mb-3 position-relative" role="alert">
                        <h6>Работа: <span id="result2">${result}</span></h6>
                    </div>
                    <div class="alert alert-info mt-3 col-md-4 mb-3 position-relative" role="alert">
                        <h6>ИТОГО: <span id="result3">${result}</span></h6>
                    </div>
                    <div class="col-12">
                        <button class="btn btn-primary" type="submit">Submit form</button>
                    </div>
                </form>
            </div>
            <div class="col-3"></div>
        </div>
    </div>
</div>
</body>
</html>
