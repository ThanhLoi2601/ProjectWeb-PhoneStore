<%-- 
    Document   : Login
    Created on : Dec 2, 2023, 6:19:16 PM
    Author     : Tris Anh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.1/css/all.css" integrity="sha384-50oBUHEmvpQ+1lW4y57PTFmhCaXp0ML5d60M1M7uH2+nqUivzIebhndOJK28anvf" crossorigin="anonymous">

        <link rel="stylesheet" href="styles/Login.css"/>
    </head>
    <body>
        <div class="container" id="container">
            <div class="form-container sign-up-container">
                <form action="Register" method="post">
                    <h1>Create Account</h1>

                    <span>or use your email for registration</span>
                    <span style="color: red;">${message}.</span>
                    <input id="Name" name="name" type="text" placeholder="Name"/>
                    <input id="email" name="email" type="email" placeholder="Email" />
                    <input id="Address" name="address" type="text" placeholder="Address" />
                    <input id="phonenumber" name="phonenumber" type="text" placeholder="PhoneNumber" />
                    <input id="username" name="username" type="text" placeholder="UserName" />
                    <input id="Password" name ="password" type="password" placeholder ="Password" />
                    <input id="ConfirmPassword" name="confirmpassword" type="password" placeholder ="ConfirmPassword" />

                    <button name="sign_up">Sign Up</button>
                </form>
            </div>
            <div class="form-container sign-in-container">
                <form action="Login" method="post">
                    <h1>Sign in</h1>
                    <span>or use your account</span>
                    <span style="color: red;">${message}.</span>
                    <input type="text" name="txtUserName" placeholder="UserID" value="${username_save}" />
                    <input type="password" name="txtPassword" placeholder="Password" value="${password_save}" />
                    <a href="#">Forgot your password?</a>
                    <button name="sign_in">Sign In</button>
                </form>
            </div>
            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1>Welcome Back!</h1>
                        <p>To keep connected with us please login with your personal info</p>
                        <button class="ghost" id="signIn">Sign In</button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1>Hello, Friend!</h1>
                        <p>Enter your personal details and start journey with us</p>
                        <button class="ghost" id="signUp">Sign Up</button>
                    </div>
                </div>
            </div>
        </div>
        <script src="js/login.js"></script>

    </body>
</html>
