<%-- 
    Document   : inserir
    Created on : 14/06/2019, 23:35:35
    Author     : jonat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="executa_inserir.jsp" methos="post">
<!--            <label>Codigo:</label><br/>
            <input type='text' name='codigo'/><br/>-->
            
            
            <label>Descrição:</label><br/>
            <input type='text' name='descricao'/><br/>
            
            <label>Preço:</label><br/>
            <input type='text' name='preco'/><br/>
            
            <button type="submit">
                OK
            </button>
            
        </form>
        
        
    </body>
</html>
