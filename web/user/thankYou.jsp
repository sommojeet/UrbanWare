<%-- 
    Document   : thankYou
    Created on : 10 Feb, 2022, 7:35:09 PM
    Author     : sommo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="s" uri="/struts-tags"%>
<%@ page import="org.apache.log4j.Logger" %>
<!doctype html>
<html lang="en">
    <%
        response.setHeader("Cache-Control", "no-cache");
        response.setHeader("Cache-Control", "no-store");
        response.setDateHeader("Expires", 0);
        response.setHeader("Pragma", "no-cache");
    %>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script type="text/javascript">

            $(function () {
//                $("submit[name=btnOtp]").click(function () {
                $("#btnOtp").click(function (e) {
                    e.preventDefault();
                    $.ajax({
                        type: "POST",
                        url: "otprequest",
                        data: {'emailId': $("#emailId").val()},
                        success: function (result) {
                            alert("OTP Sent");
                        },
                        error: function (xhr, errmsg) {
                            alert("Empty Field");
                        }
                    });
                    $("#dvOTP").show();
                    $("#dvSubmit").show();
                });
            });
//            $('#otp').resetForm();

            function checkEmail() {
                var email = document.getElementById('emailId');
                var filter = /^[a-zA-Z0-9\-_]+(\.[a-zA-Z0-9\-_]+)*@[a-z0-9]+(\-[a-z0-9]+)*(\.[a-z0-9]+(\-[a-z0-9]+)*)*\.[a-z]{2,4}$/;
                if (!filter.test(email.value)) {
                    alert('Please provide a valid email address');
                    email.focus;
                    return false;
                }
            }
        </script>
        <title>Thank You</title>
        <style>
            /*            @-webkit-keyframes fadein {
                            from { opacity: 0; }
                            to   { opacity: 1; }
                        }*/
            @import url('https://fonts.googleapis.com/css2?family=Comforter&family=Montserrat:ital,wght@0,100;1,300&family=Work+Sans:wght@300&display=swap');
            body{
                font-family: 'Comforter', cursive;
                font-family: 'Montserrat', sans-serif;
                font-family: 'Work Sans', sans-serif;
                animation: fadeInAnimation ease 3s;
                animation-iteration-count: 1;
                animation-fill-mode: forwards;
            }
            @keyframes fadeInAnimation {
                0% {
                    opacity: 0;
                }
                100% {
                    opacity: 1;
                }
            }
            .signUp {
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: center;
                min-height: 100vh;
            }
            .sign {
                display: flex;
                justify-content: center;
                align-items: center;
                text-align: center;
            }
            .btn-primary, .btn-primary:hover, .btn-primary:active, .btn-primary:visited {
                background-color: #333399 !important;
            }
            /*            .bg{
                            position:relative;
                            z-index:1;
                            overflow:hidden; 
                        }
                        .bg:before{
                            z-index:-1;
                            position:absolute;
                            content: url("../img/bg-01.jpg");
                            opacity:0.4;
                        }*/
            .bg{
                width:100%;
                min-height: 100vh;
                display: flex;
                flex-wrap: wrap;
                justify-content: center;
                align-items: center;
                /*padding: 15px;*/
                background: -webkit-linear-gradient(left, #9c69d5, #0c2e66);
            }

        </style>
    </head>

    <body>
        <% Logger log = Logger.getLogger("signUp_new.jsp");%>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
        <div class="bg">
            <div class="text-center">
                <h2 class="display-3" style="color:#F8F0E3">Yay! Order Placed</h1>
                <p class="lead" style="color:#F8F0E3"><strong>Please check your email</strong> for confirmation.</p>
                <hr>
                <p style="color:#F8F0E3">
                    Having trouble? <a href="contact" style="color:orange">Contact us</a>
                </p>
                <p class="lead">
                    <a class="btn btn-primary btn-sm" href="clearSession" role="button">Continue to homepage</a>
                    <a class="btn btn-primary btn-sm" href="invoice" role="button">View Invoice</a>
                </p>
            </div>     
        </div>
    </body>
</html>
