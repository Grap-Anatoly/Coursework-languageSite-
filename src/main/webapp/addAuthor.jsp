<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Add course</title>
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
            vertical-align: middle;
            letter-spacing: 1px;
        }
    </style>
</head>
<body>
<div class="topPanel">
    <h1>Learn<span class="badge badge-success">with pleasure)</span></h1>
    <div class="right">
        <h2><a href="http://localhost:8080/languages/add" class="btn btn-success btn-lg " role="button">Back</a>
        </h2>
    </div>
</div>
<div class="center">
    <div class="container">
        <form:form method="POST" modelAttribute="authorForm" class="form-signin">
            <h2 class="form-signin-heading">Add author to the base</h2>
            <spring:bind path="name">
                <div class="form-group">
                    <form:input type="text" path="name" class="form-control" placeholder="Name"
                                autofocus="true"></form:input>
                </div>
            </spring:bind>

            <spring:bind path="surname">
                <div class="form-group ">
                    <form:input type="text" value=" " path="surname" class="form-control" placeholder="Surname"
                                autofocus="true" ></form:input>
                </div>
            </spring:bind>

            <spring:bind path="type">
                <div class="form-group ">
                    <form:input type="text" value=" " path="type" class="form-control" placeholder="Author type"
                                autofocus="true" ></form:input>
                </div>
            </spring:bind>

            <spring:bind path="originalLanguage">
                <div class="form-group ">
                    <form:input type="text" value=" " path="originalLanguage" class="form-control" placeholder="Original author speaking language"
                                autofocus="true" ></form:input>
                </div>
            </spring:bind>

            <spring:bind path="nationality">
                <div class="form-group ">
                    <form:input type="text" value=" " path="nationality" class="form-control" placeholder="Author nationality"
                                autofocus="true" ></form:input>
                </div>
            </spring:bind>

            <button class="btn btn-lg btn-success btn-block" type="submit">Submit</button>
        </form:form>
    </div>
</div>
</body>
</html>