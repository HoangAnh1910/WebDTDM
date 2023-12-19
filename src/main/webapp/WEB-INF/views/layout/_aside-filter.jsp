<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page pageEncoding="utf-8"%>
<div class="panel panel-success" style="">
    <div class="panel-heading" style="background-color: #00b46f; color: white; ">
        <h3 class="panel-title">
            <span class="glyphicon glyphicon-usd"></span> MỨC GIÁ
        </h3>
    </div>

    <div >
        <form class="">
            <div class="list-group">
                <div style="padding-left: 5%; padding-top: 3%; font-family: 'Noto Sans'; font-size: 16px;">
                    <c:choose>
                        <c:when test="${value == 0}">
                            <input id="price1" name="price" type="radio" value="0" checked/> <label for="price1" style="padding-left: 2%">Không</label>
                        </c:when>

                        <c:otherwise>
                            <input id="price1" name="price" type="radio" value="0"/> <label for="price1" style="padding-left: 2%">Không</label>
                        </c:otherwise>
                    </c:choose>
                </div>

                <div style="padding-left: 5%; padding-top: 3%; font-family: 'Noto Sans'; font-size: 16px;">
                    <c:choose>
                        <c:when test="${value == 1}">
                            <input id="price2" name="price" type="radio" value="1" checked/><label for="price2" style="padding-left: 2%">Dưới 500.000đ</label>
                        </c:when>

                        <c:otherwise>
                            <input id="price2" name="price" type="radio" value="1"/><label for="price2" style="padding-left: 2%">Dưới 500.000đ</label>
                        </c:otherwise>
                    </c:choose>
                </div>

                <div style="padding-left: 5%; padding-top: 3%; font-family: 'Noto Sans'; font-size: 16px;">
                    <c:choose>
                        <c:when test="${value == 2}">
                            <input id="price3" name="price" type="radio" value="2" checked/><label for="price3" style="padding-left: 2%">Từ 500.000đ đến 5.000.000đ</label>
                        </c:when>

                        <c:otherwise>
                            <input id="price3" name="price" type="radio" value="2"/><label for="price3" style="padding-left: 2%">Từ 500.000đ đến 5.000.000đ</label>
                        </c:otherwise>
                    </c:choose>
                </div>

                <div style="padding-left: 5%; padding-top: 3%; font-family: 'Noto Sans'; font-size: 16px;">
                    <c:choose>
                        <c:when test="${value == 3}">
                            <input id="price4" name="price" type="radio" value="3" checked/><label for="price4" style="padding-left: 2%">Từ 5.000.000đ đến 20.000.000đ</label>
                        </c:when>

                        <c:otherwise>
                            <input id="price4" name="price" type="radio" value="3"/><label for="price4" style="padding-left: 2%">Từ 5.000.000đ đến 20.000.000đ</label>
                        </c:otherwise>
                    </c:choose>
                </div>

                <div style="padding-left: 5%; padding-top: 3%; font-family: 'Noto Sans'; font-size: 16px;">
                    <c:choose>
                        <c:when test="${value == 4}">
                            <input id="price5" name="price" type="radio" value="4" checked/><label for="price5" style="padding-left: 2%">Trên 20.000.000đ</label>
                        </c:when>
                        <c:otherwise>
                            <input id="price5" name="price" type="radio" value="4"/><label for="price5" style="padding-left: 2%">Trên 20.000.000đ</label>
                        </c:otherwise>
                    </c:choose>
                </div>
            </div>

            <div style="text-align: center; padding-bottom: 3%; font-family: 'Noto Sans'; font-size: 16px; ">
                <input type="button" id="btn1" value="Tìm kiếm" style="background-color: #92aac7; color: white; border-color: #92aac7; padding: 2% 5%"/>
            </div>
        </form>
    </div>
</div>

<script language="javascript">

    document.getElementById("btn1").onclick = function ()
    {
        let radioID;
        const checkbox = document.getElementsByName("price");
        for (let i = 0; i < checkbox.length; i++){
            if (checkbox[i].checked === true){
                radioID = checkbox[i].value;
            }
        }
        let add = "/product/list-by-price/" + radioID;
        location.href = add;
    };
</script>

