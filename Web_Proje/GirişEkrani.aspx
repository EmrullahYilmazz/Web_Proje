<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GirişEkrani.aspx.cs" Inherits="Web_Proje.GirişEkrani" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
   .login-page {
        width: 360px;
        padding: 8% 0 0;
    margin: auto;
    }
    form {
  position: relative;
  z-index: 1;
  background: #FFFFFF;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
  background: #f2f2f2;
  width: 100%;
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box;
  font-size: 14px;
}
.form button {
  font-family: "Roboto", sans-serif;
  text-transform: uppercase;
  outline: 0;
  background: #4CAF50;
  width: 100%;
  border: 0;
  padding: 15px;
  color: #FFFFFF;
  font-size: 14px;
  -webkit-transition: all 0.3 ease;
  transition: all 0.3 ease;
  cursor: pointer;
}
.form button:hover,.form button:active,.form button:focus {
  background: #43A047;
}
.form .message {
  margin: 15px 0 0;
  color: #b3b3b3;
  font-size: 12px;
}
.form .message a {
  color: #4CAF50;
  text-decoration: none;
}
.form .register-form {
  display: none;
}
.container {
  position: relative;
  z-index: 1;
  max-width: 300px;
  margin: 0 auto;
}
.container:before, .container:after {
  content: "";
  display: block;
  clear: both;
}
.container .info {
  margin: 50px auto;
  text-align: center;
}
.container .info h1 {
  margin: 0 0 15px;
  padding: 0;
  font-size: 36px;
  font-weight: 300;
  color: #1a1a1a;
}
.container .info span {
  color: #4d4d4d;
  font-size: 12px;
}
.container .info span a {
  color: #000000;
  text-decoration: none;
}
.container .info span .fa {
  color: #EF3B3A;
}
body {
  background: #76b852; /* fallback for old browsers */
  background: -webkit-linear-gradient(right, #76b852, #8DC26F);
  background: -moz-linear-gradient(right, #76b852, #8DC26F);
  background: -o-linear-gradient(right, #76b852, #8DC26F);
  background: linear-gradient(to left, #76b852, #8DC26F);
  font-family: "Roboto", sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;      
}
        .hizala{
            margin:10px;
            padding:20px;
            display:flex;
            align-items:center;
            justify-content:center;
            flex-direction:column;
            border:10px solid #0026ff;
        }
        .auto-style2 {
            margin-left: 52px;
        }
        .auto-style3 {
            margin-left: 30px;
        }
        .auto-style4 {
            margin-left: 2px;
        }
        .auto-style5 {
            margin-left: 56px;
        }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
    <div class="hizala">
	<div >
  <div >
      <br />
      <br />
        <h3>Kayıt Ol</h3><br />
      <br />
      <asp:Label ID="Label1" runat="server" Text="Kullanıcı Adı "></asp:Label><asp:TextBox ID="txtkKullaniciAdi" runat="server" CssClass="auto-style4"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="Label2" runat="server" Text="Şifre "></asp:Label><asp:TextBox ID="txtkSifre" runat="server" CssClass="auto-style2"></asp:TextBox>
      <br />
      <br />
      <asp:Label ID="Label3" runat="server" Text="E-Posta "></asp:Label><asp:TextBox ID="txtkEposta" runat="server" CssClass="auto-style3"></asp:TextBox>
      <br /> <br />
        <asp:Button ID="btnKayitOl" runat="server" Text="Kayıt Ol" OnClick="btnKayitOl_Click" />
        </div>
    
        <br />
        <br />
        
      <p class="message"><h3>Giriş Yap</h3></p>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Kullanıcı Adı "></asp:Label><asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Şifre"></asp:Label><asp:TextBox ID="txtSifre" runat="server" CssClass="auto-style5"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnGiris" runat="server" Text="Giriş" OnClick="btnGiris_Click" />
        </div>
        </div>
        <div>
            <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px" CellPadding="4">
                <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
                <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
                <RowStyle BackColor="White" ForeColor="#003399" />
                <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                <SortedAscendingCellStyle BackColor="#EDF6F6" />
                <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
                <SortedDescendingCellStyle BackColor="#D6DFDF" />
                <SortedDescendingHeaderStyle BackColor="#002876" />
            </asp:GridView><br />
            <asp:Button ID="Button1" runat="server" Text="Getir" OnClick="Button1_Click" />
        </div>

        <div>
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:ListBox ID="ListBox1" runat="server"></asp:ListBox>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </ContentTemplate>
                <Triggers>
                    <asp:AsyncPostBackTrigger ControlID="Button2" EventName="Click" />

                </Triggers>
            </asp:UpdatePanel>
            
            <asp:Button ID="Button2" runat="server" Text="Button" OnClick="Button2_Click" />
        </div>
      
    </form>
  
	
        
 
    </form>
</body>
</html>
