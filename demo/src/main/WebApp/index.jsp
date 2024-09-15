<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" isELIgnored="false">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>

</head>

<body>
    <style>
        h2 {
            letter-spacing: .1em;
            font-family: 'roboto', sans-serif;
        }

        .form-container {
            width: 350px;
            height: 300px;
            overflow: hidden;
            margin: 0 auto;
            padding: 20px;
            background-color: rgb(255, 255, 255);
            box-shadow: 0 0 10px gray;
            border-radius: 10px;
            margin-top: 100px;
        }

        form {
            display: flex;
            align-items: center;
            flex-direction: column;
            justify-content: center;
        }

        input {
            margin: 10px 0;
            width: 250px;
            height: 30px;
            border-radius: 5px;
            border: .1em solid silver;
            outline: none;
			padding:5px;
			font-size:14px;
        }

        input[type="submit"] {
            background-color: rgb(49, 171, 248);
            color: white;
            letter-spacing: .1em;
        }

        input::placeholder {
            color: gray;
            font-size: 12px;
            padding: 5px;
        }

        .signupLink {
            font-size: 12px;
            padding: 10px;
            color: rgb(98, 97, 97);
            letter-spacing: .1em;
            font-family: 'Poppins', sans-serif;
        }

        #error-msg {
            width: 500px;
            transition: .5s ease-in-out;
            padding: 10px;
            font-family: 'Poppins', sans-serif;
            letter-spacing: .1em;
            border-width: 1px;
            border-style: solid;
            color: rgb(255, 58, 58);
            border-left: transparent;
            border-right: transparent;
            /* font-weight: bold; */
            font-size: 13px;
            border-image: linear-gradient(to right, rgba(192, 192, 192, 0), rgb(255, 34, 34) 50%, rgba(192, 192, 192, 0))1;
            background: linear-gradient(to right, rgba(173, 216, 230, 0), rgba(255, 0, 0, 0.125) 50%, rgba(173, 216, 230, 0)) center center /100% 100% no-repeat;
        }

        #error-msg-container {
            display: flex;
            justify-content: center;
            align-items: center;
            text-align: center;
            transition: .5s ease-in-out;
        }
    </style>
    <div id="error-msg-container">
        <c:if test="${not empty errorMessage}">
            <p id="error-msg">${errorMessage}</p>
        </c:if>
    </div>
    <div class="form-container">

        <h2>Log-In</h2>
        <form action="login">

            <input type="text" name="t1" required placeholder="username"><span></span>
            <input type="text" name="t2" required placeholder="password"><span></span>
            <input type="submit">
            <span class="signupLink">Don't have an Account ? <a href="signup.jsp">Signup</a></span>

        </form>
    </div>
</body>

</html>