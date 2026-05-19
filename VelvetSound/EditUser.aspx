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
                       <input type="text" name="phone number" runat="server"/>
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
                       <input type="text" name="email" runat="server"/>
                   </td>
               </tr>
 
           </table>
           <div id="msg" runat="server"> </div>
           <%--<input type="submit" value="send" />--%>
           <asp:Button runat="server" ID="btnSave" Text="Save" OnClick="btnSave_Click" />
           <input type="reset" value="reset" />
       </form>
   </center>
</div>


</asp:Content>
