<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="View_Projects.aspx.cs" Inherits="Grad_App.View_Projects" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">

                    <div class="row">

                        <div class="col">
                            <center>
                                <h4>Project List</h4>
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
                            <asp:GridView class="table table-striped table-bordered" ID="GridView1" runat="server"></asp:GridView>
                        </div>

                    </div>

                </div>

            </div>
          <br>
          <br>
        </div>
    </center>
</asp:Content>
