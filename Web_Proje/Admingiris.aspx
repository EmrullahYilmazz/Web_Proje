<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminGiris.aspx.cs" Inherits="Web_Proje.Admingiris" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
    .textbox {  
    height: 50px;  
    padding: 0 10px;  
    border: none;  
    background: Orange;  
    background: Orange;  
    box-shadow: inset 0 0 10px rgba(255, 255, 255, 0.5);  
    font-family: 'Montserrat', sans-serif;  
    text-indent: 10px;  
    color: blue;  
    text-shadow: 0 1px 2px rgba(0, 0, 0, 0.3);  
    font-size: 20px;  
    width: 470px;  
}  
 .textbox:focus {  
    box-shadow: 0 1px 0 rgba(255, 255, 255, 0.2), inset 0 1px 1px rgba(0, 0, 0, 0.1), 0 0 0 3px rgba(255, 255, 255, 0.15);  
    outline: none;  
    background: Orange;  
    background: Orange;  
    outline: solid 1px yellow;  
} 
    .btn1 { 
    display: inline-block;
   cursor: pointer;
   text-align: center;
   outline: 1px;
   color: #fff;
   background-color: #a16fc2;
   border: none;
   border-radius: 10px;
   box-shadow: 0 7px #CCCCCC;
     }
    .btn1:hover {
        background-color: #a16fc2
    }
    .btn1:active{
         background-color: #a16fc2;
    box-shadow: 0 4px #666;
    transform: translateY(5px);
    }
   .login-page {
        width: 360px;
        padding: 8% 0 0;
    margin: auto;
    }
    form {
  position: relative;
  z-index: 1;
  max-width: 360px;
  margin: 0 auto 100px;
  padding: 45px;
  text-align: center;
  box-shadow: 0 0 20px 0 rgba(0, 0, 0, 0.2), 0 5px 5px 0 rgba(0, 0, 0, 0.24);
}
.form input {
  font-family: "Roboto", sans-serif;
  outline: 0;
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
  color: #0026ff;
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
  background: #5265b8; 
  background: -webkit-linear-gradient(right, #5265b8, #c26f72);
  background: -moz-linear-gradient(right, #5265b8, #c26f72);
  background: -o-linear-gradient(right, #5265b8, #c26f72);
  background: linear-gradient(to left, #5265b8, #c26f72);
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

            
        }
        .auto-style2 {
            margin-left: 52px;
            border: none;  

        }
        .auto-style3 {
            margin-left: 30px;
            border: none;  

        }
        .auto-style4 {
            margin-left: 2px;
            border: none;  

        }
        .auto-style5 {
            margin-left: 56px;
            border: none;  

        }
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
    <div class="hizala">
	<div >
  
       
        
      <p class="message">
          <h3>Admin Girişi</h3>
        <br />
        <asp:Label ID="Label4" runat="server" Text="Kullanıcı Adı "></asp:Label><asp:TextBox ID="txtKullaniciAdi" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:Label ID="Label5" runat="server" Text="Şifre"></asp:Label><asp:TextBox ID="txtSifre" TextMode="Password" runat="server" CssClass="auto-style5"></asp:TextBox>
        <br />
        <br />
        <asp:Button ID="btnGiris" runat="server" Text="Giriş" class="btn1" OnClick="btnGiris_Click" Width="90px" />
        </div>
        </div>
        <div>
            <asp:Label ID="lblUyari" runat="server" Text=""></asp:Label>
            <br /><br />
            <a href="GirisEkrani.aspx">Kullanıcı Girisi</a>
        </div>
        <div>
            <br />
        </div>
        

    </form>
  
	
        
 
    </form>
</body>
</html>