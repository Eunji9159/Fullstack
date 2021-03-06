<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Ajax Test</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script>
function getBoard(val){ //2
    var values; //ArrayList 값을 받을 변수를 선언
    $.ajax({
        method:"POST", 
        url : "reqAjax1.do",
        data: {'seq': val}, // => {'seq': 2}
        success : function(result) {
           if(result.code == "OK") { //controller에서 넘겨준 성공여부 코드
               values = result.boardList ; 
               $.each(values, function( index, value ) {
                  $("#status").append("번호: "+value.seq+", 제목: "+value.title+", 작성자: "+value.writer);
               });
               console.log("성공");
            }else {
               console.log("실패");
           }          
        },
        error:function(request,status){
            alert("오류가 발생했습니다.");
        }
    });
}

function getUser(){
    var values; //ArrayList 값을 받을 변수를 선언
    var objParams = {'id': 'test', 'password': 'test1234'};
       $.ajax({
           method:"POST", //"POST"
           url : "reqAjax2.do",
           cache: false,
           data: objParams,
           success : function(result) {
              if(result.code == "OK") { //controller에서 넘겨준 성공여부 코드
                  values = result.user ; 
              
                 if(values==null) {
                     $("#status1").append("아이디: " +objParams.id+" 패스워드: " +objParams.password+ "에 해당되는 내용이 없습니다.");
                 }else{ 
                    console.log("성공");
                     $("#status1").append("아이디: "+values.id+", 이름: "+values.name+", 역할: "+values.role);
                    
                 }
                 
               }else {
                  console.log("실패");
              }          
           },
           error:function(request,status){
               alert("오류가 발생했습니다.");
           }
       });
}
</script>
</head>
<body>
   <h2>ajax Object 받기</h2>
   
   <div id="demo">
      <button type="button" onclick="getBoard(2)">게시판 2번 글 데이터 불러오기</button>
   </div><br>
   <div id="status"></div><br>
   
   <div id="demo1">
      <button type="button" onclick="getUser()">회원 데이터 불러오기</button>
   </div><br>
   <div id="status1"></div>
   <br>

</body>
</html>