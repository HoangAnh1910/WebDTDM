<%@ page pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>

<div class="panel panel-default">
	<div class="panel-heading">
	<form action="/admin/product/index#list">
		<div class="input-group">
			<label class="input-group-addon">Category: </label>
			<select name="category_id" class="form-control" onchange="this.form.submit()">
				<c:forEach var="c" items="${cates}">
					<option value="${c.id}" ${product.category.id == c.id ? 'selected' : ''}>${c.nameVN}</option>
				</c:forEach>
			</select>
		</div>
	</form>
	</div>
	<table class="table table-hover">
		<thead>
			<tr>
				<th>Id</th>
				<th>Tên sản phẩm</th>
				<th>Giá tiền</th>
				<th>Số lượng</th>
				<th>Giảm giá</th>
				<th>Có sẵn</th>
				<th>Danh mục</th>
				<th></th>
			</tr>
		</thead>
		<tbody>
		<c:forEach var="item" items="${list}">
			<tr>
				<td>${item.id}</td>
				<td>${item.name}</td>
				<td>${item.unitPrice}</td>
				<td>${item.quantity}</td>
				<td>${item.discount*100}%</td>
				<td>${item.available?'Yes':'No'}</td>
				<td>${item.category.nameVN}</td>
				<td class="text-center">
					<a href="${prefix}/edit/${item.id}" class="btn btn-sm btn-info">
						<span class="glyphicon glyphicon-edit"></span>
					</a>
					<a href="${prefix}/delete/${item.id}" class="btn btn-sm btn-danger">
						<span class="glyphicon glyphicon-trash"></span>
					</a>
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
</div>