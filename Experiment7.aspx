<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Experiment7.aspx.cs" Inherits="Experiment6" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    <style type="text/css">
        .auto-style1 {
            margin-left: 30px;
        }    
        .auto-style3 {
            margin-left: 33px;
            margin-bottom: 0px;
        }
        .auto-style4 {
            margin-left: 30px;
            margin-bottom: 0px;
            margin-top: 9px;
        }
        .auto-style5 {
            margin-left: 30px;
            margin-bottom: 0px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <br />
            <asp:Label ID="Label1" runat="server" Text="First Name:" Width="186px"></asp:Label>
            <asp:TextBox ID="TextBox1" runat="server" CssClass="auto-style1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="---Please enter First Name"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label2" runat="server" Text="Last Name:" Width="186px"></asp:Label>
            <asp:TextBox ID="TextBox2" runat="server" CssClass="auto-style1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="---Please enter Last Name"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label11" runat="server" Text="Password:" Width="186px"></asp:Label>
            <asp:TextBox ID="TextBox8" runat="server" CssClass="auto-style1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="TextBox8" ErrorMessage="---Please enter Password"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label12" runat="server" Text="Confirm Password:" Width="186px"></asp:Label>
            <asp:TextBox ID="TextBox9" runat="server" CssClass="auto-style1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ControlToValidate="TextBox9" ErrorMessage="---Please enter Confirm Password"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox9" ControlToValidate="TextBox8" ErrorMessage="---Password Doesn't match..."></asp:CompareValidator>
            <br />
            <asp:Label ID="Label3" runat="server" Text="Semester:" Width="186px"></asp:Label>
            <asp:TextBox ID="TextBox3" runat="server" CssClass="auto-style1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="---Please enter Semester"></asp:RequiredFieldValidator>
            <br />
            <asp:Label ID="Label4" runat="server" Text="Mobile No:" Width="186px"></asp:Label>
            <asp:TextBox ID="TextBox4" runat="server" CssClass="auto-style1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="TextBox4" ErrorMessage="---Please enter Mobile no"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" ErrorMessage="---Please enter correct Mobile No" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Age:" Width="186px"></asp:Label>
            <asp:TextBox ID="TextBox5" runat="server" CssClass="auto-style1"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="---Please enter Age"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="TextBox5" ErrorMessage="RangeValidator" Type="Double">---Invalid Age</asp:RangeValidator>
            <br />
            <asp:Label ID="Label6" runat="server" Text="Height:" Width="186px"></asp:Label>
            <asp:TextBox ID="TextBox6" runat="server" CssClass="auto-style5"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="TextBox6" ErrorMessage="---Please enter Height"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="TextBox6" ErrorMessage="RangeValidator" Type="Double">---Invalid Height</asp:RangeValidator>
            <br />

            <asp:Label ID="Label7" runat="server" Text="Marital Status:" Width="186px"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="auto-style4" Height="30px" Width="253px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem>Single</asp:ListItem>
                <asp:ListItem>Married</asp:ListItem>
                <asp:ListItem>Divorced</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="RadioButtonList1" ErrorMessage="---Please select Marital status"></asp:RequiredFieldValidator>
            <br />

            <asp:Label ID="Label8" runat="server" Text="Hobbies:" Width="186px"></asp:Label>
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" CssClass="auto-style3" Height="30px" Width="491px" RepeatDirection="Horizontal" RepeatLayout="Flow">
                <asp:ListItem>Singing</asp:ListItem>
                <asp:ListItem>Dancing</asp:ListItem>
                <asp:ListItem>Painting</asp:ListItem>
                <asp:ListItem>Cooking</asp:ListItem>
                <asp:ListItem>Sports</asp:ListItem>
                <asp:ListItem>Others</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:Label ID="Label9" runat="server" Text="Date of Birth:" Width="186px"></asp:Label>
            <asp:TextBox ID="TextBox7" runat="server" CssClass="auto-style1" OnTextChanged="TextBox7_TextChanged" ToolTip="Select date from Calender"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="TextBox7" ErrorMessage="---Please select DOB"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Calendar ID="Calendar1" runat="server" CellPadding="1" CellSpacing="5" EnableTheming="True" OnSelectionChanged="Calendar1_SelectionChanged" BackColor="#CCFFFF" BorderColor="Black" BorderStyle="Solid" OnDayRender="Calendar1_DayRender">
                <SelectedDayStyle BackColor="#FFFF66" BorderStyle="Solid" ForeColor="#000066" BorderWidth="1px" />
                <TitleStyle BackColor="#FFCCFF" BorderStyle="Solid" BorderWidth="2px" Font-Overline="False" ForeColor="Black" />
                <TodayDayStyle ForeColor="Red" Font-Underline="True" />
            </asp:Calendar>
            <asp:Label ID="Label10" runat="server" Font-Bold="True" OnLoad="Page_Load" OnUnload="Calendar1_SelectionChanged"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
        </div>
    </form>
</body>
</html>