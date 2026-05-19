<%@ Page Title="" Language="C#" MasterPageFile="~/Pages/Homepage.Master" AutoEventWireup="true" CodeBehind="EditUser.aspx.cs" Inherits="VelvetSound.EditUser" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .edit-user-page {
            color: #fff8dc;
            font-family: 'Segoe UI', Tahoma, sans-serif;
        }

        .edit-user-page p {
            color: #ffd700;
            text-shadow: 0 1px 2px rgba(0,0,0,0.7);
        }

        .edit-user-page td,
        .edit-user-page lable {
            color: #fff8dc;
            font-weight: 600;
        }

        .edit-user-page input {
            color: #111;
        }

        .edit-user-actions {
            display: flex;
            justify-content: center;
            gap: 12px;
            margin-top: 22px;
        }

        .edit-user-btn {
            min-width: 112px;
            padding: 10px 18px;
            border: 1px solid rgba(255, 215, 0, 0.35);
            border-radius: 6px;
            font-size: 1rem;
            font-weight: 700;
            cursor: pointer;
            box-shadow: 0 3px 8px rgba(0, 0, 0, 0.35);
            transition: transform 0.15s ease, box-shadow 0.15s ease, background-color 0.15s ease;
        }

        .edit-user-btn-primary {
            background-color: #ffd700;
            color: #1c2a1d;
        }

        .edit-user-btn-secondary {
            background-color: transparent;
            color: #ffd700;
        }

        .edit-user-btn:hover,
        .edit-user-btn:focus {
            transform: translateY(-1px);
            box-shadow: 0 5px 12px rgba(0, 0, 0, 0.45);
        }

        .edit-user-btn-primary:hover,
        .edit-user-btn-primary:focus {
            background-color: #ffe45c;
        }

        .edit-user-btn-secondary:hover,
        .edit-user-btn-secondary:focus {
            background-color: rgba(255, 215, 0, 0.12);
        }

        .edit-user-btn:active {
            transform: translateY(0);
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.35);
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="edit-user-page">
   <center>
       <style>
           p {
               font-family: cursive;
           }
       </style> 

       <p style="font-size: 50px;">Edit User</p>
       <form>

           <table>
               <tr>
                   <td>
                       <lable>Username:</lable>
                   </td>
                   <td>
                       <input type="text" name="username" id="username" placeholder="Enter your username" runat="server" />
<%--                     <input type="text" name="username" id="Text1" runat="server" placeholder="Enter your username" />--%>

                   </td>
               </tr>
               <tr>
                   <td>
                       <lable>Password:</lable>
                   </td>
                   <td>
                       <input type="password" name="pass" id="pass" placeholder="Enter your password" runat="server" />
                   </td>
               </tr>

               <tr>
                   <td>
                       <lable>First name:</lable>
                   </td>
                   <td>
                       <input type="text" name="firstName" id="firstName" runat="server"/>
                   </td>
               </tr>
               <tr>
                   <td>
                       <lable>Last name:</lable>
                   </td>
                   <td>
                       <input type="text" name="lastName" id="lastName" runat="server"/>
                   </td>
               </tr>
               <tr>
                   <td>
                       <lable>City:</lable>
                   </td>
                   <td>
                       <input type="text" name="city"  id="city" runat="server"/>
                   </td>
               </tr>
               <tr>
                   <td>
                       <lable>Phone number:</lable>
                   </td>
                   <td>
                       <input type="text" name="phone" id="phone" runat="server"/>
                   </td>
               </tr>
               <tr>
                   <td>
                       <lable>Address:</lable>
                   </td>
                   <td>
                       <input type="text" name="address" id="address" runat="server"/>
                   </td>
               </tr>
               <tr>
                   <td>
                       <lable>Birthday:</lable>
                   </td>
                   <td>
                       <input type="date" name="birthday"  id="birthday" runat="server"/>
                   </td>
               </tr>
               <tr>
                   <td>
                       <lable>Email:</lable>
                   </td>
                   <td>
                       <input type="text" name="email" id="email" runat="server"/>
                   </td>
               </tr>
 
           </table>
           <div id="msg" runat="server"> </div>
           <%--<input type="submit" value="send" />--%>
           <div class="edit-user-actions">
               <asp:Button runat="server" ID="btnSave" Text="Save" OnClick="btnSave_Click" CssClass="edit-user-btn edit-user-btn-primary" />
               <input type="reset" value="Reset" class="edit-user-btn edit-user-btn-secondary" />
           </div>
       </form>
   </center>
</div>


</asp:Content>
