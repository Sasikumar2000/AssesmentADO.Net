<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrderPage.aspx.cs" Inherits="OnlineFootWare.OrderPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>OrderPage</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        table{
            margin:auto;
            margin-top:50px;
            
        }
        td{
             padding: 15px;
        }
        .divcen{
             margin-top:auto;
             margin-left:250px;
             padding-left:250px;
             align-content:center;
        }
        .pay{
            margin-left:120px;
            margin-top:10px;
        }
        h1{
            height:50px;
            padding-left:480px;
        margin-top:0px;

        }
        body{
            background-color:antiquewhite;
        }
        .log{
            float:right;
             margin-right:10px;
        }
        .amt{
            color:orangered;
            font-weight:bolder;
            font-size:large;
            padding-left:30px;
        }
    </style>
</head>
<body>
    <form id="OrderPageform" runat="server">  
        <div>
            <h1 class="bg-primary">Order Products</h1>
            <asp:Button ID="btnLogout" CssClass="btn btn-default log" runat="server" Text="Home" OnClick="btnLogout_Click" />
            <table>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Product Code"></asp:Label></td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblProductCode" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Product Name"></asp:Label></td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblProductName" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label></td>
                    <td>:</td>
                    <td>
                        <asp:Label ID="lblPrice" runat="server" Text=""></asp:Label></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Quantity"></asp:Label></td>
                    <td>:</td>
                    <td>
                        <asp:TextBox ID="txtQuantity" runat="server"></asp:TextBox></td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                    <td>
                        <asp:Button ID="btnBill" runat="server" Text="Show Bill" class="btn btn-success" OnClick="btnBill_Click" /></td>
                </tr>
            </table>
        </div>
        <div class="divcen">
            <asp:Label ID="Label5" runat="server" Text="Total Amount : "></asp:Label>
            <asp:Label ID="lblTotalAmount" runat="server" class="amt" Text=""></asp:Label><br />
            <asp:Button ID="btnPayment" runat="server" Text="Payment" class="btn btn-primary pay" OnClick="btnPayment_Click" />
        </div>
    </form>
</body>
</html>
