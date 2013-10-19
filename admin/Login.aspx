<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Login</title>
    <%--<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />--%>
</head>
<body>
    <form id="form1" runat="server" class="form-horizontal">
        <div class="container">

            <div class="row">

                <div class="span6 offset3">
                    <asp:Label ID="Label_besked" runat="server" Text=""></asp:Label>

                    <fieldset>
                        <legend>Login</legend>
                        <div class="control-group">
                            <label class="control-label">Email</label>

                            <div class="controls">
                                <asp:TextBox ID="TextBox_email" runat="server" placeholder="Skriv din email her" required="Email mangler"></asp:TextBox>
                            </div>
                            <!--controls-->

                        </div>
                        <!--control-group-->

                        <div class="control-group">
                            <label class="control-label">Password</label>
                            <div class="controls">
                                <asp:TextBox ID="TextBox_pass" runat="server" TextMode="Password" placeholder="Skriv dit password her" required="Password mangler!"></asp:TextBox>
                            </div>
                            <!--controls-->
                        </div>
                        <!--control-group-->

                        <div class="control-group">
                            <label class="control-label"></label>
                            <div class="controls">
                                <asp:Button CssClass="btn" ID="Button_login" runat="server" Text="Login" OnClick="Button_login_Click" />
                            </div>
                            <!--controls-->
                        </div>
                        <!--control-group-->

                    </fieldset>

                    <a href="../Default.aspx">Gå til Musicon Magasinets forside</a>

                </div>
                <!--span6 offset3-->
            </div>
            <!--row-->

            <%--<footer class="modal-footer">
                <p>&copy; clb@rts.dk - dec, 2012</p>
            </footer>--%>
        </div>
        <!--containers-->

        <%-- <script src="bootstrap/js/bootstrap.min.js"></script>--%>
    </form>
</body>
</html>
