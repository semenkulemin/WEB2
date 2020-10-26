<%@ page import="backend.point" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Collections" %>


<jsp:useBean id="points" class="backend.pointBean" scope="session"/>
<table id="outputTable">
    <thead>
    <tr>
        <th>X</th>
        <th>Y</th>
        <th>R</th>
        <th>Aim</th>
        <th>Current time</th>
        <th>Execution time</th>
    </tr>
    </thead>
    <tbody>
    <%
        List<point> list_of_points = points.getTable();
        List<point> inverse_list = new ArrayList<>(list_of_points);
        Collections.reverse(inverse_list);
        for (point point : inverse_list) {
    %>
    <tr>
        <td><%=String.format("%.3f", point.getX())%></td>
        <td><%=String.format("%.3f", point.getY())%></td>
        <td><%=String.format("%.3f", point.getR())%></td>
        <td><%=point.getAim()%></td>
        <td><%=point.getTime()%></td>
        <td><%=String.format("%.5f", point.getExecTime())%></td>
    </tr>
    <%}%>
    </tbody>
</table>
