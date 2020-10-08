<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="OnlineCourseRegistration.GUI.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            text-align: center;
            font-size: xx-large;
            color: #0033CC;
        }
        .auto-style3 {
            width: 274px;
        }
        .auto-style4 {
            width: 287px;
        }
        .auto-style5 {
            width: 274px;
            font-size: large;
        }
        .auto-style6 {
            font-size: large;
            text-align: right;
        }
        .auto-style7 {
            font-size: x-large;
            color: #FF0000;
        }
        .auto-style8 {
            width: 332px;
        }
        .auto-style9 {
            color: #FFFFFF;
            font-weight: bold;
            font-size: large;
            background-color: #003399;
        }
        .auto-style10 {
            width: 274px;
            font-size: large;
            text-align: right;
        }
        .auto-style12 {
            width: 287px;
            text-align: right;
        }
        body {
            background-color: lightblue;
        }
        .auto-style13 {
            font-size: large;
            text-align: center;
        }
        .auto-style15 {
            width: 332px;
            height: 53px;
        }
        .auto-style16 {
            font-size: large;
            text-align: right;
            height: 53px;
        }
        .auto-style17 {
            height: 53px;
        }
        .auto-style18 {
            width: 332px;
            height: 29px;
        }
        .auto-style19 {
            font-size: large;
            text-align: right;
            height: 29px;
        }
        .auto-style20 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form2" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2" colspan="2"><strong>LOGIN FORM</strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style2" colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10"><strong>Username:</strong></td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBoxUsername" runat="server" Height="30px" Width="262px"></asp:TextBox>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="UserErrorLbl" runat="server" CssClass="auto-style7"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style3">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10"><strong>Password:</strong></td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBoxPassword" runat="server" Height="30px" Width="262px"></asp:TextBox>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="PassErrorLbl" runat="server" CssClass="auto-style7"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15"></td>
                    <td class="auto-style16" colspan="2"><strong>
                        <asp:Button ID="LoginBtn" runat="server" CssClass="auto-style9" Height="49px" Text="Login" Width="193px" OnClick="LoginBtn_Click" />
                        </strong></td>
                    <td class="auto-style17"></td>
                </tr>
                <tr>
                    <td class="auto-style18"></td>
                    <td class="auto-style19" colspan="2"><strong>Do not have account, Please <a href="RegistrationForm.aspx">Sign-Up</a>!</strong></td>
                    <td class="auto-style20"></td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style13" colspan="2"><strong>
                        <asp:Label ID="LoginErrorLbl" runat="server" CssClass="auto-style7"></asp:Label>
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6" colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
