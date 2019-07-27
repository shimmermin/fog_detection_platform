<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="echart.WebForm2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>echart</title>
    <script type="text/javascript" src="Scripts/jquery-1.4.1.min.js"></script>
   <link rel="stylesheet" href="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.css" />
    <style type="text/css">
     .Title
     {text-align:center;     
         }
         div{font-weight:bold }
 </style>
</head>
<body>

    <div id="main1" style="margin: 0px auto; height: 50px;width:1300px; background: #d3b17d;" >
        <asp:Label ID="Label1" runat="server"  height="50px" width="1300px" Text="高速公路团雾监测预警平台" BorderColor="#5d513c" ForeColor="#5d513c" Font-Size="XX-Large" CssClass="Title" ></asp:Label>
    </div>
    <div id="main2" style="margin: 0px auto; height: 720px;width:1300px; background: #eedeb0;">
        <div id="dataleft" style="float: left; width: 300px; height: 720px; background: #eedeb0;">
            <div id="text1" style="margin: 0px auto; height: 20px;width: 300px; background: #eedeb0;">
            <asp:Label ID="Label8" runat="server"  height="20px" width="300px" Text="团雾预警" BorderColor="#5d513c" ForeColor="#5d513c" CssClass="Title"></asp:Label></div>
            <div id="dataleft1" style="margin: 0px auto; height: 220px;width: 300px; background: #eedeb0;">
                
                <form id="Form1" runat="server">
                <br />
                <asp:Label ID="Label9" runat="server" Text="地区" BorderColor="#5d513c" ForeColor="#5d513c" Font-Size="Medium"></asp:Label>&nbsp;&nbsp; <asp:Label ID="Label10" runat="server" Text="能见度"  BorderColor="#5d513c" ForeColor="#5d513c" Font-Size="Medium"></asp:Label>
                &nbsp;&nbsp;<asp:Label ID="Label11" runat="server" Text="预警路段"  BorderColor="#5d513c" ForeColor="#5d513c" Font-Size="Medium"></asp:Label>
                <br />
                &nbsp;&nbsp;
                <br />
                <asp:Label ID="Label12" runat="server" Text="河北廊坊"  BorderColor="#5d513c" ForeColor="#5d513c" Font-Size="Small"></asp:Label>&nbsp;<asp:Label 
                    ID="Label13" runat="server" Text="50米" BorderColor="#5d513c" ForeColor="#5d513c" Font-Size="Small"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server" Text="京哈高速  廊坊市三河市燕郊经济技术开发区" BorderColor="#5d513c" ForeColor="#5d513c" 
                    Width="150px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label15" runat="server" Text="北京通州" BorderColor="#5d513c" ForeColor="#5d513c" Font-Size="Small"></asp:Label>&nbsp;<asp:Label 
                    ID="Label16" runat="server" Text="100米" BorderColor="#5d513c" ForeColor="#5d513c" Font-Size="Small"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server" Text="京哈高速  通州区台湖镇施园桥 约81米" BorderColor="#5d513c" ForeColor="#5d513c" 
                    Width="143px"></asp:TextBox>
                <br />
                <br />
                <asp:Label ID="Label18" runat="server" Text="北京丰台" BorderColor="#5d513c" ForeColor="#5d513c" Font-Size="Small"></asp:Label>&nbsp;<asp:Label 
                    ID="Label19" runat="server" Text="150米" BorderColor="#5d513c" ForeColor="#5d513c" Font-Size="Small"></asp:Label>
                <asp:TextBox ID="TextBox3" runat="server" Text="京石高速  丰台区长辛店街道" BorderColor="#5d513c" ForeColor="#5d513c" 
                    Width="143px"></asp:TextBox>
                &nbsp;<br />
                
               
                </form>
            </div>
            <div id="text2" style="margin: 0px auto; height: 20px;width: 300px; background: #eedeb0;">
            <asp:Label ID="Label2" runat="server"  height="20px" width="300px" Text="区域路况" BorderColor="#5d513c" ForeColor="#5d513c" CssClass="Title"></asp:Label></div>
            <div id="dataleft2" style="margin: 0px auto; height: 220px; width: 300px;background:#eedeb0;">
                
            </div>
            <div id="text3" style="margin: 0px auto; height: 20px;width: 300px; background: #eedeb0;">
            <asp:Label ID="Label3" runat="server"  height="20px" width="300px" Text="综合监测" BorderColor="#5d513c" ForeColor="#5d513c" CssClass="Title"></asp:Label></div>
            <div id="dataleft3" style="margin: 0px auto; height: 220px;width: 300px; background: #eedeb0;">
                </div>
        </div>
        <div id="center" style="float: left; width: 700px; height: 720px; background: #eedeb0;">
            <div id="map" style="margin: 0px auto;width: 700px; height: 500px; background: #000000;">
               </div>
            <div id="dvd" style="margin: 0px auto; width: 700px;height: 220px; background: #eedeb0;">
             <div id="dvd1" style="float: left; width: 233px; height: 220px; background: #eedeb0;">
              <asp:Image ID="Image2" ImageUrl='/dvd1.jpg' runat="server" Height=" 220px" 
                    Width="233px">
                </asp:Image>
             </div>
             <div id="dvd2" style="float: left; width: 233px; height: 220px; background: #eedeb0;">
             <asp:Image ID="Image3" ImageUrl='/dvd2.jpg' runat="server" Height=" 220px" 
                    Width="233px">
                </asp:Image>
             </div>
             <div id="dvd3" style="float: left; width: 233px; height: 220px; background: #eedeb0;">
             <asp:Image ID="Image4" ImageUrl='/dvd3.jpg' runat="server" Height=" 220px" 
                    Width="233px">
                </asp:Image>
             </div>
            </div>
        </div>
        <div id="dataright" style="float: left; width: 300px; height: 720px; background: #eedeb0;">
        <div id="text4" style="margin: 0px auto; height: 20px;width: 300px; background: #eedeb0;">
            <asp:Label ID="Label4" runat="server"  height="20px" width="300px" Text="实时数据" BorderColor="#5d513c" ForeColor="#5d513c" CssClass="Title"></asp:Label></div>
            <div id="dataright1" style="margin: 0px auto; width: 300px;height: 220px; background: #eedeb0;">
              </div>
              <div id="text5" style="margin: 0px auto; height: 20px;width: 300px; background: #eedeb0;">
            <asp:Label ID="Label5" runat="server"  height="20px" width="300px" Text="历史数据" BorderColor="#5d513c" ForeColor="#5d513c" CssClass="Title"></asp:Label></div>
            <div id="dataright2" style="margin: 0px auto;width: 300px; height: 220px; background: #eedeb0;">
           
            </div>
            <div id="text6" style="margin: 0px auto; height: 20px;width: 300px; background: #eedeb0;">
            <asp:Label ID="Label6" runat="server"  height="20px" width="300px" Text="统计分析" BorderColor="#5d513c" ForeColor="#5d513c" CssClass="Title"></asp:Label></div>
            <div id="dataright3" style="margin: 0px auto; width: 300px;height: 220px; background: #eedeb0;">
           
            </div>
        </div>
    </div>
    <div id="main3" style="margin: 0px auto; height: 50px; width:1300px;background: #d3b17d;">
     <asp:Label ID="Label7" runat="server"  height="50px" width="1300px" Text="高速公路团雾诱导预警监测系统" BorderColor="#5d513c" ForeColor="#5d513c" CssClass="Title" Font-Size="XX-Large"></asp:Label>
    </div>
   
    <script type="text/javascript" src="echarts/echarts.js"></script>
    <script type="text/javascript" src="echarts/echarts-all.js"></script>  
    <script type="text/javascript" src="http://cdn.leafletjs.com/leaflet-0.7.3/leaflet.js" ></script>
    <script type="text/javascript" src="http://echarts.baidu.com/doc/example/timelineOption.js"></script>  
    <script type="text/javascript">
        //   var myChart1;//测试数据
        alert(1);

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
        alert(1);
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
               'echarts/chart/map'

            ], DrawECharts
            );

        function DrawECharts(ec) {
            alert(3);
            if (isRequst1) {
                isRequst1 = false;
                window.setInterval("DrawEChart1()", 3000);

            }
            alert(4);
            DrawEChart2(ec);
            alert(5);
            DrawEChart3(ec);
            DrawEChart4(ec);
            DrawEChart5(ec);
            DrawEChart6(ec);

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
                        document.getElementById('Label12').innerHTML = "北京通州";
                        document.getElementById('Label13').innerHTML = "75米";
                        document.getElementById('TextBox1').value = "京哈高速  通州区台湖镇施园桥 约81米";
                        document.getElementById('Label15').innerHTML = "河北廊坊";
                        document.getElementById('Label16').innerHTML = "175米";
                        document.getElementById('TextBox2').value = "京哈高速  廊坊市三河市燕郊经济技术开发区";
                        document.getElementById('Label18').innerHTML = "北京丰台";
                        document.getElementById('Label19').innerHTML = "300米";
                        document.getElementById('TextBox3').value = "京石高速  丰台区长辛店街道";

                    }
                    else if (result == 1) {
                        document.getElementById('Label12').innerHTML = "河北廊坊";
                        document.getElementById('Label13').innerHTML = "30米";
                        document.getElementById('TextBox1').value = "京哈高速  廊坊市三河市燕郊经济技术开发区";
                        document.getElementById('Label15').innerHTML = "北京通州";
                        document.getElementById('Label16').innerHTML = "200米";
                        document.getElementById('TextBox2').value = "京哈高速  通州区台湖镇施园桥 约81米";
                        document.getElementById('Label18').innerHTML = "北京丰台";
                        document.getElementById('Label19').innerHTML = "300米";
                        document.getElementById('TextBox3').value = "京石高速  丰台区长辛店街道";

                    }
                    else {
                        document.getElementById('Label12').innerHTML = "北京丰台";
                        document.getElementById('Label13').innerHTML = "80米";
                        document.getElementById('TextBox1').value = "京石高速  丰台区长辛店街道";
                        document.getElementById('Label15').innerHTML = "北京通州";
                        document.getElementById('Label16').innerHTML = "200米";
                        document.getElementById('TextBox2').value = "京哈高速  通州区台湖镇施园桥 约81米";
                        document.getElementById('Label18').innerHTML = "河北廊坊";
                        document.getElementById('Label19').innerHTML = "250米";
                        document.getElementById('TextBox3').value = "京哈高速  廊坊市三河市燕郊经济技术开发区";

                    }
                }
            });

        }

        function DrawEChart4(ec) {
            // 基于准备好的dom，初始化echarts图表
            myChart4 = ec.init(document.getElementById('dataright1')); //ec是function里的参数，main是定义的dom    

            option = {
                timeline: {
                    data: ['11:00', '12:00', '13:00', '14:00'],
                    orient: 'vertical',
                    show: true,
                    axisType: 'category',
                    autoPlay: true,
                    playInterval: 5000
                },
                grid: { containLabel: true },
                options: [
        {

            title: { text: '11:00' },
            tooltip: { trigger: 'axis' },
            xAxis: { data: ['8', '9', '10', '11'] },
            yAxis: { type: 'value' },
            series: [{ name: '8:00', type: 'line', data: [150, 200, 300, 500]}]
        },
        {
            /**options 2 */
            title: { text: '12:00' },
            xAxis: { data: ['9', '10', '11', '12'] }, //length=4
            series: [{ name: '9:00', type: 'line', data: [200, 300, 500, 150]}]
        },
        {
            /**options 3 */
            title: { text: '13:00' },
            xAxis: { data: ['10', '11', '12', '13'] },
            series: [{ name: '10:00', type: 'line', data: [300, 500, 150, 200]}]
        },
         {
             /**options 3 */
             title: { text: '14:00' },
             xAxis: { data: ['11', '12', '13', '14'] },
             series: [{ name: '11:00', type: 'line', data: [500, 150, 200, 300]}]
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
                    data: ['凹陷地段', '山区隧道', '湖泊沼泽']
                },
                series: [
        {
            name: '区域路况',
            type: 'pie',
            radius: ['40%', '60%'],
            avoidLabelOverlap: false,
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
                window.setInterval("getCharData_l2()", 5000);
            }
        }
        function DrawEChart2_1(ec) {
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
                    data: ['高速路段', '隧道', '河流']
                },
                series: [
        {
            name: '通州区路况',
            type: 'pie',
            radius: ['40%', '60%'],
            avoidLabelOverlap: false,
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
                { value: 100, name: '高速路段' },
                { value: 300, name: '隧道' },
                { value: 700, name: '河流' }

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
                    data: ['高速路段', '隧道', '河流']
                },
                series: [
        {
            name: '丰台区路况',
            type: 'pie',
            radius: ['40%', '60%'],
            avoidLabelOverlap: false,
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
                { value: 700, name: '高速路段' },
                { value: 50, name: '隧道' },
                { value: 100, name: '河流' }

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
                    data: ['高速路段', '隧道', '河流']
                },
                series: [
        {
            name: '河北廊坊路况',
            type: 'pie',
            radius: ['40%', '60%'],
            avoidLabelOverlap: false,
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
                { value: 300, name: '高速路段' },
                { value: 350, name: '隧道' },
                { value: 300, name: '河流' }

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

                legend: {
                    data: ['综合指数']
                },
                xAxis: [
        {
            type: 'category',
            data: ['贵州', '江西', '福建', '河南'],
            axisPointer: {
                type: 'shadow'
            }
        }
    ],
                yAxis: [
        {
            type: 'value',
            name: '综合指数', //能见度与影响面积与其共用一个纵坐标
            min: 0,
            max: 250,
            interval: 50

        }

    ],
                series: [
        {
            name: '综合指数',
            type: 'bar',
            data: ['50', '100', '150', '210']
        }

    ]
            };


            // 为echarts对象加载数据 
            myChart3.setOption(option);

            if (isRequst3) {
                isRequst3 = false;
                window.setInterval("getCharData_l3()", 5000);
            }

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
                    data: ['路况', '能见度', '影响范围']
                },
                grid: {
                    left: '3%',
                    right: '4%',
                    bottom: '3%',
                    containLabel: true
                },
                xAxis: {
                    type: 'value'
                },
                yAxis: {
                    type: 'category',
                    data: ['2月', '1月', '12月', '11月']
                },
                series: [
        {
            name: '路况',
            type: 'bar',
            stack: '总量',
            label: {
                normal: {
                    show: true,
                    position: 'insideRight'
                }
            },
            data: [50, 100, 150, 210]
        },
        {
            name: '能见度',
            type: 'bar',
            stack: '总量',
            label: {
                normal: {
                    show: true,
                    position: 'insideRight'
                }
            },
            data: [140, 150, 50, 220]
        },
        {
            name: '影响范围',
            type: 'bar',
            stack: '总量',
            label: {
                normal: {
                    show: true,
                    position: 'insideRight'
                }
            },
            data: [100, 50, 150, 210]
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
                window.setInterval("getCharData_r2()", 7000);
            }

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
            // 基于准备好的dom，初始化echarts图表
            myChart6 = ec.init(document.getElementById('dataright3')); //ec是function里的参数，main是定义的dom          

            option = {
                tooltip: {
                    trigger: 'item',
                    formatter: "{a} <br/>{b}: {c} ({d}%)"
                },
                legend: {
                    orient: 'vertical',
                    x: 'left',
                    data: ['贵州', '江西', '福建', '河南']
                },
                series: [
        {
            name: '综合团雾监测情况',
            type: 'pie',
            radius: ['50%', '70%'],
            avoidLabelOverlap: false,
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
                { value: 335, name: '贵州' },
                { value: 310, name: '江西' },
                { value: 234, name: '福建' },
                { value: 135, name: '河南' }

            ]
        }
    ]
            };

            // 为echarts对象加载数据 
            myChart6.setOption(option);

            if (isRequst6) {
                isRequst6 = false;
                window.setInterval("getCharData_r3()", 5000);
            }

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
    </body>
</html>
