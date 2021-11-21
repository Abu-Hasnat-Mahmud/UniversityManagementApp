<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShowStudentUI.aspx.cs" Inherits="UniversityInformationWebApp.UI.ShowStudentUI" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        
        <asp:GridView ID="studentGridView" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:TemplateField HeaderText="RegNO">
                    <ItemTemplate>
                        <asp:HiddenField ID="idHiddenField" Value='<%#Eval("StudentId")%>' runat="server" />
                        <asp:Label runat="server" Text='<%#Eval("RegNO")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="StudentName">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("StudentName")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Address">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Address")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Email">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Email")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Phone">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Phone")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="DepartmentId">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("DepartmentId")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:TemplateField HeaderText="Code">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("Code")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="DepartmentName">
                    <ItemTemplate>
                        <asp:Label runat="server" Text='<%#Eval("DepartmentName")%>'></asp:Label>
                    </ItemTemplate>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:LinkButton ID="UpdateLinkButton" runat="server" OnClick="UpdateLinkButton_OnClick">Update</asp:LinkButton>
                        <asp:LinkButton ID="deleteLinkButton" runat="server" OnClick="deleteLinkButton_OnClick">Delete</asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    
    </form>
</body>
</html>
