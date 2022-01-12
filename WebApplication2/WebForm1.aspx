<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 417px;
            text-align: right;
        }
        .auto-style3 {
            margin-left: 4px;
        }
        .auto-style4 {
            text-align: left;
        }
        .auto-style6 {
            color: #0066FF;
            font-size: x-large;
            text-align: center;
        }
        .auto-style7 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td colspan="2" style="font-weight: 700; " class="auto-style6"><em>Customer Registation Form</em></td>
                </tr>
                <tr>
                    <td class="auto-style2">Name</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox1" runat="server" Width="169px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Address</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox2" runat="server" Width="169px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Phone Number</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox3" runat="server" Width="169px" MaxLength="10"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style2">Email</td>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBox4" runat="server" Width="167px"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="Enter Valid Email Address" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        <br />
                    </td>
                </tr>
            </table>
        </div>
        <div class="auto-style7">
            <br />
        <asp:Button ID="Button1" runat="server" Height="26px" OnClick="Button1_Click" Text="INSERT" BorderColor="Blue" />
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="UPDATE" BorderColor="Blue" Height="26px" />
            <asp:Button ID="Button5" runat="server" BorderColor="Blue" Height="26px" OnClick="Button5_Click" Text="DELETE" />
            <br />
        </div>
        <table class="auto-style1">
            <tr>
                <td class="auto-style7">
                    <br />
                    <asp:Label ID="Label1" runat="server" ForeColor="Green" Text="View Data"></asp:Label>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [data]"></asp:SqlDataSource>
                    <div class="auto-style7">
                        <strong>
                        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="SEARCH" BorderColor="Blue" Height="26px" />
                        </strong>
        <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style3" Width="202px"></asp:TextBox>
                        <br />
                    </div>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" CellPadding="4" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Width="421px">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                            <asp:BoundField DataField="phone" HeaderText="phone" SortExpression="phone" />
                            <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                            <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                </td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style7">&nbsp;</td>
                <td class="auto-style7">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
