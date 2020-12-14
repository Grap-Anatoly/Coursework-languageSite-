<%@ taglib prefix="th" uri="http://www.springframework.org/tags/form" %>
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <title>Add</title>
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
        div.upper{
            vertical-align: middle;
            /*text-transform: uppercase;*/
            color: black;
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
        <h2><a href="http://localhost:8080/welcome" class="btn btn-success btn-lg " role="button">Back</a>
        </h2>
    </div>
</div>
<div class="center">
    <div class="upper">Choose what to add</div>
        <h2><a href="http://localhost:8080/course/addCourse" class="btn btn-success btn-lg " role="button">Add course</a></h2>
        <h2><a href="http://localhost:8080/auth/addAuthor" class="btn btn-success btn-lg " role="button">Add author</a></h2>
        <h2><a href="http://localhost:8080/lang/addLanguage" class="btn btn-success btn-lg " role="button">Add language</a></h2>
</div>

</body>
</html>
