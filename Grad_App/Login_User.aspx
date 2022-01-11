<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Login_User.aspx.cs" Inherits="Grad_App.Login_User" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="row">
            <div class="col-md-6 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="150" src="Images/user.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h3>User Login</h3>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>Email</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Email" TextMode="Email">
                                    </asp:TextBox>

                                    <label>Password</label>
                                    <asp:TextBox CssClass="form-control" ID="TextBox2" runat="server" placeholder="Password"
                                        TextMode="Password"> 
                                    </asp:TextBox>
                                </div>

                                <div class="form-group">
                                    <asp:Button class="btn btn-primary btn-block btn-lg" ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />
                                </div>

                                <div class="form-group">                                    
                                        <a href="Register.aspx"><input class="btn btn-info btn-block btn-lg"
                                            id="Button2" type="button" value="Register" /></a>

                                </div>
                            </div>
                        </div>

                    </div>
                </div>

                <a href="HomePage.aspx"><< Return to Home</a><br />
                <br />
                <br />
                <br />
                <br />
            </div>
        </div>
    </div>

</asp:Content>
