<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Homepage.Master" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="VelvetSound.Pages.Signup" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <center>
        <style>
            p { font-family: cursive; }
            table { margin-top: 10px; }
            label { display: inline-block; width: 140px; }
        </style>

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

    </center>
</asp:Content>
