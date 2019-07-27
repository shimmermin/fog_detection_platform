<%@ Page Title="主页" Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs"
    Inherits="echart._Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<link rel="stylesheet" href="http://webapi.amap.com/ui/1.0/ui/misc/PointSimplifier/examples/" />
<!--信息窗体-->
    <link rel="stylesheet" href="http://cache.amap.com/lbs/static/main1119.css"/>

    <title>echart</title>
    <script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>
   
    <script type="text/javascript" src="Scripts/jquery.js"></script>
  
   <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.css" />
    <style type="text/css">
        .Title
         {text-align:center;     
         }
         div{font-weight:bold }
   
         
 </style>
 <style type="text/css">
        .head
     {     background:url(without_lable.bmp);
         }
 </style>
 <style type="text/css">
        .main_c
     {     background:url(main_c.jpg);
         }
 </style>
 <style type="text/css">
        .body
     {     background:url(body1.jpg);
         }
 </style>
 <style type="text/css">
        .data1
     {     background:url(data4.jpg);
         }
 </style>
 <style type="text/css">
        .data2
     {     background:url(data5.jpg);
         }
 </style>
  <style type="text/css">
        .map
     {     background:url(map3.jpg);
         }
 </style>
 <style type="text/css">
    html,
    body,
    #container {
        width: 100%;
        height: 100%;
        margin: 0px;
    }

    #loadingTip {
        position: absolute;
        z-index: 9999;
        top: 0;
        right: 0;
        padding: 3px 10px;
        background: red;
        color: #fff;
        font-size: 13px;
    }
    </style>
    

<script type="text/javascript">
    //获取系统时间，将时间以指定格式显示到页面。
    function systemTime() {
 
var myDate = new Date();    
 var year = myDate.getFullYear();    //获取完整的年份(4位,1970-????)
 var month = myDate.getMonth()+1;       //获取当前月份(1-12)
var day = myDate.getDate();        //获取当前日(1-31)
 //获取完整年月日
var newDay = year + "-" + month + "-" + day;
document.getElementById("data").innerHTML = newDay;

        //获取系统时间。  
        var dateTime = new Date();
        var hh = dateTime.getHours();
        var mm = dateTime.getMinutes();
        var ss = dateTime.getSeconds();
       
        //分秒时间是一位数字，在数字前补0。  
        mm = extra(mm);
        ss = extra(ss);
        
        //将时间显示到ID为time的位置，时间格式形如：19:18:02  
        document.getElementById("time").innerHTML = hh + ":" + mm + ":" + ss;
       
        //每隔1000ms执行方法systemTime()。  
        setTimeout("systemTime()", 1000);
      
    }

    //补位函数。  
    function extra(x) {
        //如果传入数字小于10，数字前补一位0。  
        if (x < 10) {
            return "0" + x;
        }
        else {
            return x;
        }
    }  
</script>  
<script type="text/javascript">
  
    function tuichu_Click() {
        if (confirm("确认退出吗？")) {
            window.location.href = "Quit.aspx";
        }
        else {
           
            return;
        }
    }
    function denglu_Click() {
              window.location.href = "Registe.aspx";
          
    }
</script>
</head>
 
<body onload="systemTime()">
 
    <form id="form1" runat="server">

    <div  id="main1" class="head" style="margin: 0px auto; height: 100px;width:1920px; " >
    <div  id="bar" style="height: 100px;width:300px;float: left;">
   
       
      
              
                
             
      
      
    </div>
	<div  id="title" style="height: 100px;width:1200px;float: left;">
       
         <div  id="Div13" style="height: 100px;width:420px; float: left;" >   
            <div  id="Div15" style="height: 25px;width:420px;" >   </div>
             <asp:Label ID="Label1" runat="server" Text="监测次数：" ForeColor="	#40E0D0" Font-Size="16px" Width="90px"></asp:Label>
                 <asp:Label ID="Label25" runat="server" Text="12345" ForeColor="	#00FA9A" Font-Size="16px" height="20px" width="60px"></asp:Label>
                 <asp:Label ID="Label26" runat="server" Text="次" ForeColor="	#00FA9A" Font-Size="16px" height="20px" width="10px"></asp:Label>
                 <div  id="Div18" style="height: 15px;width:420px;" >   </div>
               
                    <asp:Image ID="Image5" runat="server" ImageUrl="~/jindu.gif" Height="17px"/>
                
                    <asp:Label ID="Label17" runat="server" ForeColor="	#00FA9A" Height="20px" Font-Size="16px" 
                    Text="123456 " Width="60px"></asp:Label>
                     <asp:Label ID="Label27" runat="server" ForeColor="	#00FA9A" Height="20px" Font-Size="16px" 
                    Text=" TB" Width="20px"></asp:Label>
                    <br />
                 </div>
      </div>
       <div  id="timedata" style="height: 100px;width:415px; float: left;" >
        <div id="Div16"  style="height:100px; width:360px;float: left;" >   
                 <div id="Div19"  style="height:50px; width:350px;" >    </div>
             <div id="Div17"  style="height:50px; width:350px;float:left" >
             <asp:Label ID="data" runat="server"  ForeColor="	#FFFACD" Font-Size="20px"></asp:Label>
                &nbsp;
                <asp:Label ID="time" runat="server"  ForeColor="	#FFFACD" Font-Size="20px" ></asp:Label>
                    &nbsp;</div></div>
                    <div id="Div26"  style="height:100px; width:50px;float:left;" > 
                     <div id="Div27"  style="height:10px; width:50px;" >    </div>
                    <input type="button" value=""   
                    onclick="denglu_Click()" 
                    style="height: 35px; width:40px; border:0px; background-color:transparent;outline:none" /><br />
                      <div id="Div28"  style="height:5px; width:50px;" >    </div>
                        <input type="button" value=""  
                    onclick="tuichu_Click()" 
                    style="height: 35px; width:40px; border:0px;background-color:transparent; outline:none" /></div>  
        </div>
    </div>
    
    <div id="main2"  class="body"style="margin: 0px auto; height: 980px;width:1920px; ">
      <div id="Div14"  style="margin: 0px auto; height: 16px;width:1920px; "></div>
      <div id="data_main"  style="margin: 0px auto; height: 924px;width:1920px; ">
        <div id="dataleft" style="float: left; width: 450px; height: 924px; ">
        <div id="data1" class="data1" style="width: 450px; height: 321px; ">
           <div id="kong"  style="height:17px; width:450px;" ></div>
            <div id="text1"  style="height:30px; width:450px;" >
          
            <asp:Label ID="Label8" runat="server"  height="30px" width="450px" Text="团雾预警" BorderColor="#B0C4DE" ForeColor="	#F8F8FF"  Font-Size="30px" CssClass="Title"></asp:Label></div>
           <div id="Div9"  style="height:25px; width:450px;" ></div>
            <div id="dataleft1" style="margin: 0px auto; height: 233px;width: 450px;" >
                <div id="Div1"  style="height:20px; width:450px;" >
                <div id="Div8"  style="float: left; height:20px; width:100px;" ></div>
              
               <asp:Label ID="Label9" runat="server" Text="地区" BorderColor="#5d513c" ForeColor="		#F8F8FF" Font-Size="Large"  width="50px"  >
               </asp:Label>
                <asp:Label ID="Label10" runat="server" Text="能见度"  BorderColor="#5d513c" ForeColor="		#F8F8FF" Font-Size="Large" Width="100px"></asp:Label>
                <asp:Label ID="Label11" runat="server" Text="预警路段"  BorderColor="#5d513c" ForeColor="		#F8F8FF" Font-Size="Large" Width="100px"></asp:Label>
                </div>
                 <div id="Div10"  style="height:16px; width:450px;" ></div>
                 <div id="Div2"  style="height:20px; width:450px;" >
                 <div id="Div5"  style="float: left; height:20px; width:20px;" ></div>
                 
               <asp:Label  ID="Label21" runat="server" Text="*****" BorderColor="#5d513c" 
                    ForeColor="#FF0000" Font-Size="Small" Width="50px"></asp:Label>
                    
                <asp:Label ID="Label14" runat="server" Text="山西太原" BorderColor="#5d513c" ForeColor="#FF0000" Font-Size="Small" Width="90px"></asp:Label><asp:Label 
                    ID="Label20" runat="server" Text="50米" BorderColor="#5D513C" 
                         ForeColor="#FF0000" Font-Size="Small" Width="70px" Height="16px"></asp:Label>
                
                      <asp:HyperLink ID="HyperLink4" runat="server" ForeColor="	#F8F8FF" Width="200px"  Font-Size="Small" NavigateUrl="http://www.bestunion.cn/lukuang/lk3_530.html">G20石太高速 乌金镇西</asp:HyperLink>
               </div>
                <div id="Div11"  style="height:16px; width:450px;" ></div>
                <div id="Div3"  style="height:20px; width:450px;" >
                <div id="Div6"  style="float: left; height:20px; width:20px;" ></div>
                <asp:Label 
                    ID="Label22" runat="server" Text="***" BorderColor="#5d513c" 
                    ForeColor="	#FFD700" Font-Size="Small" Width="50px"></asp:Label>
                <asp:Label ID="Label28" runat="server" Text="山西平遥" BorderColor="#5d513c" ForeColor="#FFD700" Font-Size="Small" Width="90px"></asp:Label><asp:Label 
                    ID="Label29" runat="server" Text="90米" BorderColor="#5d513c" ForeColor="#FFD700" Font-Size="Small" Width="70px"></asp:Label>
                
                      <asp:HyperLink ID="HyperLink5" runat="server" ForeColor="	#F8F8FF" Width="200px"  Font-Size="Small" NavigateUrl="http://www.bestunion.cn/lukuang/lk3_530.html">G5石太高速 平遥古城</asp:HyperLink>
               </div>
                <div id="Div12"  style="height:16px; width:450px;" ></div>
                <div id="Div4"  style="height:20px; width:450px;" >
                <div id="Div7"  style="float: left; height:20px; width:20px;" ></div>
                <asp:Label 
                    ID="Label23" runat="server" Text="*" BorderColor="#5d513c" 
                    ForeColor="#32CD32" Font-Size="Small" Width="50px"></asp:Label>
                <asp:Label ID="Label18" runat="server" Text="山西太原" BorderColor="#5d513c" ForeColor="#32CD32" Font-Size="Small" Width="90px"></asp:Label><asp:Label 
                    ID="Label19" runat="server" Text="150米" BorderColor="#5d513c" ForeColor="#32CD32" Font-Size="Small" Width="70px"></asp:Label>
                
                      <asp:HyperLink ID="HyperLink3" runat="server" ForeColor="	#F8F8FF" Width="200px"  Font-Size="Small" NavigateUrl="http://www.bestunion.cn/lukuang/lk3_530.html">G55二广高速 太原市小</asp:HyperLink>
             </div>
              <div id="Div24"  style="height:16px; width:450px;" ></div>
             <div id="Div20"  style="height:20px; width:450px;" >
                <div id="Div21"  style="float: left; height:20px; width:20px;" ></div>
                <asp:Label 
                    ID="Label7" runat="server" Text="*" BorderColor="#5d513c" 
                    ForeColor="#32CD32" Font-Size="Small" Width="50px"></asp:Label>
                    
                <asp:Label ID="Label12" runat="server" Text="山西晋中市"  BorderColor="#5d513c" ForeColor="#32CD32" Font-Size="Small"   Width="90px" >
                </asp:Label>
                <asp:Label 
                    ID="Label13" runat="server" Text="200米" BorderColor="#5d513c" ForeColor="#32CD32" Font-Size="Small" Width="70px" ></asp:Label>
               
                <asp:HyperLink ID="HyperLink1" runat="server" ForeColor="	#F8F8FF" Width="200px"  
                         Font-Size="Small" NavigateUrl="http://www.bestunion.cn/lukuang/lk3_530.html" 
                         Height="16px" >G5石太高速  榆次区乌</asp:HyperLink>
             </div>
              <div id="Div25"  style="height:16px; width:450px;" ></div>
             <div id="Div22"  style="height:20px; width:450px;" >
                <div id="Div23"  style="float: left; height:20px; width:20px;" ></div>
                <asp:Label 
                    ID="Label24" runat="server" Text="*" BorderColor="#5d513c" 
                    ForeColor="#32CD32" Font-Size="Small" Width="50px"></asp:Label>
                <asp:Label ID="Label15" runat="server" Text="山西清徐" BorderColor="#5d513c" ForeColor="#32CD32" Font-Size="Small" Width="90px"></asp:Label><asp:Label 
                    ID="Label16" runat="server" Text="300米" BorderColor="#5d513c" ForeColor="#32CD32" Font-Size="Small" Width="70px"></asp:Label>
               
                     <asp:HyperLink ID="HyperLink2" runat="server" ForeColor="	#F8F8FF" Width="200px"  Font-Size="Small" NavigateUrl="http://www.bestunion.cn/lukuang/lk3_530.html">G20青银高速  清徐县清</asp:HyperLink>
             </div>
            </div>
            </div>
            <div id="data2" class="data1" style="width: 450px; height: 321px; ">
              <div id="kong2"  style="height:17px; width:450px;" ></div>
            <div id="text2" style="margin: 0px auto; height: 30px;width: 450px; ">
            <asp:Label ID="Label2" runat="server"  height="30px" width="450px" Text="区域路况"  ForeColor="	#F8F8FF"  Font-Size="30px" CssClass="Title"></asp:Label></div>
            <div id="dataleft2" style="margin: 0px auto; height: 274px; width: 450px;">
                
            </div>
            </div>
            <div id="data3"  class="data1" style=" width: 450px; height: 321px; ">
              <div id="kong3"  style="height:17px; width:450px;" ></div>
            <div id="text3" style="margin: 0px auto; height: 30px;width: 450px; ">
            <asp:Label ID="Label3" runat="server"  height="30px" width="450px" Text="综合监测" BorderColor="#5d513c" ForeColor="	#F8F8FF"  Font-Size="30px" CssClass="Title"></asp:Label></div>
            <div id="dataleft3" style="margin: 0px auto; height: 284px;width: 470px;" >
                </div>
                 </div>
        </div>
        <div id="center" style="float: left; width: 1020px; height: 964px;" >
        <div id="map1" class="map" style="width: 1020px; height: 704px; ">
         <div id="kong_map" style="width: 1020px; height: 7px; ">
               </div>
            <div id="map" style="margin: 0px auto;width: 1009px; height: 688px; ">
               </div>
                </div>
            <div id="dvd" style="margin: 0px auto; width: 1020px;height: 260px;">
             <div id="dvd1" style="float: left; width: 340px; height: 260px; ">
              <asp:Image ID="Image2"  runat="server" Height=" 260px" ImageUrl='~/video1.jpg'
                    Width="340px">
                </asp:Image><!--ImageUrl='/dvd1.jpg'-->
             </div>
             <div id="dvd2" style="float: left; width: 340px; height: 260px; ">
             <asp:Image ID="Image3"  runat="server" Height=" 260px" 
                    Width="340px" ImageUrl='~/video2.jpg'>
                </asp:Image><!--ImageUrl='/dvd2.jpg'-->
             </div>
             <div id="dvd3" style="float: left; width: 340px; height: 260px; ">
             <asp:Image ID="Image4"  runat="server" Height=" 260px" 
                    Width="340px" ImageUrl='~/video3.jpg'>
                </asp:Image><!--ImageUrl='/dvd3.jpg'-->
             </div>
            </div>
        </div>
        <div id="dataright" style="float: left; width: 450px; height: 924px;">
         <div id="data4"  class="data2" style=" width: 450px; height: 321px; ">
           <div id="kong4"  style="height:17px; width:450px;" ></div>
        <div id="text4" style="margin: 0px auto; height: 30px;width: 450px; ">
            <asp:Label ID="Label4" runat="server"  height="30px" width="450px" Text="实时数据" 
                BorderColor="#5D513C" ForeColor="	#F8F8FF"  Font-Size="30px" 
                CssClass="Title"></asp:Label></div>
            <div id="dataright1" style="margin: 0px auto; width: 470px;height: 284px;">
              </div>
              </div>
               <div id="data5" class="data2" style=" width: 450px; height: 321px; ">
                 <div id="kong5"  style="height:17px; width:450px;" ></div>
              <div id="text5" style="margin: 0px auto; height: 30px;width: 450px; ">
            <asp:Label ID="Label5" runat="server"  height="30px" width="450px" Text="历史数据" BorderColor="#5d513c" ForeColor="	#F8F8FF"  Font-Size="30px" CssClass="Title"></asp:Label></div>
            <div id="dataright2" style="margin: 0px auto;width: 470px; height: 284px; ">
           
            </div>
            </div>
            <div id="data6" class="data2" style=" width: 450px; height: 321px; ">
              <div id="kong6"  style="height:17px; width:450px;" ></div>
            <div id="text6" style="margin: 0px auto; height: 30px;width: 450px; ">
            <asp:Label ID="Label6" runat="server"  height="30px" width="450px" Text="统计分析" BorderColor="#5d513c" ForeColor="	#F8F8FF"  Font-Size="30px" CssClass="Title"></asp:Label></div>
            <div id="dataright3" style="margin: 0px auto; width: 450px;height: 274px;">
           </div>
            </div>
            </div>
        </div>
    </div>
   
    <!--引入百度地图的jssdk，这里需要使用你在百度地图开发者平台申请的 ak-->
    <!--<script  type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=bhMkD2bjDfc9mDBMMIxunRepGGUHRpn7"></script>-->
    <!-- 引入百度地图扩展 -->
    <!--<script type="text/javascript" src="echarts/extension/bmap.js"></script>-->
    <!--<script type="text/javascript" src="http://libs.baidu.com/jquery/2.0.0/jquery.js"></script>-->


    <!-- 引入高德地图扩展 -->
    <script type="text/javascript" src = 'http://webapi.amap.com/maps?v=1.4.0&key=e920e22e45a582ab8152dfc2a8ecbffc'></script>
      <script type="text/javascript" src="http://webapi.amap.com/ui/1.0/main.js?v=1.0.11"></script>

    <script type="text/javascript" src="echarts/echarts.js"></script>
    <script type="text/javascript" src="echarts/echarts-all.js"></script>  
    <script type="text/javascript" src="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js" ></script>
    <script type="text/javascript" src="http://echarts.baidu.com/doc/example/timelineOption.js"></script> 
   <script type="text/javascript" src="http://webapi.amap.com/demos/js/liteToolbar.js"></script>
    <script type="text/javascript">
        //   var myChart1;//测试数据

        var myChart2;
        var myChart3;
        var myChart4;
        var myChart5;
        var myChart6;
       
       // var isRequst = true;
        var isRequst1 = true;
        var isRequst2 = true;
        var isRequst3 = true;
        var isRequst5 = true;
        var isRequst6 = true;
      
        // 路径配置
        require.config({
            paths: {
                echarts: 'echarts' //echarts路径
            }
        });
      
        // 使用
        require(
            [
                'echarts', //echarts路径
                'echarts/chart/bar', // 使用柱状图就加载bar模块，按需加载
                 'echarts/chart/line', // 使用柱状图就加载bar模块，按需加载
                 'echarts/chart/pie',
               'echarts/chart/map',
               'echarts/chart/radar'
               
              
            ], DrawECharts
            );

        function DrawECharts(ec) {
            Times();
            DrawEChart(ec);
            if (isRequst1) {
            isRequst1 = false;
            window.setInterval("DrawEChart1()", 2000);

        }
      
        DrawEChart2(ec);
        
            DrawEChart3(ec);
            DrawEChart4(ec);
            DrawEChart5(ec);
            DrawEChart6(ec);

        }

        function Times() {
            var times = 20000;
            var num = 123456;
            document.getElementById('Label25').innerHTML = times;
            window.setInterval(function (e) {
                if (times < 30000) {
                    times = times + 9;
                    document.getElementById('Label25').innerHTML = times;
                }
                else { times = 25555; }
            }, 500);

            document.getElementById('Label17').innerHTML = num;
            window.setInterval(function (e) {
                if (num< 323456) {
                    num = num + 900;
                    document.getElementById('Label17').innerHTML = num;
                }
                else { num = 155555; }
            }, 500);
          
   }
   
   //高德地图
   function DrawEChart(ec) {
               myChart2 = ec.init(document.getElementById('dataleft2'));
               var map = new AMap.Map('map', {
                   center: [112.736465, 37.696495],
                   zoom: 10,
                   mapStyle: 'amap://styles/c7fb24f0a69abe6174da904f2ee213de'//样式URL
               });
               map.setMapStyle('amap://styles/c7fb24f0a69abe6174da904f2ee213de');
        
               //太原市小店区
               var circle = new AMap.Circle({
                   center: new AMap.LngLat("112.5549316406", "37.7481862937"), // 圆心位置
                   radius: 2000, //半径
                   strokeColor: "#FFE4E1", //线颜色
                   strokeOpacity: 0.1, //线透明度
                   strokeWeight: 10,    //线宽
                   fillColor: "#FF0000", //填充色
                   fillOpacity: 0.7//填充透明度
               });

               //石太高速  山西省晋中市榆次区乌金山镇东北方向
               var circle1 = new AMap.Circle({
                   center: new AMap.LngLat("112.7210140228", "37.7666268782"), // 圆心位置
                   radius: 1900, //半径
                   strokeColor: "#FFE4E1", //线颜色
                   strokeOpacity: 0.1, //线透明度
                   strokeWeight: 10,    //线宽
                   fillColor: "#FF0000", //填充色
                   fillOpacity: 0.7//填充透明度
               });
               //青银高速  山西省太原市清徐县清源镇平泉村
               var circle2 = new AMap.Circle({
                   center: new AMap.LngLat("112.3456764221", "37.6343536597"), // 圆心位置
                   radius: 1800, //半径
                   strokeColor: "#FFE4E1", //线颜色
                   strokeOpacity: 0.1, //线透明度
                   strokeWeight: 10,    //线宽
                   fillColor: "#FF0000", //填充色
                   fillOpacity: 0.7//填充透明度
               });

               circle.setMap(map); //显示圆圈
               //鼠标经过弹出信息窗体
                 var infoWindow;
               var info = [];           
                   AMap.event.addListener(circle, 'mouseover', function (e) {  //显示信息窗体

                       //在指定位置打开信息窗体             
                       //构建信息窗体中显示的内容

                       info.push("<div><div><img style=\"float:left;\" src=\" http://webapi.amap.com/images/autonavi.png \"/></div> ");
                       info.push("<div style=\"padding:0px 0px 0px 4px;\"><b>警报 ： G55 二广高速</b>");
                       info.push("团雾严重,能见度低于100米");
                       info.push("<a href=\"http://www.bestunion.cn/lukuang/lk3_530.html\"/>");
                       info.push("路段 : 山西省太原市小店区小店街道永康北路社区西北方向约1.25公里</div></div>");
                       infoWindow = new AMap.InfoWindow({
                           content: info.join("<br/>")  //使用默认信息窗体框样式，显示信息内容
                       });
                       infoWindow.open(map, new AMap.LngLat("112.5549316406", "37.7481862937"));
                       //     infoWindow.close()
                   });
            
               //鼠标移出窗体关闭
              AMap.event.addListener(circle, 'mouseout', function (e) {
                  infoWindow.close();
                  info = [];
              });

              var infoWindow1;
              var info1 = [];
              circle1.setMap(map); //显示圆圈
              AMap.event.addListener(circle1, 'mouseover', function (e) {  //显示信息窗体

                  //在指定位置打开信息窗体             
                  //构建信息窗体中显示的内容

                  info1.push("<div><div><img style=\"float:left;\" src=\" http://webapi.amap.com/images/autonavi.png \"/></div> ");
                  info1.push("<div style=\"padding:0px 0px 0px 4px;\"><b>警报 ：G5 石太高速</b>");
                  info1.push("<a href=\"http://www.bestunion.cn/lukuang/lk3_530.html\"/>");
                  info1.push("路段 : 山西省晋中市榆次区乌金山镇东北方向</div></div>");
                  infoWindow1= new AMap.InfoWindow({
                      content: info1.join("<br/>")  //使用默认信息窗体框样式，显示信息内容
                  });
                  infoWindow1.open(map, new AMap.LngLat("112.7210140228", "37.7666268782"));
                  //     infoWindow.close()
              });
          //鼠标移出窗体关闭
              AMap.event.addListener(circle1, 'mouseout', function (e) {
                  infoWindow1.close();
                  info1 = [];
              });

              var infoWindow2;
              var info2 = [];
              circle2.setMap(map); //显示圆圈
              AMap.event.addListener(circle2, 'mouseover', function (e) {  //显示信息窗体

                  //在指定位置打开信息窗体             
                  //构建信息窗体中显示的内容

                  info2.push("<div><div><img style=\"float:left;\" src=\" http://webapi.amap.com/images/autonavi.png \"/></div> ");
                  info2.push("<div style=\"padding:0px 0px 0px 4px;\"><b>警报 ：G20 青银高速</b>");
                  info2.push("<a href=\"http://www.bestunion.cn/lukuang/lk3_530.html\"/>");
                  info2.push("路段 : 山西省太原市清徐县清源镇平泉村东南方向 约100米</div></div>");
                  infoWindow2 = new AMap.InfoWindow({
                      content: info2.join("<br/>")  //使用默认信息窗体框样式，显示信息内容
                  });
                  infoWindow2.open(map, new AMap.LngLat("112.3456764221", "37.6343536597"));
                  //     infoWindow.close()
              });
              //鼠标移出窗体关闭
              AMap.event.addListener(circle2, 'mouseout', function (e) {
                  infoWindow2.close();
                  info2 = [];
              });
               //定时改变圆的半径大小
               var gap=1600;               
                     window.setInterval(function (){
                     if (gap<2000) {
                      gap=gap+400;
                      circle.setRadius(gap);}
                    else if(gap>=2000&&gap<3000){
                      gap=gap+200;
                      circle.setRadius(gap);
                    }
                    else{
                       gap=gap-1000;
                       circle.setRadius(gap);
                    }
                      }, 600);
               

                  var gap1=1400;               
                     window.setInterval(function (){
                     if (gap1<1800) {
                      gap1=gap1+400;
                      circle1.setRadius(gap1);}
                    else if(gap1>=1800&&gap1<2800){
                      gap1=gap1+200;
                      circle1.setRadius(gap1);
                    }
                    else{
                       gap1=gap1-1000;
                       circle1.setRadius(gap1);
                    }
                      }, 600);


                   var gap2=1400;               
                     window.setInterval(function (){
                     if (gap2<1800) {
                      gap2=gap2+400;
                      circle2.setRadius(gap2);}
                    else if(gap2>=1800&&gap2<2800){
                      gap2=gap2+200;
                      circle2.setRadius(gap2);
                    }
                    else{
                       gap2=gap2-1000;
                       circle2.setRadius(gap2);
                    }
                      }, 600);

          
               // circle.bindPopup("<b>警报！</b><br><br>京哈高速 北京市通州区台湖镇施园桥 约81米 </b><br><br><b>团雾范围：</b><br><br>2公里");
               // alert(1);
               AMap.event.addListener(circle, 'click', function (e) {
                   document.getElementById('Label2').innerHTML = "太原路况";
                   document.getElementById('Label4').innerHTML = "太原实时数据";
                   document.getElementById('Label5').innerHTML = "太原历史数据";
                   myChart2.dispose();
                   // DrawEChart2_1(ec);
                   DrawEChart2(ec);
                   alert("警报 ： G55 二广高速" + '\n\n' + "团雾严重,能见度低于100米" + '\n\n' + "路段 : 山西省太原市小店区小店街道永康北路社区西北方向约1.25公里");

               });
               AMap.event.addListener(circle1, 'click', function (e) {
                   document.getElementById('Label2').innerHTML = "榆次区路况";
                   document.getElementById('Label4').innerHTML = "榆次区实时数据";
                   document.getElementById('Label5').innerHTML = "榆次区历史数据";
                   myChart2.dispose();
                   //  DrawEChart2_2(ec);
                   DrawEChart2(ec);
                   alert("警报 ：G5 石太高速" + '\n\n' + "团雾严重,能见度低于100米" + '\n\n' + "路段 : 山西省晋中市榆次区乌金山镇东北方向");

               });
               AMap.event.addListener(circle2, 'click', function (e) {
                   document.getElementById('Label2').innerHTML = "清徐县路况";
                   document.getElementById('Label4').innerHTML = "清徐县实时数据";
                   document.getElementById('Label5').innerHTML = "清徐县历史数据";
                   myChart2.dispose();
                   // DrawEChart2_3(ec);
                   DrawEChart2(ec);
                   alert("警报 ：G20 青银高速" + '\n\n' + "团雾严重,能见度低于100米" + '\n\n' + "路段 : 山西省太原市清徐县清源镇平泉村东南方向 约100米 ");

               });
               //高速公路上的其余点
               //山西省太原市小店区G55
                 var circle3 = new AMap.Circle({
                   center: new AMap.LngLat("112.5262212753", "37.6873184373"), // 圆心位置
                   radius: 1600, //半径
                   strokeColor: "#FFE4E1", //线颜色
                   strokeOpacity: 0.1, //线透明度
                   strokeWeight: 10,    //线宽
                   fillColor: "#FF0000", //填充色
                   fillOpacity: 0.7//填充透明度
               });
               var circle4 = new AMap.Circle({
                   center: new AMap.LngLat("112.6565551758", "37.5726100449"), // 圆心位置
                   radius: 1400, //半径
                   strokeColor: "#FFE4E1", //线颜色
                   strokeOpacity: 0.1, //线透明度
                   strokeWeight: 10,    //线宽
                   fillColor: "#FF0000", //填充色
                   fillOpacity: 0.7//填充透明度
               });
               //石太G5
               var circle5 = new AMap.Circle({//            清徐
                   center: new AMap.LngLat("112.4316787720", "37.6828693555"), // 圆心位置
                   radius: 1600, //半径
                   strokeColor: "#FFE4E1", //线颜色
                   strokeOpacity: 0.1, //线透明度
                   strokeWeight: 10,    //线宽
                   fillColor: "#FF0000", //填充色
                   fillOpacity: 0.7//填充透明度
               });

               var circle6 = new AMap.Circle({
                   center: new AMap.LngLat("112.7599115070", "37.7570077769"), // 武宿枢纽
                   radius: 1400, //半径
                   strokeColor: "#FFE4E1", //线颜色
                   strokeOpacity: 0.1, //线透明度
                   strokeWeight: 10,    //线宽
                   fillColor: "#FF0000", //填充色
                   fillOpacity: 0.7//填充透明度
               });
              
               var circle7 = new AMap.Circle({
                   center: new AMap.LngLat("112.5357055664", "37.8846088575"), // 太原尖草坪
                   radius: 1600, //半径
                   strokeColor: "#FFE4E1", //线颜色
                   strokeOpacity: 0.1, //线透明度
                   strokeWeight: 10,    //线宽
                   fillColor: "#FF0000", //填充色
                   fillOpacity: 0.7//填充透明度
               });
               var circle8 = new AMap.Circle({
                   center: new AMap.LngLat("112.8864097595", "37.8515434442"), // G20靠后
                   radius: 1400, //半径
                   strokeColor: "#FFE4E1", //线颜色
                   strokeOpacity: 0.1, //线透明度
                   strokeWeight: 10,    //线宽
                   fillColor: "#FF0000", //填充色
                   fillOpacity: 0.7//填充透明度
               });
                circle3.setMap(map); //显示圆圈
               circle4.setMap(map); //显示圆圈
               circle5.setMap(map); //显示圆圈
               circle6.setMap(map); //显示圆圈
               circle7.setMap(map); //显示圆圈
               circle8.setMap(map); //显示圆圈
               //just some colors
               var colors = [
        '#0cc2f2',
        '#4fd2b1',
        '#90e36f',
        '#ffe700',
        '#ff9e00',
        '#ff6700',
        '#ff1800'
    ];

               AMapUI.load(['ui/misc/PointSimplifier', 'lib/$'], function (PointSimplifier, $) {

                   if (!PointSimplifier.supportCanvas) {
                       alert('当前环境不支持 Canvas！');
                       return;
                   }

                   var pointSimplifierIns = new PointSimplifier({
                       zIndex: 115,
                       autoSetFitView: false,
                       map: map, //所属的地图实例

                       getPosition: function (item) {
                           if (!item) {
                               return null;
                           }

                           var parts = item.split(',');

                           return [parseFloat(parts[0]), parseFloat(parts[1])];
                       },
                       getHoverTitle: function (dataItem, idx) {
                           return '序号: ' + idx;
                       },
                       //使用GroupStyleRender
                       renderConstructor: PointSimplifier.Render.Canvas.GroupStyleRender,
                       renderOptions: {
                           eventSupport: false, //禁止事件,对性能更友好
                           //点的样式
                           pointStyle: {
                               fillStyle: null,
                               width: 5,
                               height: 5
                           },
                           topNAreaStyle: null,
                           getGroupId: function (item, idx) {

                               //随机返回一个组ID
                               return Math.ceil(colors.length * Math.random());
                           },
                           groupStyleOptions: function (gid) {

                               //随机设置大小
                               var radius = 5 + 10 * Math.random();

                               return {

                                   pointStyle: radius < 10 ? {
                                       content: function (ctx, x, y, width, height) {

                                           var p = {
                                               x: x + width / 2,
                                               y: y + height / 2,
                                               radius: radius + 2
                                           };

                                           ctx.beginPath();
                                           var gradient = ctx.createRadialGradient(p.x, p.y, 0, p.x, p.y, p.radius);
                                           gradient.addColorStop(0, "rgba(124,252,0,0.8)");
                                           gradient.addColorStop(1, "rgba(225,255,255,0.5)");
                                           ctx.fillStyle = gradient;
                                           ctx.arc(p.x, p.y, p.radius, Math.PI * 2, false);
                                           ctx.fill();

                                       },

                                       //fillStyle: colors[gid % colors.length],
                                       width: radius * 2,
                                       height: radius * 2
                                   } : radius < 13 ? { content: function (ctx, x, y, width, height) {

                                       var p = {
                                           x: x + width / 2,
                                           y: y + height / 2,
                                           radius: radius + 2
                                       };

                                       ctx.beginPath();
                                       var gradient = ctx.createRadialGradient(p.x, p.y, 0, p.x, p.y, p.radius);
                                       gradient.addColorStop(0, "rgba(255,165,0,0.8)");
                                       gradient.addColorStop(1, "rgba(255,222,173,0.5)");
                                       ctx.fillStyle = gradient;
                                       ctx.arc(p.x, p.y, p.radius, Math.PI * 2, false);
                                       ctx.fill();

                                   },

                                       //fillStyle: colors[gid % colors.length],
                                       width: radius * 2,
                                       height: radius * 2
                                   } : {
                                       content: function (ctx, x, y, width, height) {

                                           var p = {
                                               x: x + width / 2,
                                               y: y + height / 2,
                                               radius: radius+2
                                           };

                                           ctx.beginPath();
                                           var gradient = ctx.createRadialGradient(p.x, p.y, 0, p.x, p.y, p.radius);
                                           gradient.addColorStop(0, "rgba(124,252,0,0.8)"); //绿
                                           gradient.addColorStop(1, "rgba(225,255,255,0.5)"); //红：255,0,0,0.9  178,34,34,0.8
                                           ctx.fillStyle = gradient;
                                           ctx.arc(p.x, p.y, p.radius, Math.PI * 2, false);
                                           ctx.fill();

                                       },

                                       //fillStyle: colors[gid % colors.length],
                                       width: radius * 2,
                                       height: radius * 2
                                   },

                                   pointHardcoreStyle: {
                                       width: radius * 2 + 3,
                                       height: radius * 2 + 3
                                   }
                               };
                           }

                       }
                   });


                   //重复render
                   setInterval(function () {
                       pointSimplifierIns.render();
                   }, 5000)


                   $('<div id="loadingTip">加载数据，请稍候...</div>').appendTo(document.body);
                   $.get('http://a.amap.com/amap-ui/static/data/10w.txt', function (csv) {

                       var data = csv.split('\n');

                       pointSimplifierIns.setData(data.slice(0, 5000));

                       $('#loadingTip').remove();
                   });
               });
            }
           
            function DrawEChart1() {
               
                //通过AJAX获取数据
                $.ajax({
                    type: "POST",
                    async: false, //同步执行 若是true，则可以不用用户操作即执行下一步
                    url: "Dataleft1.ashx",
                    data: {},
                    dataType: 'json', //返回数据形式为json
                    success: function (result) {
                        //      alert(result);                                                                                                                                        
                        // var num = result;  
                        if (result == 0) {
                            document.getElementById('Label12').innerHTML = "山西清徐";
                            document.getElementById('Label13').innerHTML = "275米";
                            document.getElementById('HyperLink1').innerHTML = "G20青银高速 清徐县清";
                            document.getElementById('Label15').innerHTML = "山西太原";
                            document.getElementById('Label16').innerHTML = "345米";
                            document.getElementById('HyperLink2').innerHTML = "G55二广高速 太原市小";
                            document.getElementById('Label18').innerHTML = "山西榆次区";
                            document.getElementById('Label19').innerHTML = "200米";
                            document.getElementById('HyperLink3').innerHTML = "G5石太高速 榆次区乌";
                            
                        }
                        else if (result == 1) {
                            document.getElementById('Label12').innerHTML = "山西太原";
                            document.getElementById('Label13').innerHTML = "225米";
                            document.getElementById('HyperLink1').innerHTML = "G55二广高速 太原市小";
                            document.getElementById('Label15').innerHTML = "山西榆次区";
                            document.getElementById('Label16').innerHTML = "315米";
                            document.getElementById('HyperLink2').innerHTML = "G5石太高速 榆次区乌";
                            document.getElementById('Label18').innerHTML = "山西清徐";
                            document.getElementById('Label19').innerHTML = "175米";
                            document.getElementById('HyperLink3').innerHTML = "G20青银高速 清徐县清";
                            
                        }
                        else {
                            document.getElementById('Label12').innerHTML = "山西太原";
                            document.getElementById('Label13').innerHTML = "280米";
                            document.getElementById('HyperLink1').innerHTML = "G55二广高速 太原市小";
                            document.getElementById('Label15').innerHTML = "山西清徐";
                            document.getElementById('Label16').innerHTML = "360米";
                            document.getElementById('HyperLink2').innerHTML = "G20青银高速 清徐县清";
                            document.getElementById('Label18').innerHTML = "山西榆次区";
                            document.getElementById('Label19').innerHTML = "190米";
                            document.getElementById('HyperLink3').innerHTML = "G5石太高速 榆次区乌金";
                            
                        }  
                    }
                });                              
         
             }
           
        function DrawEChart4(ec) {
            // 基于准备好的dom，初始化echarts图表
            myChart4 = ec.init(document.getElementById('dataright1')); //ec是function里的参数，main是定义的dom    

            option = {
                timeline: {
                    data: ['11:00', '12:00', '13:00','14:00','15:00','16:00','17:00','18:00','19:00'],
                  //  orient: 'vertical',
                    show: true,
                    axisType: 'category',  
                    autoPlay: true,
                    playInterval: 5000
                },
                grid: { containLabel: true },
       
     
       options: [
        {

            title: { text: '11:00',
              x:370,
              y:30,
                textStyle: {
                    color: '#E6E6FA'
                   
                  
                }
             },
            tooltip: { trigger: 'axis' },
            xAxis: { data: ['3', '4', '5', '6', '7', '8', '9', '10', '11', ],
                    name:'时间',
                      axisLine:{
                     lineStyle:{
                        color:'#F8F8FF'
                        }
                },
                    axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#E6E6FA',
                        fontSize: '17'
                    }
                }
             },
            yAxis: { type: 'value',
                name: '能见度',
                color: '#E6E6FA',
                min: 0,
                max: 250,
                interval: 50,
                axisLabel: {
                  
                    formatter: '{value}',
                    textStyle: {
                        color: '#E6E6FA',
                        fontSize: '17'
                    }
                },
                axisLine:{
                     lineStyle:{
                        color:'#F8F8FF'
                        }
                }
            },
            series: [{ name: '11:00', type: 'line',
                itemStyle: {
                    normal: {
                        color: '#FFFF00', 
                        lineStyle: {
                            color: '#FFFF00',
                            width: 3,
                type: 'solid',
                shadowColor : 'rgba(255,180,0,0.5)', //默认透明
                shadowBlur: 10,
                shadowOffsetX: 13,
                shadowOffsetY: 13
                        }
                    }
    },
    //smooth : true,
    symbol: null,         // 拐点图形类型
    symbolSize: 1,          // 拐点图形大小
             data: [150, 155, 160, 165,170,175,180,160,160]}]
        },
        {
            /**options 2 */
            title: { text: '12:00',
                textStyle: {
                    color: '#E6E6FA'
                }
             },
            xAxis: { data: ['4', '5', '6', '7', '8', '9', '10', '11', '12'],
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#E6E6FA'
                    }
                }
             }, //length=4
            series: [{ name: '12:00', type: 'line',
             itemStyle : {
                 normal: {
                     color: '#FFFF00', 
                    lineStyle:{
                        color: '#FFFF00' 
                    }  
                }
            },
            symbol: null,         // 拐点图形类型
            symbolSize: 1,          // 拐点图形大小
            data: [155, 160, 165, 170, 175, 180, 160, 160, 160]
        }]
        },
        {
            /**options 3 */
            title: { text: '13:00',
                textStyle: {
                    color: '#E6E6FA'
                }
             },
            xAxis: { data: ['5', '6', '7', '8', '9', '10', '11', '12', '13'],
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#E6E6FA'
                    }
                }
             },
            series: [{ name: '13:00', type: 'line',
                itemStyle: {
                    normal: {
                        color: '#FFFF00', 
                        lineStyle: {
                            color: '#FFFF00'
                        }
                    }
                },
                symbol: null,         // 拐点图形类型
                symbolSize: 1,          // 拐点图形大小
                data: [160, 165, 170, 175, 180, 160, 160, 160, 155]
            }]
        },
           {
               /**options 4 */
               title: { text: '14:00',
                   textStyle: {
                       color: '#E6E6FA'
                   }
               },
               xAxis: { data: [  '6', '7', '8', '9', '10', '11', '12', '13', '14'],
                   axisLabel: {
                       show: true,
                       textStyle: {
                           color: '#E6E6FA'
                       }
                   }
               },
               series: [{ name: '14:00', type: 'line',
                   itemStyle: {
                       normal: {
                           color: '#FFFF00',
                           lineStyle: {
                               color: '#FFFF00'
                           }
                       }
                   },
                   symbol: null,         // 拐点图形类型
                   symbolSize: 1,          // 拐点图形大小
                   data: [165, 170, 175, 180, 160, 160, 160, 155,155]
               }]
           },
              {
                  /**options 5 */
                  title: { text: '15:00',
                      textStyle: {
                          color: '#E6E6FA'
                      }
                  },
                  xAxis: { data: ['7', '8', '9', '10', '11', '12', '13', '14', '15'],
                      axisLabel: {
                          show: true,
                          textStyle: {
                              color: '#E6E6FA'
                          }
                      }
                  },
                  series: [{ name: '15:00', type: 'line',
                      itemStyle: {
                          normal: {
                              color: '#FFFF00',
                              lineStyle: {
                                  color: '#FFFF00'
                              }
                          }
                      },
                      symbol: null,         // 拐点图形类型
                      symbolSize: 1,          // 拐点图形大小
                      data: [170, 175, 180, 160, 160, 160, 155,155, 153]
                  }]
              }, {
                  /**options 6 */
                  title: { text: '16:00',
                      textStyle: {
                          color: '#E6E6FA'
                      }
                  },
                  xAxis: { data: ['8', '9', '10', '11', '12', '13', '14', '15', '16' ],
                      axisLabel: {
                          show: true,
                          textStyle: {
                              color: '#E6E6FA'
                          }
                      }
                  },
                  series: [{ name: '16:00', type: 'line',
                      itemStyle: {
                          normal: {
                              color: '#FFFF00',
                              lineStyle: {
                                  color: '#FFFF00'
                              }
                          }
                      },
                      symbol: null,         // 拐点图形类型
                      symbolSize: 1,          // 拐点图形大小
                      data: [175, 180, 160, 160, 160, 155,155, 153, 152]
                  }]
              }, {
                  /**options 7 */
                  title: { text: '17:00',
                      textStyle: {
                          color: '#E6E6FA'
                      }
                  },
                  xAxis: { data: ['9', '10', '11', '12', '13', '14', '15', '16', '17'],
                      axisLabel: {
                          show: true,
                          textStyle: {
                              color: '#E6E6FA'
                          }
                      }
                  },
                  series: [{ name: '17:00', type: 'line',
                      itemStyle: {
                          normal: {
                              color: '#FFFF00',
                              lineStyle: {
                                  color: '#FFFF00'
                              }
                          }
                      },
                      symbol: null,         // 拐点图形类型
                      symbolSize: 1,          // 拐点图形大小
                      data: [180, 160, 160, 160, 155,155, 153, 150,136]
                  }]
              }, {
                  /**options 8 */
                  title: { text: '18:00',
                      textStyle: {
                          color: '#E6E6FA'
                      }
                  },
                  xAxis: { data: ['10', '11', '12', '13', '14', '15', '16', '17', '18'],
                      axisLabel: {
                          show: true,
                          textStyle: {
                              color: '#E6E6FA'
                          }
                      }
                  },
                  series: [{ name: '18:00', type: 'line',
                      itemStyle: {
                          normal: {
                              color: '#FFFF00',
                              lineStyle: {
                                  color: '#FFFF00'
                              }
                          }
                      },
                      symbol: null,         // 拐点图形类型
                      symbolSize: 1,          // 拐点图形大小
                      data: [160, 160, 160, 155, 155, 153, 150, 136, 170]
                  }]
              },
         {
            /**options 9 */
             title: { text: '19:00', 
             textStyle: {
                 color: '#E6E6FA'
             }
             },
         xAxis: { data: ['11','12', '13', '14', '15', '16', '17', '18', '19'],
                axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#E6E6FA'
                    }
                }
             },
            series: [{ name: '19:00', type: 'line',
                itemStyle: {
                    normal: {
                        color: '#FFFF00', 
                        lineStyle: {
                            color: '#FFFF00'
                        }
                    }
                },
                symbol: null,         // 拐点图形类型
                symbolSize: 1,          // 拐点图形大小
                data: [160, 160, 155, 155, 153, 150, 136, 170, 170]
            }]
        }
    ]
    };
    myChart4.setOption(option);
    var ecConfig = require('echarts/config');
    /**原来 TIMELINE_CHANGED 的使用方法有2个参数！2个参数！2个参数！（重要的事情说三遍）*/
    myChart4.on(ecConfig.EVENT.TIMELINE_CHANGED, function (paramA, paramB) {
        /**
        * 通过Console.log(paramA);Console.log(paramB);
        * 可以查看到通过两个参数分别可以获取到什么属性
        * paramA 可以获取当前timeline节点的索引
        * paramB 则可以获取到options数组
        */
        //Console.log(paramA);
        //Console.log(paramB);
        var option = myChart4.getOption();
        /**
        * 这段代码是关键
        * 首先通过调试查看到xAxis在Option中的引用位置（看到xAxis是数组）即option.xAxis[0].data
        * paramA.currentIndex 获取到当前timeline节点的索引
        * paramB.component.timeline.options[paramA.currentIndex] 获取到当前引用的options数组
        * 相同的 paramB.component.timeline.timelineOption 则能获取到timeline属性了
        * 别问我为什么知道的，调试！调试！调试！
        */
        //Console.log(option);
        option.xAxis[0].data = paramB.component.timeline.options[paramA.currentIndex].xAxis.data;
        /**
        * myChart.setOption(option,true); 是告诉图形不合并数据，一定要设置为true，不然多出来的数据会一直存在！会一直存在！会一直存在！
        */
        myChart4.setOption(option, true);
        /**
        * myChart.resize(); 在这里一定要使用这句话，不然会丢失时间轴！会丢失时间轴！会丢失时间轴！
        */
        myChart4.resize();
    });
           
        }   
       

        function DrawEChart2(ec) {
        var i=0;
        var colors = ['#CC3333', '#FFD700', '#3CB371']; //#CC3300
            // 基于准备好的dom，初始化echarts图表
            myChart2 = ec.init(document.getElementById('dataleft2')); //ec是function里的参数，main是定义的dom
            option = {
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)"
                },

                legend: {
                    orient: 'vertical',
                    x: 30,
                    y: 20,
                    textStyle: {    //图例文字的样式
                        color: '#E6E6FA',
                        fontSize: 17
                    },

                    data: ['凹陷地段', '山区隧道', '湖泊沼泽']
                },
                series: [
        {
            name: '区域路况',
            type: 'pie',
            radius: ['40%', '60%'],
            avoidLabelOverlap: false,
            itemStyle: {
                normal: {
                    color: function () {
                        return colors[i++];
                    }
                }
            },
            label: {
                normal: {
                    show: false,
                    position: 'center'
                },
                emphasis: {
                    show: true,
                    textStyle: {
                        fontSize: '50',
                        fontWeight: 'bold'
                    }
                }
            },
            labelLine: {
                normal: {
                    show: false
                }
            },
            data: [
                { value: 335, name: '凹陷地段' },
                { value: 310, name: '山区隧道' },
                { value: 310, name: '湖泊沼泽' }

            ]
        }
    ]
            };

    // 为echarts对象加载数据 
    myChart2.setOption(option);
    //  myChart.hideLoading();
          if (isRequst2) {
    isRequst2 = false;
    window.setInterval("getCharData_l2()", 5000);}
}
function DrawEChart2_1(ec) {
    var i = 0;
    var colors = ['#7B68EE', '#9932CC', '#0000FF', '#4169E1', '#87CEFA']; 
    // 基于准备好的dom，初始化echarts图表
    myChart2 = ec.init(document.getElementById('dataleft2')); //ec是function里的参数，main是定义的dom          
    option = {
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            textStyle: {    //图例文字的样式
                color: '#E6E6FA',
                fontSize: 14
            },
            data: ['凹陷地段', '山区隧道', '湖泊沼泽']
        },
        series: [
        {
            name: '通州区路况',
            type: 'pie',
            radius: ['40%', '60%'],
            avoidLabelOverlap: false,
            itemStyle: {
                normal: {
                    color: function () {
                        return colors[i++];
                    }
                }
            },
            label: {
                normal: {
                    show: false,
                    position: 'center'
                },
                emphasis: {
                    show: true,
                    textStyle: {
                        fontSize: '30',
                        fontWeight: 'bold'
                    }
                }
            },
            labelLine: {
                normal: {
                    show: false
                }
            },
            data: [
                { value: 100, name: '凹陷地段' },
                { value: 300, name: '山区隧道' },
                { value: 700, name: '湖泊沼泽' }

            ]
        }
    ]
    };

    // 为echarts对象加载数据 
    myChart2.setOption(option);
    //  myChart.hideLoading();
    if (isRequst2) {
        isRequst2 = false;
        window.setInterval("getCharData_l2()", 5000);
    }
}

function DrawEChart2_2(ec) {
    var i = 0;
    var colors = ['#7B68EE', '#9932CC', '#0000FF', '#4169E1', '#87CEFA']; 
    // 基于准备好的dom，初始化echarts图表
    myChart2 = ec.init(document.getElementById('dataleft2')); //ec是function里的参数，main是定义的dom          
    option = {
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            textStyle: {    //图例文字的样式
                color: '#E6E6FA',
                fontSize: 14
            },
            data: ['凹陷地段', '山区隧道', '湖泊沼泽']
        },
        series: [
        {
            name: '丰台区路况',
            type: 'pie',
            radius: ['40%', '60%'],
            avoidLabelOverlap: false,
            itemStyle: {
                normal: {
                    color: function () {
                        return colors[i++];
                    }
                }
            },
            label: {
                normal: {
                    show: false,
                    position: 'center'
                },
                emphasis: {
                    show: true,
                    textStyle: {
                        fontSize: '30',
                        fontWeight: 'bold'
                    }
                }
            },
            labelLine: {
                normal: {
                    show: false
                }
            },
            data: [
                { value: 700, name: '凹陷地段'},
                { value: 50, name:  '山区隧道' },
                { value: 100, name:  '湖泊沼泽' }

            ]
        }
    ]
    };

    // 为echarts对象加载数据 
    myChart2.setOption(option);
    //  myChart.hideLoading();
    if (isRequst2) {
        isRequst2 = false;
        window.setInterval("getCharData_l2()", 5000);
    }
}

function DrawEChart2_3(ec) {
    var i = 0;
    var colors = ['#7B68EE', '#9932CC', '#0000FF', '#4169E1', '#87CEFA']; 
    // 基于准备好的dom，初始化echarts图表
    myChart2 = ec.init(document.getElementById('dataleft2')); //ec是function里的参数，main是定义的dom          
    option = {
        tooltip: {
            trigger: 'item',
            formatter: "{a} <br/>{b}: {c} ({d}%)"
        },
        legend: {
            orient: 'vertical',
            x: 'left',
            textStyle: {    //图例文字的样式
                color: '#E6E6FA',
                fontSize: 14
            },
            data: ['凹陷地段', '山区隧道', '湖泊沼泽']
        },
        series: [
        {
            name: '河北廊坊路况',
            type: 'pie',
            radius: ['40%', '60%'],
            avoidLabelOverlap: false,
            itemStyle: {
                normal: {
                    color: function () {
                        return colors[i++];
                    }
                }
            },
            label: {
                normal: {
                    show: false,
                    position: 'center'
                },
                emphasis: {
                    show: true,
                    textStyle: {
                        fontSize: '30',
                        fontWeight: 'bold'
                    }
                }
            },
            labelLine: {
                normal: {
                    show: false
                }
            },
            data: [
                { value: 300, name: '凹陷地段' },
                { value: 350, name:  '山区隧道' },
                { value: 300, name: '湖泊沼泽' }

            ]
        }
    ]
    };

    // 为echarts对象加载数据 
    myChart2.setOption(option);
    //  myChart.hideLoading();
    if (isRequst2) {
        isRequst2 = false;
        window.setInterval("getCharData_l2()", 5000);
    }
}
 function getCharData_l2() {

            //通过AJAX获取数据
            $.ajax({
                type: "POST",
                async: false, //同步执行 若是true，则可以不用用户操作即执行下一步
                url: "Dataleft2.ashx",
                data: {},
                dataType: 'json', //返回数据形式为json
                success: function (result) {
                    //      alert(result);                                                                                                                                        
                    var moption1 = myChart2.getOption();
                    moption1.series[0]['data'] = result;
                    // alert(moption1.series[0]['data']);此句可以成功运行
                    myChart2.setOption(moption1);

                }
            });
        }

function DrawEChart3(ec) {
    // 基于准备好的dom，初始化echarts图表
    myChart3 = ec.init(document.getElementById('dataleft3')); //ec是function里的参数，main是定义的dom          

    option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {
                type: 'cross',
                crossStyle: {
                    color: '#999'
                }
            }
        },

     
  
  
        xAxis: [
        {
            type: 'category',
            data: ['太原', '榆次', '清徐', '祁县','太谷', '介休', '平遥'],
              axisLine:{
                     lineStyle:{
                        color:'#F8F8FF'
                        }
                },
           axisLabel: {
                    show: true,
                    textStyle: {
                        color: '#E6E6FA',
                        fontSize: '17'
                    }
                },
            axisPointer: {
                type: 'shadow'
            }
        }
    ],
        yAxis: [
        {
            type: 'value',
            name: '综合指数',//能见度与影响面积与其共用一个纵坐标
            min: 0,
            max: 250,
            interval: 50,
              axisLine:{
                     lineStyle:{
                        color:'	#F8F8FF'
                        }
                },
            axisLabel: {
                show: true,
                textStyle: {
                    color: '#E6E6FA',
                    fontSize: '17'
                }
            }
           
        }
   
    ],
        series: [
        {
            name: '综合指数',
            type: 'bar',
                barGap: '50%',            // 柱间距离，默认为柱形宽度的30%，可设固定值
    barCategoryGap : '50%',   // 类目间柱形距离，默认为类目间距的20%，可设固定值
    itemStyle: {
        normal: {

            color:  function (params){
                var colorList = ['rgba(255,215,0,0.8)', 'rgba(64,224,208,0.9)', 'rgba(255,215,0,0.8)', 'rgba(64,224,208,0.9)', 'rgba(255,215,0,0.8)', 'rgba(64,224,208,0.9)', 'rgba(255,215,0,0.8)'];
                        return colorList[params.dataIndex];
                    },
                 
            barBorderRadius: 1,           // 柱条边线圆角，单位px，默认为0
               
            label: {
                show: false
                // position: 默认自适应，水平布局为'top'，垂直布局为'right'，可选为
                //           'inside'|'left'|'right'|'top'|'bottom'
                // textStyle: null      // 默认使用全局文本样式，详见TEXTSTYLE
            }
            }
            },
            data: ['200','150','159','220','163','154','150']
        }
    
    ]
    };


    // 为echarts对象加载数据 
    myChart3.setOption(option);
 
          if (isRequst3) {
    isRequst3 = false;
    window.setInterval("getCharData_l3()", 8000);}

}
function getCharData_l3() {

            //通过AJAX获取数据 路况指数
            $.ajax({
                type: "POST",
                async: false, //同步执行 若是true，则可以不用用户操作即执行下一步
                url: "Dataleft3.ashx",
                data: {},
                dataType: 'json', //返回数据形式为json
                success: function (result) {
                  //    alert(result);  
                                                                                                                                                        
                    var moption1 = myChart3.getOption();
                    moption1.series[0]['data'] = result;
                   //  alert(moption1.series[0]['data']);此句可以成功运行
                    myChart3.setOption(moption1);
     
                }
            });

        }

function DrawEChart5(ec) {
    // 基于准备好的dom，初始化echarts图表
    myChart5 = ec.init(document.getElementById('dataright2')); //ec是function里的参数，main是定义的dom          

    option = {
        tooltip: {
            trigger: 'axis',
            axisPointer: {            // 坐标轴指示器，坐标轴触发有效
                type: 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
            }
        },
        legend: {
            x:170,
            y:30,
            textStyle: {    //图例文字的样式
                color: '#E6E6FA',
                fontSize: 17
            },
            data: ['路况', '能见度', '影响范围']
        },
        grid: {
            left: '0%',
            right: '0%',
            bottom: '3%',
            containLabel: true
        },
        xAxis: {
          axisLine:{
                     lineStyle:{
                        color:'#F8F8FF'
                        }
                },
            axisLabel: {
                show: true,
                textStyle: {
                    color: '#E6E6FA',
                    fontSize: '17'
                }
            },
            type: 'value'
        },
        yAxis: {
          axisLine:{
                     lineStyle:{
                        color:'#F8F8FF'
                        }
                },
            axisLabel: {
                show: true,
                textStyle: {
                    color: '#E6E6FA',
                    fontSize: '17'
                }
            },
            type: 'category',
            data: ['3月','2月', '1月', '12月', '11月']
        },
        series: [
        {
            name: '路况',
            type: 'bar',
            stack: '总量',
            barGap: '40%',            // 柱间距离，默认为柱形宽度的30%，可设固定值
            barCategoryGap: '50%',   // 类目间柱形距离，默认为类目间距的20%，可设固定值
             itemStyle:{  
                     normal:{
                         color: '#40E0D0'  
                       }  
                },  
            label: {
                normal: {
                    show: true,
                    position: 'insideRight'
                }
            },
            data: [50, 100, 150, 210,120]
        },
        {
            name: '能见度',
            type: 'bar',
            stack: '总量',
            itemStyle: {
                normal: {
                    color: '#20B2AA'
                }
            },  
            label: {
                normal: {
                    show: true,
                    position: 'insideRight'
                }
            },
            data: [140, 150, 50, 220,180]
        },
        {
            name: '影响范围',
            type: 'bar',
            stack: '总量',
            itemStyle: {
                normal: {
                    color: '#008B8B'
                }
            },  
            label: {
                normal: {
                    show: true,
                    position: 'insideRight'
                }
            },
            data: [100, 50, 150, 210,80]
        }
       
    ]
    };

    // 为echarts对象加载数据 
    myChart5.setOption(option);
    //  myChart.hideLoading();
    /*
    *此数据为静态数据用于比对实时数据
    *
    **/
         if (isRequst5) {
    isRequst5 = false;
    window.setInterval("getCharData_r2()", 7000);}

}
function getCharData_r2() {

            //通过AJAX获取数据
            $.ajax({
                type: "POST",
                async: false, //同步执行 若是true，则可以不用用户操作即执行下一步
                url: "Dataright2.ashx",
                data: {},
                dataType: 'json', //返回数据形式为json
                success: function (result) {
                    //      alert(result);                                                                                                                                        
                    var moption1 = myChart5.getOption();
                    moption1.series[0]['data'] = result;
                    // alert(moption1.series[0]['data']);此句可以成功运行
                    myChart5.setOption(moption1);

                }
            });
        }
        function DrawEChart6(ec) {
            var i = 0;
            var colors = ['#7B68EE', '', '#0000FF', '#4169E1', '#87CEFA'];
    // 基于准备好的dom，初始化echarts图表
    myChart6 = ec.init(document.getElementById('dataright3')); //ec是function里的参数，main是定义的dom          

    option = {
     
        title: {
            x: 30,
            y:30,
            text: '团雾多发影响因素分析',
         
            textStyle: {
                color: '#E6E6FA',
                fontSize:'17'

            }
        },
        tooltip: {
            trigger: 'axis'
        },
        legend: {
         
            data: ['2017年', '2016年', '2015年'],
            orient: 'vertical',
                 x: 30,
                  y: 120,
                    textStyle: {    //图例文字的样式
                        color: '#E6E6FA',
                        fontSize: 17
                    }
        },
                toolbox: {
        x:350,
        y:30,
            show: true,
            feature: {
                mark: { show: true },
                dataView: { show: true, readOnly: false },
                restore: { show: true },
                saveAsImage: { show: true }
            }
        },
        calculable: true,
        polar: [
        {   //center: ['50%', '50%'],
            name: { show: true, textStyle: { fontSize: 16, color: "#99CCFF"} },
            indicator: [
                { text: '省份', max: 95 },
                { text: '路段', max: 95 },
                { text: '月份', max: 95 },
                { text: '时段', max: 95 },
                { text: '频率', max: 95 },
                { text: '规模', max: 95 }
            ],
            radius: 95
        }
    ],
   
        series: [
        {
            name: '团雾多发影响因素分析',
            type: 'radar',
          
            data: [
                {
                    value: [95, 30, 92, 31, 93, 40],
                    itemStyle: {
                        normal: {
                            lineStyle: {
                                color: "#99CC33	",
                                width: 2
                            },
                            areaStyle: {
                                color: "#F4A460",
                                type: 'default'
                            }
                        }
                    },
                    name: '2015年'
                },
                 {
                     value: [20, 94, 30, 40, 50, 90],
                     itemStyle: {
                         normal: {
                             lineStyle: {
                                 color: "#F4A460	",
                                 width: 2
                             },
                             areaStyle: {
                                 color: "#99CC99",
                                 type: 'default'
                             }
                         }
                     },
                     name: '2016年'
                 },
                {
                    value: [28, 32, 40, 90, 30, 80],
                    itemStyle: {
                        normal: {
                            lineStyle: {
                                color: "#CC3300	",
                                width: 2
                            },
                            areaStyle: {
                                color: "#CC3333",
                                type: 'default'
                            }
                        }
                    },
                    name: '2017年'
                }
            ]
        }
    ]
    };
  
    // 为echarts对象加载数据 
    myChart6.setOption(option);

  /*  if (isRequst6) {
        isRequst6 = false;
        window.setInterval("getCharData_r3()", 5000);
    }
    */
}
function getCharData_r3() {
    
            //通过AJAX获取数据
    $.ajax({
        type: "POST",
        async: false, //同步执行 若是true，则可以不用用户操作即执行下一步
        url: "Dataright3.ashx",
        data: {},
        dataType: 'json', //返回数据形式为json
        success: function (result) {
            //  alert(result);   
            
            var moption1 = myChart6.getOption();
            moption1.series[0]['data'] = result;
            // alert(moption1.series[0]['data']);此句可以成功运行
            myChart6.setOption(moption1);

        }
    });
        }

    </script>
    </form>
</body>
</html>
