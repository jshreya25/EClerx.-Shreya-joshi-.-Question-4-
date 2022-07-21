<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AddPatient.aspx.cs" Inherits="ASP_Test3.AddPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        d1{
            margin:auto;
            border:1px solid;
            margin-top:20px;
            border-radius:20px;
            width:50%;
        }
        table,tr,td{
            padding:20px;
        }
        td{
            padding-top:10px;
        }
    </style>
</head>
<body>
    
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:Label ID="LblId" runat="server" Text="PatientId"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtId" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblName" runat="server" Text="PatientName"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblGen" runat="server" Text="Gender"></asp:Label>
                    </td>
                    <td>
                          <asp:DropDownList ID="DdlGender" runat="server">
                    <asp:ListItem value ="0">--Please Select</asp:ListItem>
                    <asp:ListItem value ="M">Male</asp:ListItem>
                     <asp:ListItem value ="F">Female</asp:ListItem>
                     <asp:ListItem value ="O">Other</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblAge" runat="server" Text="Age"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtAge" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="LblContact" runat="server" Text="Contact Number"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="TxtContact" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Label ID="LblDoctor" runat="server" Text="Doctor Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TxtDoctor" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="BtnSave" ForeColor="White"  BackColor="Blue" runat="server" Text="Save" OnClick="BtnSave_Click" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
