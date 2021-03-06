﻿<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server"><link rel="stylesheet" type="text/css" href="./css/StyleSheet.css" />


    <title>Exam3B</title>
    <style type="text/css">
        .auto-style1 {
            height: 22px;
            width: 33px;
        }
        .auto-style2 {
            height: 18px;
            width: 21px;
        }
        .auto-style3 {
            margin-left: 400px;
        }

    </style>
</head>
<body>
    <div class="main">
    <form id="form1" runat="server">
    
        <div id ="body">
        <div id="header">  
        <h2> <asp:Label ID="WelcomeLbl" runat="server" Text="Welcome to" meta:resourceKey="WelcomeLbl"></asp:Label>&nbsp;MSCI:3300</h2>
        <h3><asp:Label ID="ClassLbl" runat="server" Text="Software Design and Development" meta:resourceKey="ClassLbl"></asp:Label></h3>
        <h3> <img src="../img/WorldSpinning.gif" alt="" class="auto-style2"/> &nbsp; English | Español | العربية  | 中國 &nbsp; <img src="../img/WorldSpinning.gif" alt="" class="auto-style2"/></h3>
        </div>

    <div id="column-left" class="auto-style1">
        <div id="column-left-text">
            <asp:Label ID="LenguageSelectlbl" runat="server" Text="Please select your language:" meta:resourceKey="LenguageSelectlbl"></asp:Label>
        &nbsp;&nbsp;<asp:DropDownList ID="OriginalDropdown" runat="server" AutoPostBack="true">
            <asp:ListItem Value="en-US">English(US)</asp:ListItem>
            <asp:ListItem Value="es-ES">Español(Spanish)</asp:ListItem>
            <asp:ListItem Value="ar-IQ">العربية(Arabic)</asp:ListItem>
            <asp:ListItem Value="zh-CN">中國(Chinese)</asp:ListItem>
        </asp:DropDownList>
            <asp:DropDownList ID="OtherDropdown" runat="server" AutoPostBack="true">
            <asp:ListItem Value="en-US">English(US)</asp:ListItem>
            <asp:ListItem Value="es-ES">Español(Spanish)</asp:ListItem>
            <asp:ListItem Value="ar-IQ">العربية(Arabic)</asp:ListItem>
            <asp:ListItem Value="zh-CN">中國(Chinese)</asp:ListItem>
        </asp:DropDownList>

        </div>

    </div>

    <div id="column-right">
        <div id="column-right-text">
        <asp:Label ID="Namelbl" runat="server"  Text="My name is:" meta:resourceKey="NameLbl"></asp:Label>&nbsp;<asp:TextBox ID="NameTbx" runat="server" meta:resourceKey="Nametbx" Text=""></asp:TextBox>
            <asp:RequiredFieldValidator ID="NameValidator" runat="server" ControlToValidate="Nametbx" Font-Italic="True" ForeColor="Red" meta:resourceKey="NameValidator"></asp:RequiredFieldValidator>
        <br />
            <br />
            <asp:Label ID="HelloLbl"  runat="server" Text="Hello" meta:resourceKey="HelloLbl"></asp:Label>
            &nbsp;<asp:Label ID="SexLbl" runat="server" Text="Mr./Ms."></asp:Label>
            &nbsp;<asp:Label ID="NameResultsLbl" runat="server"></asp:Label>
        <br />
      <asp:Label ID="Genderlbl" runat="server"  Text="I am:" meta:resourceKey="GenderLbl"></asp:Label>&nbsp;&nbsp;
            <asp:RadioButtonList ID="MaleFemaleRb" runat="server">
                <asp:ListItem Value="0" Text="Female" meta:resourceKey="FemaleRB"></asp:ListItem>
                <asp:ListItem Value="1" Text="Male" meta:resourceKey="MaleRB"></asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="MaleFemaleRbVal" runat="server" ControlToValidate="MaleFemaleRb" ErrorMessage="Please select a Gender" Font-Italic="True" ForeColor="Red" meta:resourceKey="SexValidator"></asp:RequiredFieldValidator>

        <br />
            <br />
            <asp:Label ID="Graduationlbl" runat="server" Text="I plan to graduate on:" meta:resourceKey="Graduationlbl"></asp:Label>
        <br />
            <asp:Label ID="GraduationResultLbl" runat="server" Text="I hope you have a great day when you graduate on " meta:resourceKey="GraduationResultLbl"></asp:Label>
            &nbsp;<asp:Label ID="GradDateLbl" meta:resourceKey="GradDateLbl" runat="server"></asp:Label>
            <br />
        <br />
        <asp:Calendar ID="Calendar" runat="server"></asp:Calendar>
            <br />
                
            <asp:Label ID="HopeLbl" runat="server" meta:resourceKey="HopeLbl"></asp:Label>&nbsp;
            <asp:Label ID="currencyLbl" runat="server" meta:resourceKey="currencyLbl"></asp:Label>
            <asp:Label ID="EarningsResultLbl" runat="server" meta:resourceKey="EarningsResultLbl"></asp:Label>
            <asp:Label ID="EarningsEndingLbl" runat="server" meta:resourceKey="EarningsEndingLbl"></asp:Label>
                    <br />
        <br />
        <asp:Label ID="Earningslbl" runat="server" meta:resourceKey="Earningslbl" Text="When I graduate, I hope to earn: "></asp:Label>&nbsp;&nbsp;
            <asp:TextBox ID="Earningstbx" runat="server"  meta:resourceKey="Earningstbx" Text=""></asp:TextBox>
            <asp:RequiredFieldValidator ID="EarningsValidator" runat="server" ControlToValidate="Earningstbx" Font-Italic="True" ForeColor="Red" meta:resourceKey="EarningsValidator"></asp:RequiredFieldValidator>
        <br />
            <br />
            <asp:Label ID="VisitLbl" runat="server" Text="Please vist my " meta:resourceKey="VisitLbl"></asp:Label>
            <asp:HyperLink ID="GitHubHperlink" runat="server" NavigateUrl="https://github.com/ctavarez967">Git Hub</asp:HyperLink>
            <br />
        <br />
        <asp:Button ID="Submitbtn" runat="server" Text="Submit"  meta:resourceKey="Submitbtn"/>
            
            </div>
    </div>
    </div>
    </form>
    </div>
            
            <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4> &nbsp;</h4>
    <h4 class="auto-style3"> Software Desing And Development | MSCI:3300 | University of Iowa</h4>
            </body>
</html>
