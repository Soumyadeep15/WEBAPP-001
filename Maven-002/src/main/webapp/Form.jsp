<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MOD EMPLOYEES</title>

<style>
    @import url('https://fonts.googleapis.com/css2?family=Lobster+Two&display=swap');
    body {
        background-color: black;
    }
    .container {
        margin: auto;
        width: 50vh;
        border: 2vh solid white;
        padding: 10vh;
        color: white;
        box-shadow: 0px 0px 100px red;
    }
    td {
        padding: 20px;   
    }
    table{
        font-family: monospace;
        font-size: 3vh;
    }
    input {
        box-shadow: 0px 0px 10px red;
        background-color: black;
        border: 1px solid white;
        border-radius: 10px;
        color: ghostwhite;
        box-sizing: border-box;
        height: 5vh;
    }
    #sub:hover {
        box-shadow: 0px 0px 50px white;
    }
    #sub {
        font-family: monospace;
    }
    h1 {
        font-family: 'Lobster Two', cursive;
        margin-left: 20px;
        font-size: 5vh;
    }
    
   
</style>
</head>
<body>
	<div class="container">
    <h1>Put Your details here</h1>
	<form action="mod" method = "post">
	<table>
        <tr>
            <td>Name:</td>
            <td><input type="text" name="name"></td>
        </tr>
        <tr>
            <td>Age:</td>
            <td><input type="number" name="age"></td>
        </tr>
        <tr>
            <td>Role:</td>
            <td><input type="text" name="role"></td>
        </tr>
        <tr>
            <td>Salary:</td>
            <td><input type="number" name="sal"></td>
        </tr>
        <tr><td><input type="submit" id="sub"></td></tr>
    </table>
	</form>
    </div>
</body>
</html>