<%@ Page Language="C#" debug="true" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_Proje.Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
     <title>Fikir ve Oylama Sistemi</title>
    
    <!-- Meta -->
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Blog Template">
    <meta name="author" content="Xiaoying Riley at 3rd Wave Media">    
    <link rel="shortcut icon" href="favicon.ico"> 
    
    <!-- FontAwesome JS-->
    <script defer src="https://use.fontawesome.com/releases/v5.7.1/js/all.js" integrity="sha384-eVEQC9zshBn0rFj4+TU78eNA19HMNigMviK/PU/FFjLXqa/GKPgX58rvt5Z8PLs7" crossorigin="anonymous"></script>
    <script src="Scripts/jquery-1.7.1.js"></script>
    <script language="javascript">
        $(document).ready(function () {
            $(".rating-star-block .star").mouseleave(function () {
                $("#" + $(this).parent().attr('id') + " .star").each(function () {
                    $(this).addClass("outline");
                    $(this).removeClass("filled");
                });
            });
            $(".rating-star-block .star").mouseenter(function () {
                var hoverVal = $(this).attr('rating');
                $(this).prevUntil().addClass("filled");
                $(this).addClass("filled");
                $("#RAT").html(hoverVal);
            });
            $(".rating-star-block .star").click(function () {

                var v = $(this).attr('rating');
                var newScore = 0;
                var updateP = "#" + $(this).parent().attr('id') + ' .CurrentScore';
                var artID = $("#" + $(this).parent().attr('id') + ' .icerikid').val();

                $("#" + $(this).parent().attr('id') + " .star").hide();
                $("#" + $(this).parent().attr('id') + " .yourScore").html("Your Score is : &nbsp;<b style='color:#ff9900; font-size:15px'>" + v + "</b>");
                $.ajax({
                    type: "POST",
                    url: "Default.aspx/SaveRating",
                    data: "{icerikid: '" + artID + "',rate: '" + v + "'}",
                    contentType: "application/json; charset=utf-8",
                    dataType: "json",
                    success: function (data) {
                        setNewScore(updateP, data.d);
                    },
                    error: function (data) {
                        alert(data.d);
                    }
                });
            });
        });
        function setNewScore(container, data) {
            $(container).html(data);
            $("#myElem").show('1000').delay(2000).queue(function (n) {
                $(this).hide(); n();
            });
        }

    </script>
     
    <link rel="stylesheet" href="Template/assets/css/theme-1.css">
    <style type="text/css">
        .auto-style2 {
            height: 244px;
        }
        .rating-star-block .star.outline {
            background: url("images/bos.png") no-repeat scroll 0 0 rgba(0, 0, 0, 0);
        }
        .rating-star-block .star.filled {
            background: url("images/dolu.png") no-repeat scroll 0 0 rgba(0, 0, 0, 0);
        }
        .rating-star-block .star {
            color:rgba(0,0,0,0);
            display : inline-block;
            height:24px;
            overflow:hidden;
            text-indent:-999em;
            width:24px;
        }
        a {
            color:#005782;
            text-decoration:none;
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
		
					
					<div class="bio mb-3">Haftalık seçilen tema üzerine içerik üret ve diğer kullanıcılarının içeriklerini oyla</div><!--//bio-->
					
			        
				
				
				
				
				
			</div>
		</nav>
    </header>
    
    <div class="main-wrapper">
		    <div class="container text-center" style="height: 207px">
			    <h2 class="heading">Fikir ve Oylama Sistemi</h2>
                <br /> 
                
                <a href="Default.aspx">Ana Sayfa</a>
                    
                    <a href="/PostEkle.aspx">Icerık Ekle</a>
                <br /><br />
                <h3>Ana Sayfa</h3>
			    <div class="intro">
                    <asp:Label ID="labelhg" runat="server" Text=""></asp:Label>
                    <br />
                    --Hoşgeldiniz--</div>
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
             <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" CellPadding="5">
            <Columns>
                <asp:BoundField HeaderText="Article ID" DataField="icerikid" />
                <asp:BoundField HeaderText="Article Title" DataField="icerikYazisi" />
                <asp:TemplateField>
                    <ItemTemplate>
                        <div class="rating-star-block" id='div_<%#Container.DataItemIndex %>'>
                            <input type="hidden" class="articleID" value='<%#Eval("icerikid") %>' />
                            Current Score :<span class="CurrentScore"><%#Eval("Score") %></span><br /><div class="yourScore">Senin Oyun : </div> 
                            <a class="star outline" href="#" rating="1" title="vote 1"> vote 1</a>
                            <a class="star outline" href="#" rating="2" title="vote 2"> vote 2</a>
                            <a class="star outline" href="#" rating="3" title="vote 3"> vote 3</a>
                            <a class="star outline" href="#" rating="4" title="vote 4"> vote 4</a>
                            <a class="star outline" href="#" rating="5" title="vote 5"> vote 5</a>
                        </div>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
             <div id="myElem" style="position:absolute; top:10px; left:50%; display:none; background-color:yellow; padding:5px; border:1px solid red">
            Oyladığın için teşekkürler!
        </div>
            </div>
    
         
            
               
           
    
       
    <script src="Template/assets/plugins/jquery-3.3.1.min.js"></script>
    <script src="Template/assets/plugins/popper.min.js"></script> 
    <script src="Template/assets/plugins/bootstrap/js/bootstrap.min.js"></script> 

    <!-- Style Switcher (REMOVE ON YOUR PRODUCTION SITE) -->
    <script src="Template/assets/js/demo/style-switcher.js"></script>     
           
    </form>
	    
	   
	    
	    </body>
</html>
