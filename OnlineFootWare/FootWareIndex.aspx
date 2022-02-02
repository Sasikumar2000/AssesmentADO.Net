<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="FootWareIndex.aspx.cs" Inherits="OnlineFootWare.FootWareIndex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online FootWare</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        .clr{
            color:black;
        }

        .Header{
            margin-left:300px;
            font-family:cursive;
            font-weight:900;
            font-size:x-large;
             padding-top:17px;
        }
        .nav1{
            margin-left:5px;
            margin-right:5px;
            margin-top:5px;
            height:50px;
        }
        .status{
            float:right;
            margin-top:7px;
           
        }

        .drop{
            width:170px;
            height:30px;
        }

        .tdiv{
            margin-left:250px;
            margin-right:250px;
            margin-top:100px;
        }

        .tdiv1{
            margin-left:450px;
            margin-right:250px;
          
        }
        .tbox{
            height:35px;
           
        }
        body{
            background-color:lightblue;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="bg-primary nav1">
                <asp:DropDownList ID="DDCategory" runat="server" CssClass=" bg-success text-warning drop ">
                    <asp:ListItem class="clr">Kid</asp:ListItem> 
                    <asp:ListItem class="clr">Men</asp:ListItem>
                    <asp:ListItem class="clr">Women</asp:ListItem>
                </asp:DropDownList>
                <asp:Button ID="btnView" runat="server" CssClass="btn btn-primary" Text="View" OnClick="btnView_Click" />
                <asp:Label ID="lblHeader" runat="server" class="Header" Text="Online FootWare"></asp:Label>
                <asp:Button ID="btnStatus" runat="server" CssClass="btn btn-primary status" Text="Order Status" OnClick="btnStatus_Click" />
            </div>
        </div>
        <div class="tdiv">
            <asp:GridView ID="GVProductData" runat="server" class="table table-hover" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
                <RowStyle BackColor="White" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="#808080" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
        <div id="div1"  class="tdiv1" runat="server">
            <asp:TextBox ID="txtProductCode" class="tbox" runat="server" PlaceHolder="Enter a ProductId" ></asp:TextBox>
            <asp:Button ID="btnOrder" runat="server" Text="Order" CssClass="btn btn-primary" OnClick="btnOrder_Click" />
        </div>
        
    </form>
</body>
</html>
