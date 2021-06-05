<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminPanel.aspx.cs" Inherits="Web_Proje.AdminPanel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>SoruEkle</title>
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Blog Template">
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media">    
    <link rel="shortcut icon" href="favicon.ico"> 
    
    <!-- FontAwesome JS-->
    <script defer src="https://use.fontawesome.com/releases/v5.7.1/js/all.js" integrity="sha384-eVEQC9zshBn0rFj4+TU78eNA19HMNigMviK/PU/FFjLXqa/GKPgX58rvt5Z8PLs7" crossorigin="anonymous"></script>
    
    <!-- Theme CSS -->  
    <link rel="stylesheet" href="Template/assets/css/theme-1.css">
    <style type="text/css">
        .auto-style2 {
            height: 612px;
            margin-top: 153px;
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
     .menu{
            color:white;
            background-color:lightgreen;
        }
     .renk{
            color:dodgerblue;
            background-color:white;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <header class="header text-center">	    
	    <h1 class="blog-name pt-lg-4 mb-0"><a href="Template/index.html">Emrullah&nbsp; Yılmaz</a></h1>
        
	    <nav class="navbar navbar-expand-lg navbar-dark" >
           
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navigation" aria-controls="navigation" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
			</button>
		
					
					<div class="bio mb-3">Haftalık seçilen tema üzerine içerik üret ve diğer kullanıcılarının içeriklerini oyla
                    <br /> <br />
                        <div class="renk" >
                        <br /><a >Bu Haftanın Teması : FELSEFE</a> <br /><br /><asp:Button ID="Button3" runat="server" class="btn1" Text="Çıkış Yap" OnClick="Button3_Click" /><br />
                       </div>
					
                        </div><!--//bio-->
			        
				   
		</nav>
    </header>
    
    <div class="main-wrapper">
		    <div class="container text-center" style="height: 124px">
			    <h2 class="heading">Fikir ve Oylama Sistemi</h2>
                <br /> 
                
                <br />
                <br />
                <h3>Admin Panel</h3>
                <br />
                <asp:Button ID="Button2" runat="server" class="btn1" Text="Kullanıcı Verileri(Web Api)" OnClick="Button2_Click" />
                <br /><br />
			    <div class="intro">
                    
                    <br />
                   </div>
			    </div>
                  
    
    
    
    <!-- *****CONFIGURE STYLE (REMOVE ON YOUR PRODUCTION SITE)****** -->  
    <div id="config-panel" class="config-panel d-none d-lg-block">
        <div class="panel-inner">
            <a id="config-trigger" class="config-trigger config-panel-hide text-center" href="#"><i class="fas fa-cog fa-spin mx-auto" data-fa-transform="down-6" ></i></a>
            <h5 class="panel-title">Choose Colour</h5>
            <ul id="color-options" class="list-inline mb-0">
                <li class="theme-1 active list-inline-item"><a data-style="assets/css/theme-1.css" href="#"></a></li>
                <li class="theme-2  list-inline-item"><a data-style="assets/css/theme-2.css" href="#"></a></li>
                <li class="theme-3  list-inline-item"><a data-style="assets/css/theme-3.css" href="#"></a></li>
                <li class="theme-4  list-inline-item"><a data-style="assets/css/theme-4.css" href="#"></a></li>
                <li class="theme-5  list-inline-item"><a data-style="assets/css/theme-5.css" href="#"></a></li>
                <li class="theme-6  list-inline-item"><a data-style="assets/css/theme-6.css" href="#"></a></li>
                <li class="theme-7  list-inline-item"><a data-style="assets/css/theme-7.css" href="#"></a></li>
                <li class="theme-8  list-inline-item"><a data-style="assets/css/theme-8.css" href="#"></a></li>
            </ul>
            <a id="config-close" class="close" href="#"><i class="fa fa-times-circle"></i></a>
        </div>
    </div>

       
        <div align="center" class="auto-style2"> 
        <tr>
            
            <td> <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Scoreid" DataSourceID="SqlDataSource2" Width="454px">
                <Columns>
                    <asp:BoundField DataField="Scoreid" HeaderText="Scoreid" InsertVisible="False" ReadOnly="True" SortExpression="Scoreid" />
                    <asp:BoundField DataField="icerikid" HeaderText="icerikid" SortExpression="icerikid" />
                    <asp:BoundField DataField="Score" HeaderText="Score" SortExpression="Score" />
                    <asp:BoundField DataField="CreateDate" HeaderText="CreateDate" SortExpression="CreateDate" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:WebProjeConnectionString %>" SelectCommand="SELECT * FROM [ArticleScore]"></asp:SqlDataSource>
            </td>
        </tr>
            <br />
            <br />
        <tr>
                <td>
                    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="icerikid" DataSourceID="SqlDataSource5" Width="455px">
                        <Columns>
                            <asp:BoundField DataField="icerikid" HeaderText="icerikid" InsertVisible="False" ReadOnly="True" SortExpression="icerikid" />
                            <asp:BoundField DataField="icerikYazisi" HeaderText="icerikYazisi" SortExpression="icerikYazisi" />
                        </Columns>
            </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:WebProjeConnectionString %>" SelectCommand="SELECT * FROM [icerik]"></asp:SqlDataSource>
                </td>
        </tr>
          
        <br />
            <br />

         <tr>
             <td>
                 <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />Silmek istediğiniz iceriğin idsini giriniz<br />
                 <asp:Button ID="Button1" runat="server" Text="Sil" class="btn1" Width="66px" OnClick="Button1_Click" />
             </td>
         </tr>
            </div>
    
         &nbsp; 
            
               
           
    
       
    <script src="Template/assets/plugins/jquery-3.3.1.min.js"></script>
    <script src="Template/assets/plugins/popper.min.js"></script> 
    <script src="Template/assets/plugins/bootstrap/js/bootstrap.min.js"></script> 

    <!-- Style Switcher (REMOVE ON YOUR PRODUCTION SITE) -->
    <script src="Template/assets/js/demo/style-switcher.js"></script>     
        <div>
        </div>
    </form>
</body>
</html>
