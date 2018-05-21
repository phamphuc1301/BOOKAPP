<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            DataTables Advanced Tables
                        </div>
                        <!-- /.panel-heading -->
                        <div class="panel-body">
                            <table width="100%" class="table table-striped table-bordered table-hover" id="dataTables-example">
                                <thead>
                                    <tr>
                                        <th>User Name</th>
                                        <th>Full Name</th>
                                        <th>Email</th>
                                        <th>Address</th>
                                        <th>Role</th>
                                        <th>Enabled</th>
                                    </tr>
                                </thead>
                                <tbody>
                                <c:forEach items="${listUser }" var="user">
                                    <tr class="odd gradeX">
                                        <td>${user.userName }</td>
                                        <td>${user.fullName }</td>
                                        <td>${user.email }</td>
                                        <td class="center">${user.address }</td>
                                        <td class="center">${user.roles }</td>
                                        <td class="center">${user.enabled }</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                            <!-- /.table-responsive -->
                            <div class="well">
                                <h4>DataTables Usage Information</h4>
                                <p>DataTables is a very flexible, advanced tables plugin for jQuery. In SB Admin, we are using a specialized version of DataTables built for Bootstrap 3. We have also customized the table headings to use Font Awesome icons in place of images. For complete documentation on DataTables, visit their website at <a target="_blank" href="https://datatables.net/">https://datatables.net/</a>.</p>
                                <a class="btn btn-default btn-lg btn-block" target="_blank" href="https://datatables.net/">View DataTables Documentation</a>
                            </div>
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!-- /.panel -->
                </div>
                <!-- /.col-lg-12 -->
            </div>