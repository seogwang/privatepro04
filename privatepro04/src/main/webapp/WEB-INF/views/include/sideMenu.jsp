<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"  %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri = "http://java.sun.com/jsp/jstl/functions"%>
<%@ page import="java.util.*, java.lang.*" %>
<%@ page import="java.text.*, java.net.InetAddress" %>
<c:set var="path1" value="${pageContext.servletContext.contextPath }" />

<div id="menu">
  <div class="pure-menu">
    <a class="pure-menu-heading" href="#company">Company</a>

    <ul class="pure-menu-list">
      <li class="pure-menu-item"><a href="#home" class="pure-menu-link">Home</a></li>
      <li class="pure-menu-item"><a href="#about" class="pure-menu-link">About</a></li>

      <li class="pure-menu-item menu-item-divided pure-menu-selected">
        <a href="#" class="pure-menu-link">Services</a>
      </li>

      <li class="pure-menu-item"><a href="#contact" class="pure-menu-link">Contact</a></li>
    </ul>
  </div>
</div>