<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
    String id = request.getParameter("userid");
    String driver = "com.mysql.jdbc.Driver";
    String connectionUrl = "jdbc:postgresql://localhost:5432/";
    String database = "languageSiteDb";
    String userid = "postgres";
    String password = "admin";
    try {
        Class.forName(driver);
    } catch (ClassNotFoundException e) {
        e.printStackTrace();
    }
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Start Learning</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css" integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO" crossorigin="anonymous">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="style.css">

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
        <h2><a href="http://localhost:8080/languages/startPage" class="btn btn-success btn-lg " role="button">Back</a>
        </h2>
    </div>
</div>
            <%
            String courseId=request.getParameter("id");
            try{
                connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                statement=connection.createStatement();
                String sql ="select * from course where id = '"+courseId+"' ";
                resultSet = statement.executeQuery(sql);
                while(resultSet.next()){
        %>
<div class="center">
    <div class="upper">Course:<%=resultSet.getString("name")%></div>
    <h6 class="text"></h6>
</div>
<div class="container">
    <div class="row ">
        <div class="col-sm">
            <p class="col-sm text-sm-right text-info">
                Difficulty: <%=resultSet.getString("difficulty")%></p>
            <p class="col-sm text-sm-center font-weight-bold">
                Original text</p>
        </div>
        <div class="col-sm">
            <p class="col-sm text-sm-center text-info">
                Course type: <%=resultSet.getString("type")%></p>
            <p class="col-sm text-sm-center font-weight-bold">
                Translated text</p>
        </div>
        <div class="col-sm">
            <p class="col-sm text-sm-left text-info">
                Author of the original : <%=resultSet.getString("author")%></p>
            <p class="col-sm text-sm-center font-weight-bold">
                Useful tips</p>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm border border-primary rounded">
            <p class="text-sm-left">
                <%=resultSet.getString("original_file_path")%></p>
        </div>
        <div class="col-sm border border-warning rounded">
            <p class="text-sm-left">
                <%=resultSet.getString("translated_file_path")%></p>
        </div>
        <div class="col-sm border border-danger rounded">
            <p class="text-sm-left">
                <%=resultSet.getString("tips_file_path")%></p>
        </div>
    </div>
</div>
<div class="container">
    <div class="row">
        <div class="col-sm">
            <p class="col-sm text-sm-center">
                Want to know more about <a href="http://localhost:8080/auth/selectAuthor?authorName=<%=resultSet.getString("author")%>" class="text-success">
                author </a>?</p>
        </div>
    </div>
</div>
            <%
                }
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }

        %>
</body>
</html>