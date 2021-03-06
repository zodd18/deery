<%@ page import="es.spring.deery.model.Autentication" %><%--
  Created by IntelliJ IDEA.
  User: josie
  Date: 23/05/2021
  Time: 19:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="">
<%--    #2E3440--%>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark shadow-lg">
        <div class="container-fluid">
            <div class="d-flex justify-content-start ms-2" onclick="location.href='/'">
                <img width="45" height="45" src="images/paint-brush-icon.png" style="cursor: pointer !important;"/>
                <a class="navbar-brand ms-3" href="/">DEERY</a>
            </div>

            <div class="d-flex justify-content-end">
                <div class="collapse navbar-collapse" id="navbarText">
                    <ul class="navbar-nav mb-2 mb-lg-0">
                        <%
                            if (Autentication.isCreator(request)) {
                        %>
                        <li class="nav-item me-4">
                            <a class="nav-link <%= request.getAttribute("currentpage") != null && request.getAttribute("currentpage").equals("new-artwork")  ? "link-active" : ""  %>" href="/artworks-create">New Artwork</a>
                        </li>
                        <li class="nav-item me-4">
                            <a class="nav-link <%= request.getAttribute("currentpage") != null && request.getAttribute("currentpage").equals("new-character")  ? "link-active" : ""  %>" href="/characters-create">New Character</a>
                        </li>
                        <%
                            }
                        %>

                        <li class="nav-item me-4">
                            <a class="nav-link <%= request.getAttribute("currentpage") != null && request.getAttribute("currentpage").equals("artworks")  ? "link-active" : ""  %>" href="/artworks">Artworks</a>
                        </li>
                        <li class="nav-item me-5">
                            <a class="nav-link <%= request.getAttribute("currentpage") != null && request.getAttribute("currentpage").equals("characters")  ? "link-active" : ""  %>" aria-current="page" href="/characters">Characters</a>
                        </li>

                        <%
                        if (!Autentication.isLogged(request)) {
                        %>
                            <li class="nav-item me-5">
                                <a class="nav-link <%= request.getAttribute("currentpage") != null && request.getAttribute("currentpage").equals("login")  ? "link-active" : ""  %>" aria-current="page" href="/login">Log in</a>
                            </li>
                            <li class="nav-item me-5">
                                <a class="nav-link <%= request.getAttribute("currentpage") != null && request.getAttribute("currentpage").equals("register")  ? "link-active" : ""  %>" aria-current="page" href="/register">Register</a>
                            </li>
                        <%
                        } else {
                        %>
                            <li class="nav-item me-5">
                                <a class="nav-link <%= request.getAttribute("currentpage") != null && request.getAttribute("currentpage").equals("logout")  ? "link-active" : ""  %>" aria-current="page" href="/logout">Log out</a>
                            </li>
                        <%
                        }
                        %>
                    </ul>
                </div>

                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarText"
                        aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
            </div>
        </div>
    </nav>
</div>
