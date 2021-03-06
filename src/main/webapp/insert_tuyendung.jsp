<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
    <head>
        <title> Tuyển Dụng </title>
        <jsp:include page="/views/head.jsp"></jsp:include>
	</head>
    <!-- END HEAD -->

    <body class="page-header-fixed page-sidebar-closed-hide-logo page-content-white page-md">
    	<%
            String error = "";
            if(request.getParameter("error")!=null){
                error = (String) request.getParameter("error");
            }
        %>
        <div class="page-wrapper">
			<jsp:include page="/views/header.jsp"></jsp:include>
            <!-- BEGIN CONTAINER -->
            <div class="page-container">
            	<jsp:include page="/views/sidebar.jsp"></jsp:include>
                <!-- BEGIN CONTENT -->
                <div class="page-content-wrapper">
                    <!-- BEGIN CONTENT BODY -->
                    <div class="page-content">
                        <!-- BEGIN PAGE HEADER-->
                        <!-- BEGIN PAGE BAR -->
                        <div class="page-bar">
                            <ul class="page-breadcrumb">
                                <li>
                                    <a href="index.jsp">Trang chủ</a>
                                    <i class="fa fa-circle"></i>
                                </li>
                                <li>
                                    <span>Tuyển Dụng</span>
                                </li>
                            </ul>
                        </div>
                        <!-- END PAGE BAR -->
                        <!-- BEGIN PAGE TITLE-->
                        <h1 class="page-title">Thêm Tuyển Dụng</h1>
                        <!-- END PAGE TITLE-->
                        <!-- END PAGE HEADER-->
                        <div class="row">
                            <div class="col-md-8">
                                <!-- BEGIN VALIDATION STATES-->
                                <div class="portlet light portlet-fit portlet-form bordered">
                                    <div class="portlet-title">
                                        <div class="caption">
                                            <i class=" icon-layers font-green"></i>
                                            <span class="caption-subject font-green sbold uppercase">Thêm Tuyển Dụng</span>
                                        </div>
                                    </div>
                                    <div class="portlet-body">
                                        <!-- BEGIN FORM-->
                                        <form action="QLTuyenDung" method="post" class="form-horizontal" id="form_sample_1">
                                            <div class="form-body">
                                                <div class="form-group form-md-line-input">
                                                    <label class="col-md-3 control-label" for="form_control_1">Tin tuyển dụng
                                                        <span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-9">
                                                        <input type="text" class="form-control" name="tinTuyenDung"><%=error%>
                                                        <div class="form-control-focus"> </div>
                                                        <span class="help-block">Nhập tin tuyển dụng</span>
                                                    </div>
                                                </div>
                                                <div class="form-group form-md-line-input">
                                                    <label class="col-md-3 control-label" for="form_control_1">Ngày bắt đầu
                                                        <span class="required">*</span>
                                                    </label>
                                                    <div class="col-md-4">
                                                        <div class="input-group input-large date-picker input-daterange">
                                                            <input type="text" class="form-control" name="bdTuyenDung"><%=error%>
                                                            <span class="help-block">Nhập ngày</span>
                                                            <span class="input-group-addon"> tới </span>
                                                            <input type="text" class="form-control" name="ktTuyenDung"><%=error%>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="form-actions">
                                                <div class="row">
                                                    <div class="col-md-offset-3 col-md-9">
                                                    	<input type="hidden" name="xltuyendung" value="inserttd">
                                                    	<button type="submit" class="btn green">Xác nhận</button>
                                                    </div>
                                                </div>
                                            </div>
                                        </form>
                                        <!-- END FORM-->
                                    </div>
                                </div>
                                <!-- END VALIDATION STATES-->
                            </div>
                         </div>
                    </div>
                    <!-- END CONTENT BODY -->
                </div>
                <!-- END CONTENT -->
            </div>
            <!-- END CONTAINER -->
			<jsp:include page="/views/footer.jsp"></jsp:include>
        </div>
		<jsp:include page="/views/layout.jsp"></jsp:include>
    </body>

</html>