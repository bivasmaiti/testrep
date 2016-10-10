<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="ClientWebSite.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        
        <table style="width:34%;">
            <tr>
                <td class="auto-style1">
                    <asp:Label ID="lblId" runat="server" Text="Id"></asp:Label>
                </td>
                <td class="auto-style1">
                    <asp:TextBox ID="txtId" runat="server"></asp:TextBox>
                </td>
              
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Gender"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtGender" runat="server"></asp:TextBox>
                </td>
               
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Date Of Birth"></asp:Label>
                 </td>
                <td>
                    <asp:TextBox ID="txtDOB" runat="server"></asp:TextBox>
                 </td>
               
            </tr>
            <tr>
                <td>
                    <asp:Button ID="btnGetEmployee" runat="server" OnClick="btnGetEmployee_Click" Text="Get Employee" />
                </td>
                <td>
                    <asp:Button ID="btnSaveEmployee" runat="server" Text="Save Employee" OnClick="btnSaveEmployee_Click" />
                </td>
               
            </tr>
            <tr>
                <td colspan="2">

                    <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="Green"></asp:Label>

                </td>
            </tr>
        </table>
        
    </div>
    </form>
</body>
</html>
