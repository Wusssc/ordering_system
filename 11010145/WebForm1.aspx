<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="_11010145.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 50%;
            height: 28px;
        }
        .auto-style2 {
            width: 50%;
            height: 38px;
        }
        .auto-style3 {
            height: 54px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div style="color: #0000FD; margin-left:auto; margin-right:auto; width: 50%; text-align: center;"><b><h1>A11010145點餐系統</h1></b></div>
            <table style="width: 50%; position: inherit; margin-left:auto; margin-right:auto;">
                <tr>
                    <td class="auto-style1" style="height: 25px;">班級：</td>
                    <td class="auto-style1" style="height: 25px;">
                        <asp:DropDownList ID="DropDownList1" runat="server" Height="22px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="150px" Font-Underline="False">
                            <asp:ListItem>請選擇班級</asp:ListItem>
                            <asp:ListItem>A 班</asp:ListItem>
                            <asp:ListItem>B 班</asp:ListItem>
                            <asp:ListItem>C 班</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="height: 25px;" class="auto-style2">姓名：</td>
                    <td style="height: 25px;" class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server" Width="130px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%">
                        <asp:Panel ID="Panel1" runat="server" BackColor="#FFFF66" GroupingText="145主餐">
                            <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                                <asp:ListItem Selected="True">雞腿堡</asp:ListItem>
                                <asp:ListItem>豬肉堡</asp:ListItem>
                                <asp:ListItem>牛肉堡</asp:ListItem>
                            </asp:RadioButtonList>
                        </asp:Panel>
                    </td>
                    <td style="width: 50%">
                        <asp:Panel ID="Panel2" runat="server" BackColor="#CCFF99" GroupingText="145附餐">
                            <asp:CheckBoxList ID="CheckBoxList1" runat="server">
                                <asp:ListItem>麵包</asp:ListItem>
                                <asp:ListItem>生菜沙拉</asp:ListItem>
                                <asp:ListItem>飲料</asp:ListItem>
                            </asp:CheckBoxList>
                        </asp:Panel>
                    </td>
                </tr>
                <tr>
                    <td style="width: 50%">
                        <asp:Button ID="Button1" runat="server" Text="訂購" Width="120px" OnClick="Button1_Click" />
                    </td>
                    <td style="width: 50%">
                        <asp:Button ID="Button2" runat="server" Text="重填" Width="120px" OnClick="Button2_Click"  />
                    </td>
                </tr>
                <tr>
                    <td colspan="2" class="auto-style3">
                        <h1><asp:Label ID="Label1" runat="server" Font-Bold="False" ></asp:Label>
                            </h1>
                        <h1>
                            <asp:Label ID="Label2" runat="server" Text="" Font-Bold="False"></asp:Label></h1>
                    </td>
                </tr>
            </table>
            </div>
    </form>
</body>
</html>
