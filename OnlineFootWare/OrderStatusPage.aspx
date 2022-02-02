<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderStatusPage.aspx.cs" Inherits="OnlineFootWare.OrderStatusPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Order Status</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
         .cendiv{
             margin-left:100px;
             margin-right:100px;
             margin-top:40px;
         }
         h1{
             margin:auto;
         }
         body{
             background-color:cadetblue;
         }
         .right{
             float:right;
             margin-right:20px;
         }
    </style>
    

</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1>Order Status</h1>
            <asp:Button ID="btnHome" class="right btn btn-default" runat="server" Text="Home" OnClick="btnHome_Click" />
        </div>
        <div class="cendiv">
            <asp:GridView ID="GVStatus" runat="server" CssClass="table table-hover bg-info"></asp:GridView>
        </div> 
    </form>
</body>
</html>
