<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="StudentEntryUI.aspx.cs" Inherits="UniversityInformationWebApp.UI.StudentEntryUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="RegNO"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="regNoTextBox" runat="server"></asp:TextBox> 
                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox> 
                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Address"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="addressTextBox" runat="server"></asp:TextBox> 
                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox> 
                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:Label ID="Label5" runat="server" Text="Phone"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="phoneTextBox" runat="server"></asp:TextBox> 
                </td>
            </tr>
            
            <tr>
                <td>
                    <asp:Label ID="Label6" runat="server" Text="DepartmentId"></asp:Label>
                </td>
                <td>
                    <asp:DropDownList ID="departmentIdDropDownList" runat="server"></asp:DropDownList> 
                </td>
            </tr>
            
             <tr>
                <td>
                    <asp:Button ID="Button1" runat="server" Text="Save" OnClick="Button1_Click" Width="84px" />                 
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="outputLabel" runat="server" Text=""></asp:Label>
                </td>
            </tr>
        </table>
        
    </form>
</body>
</html>
