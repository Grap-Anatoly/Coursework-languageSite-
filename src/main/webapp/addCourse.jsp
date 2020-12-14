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
    </style>
    <script src="https://cdn.tiny.cloud/1/no-api-key/tinymce/5/tinymce.min.js" referrerpolicy="origin"></script>
    <script>
        tinymce.init({
            selector: '#mytextarea'
        });
    </script>
    <script>
        tinymce.init({
            selector: '#mytextarea2'
        });
    </script>
    <script>
        tinymce.init({
            selector: '#mytextarea3'
        });
    </script>
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
        <form:form method="POST" modelAttribute="courseForm" class="form-signin">
            <h2 class="form-signin-heading">Add Course to the base</h2>
            <spring:bind path="name">
                <div class="form-group">
                    <form:input type="text" path="name" class="form-control" placeholder="Course Title"
                                autofocus="true"></form:input>
                </div>
            </spring:bind>

            <spring:bind path="type">
                <div class="form-group ">
                    <form:input type="text" value=" " path="type" class="form-control" placeholder="Course Type"
                                autofocus="true" ></form:input>
                </div>
            </spring:bind>

            <spring:bind path="difficulty">
                <div class="form-group ">
                    <form:input type="text" value=" " path="difficulty" class="form-control" placeholder="Course Difficulty"
                                autofocus="true" ></form:input>
                </div>
            </spring:bind>

            <spring:bind path="author">
                <div class="form-group ">
                    <form:input type="text" value=" " path="author" class="form-control" placeholder="Author of the orginal "
                                autofocus="true" ></form:input>
                </div>
            </spring:bind>

            <spring:bind path="translatedLanguage">
                <div class="form-group ">
                    <form:input type="text" value=" " path="translatedLanguage" class="form-control" placeholder="Course Translated Language"
                                autofocus="true" ></form:input>
                </div>
            </spring:bind>

            <h6 class="text">Add course data with correct format</h6>

            <div class="container">
                <div class="row">
            <spring:bind path="originalFilePath">
                <div class="col-sm ">
                    <form:input type="textarea" id ="mytextarea" path="originalFilePath" class="form-control" placeholder="Course Original Text Data"
                                autofocus="true" ></form:input>
                </div>
            </spring:bind>

            <spring:bind path="translatedFilePath">
                <div class="col-sm">
                    <form:input type="textarea" id ="mytextarea2" path="translatedFilePath" class="form-control" placeholder="Course Translated Text Data"
                                autofocus="true" ></form:input>
                </div>
            </spring:bind>

            <spring:bind path="tipsFilePath">
                <div class="col-sm ">
                    <form:input type="textarea" id ="mytextarea3" path="tipsFilePath" class="form-control" placeholder="Course Tips"
                                autofocus="true" ></form:input>
                </div>
            </spring:bind>
                </div>
            </div>
            <button class="btn btn-lg btn-success btn-block" type="submit">Submit</button>
        </form:form>
    </div>
</div>
</body>
</html>