<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
<link rel="shortcut icon" href="<%=request.getContextPath()%>/resources/source/admin/images/favico.png">
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<link rel="stylesheet" href ="<%=request.getContextPath() %>/resources/source/css/aboutus.css">
<link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet'>
<link rel="stylesheet" href="<%=request.getContextPath()%>/resources/source/css/menu.css">
<jsp:include page="include/menu.jsp"></jsp:include>
<div class="aboutus-section">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="aboutus">
                        <h2 class="aboutus-title">About Us</h2>
                        <p class="aboutus-text">Đồ án 2018 - Sinh viên Phạm Văn Phúc</p>
                        <p class="aboutus-text">Em xin chân thành cảm ơn các thầy, cô Trường Đại học Công nghệ thông tin và Truyền thông đã giảng dạy em các môn trong thời gian vừa qua. Đặc biệt là TS. Đỗ Thị Bắc là giáo viên hướng dẫn trực tiếp, đã tận tình chỉ bảo em hoàn thành đề tài. Trong quá trình thực tập cũng như là trong quá trình làm báo cáo, khó tránh khỏi sai sót,em rất mong các thầy, cô bỏ qua. Đồng thời do trình độ lý luận cũng như kinh nghiệm thực tiễn còn hạn chế nên bài báo cáo không thể tránh khỏi những thiếu sót, em rất mong nhận được ý kiến đóng góp của thầy, cô để em có thêm được nhiều kinh nghiệm và sẽ hoàn thành tốt hơn.</p>
                        <a class="aboutus-more" href="#">read more</a>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6 col-xs-12">
                    <div class="aboutus-banner">
                        <img src="<%=request.getContextPath() %>/resources/img/read.jpg" width="280px" alt="">
                    </div>
                </div>
                <div class="col-md-5 col-sm-6 col-xs-12">
                    <div class="feature">
                    <div class="feature-box">
                            <div class="clearfix">
                                <div class="iconset">
                                    <span class="glyphicon glyphicon-cog icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h4>GVHD : T.S Đỗ Thị Bắc</h4>
                                    <p>Giảng viên trường Đại Học Công Nghệ Thông Tin & Truyền Thông Thái Nguyên</p>
                                </div>
                            </div>
                        </div>
                        <div class="feature-box">
                            <div class="clearfix">
                                <div class="iconset">
                                    <span class="glyphicon glyphicon-cog icon"></span>
                                </div>
                                <div class="feature-content">
                                    <h4>Sv Phạm Văn Phúc</h4>
                                    <p>Sinh viên trường Đại Học Công Nghệ Thông Tin & Truyền Thông Thái Nguyên</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>