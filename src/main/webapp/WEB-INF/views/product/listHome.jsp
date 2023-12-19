<%@ page pageEncoding="utf-8"%>
<%@ include file="/common/taglib.jsp"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<div class="row" style="padding-bottom: 20px; border-bottom: 3px solid #c5c5c5" >
    <h2 style="font-family: 'Black Ops One', cursive;color:white;font-size: 50px;text-align:center;margin-bottom:30px;text-shadow: -3px 0 #1377ff, 0 3px #1377ff,3px 0 #1377ff, 0 -3px #1377ff;letter-spacing: 5px; text-transform: uppercase">Đồng hồ</h2>
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
    <a style="display:block;width:100%; text-align:center;text-decoration-line: underline;color: rgb(51, 122, 183)" href="/product/list-by-category/1000">Xem tất cả</a>
</div>
<div class="row" style="padding: 20px 0; border-bottom: 3px solid #c5c5c5" >
    <h2 style="font-family: 'Black Ops One', cursive;color:white;font-size: 50px;text-align:center;margin-bottom:30px;text-shadow: -3px 0 #1377ff, 0 3px #1377ff,3px 0 #1377ff, 0 -3px #1377ff;letter-spacing: 5px; text-transform: uppercase">Máy tính xách tay</h2>
    <c:forEach var="p" items="${list1}">
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
    <a style="display:block;width:100%; text-align:center;text-decoration-line: underline;color: rgb(51, 122, 183)" href="/product/list-by-category/1001">Xem tất cả</a>
</div>

<div class="row" style="padding: 20px 0; border-bottom: 3px solid #c5c5c5">
    <h2 style="font-family: 'Black Ops One', cursive;color:white;font-size: 50px;text-align:center;margin-bottom:30px;text-shadow: -3px 0 #1377ff, 0 3px #1377ff,3px 0 #1377ff, 0 -3px #1377ff;letter-spacing: 5px; text-transform: uppercase">Máy ảnh</h2>
    <c:forEach var="p" items="${list2}"><div class="col-md-4 col-sm-6 nn-prod animate__animated animate__bounceIn" data-id="${p.id}">
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
    <a style="display:block;width:100%; text-align:center;text-decoration-line: underline;color: rgb(51, 122, 183)" href="/product/list-by-category/1002">Xem tất cả</a>
</div>
<%@include file="dialog.jsp" %>
