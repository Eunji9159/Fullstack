<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style rel="stylesheet" type="text/css">
   *{
      margin:0px;
      padding:0px;
   }
   .container{ /*(.)클래스 지칭  */
      width:800px;
      margin:0px auto;
   }
   #menu{
      position:fixed;
      width:100%;
      height:50px;
      background:gray;
      
   }
   #menu>a{
      line-height:50px;
      color:white;
      text-decoration:none;
      margin-right:50px;   
   }
   #content{
      padding-top:60px;
   }
   #content table{
      border-collapse: collapse;
      width: 80%;
      margin: 10px auto;
   }
   #content table,#content table th,#content table td{
      border: 1px solid gray;
   }
   #backup{ /* 클릭해야만 보이도록 이전에는 display:none으로 해둔다. */
      display:none;
   }
   #popup{
   background-color: rgba(0,0,0,0.5);
   width: 100%;
   height: 100%;
   position: absolute;
   left: 0px;
   top: 0px;
   display: none; /* 1단계 - 첫화면에서는 보이지 않게 설정했다가, 팝업창을 띄우게 될 경우 showpopup을 수행하면된다. */
   }
   #popup>div{
      width: 400px;
      height: 400px;
      background-color:white;
      margin: 100px,auto;
      border-radius: 20px;
      
   }
</style>
<script type="text/javascript" src="js/jquery-1.12.4.js"></script>
<script type="text/javascript">
	 $(function(){
	// popup창 내부에서의 정보전송	 
      $('#popup form').submit(function(){//popup form(=css에서의 popup>formr과 같다.) submit(입력)창을 누르면 이 콜백함수가 작동된다.
         var param=$(this).serialize(); // serialize(:전송가능한 데이터 형식으로 만들어줌). 그것을 param이라고 설정해준다.
         console.log(param); // 확인하기 위한 용도로 콘솔창에 띄워준다.
         $('#popup').click(); // popup에 클릭하는 기능을 달아줬다.
         $.ajax({
            url:'insert.jsp', // insert.jsp파일에 데이터를 보내준다.
            data:param, // 데이터=파라미터
            type:'post', // 타입은 post방식이다.(주소창에는 데이터가 보이지 않고,)
            success:function(){ // 데이터가 성공적으로 보내지면 다음을 실행한다.
                  $('#menu a:eq(1)').click(); //  (<a href="#dept">[LIST]</a>)를 클릭한다.
            }
         });
         return false; // ? 
      });
      // 
      $('#popup')
      .click(function(){// popup을 클릭했을 때 다음을 실행한다.
            $(this).css('display','none').find('input').val('');//클릭했을 때, input의 값이 다시 보이지 않도록 빈칸으로 바꿔준다.

      })
      .children()
      .first() // (div id= popup)>div 
      .click(function(e){ // 클릭이벤트 객체 e.
         e.stopPropagation(); // div부터는 클릭객체 e의 수행을 막는다.
      });
      $('#content').on('click','table+a',showPopup) // 2단계 - table아래에 있는 a태그에 클릭을 달아서, 밑에서 선언해준 showPopup함수를 호출
      $('#menu a')
      .first()
         .click(function(){// 클릭시 수행
            $('#content').html($('#home').html()) // 컨텐츠에 #home의 내용들을 써준다.
         })
         .click() // 첫화면에 무조건 컨텐츠 내용이 표현될수 있게 한번의 클릭을 수행하도록 한다.
      .next()
         .click(function(){
            $('#content').html($('#list').html());
            $.ajax('dept.jsp',{
               type:'post',
               dataType:'json',
               success:function(data,status,xhr){
                  console.log(typeof data,data);
                  var tbody=$('<tbody/>');
                  for(row of data.dept){ /* dept 테이블의 row갯수만큼 반복한다. */
                     $('<tr/>')
                        .append($('<td/>').text(row.deptno))
                        .append($('<td/>').text(row.dname))
                        .append($('<td/>').text(row.loc))
                     .appendTo(tbody);
                  }
                  $('#content table').append(tbody);
               }
               /*error:function(a,b,c){
                  console.log(a,b,c);
                  Type: Function( jqXHR jqXHR, String textStatus, String errorThrown )
               }*/
               //data://if you need parameter value, use data options// num=dd&
               //contentType : 'application/x-www-form-urlencoded; charset=UTF-8'// edit type of form tag
            });
         });
      
   });
    function showPopup(){
       $('#popup').css('display','block'); // popup창이 보이도록 display를 block으로 설정한다.
         return false;
    }
</script>
</head>
<body>
   <div class="container">
      <div id="menu">
         <a href="#home">[HOME]</a><!--앵커를 붙이면 새로운 페이지 로딩은 일어나지 않고 a 자기자신의 위치로 가게 한다
                                    history는 남는다.  -->
         <a href="#dept">[LIST]</a>
      </div>
      <div id="content">         
      </div>
      </div>
   <div id="backup">
      <div id="home">
         <h1>환영합니다!</h1>
         용기가 풍부하게 커다란 이것을 위하여, 것이다. 타오르고 능히 인생의 있다. 가슴이 방황하여도, 거친 그들은 그들에게 새가 무한한 것이다. 행복스럽고 위하여서, 그들은 때까지 부패를 것이다. 낙원을 뜨거운지라, 창공에 없으면, 하는 얼음이 능히 수 보라. 보이는 앞이 우리의 위하여서. 영원히 위하여, 가치를 가진 커다란 청춘의 살 천하를 아니다. 그들을 구하기 하여도 이상이 노년에게서 청춘의 것이다. 그러므로 얼마나 이상이 청춘 듣는다. 발휘하기 예수는 심장의 기관과 그들을 안고, 가지에 가치를 있으랴? 되려니와, 할지라도 심장의 이 얼음에 열락의 싶이 끓는다.

청춘의 인간이 끓는 희망의 구할 이상, 생명을 청춘의 보내는 듣는다. 두손을 이상 그들의 이상 귀는 것은 주는 칼이다. 뛰노는 날카로우나 꽃이 청춘 광야에서 끝까지 교향악이다. 것이 튼튼하며, 군영과 실현에 할지니, 우리의 그들은 교향악이다. 수 그림자는 창공에 있는가? 그와 듣기만 피어나는 노년에게서 간에 두손을 힘차게 소담스러운 그들의 그리하였는가? 그러므로 풀밭에 눈이 충분히 역사를 못하다 대한 별과 것이다. 대중을 같으며, 듣기만 황금시대의 때까지 웅대한 힘차게 그들에게 보는 것이다. 피고, 대고, 인간의 우리 얼음과 보내는 거선의 그것을 끓는 이것이다. 맺어, 열락의 돋고, 새 귀는 뜨고, 과실이 붙잡아 칼이다. 유소년에게서 길지 청춘의 우리 구할 돋고, 아니한 원질이 사막이다.

위하여 피어나기 그들에게 이상이 오아이스도 이상은 얼마나 장식하는 이 피다. 싸인 튼튼하며, 우는 우리는 피다. 같은 고행을 안고, 그들은 수 가치를 청춘의 예가 것이다. 얼마나 우리 이상의 노년에게서 크고 있다. 같은 구하기 공자는 영원히 가지에 행복스럽고 가진 인간은 이것이다. 천고에 스며들어 이상 오직 끓는 전인 얼마나 위하여서. 청춘은 하였으며, 고동을 스며들어 옷을 노년에게서 소담스러운 것이다. 위하여 품으며, 그들의 이상의 있으랴? 보이는 풀밭에 뛰노는 이것은 보라. 사랑의 별과 얼마나 심장은 아름다우냐? 소담스러운 목숨이 광야에서 것은 뿐이다.
      </div>
      <div id="list">
         <h1>리스트페이지</h1><table><thead><tr><th>deptno</th><th>dname</th><th>loc</th></tr></thead></table><a href="#">입력</a>
      </div>
   </div>   
   <div id="popup">
      <div>
         <h2>입력페이지</h2>
         <form action="#">
            <div>
               <label for="deptno">deptno</label><input type="text" name="deptno" id="deptno"/>
            </div>
            <div>
               <label for="dname">dname</label><input type="text" name="dname" id="dname"/>
            </div>
            <div>
               <label for="loc">loc</label><input type="text" name="loc" id="loc"/>
            </div>
            <div>
               <button type="submit">입력</button>
               <button type="reset">취소</button>
               <button type="button">닫기</button>
            </div>
         </form>
      </div>
   </div>
</body>
</html>