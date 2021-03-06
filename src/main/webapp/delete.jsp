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
        <h2><a href="http://localhost:8080/welcome" class="btn btn-success btn-lg " role="button">Back</a>
        </h2>
    </div>
</div>
<div class="center">
    <div class="text">
        Delete course or author
    </div>
    <div>
        <h4 class="text-info">Courses list</h4>
    </div>
</div>
<div class="row justify-content-center">
    <table id="corsesTable" class="table table-striped table-sm col-6">
        <thead>
        <tr class="text-center">
            <th>Course name</th>
            <th>Delete course</th>
        </tr>
<%
    try{
        connection = DriverManager.getConnection(connectionUrl+database, userid, password);
        statement=connection.createStatement();
        String sql ="select * from course";
        resultSet = statement.executeQuery(sql);
        while(resultSet.next()){
%>
        <tr class="text-center">
            <td><%=resultSet.getString("name") %></td>
            <td><a href="http://localhost:8080/course/delete?id=<%=resultSet.getString("id") %>" class="btn btn-danger btn-lg " role="button"> </a></td>
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
<div class="center">
    <div>
        <h4 class="text-info">Authors list</h4>
    </div>
</div>
<div class="row justify-content-center ">
    <table id="authorsTable" class="table table-striped col-6">
        <thead>
        <tr class="text-center">
            <th>Author name</th>
            <th>Delete author</th>
        </tr>
                    <%
            try{
                connection = DriverManager.getConnection(connectionUrl+database, userid, password);
                statement=connection.createStatement();
                String sql ="select * from author";
                resultSet = statement.executeQuery(sql);
                while(resultSet.next()){
        %>
                <tr class="text-center">
                    <td><%=resultSet.getString("name") %></td>
                    <td><a href="http://localhost:8080/auth/delete?id=<%=resultSet.getString("id") %>" class="btn btn-danger btn-lg " role="button">
                        <span class="glyphicon glyphicon-remove"></span>
                    </a></td>
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