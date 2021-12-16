<%@ page import="com.employees.model.Employee" %>
<%@ page import="com.employees.service.EmployeeService" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <title>Account registration form</title>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600' rel='stylesheet' type='text/css'>
    <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700" rel="stylesheet">
    <style>
        html, body {
            min-height: 100%;
        }
        body, div, form, input, select, p {
            padding: 0;
            margin: 0;
            outline: none;
            font-family: Roboto, Arial, sans-serif;
            font-size: 14px;
            color: #666;
        }
        h1 {
            margin: 0;
            font-weight: 400;
        }
        h3 {
            margin: 12px 0;
            color: #8ebf42;
        }
        .main-block {
            display: flex;
            justify-content: center;
            align-items: center;
            background: #fff;
        }
        form {
            width: 100%;
            padding: 20px;
        }
        fieldset {
            border: none;
            border-top: 1px solid #8ebf42;
        }
        .account-details, .personal-details {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
        }
        .account-details >div, .personal-details >div >div {
            display: flex;
            align-items: center;
            margin-bottom: 10px;
        }
        .account-details >div, .personal-details >div, input, label {
            width: 100%;
        }
        label {
            padding: 0 5px;
            text-align: right;
            vertical-align: middle;
        }
        input {
            padding: 5px;
            vertical-align: middle;
        }
        .checkbox {
            margin-bottom: 10px;
        }
        select, .children, .gender, .bdate-block {
            width: calc(100% + 26px);
            padding: 5px 0;
        }
        select {
            background: transparent;
        }
        .gender input {
            width: auto;
        }
        .gender label {
            padding: 0 5px 0 0;
        }
        .bdate-block {
            display: flex;
            justify-content: space-between;
        }
        .birthdate select.day {
            width: 35px;
        }
        .birthdate select.mounth {
            width: calc(100% - 94px);
        }
        .birthdate input {
            width: 38px;
            vertical-align: unset;
        }
        .checkbox input, .children input {
            width: auto;
            margin: -2px 10px 0 0;
        }
        .checkbox a {
            color: #8ebf42;
        }
        .checkbox a:hover {
            color: #82b534;
        }
        button {
            width: 100%;
            padding: 10px 0;
            margin: 10px auto;
            border-radius: 5px;
            border: none;
            background: #8ebf42;
            font-size: 14px;
            font-weight: 600;
            color: #fff;
        }
        button:hover {
            background: #82b534;
        }
        @media (min-width: 568px) {
            .account-details >div, .personal-details >div {
                width: 50%;
            }
            label {
                width: 40%;
            }
            input {
                width: 60%;
            }
            select, .children, .gender, .bdate-block {
                width: calc(60% + 16px);
            }
        }
    </style>
</head>
<body>
<div class="main-block">

    <form:form action="/register" method="post" modelAttribute="employee">
    <h1>Create a free account</h1>
                <fieldset>

    <div> <form:label path="name">First name:</form:label>
    <form:input path="name"/><br/></div>

<div><form:label path="email">Email:</form:label>
    <form:input path="email"/><br/></div>
<div><form:label path="phone">Phone:</form:label>
    <form:input path="phone"/><br/></div>

    <form:button>Register</form:button>
    </form:form>
                </fieldset>
        <%--        <fieldset>--%>
<%--            <legend>--%>
<%--                <h3>Personal Details</h3>--%>
<%--            </legend>--%>
<%--            <div  class="personal-details">--%>
<%--                <div>--%>
<%--                    <div><label>Name*</label><input type="text" name="name" required></div>--%>

<%--&lt;%&ndash;                    <div><form:input id="name" path="name" /></div>&ndash;%&gt;--%>
<%--                </div>--%>
<%--            </div>--%>
<%--        <button type="submit" href="/" >Submit</button>--%>
<%--        </fieldset>--%>
<%--    --%>
</div>
</body>
</html>