<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>

<body>
    <style>
        .signup-container{
            margin: 0 auto;
            width: 350px;
            height: 300px;
            overflow: hidden;
            padding: 20px;
            box-shadow: 0 0 10px gray;
            border-radius: 10px;
            margin-top: 100px;
        }
        h1{
            text-align: center;
            font-family: 'Poppins',sans-serif;
            color: gray;
            padding: 10px 0;
        }
        form{
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            gap: 1px;
            
        }
        input{
            width: 250px;
            height: 30px;
            border-radius: 5px;
            border: .1px silver solid;
            outline: none;
			padding:5px;
			font-size:14px;
        }
        input[type="submit"]{
            height: 40px;
            letter-spacing: .1em;
            background-color: rgb(63, 178, 255);
            color: #ffffff;
        }
        input::placeholder{
            font-size: 12px;
            color: gray;
            padding: 5px;
        }
    </style>

    <div class="signup-container">
        <h1>signup</h1>

        <form action="signup">
            <input type="text" name="username" placeholder="Create username"><br>
            <input type="text" name="password" placeholder="Create password"><br>
            <input type="submit">
        </form>

    </div>
</body>

</html>