<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CourseRegistrationForm.aspx.cs" Inherits="OnlineCourseRegistration.GUI.CourseRegistrationForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 171px;
        }
        .auto-style3 {
            font-size: xx-large;
            text-align: center;
            color: #FF0000;
        }
        .auto-style4 {
            width: 275px;
        }
        .auto-style5 {
            width: 407px;
        }
        .auto-style6 {
            width: 275px;
            height: 26px;
            text-align: center;
        }
        .auto-style7 {
            width: 171px;
            height: 26px;
        }
        .auto-style8 {
            width: 407px;
            height: 26px;
        }
        .auto-style9 {
            height: 26px;
        }
        .auto-style10 {
            width: 192px;
        }
        .auto-style11 {
            width: 192px;
            height: 26px;
        }
        body {
            background-color: lightyellow;
        }
        .auto-style12 {
            color: #FFFFFF;
            font-weight: bold;
            background-color: #6600CC;
        }
        .auto-style13 {
            color: #FF0000;
            font-size: large;
        }
        .auto-style14 {
            width: 275px;
            height: 27px;
        }
        .auto-style15 {
            width: 171px;
            height: 27px;
        }
        .auto-style16 {
            width: 407px;
            height: 27px;
        }
        .auto-style17 {
            width: 192px;
            height: 27px;
        }
        .auto-style18 {
            height: 27px;
        }
        .auto-style19 {
            width: 275px;
            text-align: left;
        }
        .auto-style20 {
            color: #CC3300;
        }
        .auto-style21 {
            width: 192px;
            text-align: center;
            font-size: large;
        }
        .auto-style22 {
            color: #0000FF;
        }
        .auto-style23 {
            text-align: center;
        }
        .auto-style24 {
            font-size: xx-large;
            text-align: center;
            color: #CC0000;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style3" colspan="2">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style24" colspan="2"><strong>SMTI Online Course Registration</strong></td>
                    <td class="auto-style21"><strong><a href="LoginForm.aspx">Logout</a></strong></td>
                    <td class="auto-style20">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style19"><strong>Student:&nbsp;
                        <asp:Label ID="StudentLbl" runat="server" CssClass="auto-style22"></asp:Label>
                        </strong></td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5"><strong>Course:</strong></td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style6">
                        &nbsp;</td>
                    <td class="auto-style7"></td>
                    <td class="auto-style8">
                        <asp:DropDownList ID="DropDownListCourse" runat="server" AutoPostBack="True" Height="26px" Width="202px" OnSelectedIndexChanged="DropDownListCourse_SelectedIndexChanged" >
                            <asp:ListItem>Select Course</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                    <td class="auto-style11"><strong>
                        <asp:Button ID="ButtonRegisterCourse" runat="server" CssClass="auto-style12" Height="43px" Text="Register Course" Width="176px" OnClick="ButtonRegisterCourse_Click" />
                        </strong></td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style10"><strong>
                        <asp:Button ID="ButtonListCourses" runat="server" CssClass="auto-style12" Height="43px" Text="List Courses" Width="176px" OnClick="ButtonListCourses_Click" />
                        </strong></td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14">&nbsp;</td>
                    <td class="auto-style15"></td>
                    <td class="auto-style16"><strong>
                        <asp:Label ID="CourseLbl" runat="server" CssClass="auto-style22"></asp:Label>
                        </strong></td>
                    <td class="auto-style17"></td>
                    <td class="auto-style18"></td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"><strong>Register Date</strong></td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:TextBox ID="TextBoxRegisterDate" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">
                        <asp:Calendar ID="CalendarRegisterDate" runat="server" OnSelectionChanged="CalendarRegisterDate_SelectionChanged"></asp:Calendar>
                    </td>
                    <td class="auto-style2">&nbsp;</td>
                    <td colspan="2">
                        <asp:GridView ID="GridViewList" runat="server" BackColor="White" BorderColor="#999999" BorderStyle="None" BorderWidth="1px" CellPadding="3" GridLines="Vertical" Height="167px" Width="516px">
                            <AlternatingRowStyle BackColor="#DCDCDC" />
                            <FooterStyle BackColor="#CCCCCC" ForeColor="Black" />
                            <HeaderStyle BackColor="#000084" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                            <RowStyle BackColor="#EEEEEE" ForeColor="Black" />
                            <SelectedRowStyle BackColor="#008A8C" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#0000A9" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#000065" />
                        </asp:GridView>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td class="auto-style2">&nbsp;</td>
                    <td class="auto-style5">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td colspan="2" class="auto-style23"><strong>
                        <asp:Label ID="ErrorMsgLbl" runat="server" CssClass="auto-style13"></asp:Label>
                        </strong></td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td class="auto-style10">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
