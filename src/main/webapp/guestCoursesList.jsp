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
        <h2><a href="http://localhost:8080/guest/startPage" class="btn btn-success btn-lg " role="button">Back</a>
        </h2>
    </div>
</div>
<div class="center">
    <div class="upper">Available Courses</div>
    <h6 class="text">Difficulty Tip: 1-easy, 2-normal, 3-hard</h6>
</div>
<div class="container">
    <table border="1" cellpadding="2" cellspacing="2" id="languagesTable" class="table table-striped">
        <thead class="thead-dark">
        <tr>
            <th>Course name</th>
            <th>Original author</th>
            <th>Course source type</th>
            <th>Course difficulty</th>
        </tr>
            <%
            String languageId=request.getParameter("translatedLanguage");
            try{
                connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                statement=connection.createStatement();
                String sql ="select * from course where translated_language = '"+languageId+"' ";
                resultSet = statement.executeQuery(sql);
                while(resultSet.next()){
        %>
        <tr>
            <td><a href="http://localhost:8080/guest/selectedCourse?id=<%=resultSet.getString("id") %>" class="text-success" >
                <div style="height:100%;width:100%">
                    <%=resultSet.getString("name") %></div></a></td>
            <td><%=resultSet.getString("author") %></td>
            <td><%=resultSet.getString("type") %></td>
            <td><%=resultSet.getString("difficulty") %></td>
        </tr>
            <%
                }
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }

        %>
    </table>
</div>
</body>
</html>