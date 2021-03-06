/**
 * Created by lenovo on 2017/6/26.
 */
$(function(){
    function initData(){
        $.ajax({
            url: _ctx+"/wifi/vWifiTrafficData",
            method: "get",
            dataType: "json",
            success: function(data){
                initEchart("echart1",data.topMap,data.nameList);
                initEchart("echart2",data.bottomMap,data.nameList);
            },
            error: function(){

            }
        })
    }
    function initEchart(domId,echartSData,echartName) {
        var legendData = [];
        var seriesData = [];
        var xAxisData = echartName;
        if(domId=="echart1"){
            legendData = ['TREG 1','TREG 2','TREG 3','TREG 4','TREG 5','TREG 6','TREG 7'];
        }else{
            legendData = ['CONS','DWS','EBIS'];
        }
        for(var name in echartSData){
            var tmpObj = {};
            tmpObj.type = 'line';
            tmpObj.smooth = true;
            tmpObj.name = name;
            tmpObj.data = echartSData[name];
            seriesData.push(tmpObj)
        }
        console.log(seriesData);
        var myChart = echarts.init(document.getElementById(domId));
        option = {
            title: {
                text: "Daily Traffic Distribution By Regions-Jun 2017",
                backgroundColor:"#161C2F",
                x:30,
                textStyle: {
                    fontSize: 18,
                    fontWeight: 'bolder',
                    color: '#666c7f'
                }
            },
            tooltip : {
                trigger: 'axis'
            },
            legend: {
                orient:'vertical',
                x:'right',
                y:'top',
                textStyle:{
                    fontSize: 12,
                    color:'#8D93A8'
                },
                data:legendData
            },
            calculable: false,
            grid:{
                borderWidth:0,//外围边框线
                borderColor:'#666c7f'
            },
            xAxis: [
                {
                    type: 'category',
                    name:'Day',
                    boundaryGap : false,
                    axisLine : {    // 轴线
                        show: true
                    },
                    axisLabel : {//轴文本
                        show:true,
                        interval:0,    // {number}刻度的长短，可设为数字
                        rotate: 45,    //旋转度数
                        margin:5,
                        splitNumber: 18,
                        textStyle:{
                            color: '#666C7F',
                            fontSize:15
                        }
                    },

                    lineStyle: {
                        color: 'green',
                        type: 'solid',
                        width: 2
                    },
                    splitLine : { //网格分隔线
                        show:false,
                        lineStyle: {
                            color: '#483d8b',
                            type: 'dashed',
                            width: 1
                        }
                    },
                    splitArea : {show : false},//网格区域
                    data:xAxisData
                }
            ],
            yAxis: [
                {
                    type: 'value',
                    name:'GigaByte',
                    axisLabel : {
                        show:true,
                        interval:0,    // {number}刻度的长短，可设为数字 间隔
                        margin:5,
                        splitNumber: 100,
                        textStyle:{
                            color: '#666C7F',
                            fontSize:15
                        }
                    },
                    splitLine : { //分隔线
                        show:true,
                        lineStyle: {
                            color: '#666C7F',
                            type: 'dashed',
                            width: 1
                        }
                    }
                }
            ],
            series: seriesData
        };
        myChart.setOption(option);
    }
    initData();
}());