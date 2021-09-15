<%
    String rows = request.getParameter("rows");
    String cols = request.getParameter("cols");
    if (rows == null || cols == null) {
        out.write("<center><font color=\"red\">Missing either rows or cols parameter, or both.</text>");
    } else {
        Integer rowsInt = null;
        try {
            rowsInt = Integer.parseInt(rows);
        } catch (Exception e) {
            out.write("<center><font color=\"red\">Can't parse rows value [" + rows + "] to a number!</text>");
        }
        if (rowsInt != null) {
            Integer colsInt = null;
            try {
                colsInt = Integer.parseInt(cols);
            } catch (Exception e) {
                out.write("<center><font color=\"red\">Can't parse cols value [" + cols + "] to a number!</text>");
            }
            if (colsInt != null) {
                if (rowsInt < 1 || colsInt < 1) {
                    out.write("<center><font color=\"red\">Either rows or cols parameter is lesser than 1, or both.</text>");
                } else {
                    out.write("<center><table border=\"1\" cellspacing=\"0\">");
                    int counter = 1;
                    for (int i = 0; i < rowsInt; i++) {
                        out.write("<tr>");
                        for (int j = 0; j < colsInt; j++) {
                            if (counter % 2 == 0) {
                                out.write("<td bgcolor=\"yellow\">");
                            } else {
                                out.write("<td>");
                            }
                            out.write("" + (counter++) + "</td>");
                        }
                        out.write("</tr>");
                    }
                    out.write("</table>");
                }
            }
        }
    }
%>