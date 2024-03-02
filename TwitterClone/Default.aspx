<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="TwitterClone.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           <%-- <asp:Repeater ID="PostRepeater" runat="server">
                <ItemTemplate>
                    <div>
                        <p><%# Eval("Content") %></p>
                    </div>
                </ItemTemplate>
            </asp:Repeater>--%>

 <%--           <% if (currentPost.PostedBy == "joblipat")%>
                <% { %>
                    <div>
                        <p><%= currentPost.Content %></p>
                        <p><%= currentPost.PostedBy %></p>
                    </div>
                 <%}%>--%>

        </div>
    </form>
</body>
</html>
