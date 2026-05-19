<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Homepage.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="VelvetSound.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MasterContent" runat="server">
     
 <h1>
    UserTable
 </h1>



<div runat="server" id="tableD">

</div>

<div>
    Enter Text to search name:
    <input type="text" name="filter" id="filter" />
    <br /><br />

    <input type="button"
           value="Filter"
           name="btnFilter"
           id="btnFilter"
           runat="server"
           onserverclick="Click_Filter" />
    <br /><br />
</div>

<asp:Button runat="server" ID="DeleteBtn" Text="Check on and delete " OnClick="DeleteBtn_Click" />
<br />
<asp:Button runat="server" ID="UpdateBtn" Text="Update user" OnClick="UpdateBtn_Click" />



</asp:Content>