<%-- 
    Document   : executa_inserir
    Created on : 14/06/2019, 23:09:52
    Author     : jonat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@page import="dao.ProdutoDAO"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            try{
                Produto pro = new Produto();
                ProdutoDAO prd = new ProdutoDAO();
                if(request.getParameter("descricao") == "" || request.getParameter("preco") == ""){
                    response.sendRedirect("index.jsp");
                }else{
                    pro.setDescricao_produto(request.getParameter("descricao"));
                    pro.setPreco_produto(Double.parseDouble(request.getParameter("preco")));
                    prd.inserir(pro);
                    response.sendRedirect("index.jsp");
                }
            }catch(Exception erro){
                throw new RuntimeException("Erro 7: " + erro);
            }
        %>
        
        
    </body>
</html>
