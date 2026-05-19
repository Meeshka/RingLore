<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Homepage.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="VelvetSound.Pages.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <style>
            .register-page {
                color: #fff8dc;
                font-family: 'Segoe UI', Tahoma, sans-serif;
            }

            .register-page p {
                color: #ffd700;
                font-family: cursive;
                text-shadow: 0 1px 2px rgba(0,0,0,0.7);
            }

            table { margin-top: 10px; }

            .register-page label {
                color: #fff8dc;
                display: inline-block;
                width: 140px;
                font-weight: 600;
            }

            .register-page input {
                color: #111;
            }

            .register-page input[type="text"],
            .register-page input[type="password"],
            .register-page input[type="date"] {
                padding: 7px 10px;
                border: 1px solid rgba(255, 215, 0, 0.35);
                border-radius: 6px;
            }

            .register-page #msg {
                color: #fff8dc;
                margin-top: 12px;
                font-weight: 600;
            }
        </style>

        <div class="register-page">
        <p style="font-size: 50px;">Register</p>

        <!-- Do not add another <form> — master page already has runat=server form -->
        <table>
            <tr>
                <td><label>Username:</label></td>
                <td><input type="text" name="username" id="username" placeholder="Enter your username" /></td>
            </tr>
            <tr>
                <td><label>Password:</label></td>
                <td><input type="password" name="pass" id="pass" placeholder="Enter your password" /></td>
            </tr>
            <tr>
                <td><label>Password verification:</label></td>
                <td><input type="password" name="verification" id="verification" /></td>
            </tr>
            <tr>
                <td><label>First name:</label></td>
                <td><input type="text" name="fName" id="firstName" /></td>
            </tr>
            <tr>
                <td><label>Last name:</label></td>
                <td><input type="text" name="lName" id="lastName" /></td>
            </tr>
            <tr>
                <td><label>City:</label></td>
                <td><input type="text" name="city" id="city" /></td>
            </tr>
            <tr>
                <td><label>Phone number:</label></td>
                <td><input type="text" name="phone" id="phone" /></td>
            </tr>
            <tr>
                <td><label>Address:</label></td>
                <td><input type="text" name="address" id="address" /></td>
            </tr>
            <tr>
                <td><label>Birthday:</label></td>
                <td><input type="date" name="birthday" id="birthday" /></td>
            </tr>
            <tr>
                <td><label>Email:</label></td>
                <td><input type="text" name="email" id="email" /></td>
            </tr>
            <tr>
                <td colspan="2">
                    <label>choose your gender:</label>
                    <input type="radio" id="male" name="gender" value="male"><label for="male">male</label>
                    <input type="radio" id="female" name="gender" value="female"><label for="female">female</label>
                    <input type="radio" id="other" name="gender" value="other"><label for="other">other</label>
                </td>
            </tr>
        </table>

        <div id="msg" runat="server"> </div>
        <asp:Button ID="btnSend" runat="server" Text="Send" CssClass="btn" OnClick="btnSend_Click" />
        <input type="reset" value="Reset" class="btn btn-secondary" />
        </div>

    </center>
</asp:Content>
