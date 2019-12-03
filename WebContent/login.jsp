<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:url value="/valida-login" var="linkLogin"/>
<!DOCTYPE html>
<html>
  <head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="estilo.css" >
    <style>
      body {font-family: Arial, Helvetica, sans-serif;}
      form {border: 3px solid #f1f1f1;}

      input[type=text], input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
      }
      
        input[type=submit] {
            background-color: #BDDDF4;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }      

      button {
        background-color: #BDDDF4;
        color: black;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
      }

      button:hover {
        opacity: 0.8;
      }

      .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
      }

      .imgcontainer {
        text-align: center;
        margin: 24px 0 12px 0;
      }

      img.avatar {
        width: 10%;
        border-radius: 50%;
      }

      .container {
        padding: 16px;
      }

      span.psw {
        float: right;
        padding-top: 16px;
      }

      /* Change styles for span and cancel button on extra small screens */
      @media screen and (max-width: 300px) {
        span.psw {
          display: block;
          float: none;
        }
        .cancelbtn {
          width: 100%;
        }
      }
    </style>
  </head>
  <body>

    <div class="navbar">
      <img src="pics/tellme.png " style="width:5.5%" alt="Logo">
    </div> 

    <form action="${linkLogin}" method="GET">
      <div>Ignore that</div><div>Ignore that</div>
      <div class="imgcontainer">
        <img src="pics/tellme.png" alt="Avatar"  class="avatar">
     </div>
      <div class="container">
        <label><b>E-mail</b></label>
        <input type="text" placeholder="Enter Username" name="name">

        <label><b>Senha</b></label>
        <input type="password" placeholder="Enter Password" name="password">
            
        <input type="submit" value="Confirmar">
        <label>
          <input type="checkbox" checked="checked" name="remember"> Remember me
        </label>
        <label><a href="novo-contato.html"><br /><br />N�o � cadastrado?</a></label>
    <c:if test="${not empty mensagem}">
      <div></div>
      <div>${mensagem}</div>
    </c:if>
      </div>
    </form>
  </body>
</html>
