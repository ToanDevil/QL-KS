<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="frm" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<div class="container">
	<!-- thông báo khi sửa hoặc xóa thành công -->
	<c:if test="${not empty message }">
		<div class="alert alert-success">
			<a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a> <strong>${message }</strong>
		</div>
	</c:if>
</div>
<div class="container">
	<button type="button" class="btn btn-success" style="margin-bottom: 10px;" onclick="addhomestay(${maPhong},${soPhong})">
		<i class="fa fa-plus"></i> Thêm khách
	</button>
	<div style="overflow: auto; height: auto; width: 100%; box-shadow: 1px 1px 5px #888888;">
		<table class="table table-striped css-serial" style="margin-bottom: 0">
			<thead>
				<tr>
				<th></th>
					<th style="min-width: 100px;">Họ và tên</th>
					<th style="min-width: 130px;">Số điện thoại</th>
					<th style="min-width: 100px;">Số cmnd</th>
					<th style="min-width: 120px;">Tiền cọc</th>
					<th style="min-width: 150px;">Thời gian đặt</th>
					<th style="min-width: 120px;">Nhân viên</th>
					<th style="min-width: 100px;">Thao tác</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="u" items="${danhsach}">
					<tr>
					<td></td>
						<td>${u.hoTen}</td>
						<td>${u.soDT}</td>
						<td>${u.soCMND}</td>
						<td><fmt:formatNumber value="${u.tienCoc }" type="number" pattern="###,###" /> VNĐ</td>
						<td><fmt:formatDate pattern="HH:mm" value="${u.gioDat }" /> - <fmt:formatDate pattern="d/M/yyyy" value="${u.ngayDat }" /></td>
						<td>${u.tenDangNhap}</td>
						<td><button type="button" class="btn btn-primary btn-sm" onclick="trahomestay(${maPhong},${u.phong.trangThai},${soPhong},${u.maDatPhong } )">Trả phòng</button></td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
</div>
<script>
function addhomestay(maPhong, soPhong) {
	window.location="/addhomestay?maPhong=" + maPhong + "&soPhong="+ soPhong;
}
function trahomestay(maPhong, trangThai, soPhong, maDatPhong) {
	window.location="/actionclickdptp?maPhong="+ maPhong +"&trangThai="+ trangThai +"&soPhong=" + soPhong + "&maDatPhong=" + maDatPhong;
}
</script>
