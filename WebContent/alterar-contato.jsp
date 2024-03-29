<%@page import="model.Contato"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
    <head>
        <title>Cadastro</title>
        <meta name="viewport" content="width=device-width, initial-scale=1" charset="UTF-8">
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

        input[type=button] {
            background-color: #BDDDF4;
            color: black;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            cursor: pointer;
            width: 100%;
        }

       input[type=button]:hover {
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

<% Contato contato = (Contato) request.getAttribute("contato"); %>

        <div class="navbar">
            <img src="pics/tellme.png " style="width:5.5%" alt="Logo">
        </div> 

        <script language="javascript" type="text/javascript">
            function validar() {
                var nome = form1.nome.value;
                var telefone = form1.telefone.value;
                var email = form1.email.value;
                var senha = form1.senha.value;
                var rep_senha = form1.rep_senha.value;
                var pais = form1.pais.value;

                if (nome == "") {
                    alert('Insira seu nome');
                    form1.nome.focus();
                    return false;
                }

                if (telefone == "") {
                    alert('Insira seu telefone');
                    form1.telefone.focus();
                    return false;
                }

                if (email == "") {
                    alert('Insira seu email');
                    form1.email.focus();
                    return false;
                }

                if (senha == "") {
                    alert('Insira sua senha');
                    form1.senha.focus();
                    return false;
                }

                if (rep_senha == "") {
                    alert('Repita sua senha');
                    form1.rep_senha.focus();
                    return false;
                }

                if (nome.length < 5) {
                    alert('Nome deve ter no m�nimo 5 digitos');
                    form1.nome.focus();
                    return false;
                }

                if (isNaN(telefone)) {
                    alert('Telefone invalido, digite apenas numeros');
                    form1.telefone.focus();
                    return false;
                }

                if (senha != rep_senha) {
                    alert('Senhas diferentes');
                    form1.senha.focus();
                    return false;
                }

                if(pais == 0){
                    alert('Voce nao selecionou um Pais.');
                    form1.pais.focus();
                    return false;
                }
                
                form1.submit()	
            }
        </script>
    </head>
    <body>

        <div class="navbar">
            <img src="pics/tellme.png " style="width:5.5%" alt="Logo">
        </div> 

        <form id="form1" name="form1" action="/desenv-web/alterar-contato-de-fato" method="GET">
            <br>
            <div class="imgcontainer">
                <img src="pics/tellme.png" alt="Avatar"  class="avatar">
            </div>
            <h2 class="headertekst">Tela de Cadastro</h2>
            
            <div class="container">
                <label><b>Nome Completo:</b></label>
                <input name="nome" type="text" value="<%= contato.getNome() %>"/>
            
                <label><b>Telefone:</b></label>
                <input name="telefone" type="text" placeholder="XX XXXXX-XXXX" >
            
                <label><b>E-mail:</b></label>
                <input name="email" type="text" value="<%= contato.getEmail() %>"/>
            
                <label><b>Senha:</b></label>
                <input name="senha" type="password" placeholder="" >
            
                <label><b>Confirmar Senha:</b></label>
                <input name="rep_senha" type="password" placeholder="" >
            
                <label><b>Pa�s:</b></label>
                <select name="pais">
                    <option value="1">Brasil</option>
                    <option value="2">Argentina</option>
                    <option value="3">Nicaragua</option>
                    <option value="4">Estados Unidos</option>
                    <option value="5">Russia</option>
                    <option value="0" selected="true" > Selecione </option>
                </select>
                
               	<input type="hidden" name="id" value="<%= contato.getId() %>"/>
                
                    
                <input type="button" onclick="return validar()" value="Confirmar">
            </div>
        </form>
    </body>
</html>