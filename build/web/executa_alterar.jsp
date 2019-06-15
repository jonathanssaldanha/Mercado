<%-- 
    Document   : executa_alterar
    Created on : 14/06/2019, 23:10:26
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
                if(request.getParameter("descricao").equals("") || request.getParameter("preco").equals("")){
                    response.sendRedirect("index.jsp");
                }else{
                    pro.setDescricao_produto(request.getParameter("descricao"));
                    pro.setPreco_produto(Double.parseDouble(request.getParameter("preco")));
                    pro.setCodigo_produto(Integer.parseInt(request.getParameter("codigo")));
                    prd.alterar(pro);
                    response.sendRedirect("index.jsp");
                }
            }catch(Exception erro){
                throw new RuntimeException("Erro 8: " + erro);
            }
        %>
        
        
    </body>
</html>
