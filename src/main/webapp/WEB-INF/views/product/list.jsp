<%--<%@ page pageEncoding="utf-8"%>--%>
<%--<%@ include file="/common/taglib.jsp"%>--%>
<h2 style="font-family: 'Black Ops One', cursive;color:white;font-size: 50px;text-align:center;margin-bottom:30px;text-shadow: -3px 0 #00b46f, 0 3px #00b46f,3px 0 #00b46f, 0 -3px #00b46f;letter-spacing: 5px; text-transform: uppercase">${nameVn}</h2>
<%--<c:forEach var="p" items="${list}">--%>
<%--    <div class="col-md-4 col-sm-6 nn-prod animate__animated animate__bounceIn" data-id="${p.id}">--%>
<%--        <div class="panel panel-success" style="box-shadow: 1px 1px 1px grey;">--%>
<%--            <div class="panel-body text-center">--%>
<%--                <a href="/product/detail/${p.id}"><img src="/static/images/products/${p.image}"/></a>--%>
<%--            </div>--%>
<%--            <div class="panel-footer">--%>
<%--                <h4 class="text-center" style="text-align: center; font-family: 'Times New Roman';">${p.name}</h4>--%>
<%--                <div class="text-center" style="padding: 1%">${p.unitPrice} $</div>--%>
<%--                <div class="row text-center" style="padding: 1%">--%>
<%--                    <div class="text-center" style="display: flex;justify-content: center;align-items: center">--%>
<%--                        <%@include file="btn-prod.jsp" %>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
<%--            <c:choose>--%>
<%--                <c:when test="${p.discount > 0}">--%>
<%--                    <img src="/static/images/promo-icon.gif"/>--%>
<%--                </c:when>--%>
<%--                <c:when test="${p.available}">--%>
<%--                    <img src="/static/images/special-icon.gif"/>--%>
<%--                </c:when>--%>
<%--            </c:choose>--%>
<%--        </div>--%>
<%--    </div>--%>
<%--</c:forEach>--%>
<%--<%@include file="dialog.jsp" %>--%>

<%@ page pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%--<div class="row text-center mb-5 probootstrap-animate" data-animate-effect="fadeIn">--%>
<%--    <div class="col-md-12" style="font-size: 30px; padding: 2%; font-family: Dosis">Gợi ý cho bạn</div>--%>
<%--</div>--%>
<c:forEach var="p" items="${list}">
    <div class="col-md-4 col-sm-6 nn-prod animate__animated animate__bounceIn" data-id="${p.id}">
        <div class="panel panel-success" style="overflow:hidden;box-shadow: 5px 5px 5px 3px #e4fbf3; border-radius: 25px;display: flex;flex-direction: column;height: 365px">
            <div class="panel-body text-center">
                <a href="/product/detail/${p.id}"><img src="/static/images/products/${p.image}"/></a>
            </div>
            <div class="panel-footer footer--items" style="border-bottom-left-radius: 25px;background: white; border-bottom-right-radius: 25px;display: flex;flex-direction: column;height: 100%">
                <h4 class="text-center name--items" style="text-align: center; font-family: 'Times New Roman'; color: black">${p.name}</h4>
                <div style="margin-top: auto;">
                    <div class="text-center" style="padding: 1%; color: #00B46f"><fmt:formatNumber value="${p.unitPrice}" type="currency" currencySymbol="₫" pattern="###,###.##"/>${" ₫"}</div>
                    <div class="row text-center" style="padding: 5%; width: 100%; margin: 0%">
                        <div class="text-center">
                            <%@include file="btn-prod.jsp" %>
                        </div>
                    </div>
                </div>
            </div>
            <c:choose>
                <c:when test="${p.discount > 0}">
                    <img src="/static/images/promo-icon.gif"/>
                </c:when>
                <c:when test="${p.available}">
                    <img src="/static/images/special-icon.gif"/>
                </c:when>
            </c:choose>
        </div>
    </div>
</c:forEach>
<%@include file="dialog.jsp" %>