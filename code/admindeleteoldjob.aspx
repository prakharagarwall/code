﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="admindeleteoldjob.aspx.cs" Inherits="admindeleteoldjob" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
       <style type="text/css">
        .auto-style1 {
            height:auto ;
        }
        .auto-style3 {
            height: 105px;
        }
        .auto-style8 {
            width: 1355px;
            height: 646px;
        }
        .auto-style12 {
            width: 100%;
            height: 101px;
        }
        .auto-style13 {
               width: 353px;
           }
           .auto-style14 {
               width: 225px;
               height: 105px;
           }
           .auto-style19 {
               width:205px;
               height: 30px;
           }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center" cellpadding="0" cellspacing="0" style="background-color: #FFFFCC; " class="auto-style8">
        <tr>
            <td style="border-color: #CCCCCC; border-width: thin; background-color: #FFFF99; border-bottom-style: solid;" class="auto-style3" colspan="5">
                WELCOME:&nbsp;
                <asp:Label ID="LabelUname" runat="server"></asp:Label>
            </td>
            <td style="border-width: thin; border-color: #CCCCCC; background-color: #FFFF99; border-bottom-style: solid; text-align: right;" class="auto-style14">
                &nbsp;</td>
            <td style="border-width: thin; border-color: #CCCCCC; background-color: #FFFF99; border-bottom-style: solid; text-align: right; vertical-align: top;" class="auto-style14" colspan="3">
                <table class="auto-style12">
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                        <td rowspan="3">
                <asp:Image ID="ImageProfilePic" runat="server" BorderColor="Black" BorderStyle="Solid" BorderWidth="0px" Height="103px" style="margin-bottom: 0px" Width="161px" ImageUrl="~/images/admin.png" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="height: 26px" Text="LogOut" />
                        </td>
                    </tr>
                    <tr>
                        <td class="auto-style13">&nbsp;</td>
                    </tr>
                </table>
            </td>
        </tr>
         <tr>
             <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center; font-weight: bold;" class="auto-style19">
                <asp:HyperLink ID="HyperLink10" runat="server" NavigateUrl="~/adminactivate.aspx">Activate Acount</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/adminviewuser.aspx">View All User</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl="~/adminsearchuser.aspx">Search User</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl="~/adminblockuser.aspx">Block User</asp:HyperLink>
                &nbsp;</td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink4" runat="server" NavigateUrl="~/adminupdaterecord.aspx">Manage Users</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink5" runat="server" NavigateUrl="~/adminupdatenotice.aspx">Update Notice</asp:HyperLink>
            </td><td style="border: thin solid #FFFFFF; text-align: center; font-weight: bold;" class="auto-style19">
                <asp:HyperLink ID="HyperLink9" runat="server" NavigateUrl="~/admindeletenotice.aspx">Delete Notice</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink6" runat="server" NavigateUrl="~/adminviewfeedback.aspx">View Feedback</asp:HyperLink>
            </td>
            <td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink7" runat="server" NavigateUrl="~/adminmanagejobs.aspx">Manage Voting</asp:HyperLink>
            </td><td style="border: thin solid #FFFFFF; background-color: #CCCCCC; text-align: center;" class="auto-style19">
                <asp:HyperLink ID="HyperLink8" runat="server" NavigateUrl="~/changeadminpassword.aspx">Change Password</asp:HyperLink>
            </td>
        </tr>
        <tr>
            <td colspan="9" class="auto-style1">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AutoGenerateDeleteButton="True" DataKeyNames="job_title,job_description" DataSourceID="SqlDataSource1" EnableModelValidation="True" BorderStyle="Solid" BorderWidth="2px" HorizontalAlign="Center">
                    <AlternatingRowStyle BackColor="#CCFFFF" />
                    <Columns>
                        <asp:BoundField DataField="job_title" HeaderText="job_title" SortExpression="job_title" />
                        <asp:BoundField DataField="posting_date" HeaderText="posting_date" SortExpression="posting_date" />
                        <asp:BoundField DataField="job_description" HeaderText="job_description" SortExpression="job_description" />
                        <asp:BoundField DataField="job_location" HeaderText="job_location" SortExpression="job_location" />
                        <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
                        <asp:BoundField DataField="last_date" HeaderText="last_date" SortExpression="last_date" />
                    </Columns>
                    <HeaderStyle BackColor="#66CCFF" BorderColor="Black" BorderStyle="Solid" BorderWidth="2px" HorizontalAlign="Center" />
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PlacementPortalConnectionString2 %>" DeleteCommand="delete from jobs where job_title=@job_title and job_description=@job_description" SelectCommand="SELECT [job_title], [posting_date], [job_description], [job_location], [company], [last_date] FROM [jobs]">
                    <DeleteParameters>
                        <asp:Parameter Name="job_title" />
                        <asp:Parameter Name="job_description" />
                    </DeleteParameters>
                </asp:SqlDataSource>
            </td>
        </tr>
    </table>
    </div>
    </form>
</body>
</html>
