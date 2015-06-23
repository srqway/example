<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>word cloud</title>
<!-- <script src="/html-example/javascript/jquery-2.1.4/jquery-2.1.4.min.js"></script> -->
</head>
<body>
	<div id="main" style="height: 400px"></div>
	<script
		src="/html-example/javascript/echarts-2.2.4/build/dist/echarts.js"></script>
	<script type="text/javascript">
		require.config({
			paths : {
				echarts : 'http://localhost:8080/html-example/javascript/echarts-2.2.4/build/dist'
			}
		});
		require(
			[ 'echarts', 'echarts/chart/wordCloud'], function(ec) {
			var myChart = ec.init(document.getElementById('main'));
			function createRandomItemStyle() {
			    return {
			        normal: {
			            color: 'rgb(' + [
			                Math.round(Math.random() * 160),
			                Math.round(Math.random() * 160),
			                Math.round(Math.random() * 160)
			            ].join(',') + ')'
			        }
			    };
			}

			option = {
			    title: {
			        text: 'Google Trends',
			        link: 'http://www.google.com/trends/hottrends'
			    },
			    tooltip: {
			        show: true,
			        enterable: false
			    },
			    series: [{
			        name: 'Google Trends',
			        type: 'wordCloud',
			        size: ['80%', '80%'],
			        textRotation : [0, 45, 90, -45],
			        textPadding: 0,
			        autoSize: {
			            enable: true,
			            minSize: 14
			        },
			        data: [
			            {
			                name: "Sam S Club",
			                value: 10000,
			                itemStyle: {
			                    normal: {
			                        color: 'black'
			                    }
			                }
			            },
			            {
			                name: "Macys",
			                value: 6181,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Amy Schumer",
			                value: 4386,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Jurassic World",
			                value: 4055,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Charter Communications",
			                value: 2467,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Chick Fil A",
			                value: 2244,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Planet Fitness",
			                value: 1898,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Pitch Perfect",
			                value: 1484,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Express",
			                value: 1112,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Home",
			                value: 965,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Johnny Depp",
			                value: 847,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Lena Dunham",
			                value: 582,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Lewis Hamilton",
			                value: 555,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "KXAN",
			                value: 550,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Mary Ellen Mark",
			                value: 462,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Farrah Abraham",
			                value: 366,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Rita Ora",
			                value: 360,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Serena Williams",
			                value: 282,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "NCAA baseball tournament",
			                value: 273,
			                itemStyle: createRandomItemStyle()
			            },
			            {
			                name: "Point Break",
			                value: 265,
			                itemStyle: createRandomItemStyle()
			            }
			        ]
			    }]
			};

			myChart.setOption(option);
		});
	</script>
</body>
</html>