<%@page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
                <%@ taglib uri="http://www.springframework.org/tags" prefix="s" %>

                    <!DOCTYPE html>
                    <html lang="en">

                    <head>
                        <meta charset="UTF-8" />
                        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
                        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                        <title>Signup</title>
                        <!-- title icon -->
                        <link rel="icon" href="/img/favicon.ico" type="image/x-icon">
                        <!-- bootstrap css -->
                        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
                            integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
                        <!-- font awsome -->
                        <script src="https://kit.fontawesome.com/e136359f35.js" crossorigin="anonymous" defer></script>
                        <!-- jquery -->
                        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" defer></script>
                        <!-- my js -->
                        <script src="/js/script.js" defer></script>
                        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
  						<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
                    </head>

                    <body>
                        <div class="container">
                            <!-- header -->
                            <jsp:include page="common/header.jsp"></jsp:include>

                            <div class="row d-flex justify-content-center">
                                <div class="card my-3" style="width: 50rem;">
                                    <div class="bg-white card-header text-center">
                                        <h3>Signup</h3>
                                    </div>
                                    <div class="card-body">
                                        <form:form class="needs-validation" novalidate="true" action="/account/signup" method="post"
                                            enctype="multipart/form-data" modelAttribute="accForm">
                                            <div class="signup mt-3">
                                               
                                                <div class="mb-3">
                                                    <form:label path="username" for="username">
                                                        <b>Username</b>
                                                    </form:label>
                                                    <form:input type="text" path="username" class="form-control" placeholder="VD: abc123" required="true"
                                                        minlength="5" maxlength="30" />
                                                    <em class="invalid-feedback">Nhập từ 5
                                                        đến 30 ký tự</em>
                                                </div>
                                       
                                                <hr>
                                                <div class="mb-3">
                                                    <form:label path="password" for="password"><b>Password</b></form:label>
                                                    <form:input type="password" path="password" class="form-control" placeholder="VD: abc123" required="true"
                                                        minlength="5" maxlength="30" />
                                                    <em class="invalid-feedback">Nhập từ 5 đến 30 ký tự</em>
                                                </div>
                                                <div class="mb-3">
                                                    <form:label path="retypePassword" for="retypePassword"><b>Retype Password</b></form:label>
                                                    <form:input type="password" path="retypePassword" class="form-control"
                                                        placeholder="Nhập lại đúng phần Password !" required="true" minlength="5" maxlength="30" />
                                                    <em class="invalid-feedback">Nhập
                                                        từ 5 đến 30 ký tự</em>
                                                </div>
                                                <hr>
                                           
                                            </div>
                                            <div class="modal-footer">
                                                <div class="d-grid gap-2">
                                                    <button type="submit" class="btn btn-primary">SUBMIT</button>
                                                </div>
                                            </div>
                                        </form:form>
                                    </div>
                                </div>
                            </div>

                            <!-- footer -->
                            <jsp:include page="common/footer.jsp"></jsp:include>
                        </div>


                        <!-- bootstrap js -->
                        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
                            integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
                        <script>
                            let message = ""
                            if ("${param.message}" != "") {
                                message += "Message: ${param.message}\n"
                            }
                            if ("${param.error}" != "") {
                                message += "Error: ${param.error}\n"
                            }
                            if ("${message}" != "") {
                                message += "Message: ${message}\n"
                            }
                            if (message !== "") {
                                alert(message);
                            }
                        </script>
                    </body>

                    </html>