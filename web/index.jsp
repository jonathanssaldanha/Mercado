<%-- 
    Document   : index
    Created on : 14/06/2019, 23:53:15
    Author     : jonat
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.Produto"%>
<%@page import="dao.ProdutoDAO"%>
<%@page import="java.util.ArrayList"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="index.jsp" method="post">
            
            <label>Descricao:</label><br/>
            <input type="text" name="descricao"/><br/>
            
            <button type="submit">
                OK
            </button>
    
        </form>
            
        <%
        
            try{
                out.print("<table>");
                out.print("<tr>");
                out.print("<th>Codigo</th><th>Descricao</th><th>Preco</th><th>Editar</th><th>Excluir</th>");
                
                ProdutoDAO prd = new ProdutoDAO();
                if(request.getParameter("descricao") == "" || request.getParameter("descricao") == null){
                    ArrayList<Produto> lista = prd.listarTodos();
                    for(int num = 0; num < lista.size(); num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getCodigo_produto()+"</td>");
                        out.print("<td>"+lista.get(num).getDescricao_produto()+"</td>");
                        out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");
                        out.print("<td><a href='alterar.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+"&preco="+lista.get(num).getPreco_produto()+"'>Editar</a></td>");
                        out.print("<td><a href='excluir.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+"&preco="+lista.get(num).getPreco_produto()+"'>Excluir</a></td>");
                        out.print("<td></td>");
                        out.print("</tr>");
                    }
                    
                }else{
                    ArrayList<Produto> lista = prd.listarTodosDescricao(request.getParameter("descricao"));
                    for(int num = 0; num < lista.size(); num++){
                        out.print("<tr>");
                        out.print("<td>"+lista.get(num).getCodigo_produto()+"</td>");
                        out.print("<td>"+lista.get(num).getDescricao_produto()+"</td>");
                        out.print("<td>"+lista.get(num).getPreco_produto()+"</td>");
                        out.print("<td><a href='alterar.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+"&preco="+lista.get(num).getPreco_produto()+"'>Editar</a></td>");
                        out.print("<td><a href='excluir.jsp?codigo="+lista.get(num).getCodigo_produto()+"&descricao="+lista.get(num).getDescricao_produto()+"&preco="+lista.get(num).getPreco_produto()+"'>Excluir</a></td>");
                        out.print("<td></td>");
                        out.print("</tr>");
                    }
                }
                
                out.print("</tr>");
                out.print("</table>");
            }catch(Exception erro){
                throw new RuntimeException("Erro 10: " + erro);
            }
        %>
        
        
        <a href="inserir.jsp">NOVO</a>
        
    </body>
</html>
