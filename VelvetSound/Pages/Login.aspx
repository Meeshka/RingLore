<%@ Page Language="C#" AutoEventWireup="true"
    CodeBehind="Login.aspx.cs"
    Inherits="VelvetSound.Pages.Login"
    MasterPageFile="~/Pages/Homepage.Master" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
           
     <style>
     p {
         font-family: cursive;
     }

    /* Buttons */
    .btn {
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

    .btn-primary {
        background: linear-gradient(180deg,#ffd966 0%, #e6b800 100%);
        color: #112;
        border: 1px solid rgba(0,0,0,0.15);
    }

    .btn-primary:hover {
        transform: translateY(-2px);
        box-shadow: 0 6px 16px rgba(0,0,0,0.35);
    }

    .btn-reset {
        background: linear-gradient(180deg,#f2f2f2 0%, #d9d9d9 100%);
        color: #111;
        border: 1px solid rgba(0,0,0,0.08);
        margin-left: 12px;
    }

    .btn-reset:hover {
        transform: translateY(-1px);
        box-shadow: 0 4px 10px rgba(0,0,0,0.18);
    }

    /* Make buttons accessible on dark background */
    .btn, .btn-primary, .btn-reset { outline-offset: 3px; }
    .btn:focus, .btn-primary:focus, .btn-reset:focus { box-shadow: 0 0 0 3px rgba(255,215,0,0.18); }

 </style>
    <table align="center">
        <tr>
          <td style="text-align: center;">
                <p style="font-size: 35px;">LOGIN</p>
            </td>
        </tr>
    </table>
    <table>
        <tr>
            <td>
                <label class="form-label">username:</label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="username" placeholder="Enter your username"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <label class="form-label">password:</label>
            </td>
            <td>
                <asp:TextBox runat="server" ID="password" TextMode="Password" placeholder="Enter your password"></asp:TextBox>
            </td>
        </tr>

        <tr> 
            <td style="text-align: center;">
    <div style="text-align:center" runat="server" id="message"></div>
    
    <asp:Button runat="server" ID="LoginBtn" Text="Login" OnClick="LoginBtn_Click" CssClass="btn btn-primary" />
    <input type="reset" value="reset" class="btn btn-reset" />
    </td>
     </tr>
    </table>

</asp:Content>