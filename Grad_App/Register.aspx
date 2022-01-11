<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Grad_App.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">

        <div class="row">
            <div class="col-md-8 mx-auto">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <center>
                                    <img width="100" src="Images/user.png" />
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <center>
                                    <h4>User Sign Up</h4>
                                </center>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <hr>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6">
                                <label>First Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox3" runat="server" placeholder="First Name">
                                    </asp:TextBox>
                                </div>
                            </div>

                            <div class="col-md-6">
                                <label>Last Name</label>
                                <div class="form-group">
                                    <asp:TextBox CssClass="form-control" ID="TextBox1" runat="server" placeholder="Last Name">                                        
                                    </asp:TextBox>
                                </div>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-12">
                                <label>Email</label>
                                <asp:TextBox CssClass="form-control" ID="TextBox4" runat="server" placeholder="Email"
                                    TextMode="Email">
                                </asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col">
                                <div class="form-group">
                                    <label>Password</label>
                                    <asp:TextBox class="form-control" ID="TextBox2" runat="server" placeholder="Password"
                                        TextMode="Password"> 
                                    </asp:TextBox>
                                </div>


                                <div class="row">
                                    <div class="col">
                                        <div class="form-group">
                                            <asp:Button class="btn btn-info btn-block btn-lg" ID="Button2"
                                                runat="server" Text="Register" OnClick="Button2_Click" />
                                        </div>
                                    </div>
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
