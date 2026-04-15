<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>FastStation | Pedido Confirmado</title>
    <link rel="stylesheet" href="../css/base.css" />
    <link rel="stylesheet" href="../css/confirmacao.css" />
</head>
<body class="pagina-pedido">

    <header class="topo-pedido">
        <span class="topo-logo">Fast<span>Station</span></span>
    </header>

    <section id="pedido">
        <div class="form-card">
            <div class="confirmacao visivel">
                <div class="confirmacao-header">
                    <div class="confirmacao-icone">🎉</div>
                    <h3>Pedido Confirmado!</h3>
                </div>

                <div class="resumo-card">
                    <p class="saudacao">Olá, <strong>${meuPedido.cliente}</strong>!</p>
                    
                    <div class="lista-produtos-confirmados">
                        <span class="label">Itens Escolhidos</span>
                        <p class="itens-texto">${itensTexto}</p>
                    </div>

                    <div class="info-grid">
                        <div class="info-item">
                            <span class="label">Total a Pagar</span>
                            <span class="valor-destaque">R$ ${meuPedido.valorTotal}</span>
                        </div>
                        <div class="info-item">
                            <span class="label">Pagamento</span>
                            <span class="metodo-tag">${meuPedido.formaPagamento}</span>
                        </div>
                    </div>

                    <div class="status-barra">
                        <div class="status-preenchimento"></div>
                    </div>
                    <p class="status-texto">Seu pedido está sendo preparado com carinho!</p>
                </div>

                <div class="acoes">
                    <a href="PedidoServlet" class="btn-novo">Fazer novo pedido</a>
                    <a href="../index.html" class="link-voltar">Sair para o início</a>
                </div>
            </div>    
        </div>
    </section>

    <footer class="rodape">
        © FastStation · Feito com ❤️
    </footer>

</body>
</html>