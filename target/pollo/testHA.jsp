<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
        <head>
                <title>My Tux Address</title>
                <meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
        </head>

        <body >
                <%@ page import="javax.servlet.http.*,
                 java.net.InetAddress,
                 java.util.*" %>


		<%

		 Cookie ck = new Cookie ("INGLBCK",InetAddress.getLocalHost().getHostName());
		 ck.setMaxAge(-1);
		 response.addCookie(ck);
		 out.println("INGLBCK: " + InetAddress.getLocalHost().getHostName());
		
		%>

		 
        <table width="500" border="1" align="left" cellpadding="1" cellspacing="0">
                <td colspan="2">
                        <div align="center">
                                        <font size="+1" face="Verdana, Arial, Helvetica, sans-serif">
                                                <strong>My POLLO Address is:</strong>
                                        </font>
                        </div>
                </td>
                </tr>
                <tr>
                <td colspan="2">
                        <div align="center">
                        <img src="http://i.giphy.com/8udjOmZuoL5e0.gif">
                </div>
        </td>
                </tr>
                <tr>
                <td colspan="2">
                        <div align="center">
                                <font size="+1" face="Verdana, Arial, Helvetica, sans-serif">
                                        <strong>
                                                        <%
                                                            try {
                                                       java.net.InetAddress inetAdd =
                                                       java.net.InetAddress.getLocalHost();
                                                       out.println(inetAdd.getHostAddress());
                                                            }catch(java.net.UnknownHostException tsss){
                                                       }
                                                        %>
                                                        <br>
                                                        <% 
                                                        String srv = InetAddress.getLocalHost().getHostName();
                                                        %>
                                                         <%=srv%>
                                </strong>
                        </font>
                </div>
                </td>
                </tr>
                <tr>
                <td colspan="2">
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                        <a href="<%=request.getContextPath()%>/testHA.jsp">Llamar</a><br>
                        <!-- <hr> -->
                                        <B>What's up!   Estamos probando ...</B>
                                </font>
                                <!-- <hr>-->
                        </td>
                </tr>
                <tr>
                <td>
                                <%
                                   int cont=0;
                                   if(session.getAttribute("cont")!=null){
                                      cont = Integer.parseInt(session.getAttribute("cont").toString()) + 1;
                                   }
                                   session.removeAttribute("cont");
                                   session.setAttribute("cont",String.valueOf(cont));
                                   String ip = InetAddress.getLocalHost().getHostAddress();
                                   String host = InetAddress.getLocalHost().getHostName();
                                   String hexa = Integer.toHexString(255);
                                   StringTokenizer ipTokenizer = new StringTokenizer(ip,".");
                                   StringBuffer hexaIp = new StringBuffer();
                                   while(ipTokenizer.hasMoreTokens()){
                                      String ipToken = Integer.toHexString(Integer.parseInt(ipTokenizer.nextToken()));
                                      if(ipToken.length()==1)
                                         hexaIp.append("0");
                                      hexaIp.append(ipToken);
                                   }
                                %>


                                <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                                <strong>
                                El contador va en:
                        </strong>
                        </font>
                </td>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>
                                <%=cont%>
                                <% System.out.println("\n The counter is in number : " + cont);%>
                        </strong>
                        </font>
                </td>
        </tr>
        <tr>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                                        El id de la sesion es:
                                </font>
                </td  
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>
                                <%=session.getId()%>
                                        <% System.out.println("ID from the session: " + session.getId());%>
                                </strong>
                                </font>
                </td>
        </tr>
        <tr>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>
                                        The request came from host:
                                </strong>
                                </font>
                </td>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>
                                        <%=request.getServerName()%>
                                </strong>
                                </font>
                </td>
        </tr>
        <tr>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>
                                The host that's answering is:
                        </strong>
                        </font>
                </td>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                        <strong>
                                <%=host%>
                        </strong>
                        </font>
                </td>
        </tr>
        <tr>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                                The IP of the node:
                        </font>
                </td>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                                <%=ip%>
                        </font>
                </td>
        </tr>
        <tr>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                                Esta ip en hexadecimal es:
                        </font>
                </td>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                                <%=hexaIp%>
                        </font>
                </td>
        </tr>
        <tr>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                                The contextpath is:
                        </font>
                </td>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                                <%=request.getContextPath()%>
                        </font>
                </td>
        </tr>
        <tr>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                                The servlet name is:
                        </font>
                </td>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                                <%=request.     getServletPath()%>
                        </font>
                </td>
        </tr>
        <tr>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                                Hoy es:
                        </font>
                </td>
                <td>
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                                <%=new java.util.Date()%>
                        </font>
                </td>
        </tr>
        <tr>
                <td colspan="2">
                        <font size="-1" face="Verdana, Arial, Helvetica, sans-serif">
                                It's been  <%=new java.util.Date().getTime()%> secs since 1900
                        </font>
                </td>
        </tr>
        </table>
        </body>
</html>
