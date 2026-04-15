package controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("page/PedidoServlet")
public class CadastroController extends HttpServlet {
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {
    
    String nome = request.getParameter("nomeCliente");
    String pgto = request.getParameter("pagamento");
    String[] produtos = request.getParameterValues("produto");
    
    double total = 0.0;
    String listaProdutos = "";

    if (produtos != null) {
        for (String p : produtos) {
            if (p.equals("hamburguer")) {
                total += 15.0;
                listaProdutos += "Hambúrguer (R$ 15,00), ";
            } else if (p.equals("pizza")) {
                total += 25.0;
                listaProdutos += "Pizza (R$ 25,00), ";
            } else if (p.equals("refrigerante")) {
                total += 5.0;
                listaProdutos += "Refrigerante (R$ 5,00), ";
            } else if (p.equals("batata")) {
                total += 10.0;
                listaProdutos += "Batata Frita (R$ 10,00), ";
            }
        }

        if (listaProdutos.length() > 2) {
            listaProdutos = listaProdutos.substring(0, listaProdutos.length() - 2);
        }
    } else {
        listaProdutos = "Nenhum item selecionado";
    }

    model.Pedido novoPedido = new model.Pedido();
    novoPedido.setCliente(nome);
    novoPedido.setValorTotal(total);
    novoPedido.setFormaPagamento(pgto);

    request.setAttribute("meuPedido", novoPedido);
    request.setAttribute("itensTexto", listaProdutos);

    request.getRequestDispatcher("confirmacao.jsp").forward(request, response);
}
}
