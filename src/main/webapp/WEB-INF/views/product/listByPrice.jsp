<%@ page pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:choose>
    <c:when test="${value == 0}">
        <h1 style="text-align: center; color: #00B46f; padding-bottom: 5%">Sản phẩm có giá tối thiểu là 0đ</h1>
    </c:when>
    <c:when test="${value == 1}">
        <h1 style="text-align: center; color: #00B46f; padding-bottom: 5%">Sản phẩm có giá từ 0đ đến 500.000đ</h1>
    </c:when>
    <c:when test="${value == 2}">
        <h1 style="text-align: center; color: #00B46f; padding-bottom: 5%">Sản phẩm có giá từ 500.000đ đến 5.000.000đ</h1>
    </c:when>
    <c:when test="${value == 3}">
        <h1 style="text-align: center; color: #00B46f; padding-bottom: 5%">Sản phẩm có giá từ 5.000.000đ đến 20.000.000đ</h1>
    </c:when>
    <c:otherwise>
        <h1 style="text-align: center; color: #00B46f; padding-bottom: 5%">Sản phẩm có giá trên 20.000.000đ</h1>
    </c:otherwise>
</c:choose>
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


