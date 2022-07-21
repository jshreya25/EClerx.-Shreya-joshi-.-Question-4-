<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="SearchPatient.aspx.cs" Inherits="ASP_Test3.SearchPatient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr>
                    <td>
                        <asp:TextBox ID="TxtSearch" runat="server"></asp:TextBox>
                    </td>
                   <td>
                        <asp:Button ID="Btn" ForeColor="White" BackColor="Blue" runat="server" Text="Search" OnClick="Btn_Click" />
                   </td>
                  <tr>
                      <td>
                          <asp:GridView ID="GridData" runat="server">
                              <Columns>
                                  <asp:BoundField DataField="PatientId" HeaderText="PatientId" ReadOnly="True" SortExpression="PatientId" />
                                  <asp:BoundField DataField="PatientName" HeaderText="PatientName" SortExpression="PatientName" />
                                  <asp:BoundField DataField="Gender" HeaderText="Gender" SortExpression="Gender" />
                                  <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                                  <asp:BoundField DataField="ContactNumber" HeaderText="ContactNumber" SortExpression="ContactNumber" />
                                  <asp:BoundField DataField="DoctorName" HeaderText="DoctorName" SortExpression="DoctorName" />
                              </Columns>
                          </asp:GridView>
                      </td>
                  </tr>
                </tr>
            </table>

        </div>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:HRConnectionString %>" SelectCommand="SELECT PatientId AS Expr1, PatientName AS Expr2, Gender AS Expr3, Age AS Expr4, ContactNumber AS Expr5, DoctorName AS Expr6, PatientInformation.* FROM PatientInformation WHERE (DoctorName = @DoctorName)">
            <SelectParameters>
                <asp:Parameter Name="DoctorName" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
