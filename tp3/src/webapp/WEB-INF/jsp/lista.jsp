<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
        <!DOCTYPE html>
        <html lang="pt-br">

        <head>
            <meta charset="utf-8" />
            <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
            <meta name="description" content="" />
            <meta name="author" content="" />
            <title>Confeitaria Infnet</title>
            <link rel="icon" type="image/x-icon" href="/assets/favicon.ico" />
            <!-- Google fonts-->
            <link
                href="https://fonts.googleapis.com/css?family=Raleway:100,100i,200,200i,300,300i,400,400i,500,500i,600,600i,700,700i,800,800i,900,900i"
                rel="stylesheet" />
            <link href="https://fonts.googleapis.com/css?family=Lora:400,400i,700,700i" rel="stylesheet" />
            <!-- Core theme CSS (includes Bootstrap)-->
            <link href="/css/styles.css" rel="stylesheet" />
        </head>
        <section class="page-section cta">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12 mx-auto">
                        <div class="cta-inner bg-faded text-center rounded">

                            <div class="container">
                                <h3>Listagem de Usuários</h3>

                                <c:if test="${not empty usuarios}">
                                    <div class="alert alert-info">
                                        <strong>Sucesso!</strong> ${mensagem} Quantidade de usuários cadastrados:
                                        ${usuarios.size()}.
                                    </div>
                                </c:if>

                                <c:if test="${empty usuarios}">
                                    <div class="alert alert-warning">
                                        <strong>Atenção!</strong> Não existem usuários cadastrados.
                                    </div>
                                </c:if>

                                <div class="col-xl-12 bg-faded table-responsive text-center rounded">
                                    <table class="table table-striped table-responsive">
                                        <thead>
                                            <th>ID</th>
                                            <th>Nome</th>
                                            <th>E-mail</th>
                                            <th>Senha</th>
                                            <th>Admin</th>
                                            <th>Endereço</th>
                                            <th>Clientes</th>
                                            <th>Doces</th>
                                            <th>Pedidos</th>
                                            <c:if test="${usuario.admin}">
                                                <th></th>
                                            </c:if>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach var="u" items="${usuarios}">
                                                <tr>
                                                    <td>${u.id}</td>
                                                    <td>${u.nome}</td>
                                                    <td>${u.email}</td>
                                                    <td>${u.senha}</td>
                                                    <td>${u.admin}</td>
                                                    <td>${u.endereco}</td>
                                                    <td>${u.clientes.size()}</td>
                                                    <td>${u.doces.size()}</td>
                                                    <td>${u.pedidos.size()}</td>
                                                    <c:if test="${usuario.admin}">
                                                        <td>
                                                            <form action="/usuario/${u.id}/excluir" method="get">
                                                                <button type="submit" class="btn btn-danger">
                                                                    <span>Remover</span>
                                                                </button>
                                                            </form>
                                                        </td>
                                                    </c:if>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer Ends -->
        <!-- Bootstrap core JS-->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
        <!-- Core theme JS-->
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
        </body>

        </html>