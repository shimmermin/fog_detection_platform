<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registe.aspx.cs" Inherits="echart.Registe" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .STYLE2
        {}
        .STYLE1
        {}
        .style1
        {
            width: 111px;
        }
    </style>
    <style type="text/css">
        .head
     {     background:url(background.jpg);
         }
 </style>
</head>
<body>
    
    <form id="form1" runat="server">
    
    <div id="main" class="head" style="margin: 0px auto; height: 1080px;width:1920px; ">
   <div id="Div1"  style="margin: 0px auto; height: 1080px;width:660px;float: left; "></div>
   
 <div id="Div2"  style="margin: 0px auto; height: 1080px;width:600px;float: left; ">
    <div id="Div3"  style="margin: 0px auto; height: 400px;width:660px; "></div>
      <asp:Login ID="Login1" runat="server" BackColor="#EFF3FB" 
         BorderColor="#B5C7DE" BorderStyle="Solid"
                BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" Height="274px" 
            Width="600px" BorderPadding="4" ForeColor="#333333"  >
                <LoginButtonStyle BackColor="White" BorderColor="#507CD1" BorderStyle="Solid" 
                    BorderWidth="1px" Font-Names="Verdana" Font-Size="0.8em" ForeColor="#284E98" />
                <TextBoxStyle Font-Size="0.8em" />
                <TitleTextStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" 
                    Font-Size="0.9em" />
                <InstructionTextStyle Font-Italic="True" ForeColor="Black" />
                <LayoutTemplate>
                    <table border="0" cellpadding="1" cellspacing="0" style="border-collapse: collapse">
                        <tr>
                            <td>
                                <table border="0" cellpadding="0" style="width: 596px">
                                    <tr>
                                        <td align="center" colspan="2" style="font-weight: bold; color: white; background-color: #6b696b" >
                                            用户登录</td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style1">
                                            <asp:Label ID="UserNameLabel" runat="server" AssociatedControlID="UserName" Height="30px" Width ="120px" Font-Size="Large">用户名：</asp:Label></td>
                                        <td>
                                          
                                            <asp:TextBox ID="UserName" runat="server" CssClass="STYLE1" Height="30px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="UserNameRequired" runat="server" ControlToValidate="UserName"
                                                ErrorMessage="必须填写“用户名”。" ToolTip="必须填写“用户名”。" ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style1">
                                            <asp:Label ID="PasswordLabel" runat="server" AssociatedControlID="Password"  Height="30px" Width ="120px" Font-Size="Large">密码：</asp:Label></td>
                                        <td>
                                            
                                            <asp:TextBox ID="Password" runat="server" TextMode="Password" CssClass="STYLE1" 
                                                Height="30px"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="PasswordRequired" runat="server" ControlToValidate="Password"
                                                ErrorMessage="必须填写“密码”。" ToolTip="必须填写“密码”。" ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="right" class="style1">
                                            <asp:Label ID="Label1" runat="server" AssociatedControlID="Password" Height="30px" Width ="120px" Font-Size="Large">验证码：</asp:Label></td>
                                        <td>
                                          
                                            <asp:TextBox ID="GetCode" runat="server"  CssClass="STYLE2" Height="30px" 
                                                Width="148px" ontextchanged="GetCode_TextChanged"></asp:TextBox>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="Password"
                                                ErrorMessage="必须填写“验证码”。" ToolTip="必须填写“验证码”。" ValidationGroup="Login1">*</asp:RequiredFieldValidator>
                                            <asp:Image ID="Image1" runat="server" ImageUrl="validate.jpg" ImageAlign="Top"
                                                                            alt="看不清？点击更换" onclick="this.src=this.src+'?'" 
                                                Height="30px" Width="120px" />
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2" style="color: red">
                                           
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="center" colspan="2">
                                            <asp:Button ID="LoginButton" runat="server"  Text="登录" 
                                                onclick="LoginButton_Click" /></td>
                                    </tr>
                                </table>
                            </td>
                        </tr>
                    </table>
                </LayoutTemplate>
            </asp:Login>
            </div>
    </div>
    </form>
</body>
</html>

