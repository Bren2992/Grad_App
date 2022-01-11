<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HomePage.aspx.cs" Inherits="Grad_App.HomePage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section>
        <center>
        <img src="Images/PUPR_pic.jpg" class="img-fluid"/>
        </center>
    </section>
    <section>
        <div class="container">
            <div class="row">
                <div class ="col-12">
                    <center>
                    <h2>Welcome to GradApp!</h2>
                    <p><b>Our Features Are:</b></p>
                    </center>
                </div>
            </div>
            <div class="row">
                <div class ="col-md-6">
                    <center>
                        <img width="150" src="Images/inventory.png" />
                        <h4>Digital Design Projects</h4>
                        <p class="text-justify">Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod 
                            tempor incidunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum 
                            exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. </p>
                    </center>
                </div>

                <div class ="col-md-6">
                    <center>
                    <img width="150" src="Images/search.png"/>
                    <h4>Project Search</h4>
                    <p class="text-justify">Lorem ipsum dolor sit amet, consectetur adipisci elit, sed eiusmod tempor incidunt
                        ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrum exercitationem ullam corporis 
                        suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur. </p>
                    </center>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
