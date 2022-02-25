<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	table{}
	table,th,td{
		border:1px solid gray;
	}
	table{}
	table{}
	table{}
</style>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
$(function(){
	
		$.get("stu.jsp","num=11",function(data){ /// stu.jsp호출, 데이터를 불러왔다. / ?num=00 : 파라미터값전달 / 두번째 인자가 파라미터라서 post이지만 전달됨
			console.log(typeof data,data); // 콘솔에 나타난다.(data 타입은 object,object)
			var tbody=$('<tbody/>').appendTo('table'); // 만들어진 것들이 tbody로 들어가고, 이 순간 만든 tbody를 table에 넣는다.
			for(var i=0; i<data.students.length;i++){// 배열의 length만큼 만들어진다.
				$('<tr><td></td><td></td><td></td><td></td><td></td></tr>') //데이터를 뿌리기 위해서 있어야하는 엘리먼트
					.find('td')
					.first().text(data.students[i].num)
					.next().text(data.students[i].name)
					.next().text(data.students[i].kor)
					.next().text(data.students[i].eng)
					.next().text(data.students[i].math) // 마지막으로 잡은 td.
					.parent().appendTo(tbody); // td의 부모는 tr
				
			}
		});
	});
</script>
</head>
<body>
	<h1>리스트 페이지</h1>
	<table>
		<thead>
			<tr>
				<th>학번</th>
				<th>이름</th>
				<th>국어</th>
				<th>영어</th>
				<th>수학</th>
			</tr>
		</thead>
		<!--gvdg  -->
	</table>
</body>
</html>