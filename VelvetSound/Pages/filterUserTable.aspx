<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Homepage.Master" AutoEventWireup="true" CodeBehind="filterUserTable.aspx.cs" Inherits="VelvetSound.filterUserTable" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <div>
        <br />
        enter text to search name:
        <br />
        <input type="text" name="filter" id="filter" />
        <br /><br />
        <input type="button" value="Filter" name="btnFilter" id="btnFilter"
               runat="server" onserverclick="btnFilter_ServerClick" />
        <br /><br />
    </div>

    <div runat="server" id="tableDiv">
    </div>
</asp:Content>
