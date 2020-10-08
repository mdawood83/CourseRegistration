<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationForm.aspx.cs" Inherits="OnlineCourseRegistration.GUI.RegistrationForm" %>

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
    </style>
</head>
<body>
    <form id="form1" runat="server">
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
                    <td class="auto-style2" colspan="2"><strong>REGISTRATION FORM</strong></td>
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
                    <td class="auto-style10"><strong>Student Number:</strong></td>
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
                    <td class="auto-style10">&nbsp;</td>
                    <td class="auto-style12">
                        &nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style10"><strong>Confirm Password:</strong></td>
                    <td class="auto-style12">
                        <asp:TextBox ID="TextBoxConfirmPass" runat="server" Height="30px" Width="262px"></asp:TextBox>
                    </td>
                    <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="ConfPassErrorLbl" runat="server" CssClass="auto-style7"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style4">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6" colspan="2"><strong>
                        <asp:Button ID="SubmitBtn" runat="server" CssClass="auto-style9" Height="49px" Text="Submit" Width="193px" OnClick="SubmitBtn_Click" />
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style6" colspan="2"><strong>Already have an account, Please <a href="LoginForm.aspx">Sign-In</a>!</strong></td>
                    <td>&nbsp;</td>
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
