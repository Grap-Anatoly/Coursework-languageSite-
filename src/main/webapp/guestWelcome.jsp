<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">

    <style>
        div.topPanel{
            position: -webkit-sticky;
            position: sticky;
            top: 0;
            padding: 5px;
            background-color: lightgrey;
            border: 1px solid #4CAF50;
        }
        div.right{
            position: absolute;
            top: 10px;
            right: 20px;
        }
        div.center{
            position:relative;
            text-align: center;
        }
        div.background{
            background-color: darkgrey;
        }
        div.upper{
            vertical-align: middle;
            /*text-transform: uppercase;*/
            color: #4CAF50;
            font-size: 300%;
        }
        div.text{
            /*text-indent: 50px;*/
            /*text-align: justify;*/
            font-size: 200%;
            text-align: center;
            letter-spacing: 1px;
        }
        div.textBox{
            margin:auto;
            resize: horizontal;
            width: 40%;
            border: 2px  #ffffff;
        }
    </style>
</head>
<body>
<div >
    <div class="topPanel">
        <h1>Learn<span class="badge badge-success">with pleasure)</span></h1>
        <div class="right">
            <h2>
                <a href="http://localhost:8080/guest/logIn" class="btn btn-success btn-lg " role="button">Log in</a>
                <a href="http://localhost:8080/guest/infoPage" class="btn btn-success btn-lg " role="button">About</a>
            </h2>
        </div>
    </div>
    <div class="center">
        <div class="upper">Welcome</div>
    </div>
    <div class="textBox">
        <div class="text">
            Welcome to our site
        </div>
        <div class="text">
            Here you can find translations of various songs,poems,novels,etc.
        </div>
        <div class="text">
            And some useful tips based on translation that will help you in learning language easy and with pleasure
        </div>
    </div>
    <div class="center">
        <a href="http://localhost:8080/guest/startPage" class="btn btn-success btn-lg " role="button">Start Learning</a>
        <div class="text-info">
            After registration you also be able to add your own courses
        </div>
    </div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="${contextPath}/resources/js/bootstrap.min.js"></script>
</body>
</html>