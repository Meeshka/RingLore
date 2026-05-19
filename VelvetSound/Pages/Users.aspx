<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Homepage.Master" AutoEventWireup="true" CodeBehind="Users.aspx.cs" Inherits="VelvetSound.Users" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .users-page {
            color: #fff8dc;
            font-family: 'Segoe UI', Tahoma, sans-serif;
            text-align: center;
        }

        .users-page h1 {
            color: #ffd700;
            text-shadow: 0 1px 2px rgba(0,0,0,0.7);
        }

        .users-page input,
        .users-page button {
            color: #111;
        }

        .usersTable {
            color: #fff8dc;
            border-collapse: collapse;
            margin: 16px auto 0;
        }

        .usersTable td {
            color: #fff8dc;
            border: 1px solid rgba(255, 215, 0, 0.35);
            padding: 8px 10px;
        }

        .usersTable tr:first-child td {
            color: #ffd700;
            font-weight: 700;
        }

        .users-search {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10px;
            flex-wrap: wrap;
            margin: 24px 0 18px;
        }

        .users-search label {
            color: #fff8dc;
            font-weight: 600;
        }

        .users-search input[type="text"] {
            min-width: 240px;
            padding: 9px 12px;
            border: 1px solid rgba(255, 215, 0, 0.35);
            border-radius: 6px;
        }

        .users-actions {
            display: flex;
            justify-content: center;
            gap: 12px;
            flex-wrap: wrap;
            margin-top: 18px;
        }

        .users-btn {
            display: inline-block;
            padding: 10px 20px;
            border-radius: 8px;
            border: none;
            cursor: pointer;
            font-weight: 700;
            letter-spacing: 0.4px;
            transition: transform 0.12s ease, box-shadow 0.12s ease, opacity 0.12s ease;
            box-shadow: 0 4px 10px rgba(0,0,0,0.25);
        }

        .users-btn-primary {
            background: linear-gradient(180deg,#ffd966 0%, #e6b800 100%);
            color: #112;
            border: 1px solid rgba(0,0,0,0.15);
        }

        .users-btn-secondary {
            background: linear-gradient(180deg,#f2f2f2 0%, #d9d9d9 100%);
            color: #111;
            border: 1px solid rgba(0,0,0,0.08);
        }

        .users-btn:hover {
            transform: translateY(-2px);
            box-shadow: 0 6px 16px rgba(0,0,0,0.35);
        }

        .users-btn:focus {
            outline-offset: 3px;
            box-shadow: 0 0 0 3px rgba(255,215,0,0.18);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div class="users-page">
 <h1>
    UserTable
 </h1>



<div runat="server" id="tableD">

</div>

<div runat="server" id="message"></div>

<div class="users-search">
    <label for="filter">Enter Text to search name:</label>
    <input type="text" name="filter" id="filter" />
    <input type="button"
           value="Filter"
           name="btnFilter"
           id="btnFilter"
           runat="server"
           onserverclick="Click_Filter"
           class="users-btn users-btn-primary" />
</div>

<div class="users-actions">
    <asp:Button runat="server" ID="DeleteBtn" Text="Delete selected" OnClick="DeleteBtn_Click" CssClass="users-btn users-btn-secondary" />
    <asp:Button runat="server" ID="UpdateBtn" Text="Update user" OnClick="UpdateBtn_Click" CssClass="users-btn users-btn-primary" />
</div>



</div>
</asp:Content>
