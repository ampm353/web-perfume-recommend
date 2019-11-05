<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script type="text/javascript" src="/js/jquery-3.3.1.js"></script>
   <link rel="stylesheet" href="/css/bootstrap.css">
   <link rel="stylesheet" href="/css/header/style.css">
   <link rel="stylesheet" href="/css/header/responsive.css">
   <script type="text/javascript" src="/js/bootstrap.js"></script>
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>view perfume</title>
<style>
   div.all {
        width: 100%;
        height: 500px;
    }
    div.left {
        width: 50%;
        height: 500px;  
        float: left;
        box-sizing: border-box;
    }
    div.right {
        width: 50%;
        height: 500px;
        float: right;
        box-sizing: border-box;
        padding-top: 110px;
        text-align: left;
    }
    .btn1 {
       width:170px;
       background-color: white;
       border: 1px solid black;;
       color:black;
       padding: 13px 0;
       text-align: center;
       display: inline-block;
       font-size: 17px;
       cursor: pointer;
       float:left;
   }
   .btn1:hover {
       background-color: black;
       color: white;
       transition: .60s;
   }
   div.taball {
        width: 100%;
        height: 100px;
    }
    #tableft {
        width: 50%;
        height: 40px;  
        float: left;
        box-sizing: border-box;
        background-color: black; 
        color: white;
        border: none;
        border-bottom: 1px solid black;
    }
    #tabright {
        width: 50%;
        height: 40px;
        float: right;
        box-sizing: border-box;
        background-color:white; 
        border: none;
        border-bottom: 1px solid black;
    }
    .hidden{
       display: none;
    }
    #amount{
       border: none;
       background-color:#F5F5F5;
       width: 340px;
         height: 50px;
         text-align: center;
         padding-left:10px;
         color: #777777;
    }
    .divreview {
       margin:0 auto;
    }
    .input1{
       border: none;
       background-color:#F5F5F5;
       width: 100%;
         height: 30px;
         padding-left:10px;
         color: #777777;
         font-weight: 300;
    }
    .textarea1{
       border: none;
       background-color:#F5F5F5;
       font-weight: 300;
       width: 100%;
         height: 70px;
         padding-left:10px;
         margin-top: 5px;
         color: #777777;
    }
</style>   
</head>
<body>
   <%@ include file="/WEB-INF/views/common/header.jsp" %>   
   <section>
      <div style="margin:0 auto; width:50%; text-align: center;">
         <div class="divall">
              <div class="left">
                 <img src='/upload/photo/${perfume.perfumePhotopath }' width="400px">
              </div>
              <div class="right">
                 <form action="/insertBasket?perfumeNo=${perfume.perfumeNo }" method="post">
                       <input type="hidden" name="perfumePrice" value="${perfume.perfumePrice }">
                       <span style="color:black;">${perfume.perfumeBrand }</span><br>
                       <span style="color:black; font-size:25px;">${perfume.perfumeName }</span><br><br>
                     <span style="color:black;">${perfume.perfumePrice }원</span><br><br>
                     <select id="amount" name="perfumeAmount">
                        <option value="0" hidden>수량 선택</option>
                        <option value="1">1개</option>
                        <option value="2">2개</option>
                        <option value="3">3개</option>
                        <option value="4">4개</option>
                        <option value="5">5개</option>
                     </select>
                     <br><br>
                     <button type="submit" class="btn1">장바구니</button>
                     <button type="button" class="btn1" style="background-color:black; color:white;" onclick="return paymentDirect(${perfume.perfumeNo});">구매하기</button>              
                    </form>
                 
               <form action="/insertPerfumeRecommend" method="post" style="float:left;">
                  <input type="hidden" name="memberNo" value="${sessionScope.member.memberNo }">
                  <input type="hidden" name="perfumeNo" value="${perfume.perfumeNo }">
                  <c:if test="${!empty sessionScope.member }">
                     <div style="float:left; padding-left:10px; position:relative;">
                        <c:if test="${empty pr }">                        
                           <button type="submit" name="heart" value="insert" id="heart1" style="border:none; padding:0px; width:40px; height:40px; background-color:transparent; position:absolute; top:-8px; right:-40px;"><img src ="/img/heart1.png"></button>                                                
                        </c:if>
                        <c:if test="${!empty pr }">
                           <button type="submit" name="heart" value="delete"id="heart2" style="border:none; padding:0px; width:40px; height:40px; background-color:transparent; position:absolute; top:-8px; right:-40px;"><img src ="/img/heart2.png"></button>
                        </c:if>                  
                     </div>                     
                  </c:if>                  
               </form>               
              </div>
          </div>
          <div style="clear:both; margin-bottom:130px;">
             <button id="tableft" class="clickcolor" onclick="leftclick();">제품 상세 정보</button>
             <button id="tabright" onclick="rightclick();">고객 후기</button>
          </div>
          <div id="tab1">
             <img src="${perfume.perfumeDetail} " >
             <img src="/img/detaillast.png" width="100%">
          </div>
          <div id="tab2" class="hidden" style="clear:both; height:1000px;">
             <div class="table-wrapper" style="margin:0 auto; width:100%;">          
               <div style="width:100%; margin:0 auto; text-align:center;">
                   
                   <c:forEach items="${list }" var="prv" varStatus="i">
                      <table style="width:80%; margin:0 auto; border-top:1px solid black;">
                        <tr>
                           <td rowspan="2" style="width:20%; color:black; font-size:15px;" ><img src="https://img.icons8.com/material/24/000000/writer-male.png">　${prv.memberNickname }</td>
                           <td style="width:70%; color:black; font-size:15px; padding-top:10px; padding-bottom:10px;">${prv.perfumeReviewTitle }</td>
                           <td rowspan="2" style="width:10%; color:gray; font-size: 10px; width: 70px; font-weight:300; text-align:right;">${prv.perfumeReviewDate }</td>
                        </tr>
                        <tr style="padding-bottom:10px;">
                            <td style="width:70%; color:black; font-size:13px; font-weight:300; padding-bottom:10px;">${prv.perfumeReviewContent }</td>
                         </tr>
                      </table>
                  </c:forEach>
                   
                  <c:if test="${empty list }">
                     <div style="margin:0 auto; text-align:center;">
                        <span style="color:black; font-weight:300;">아직 작성된 리뷰가 없습니다.<br>첫번째 리뷰를 남겨주세요!<br><br></span>
                        <c:if test="${empty sessionScope.member }">
                     <span style="color:gray; font-weight:300;">로그인 후 작성 가능합니다.</span>
                  </c:if>
                     </div>
                  </c:if>   
               
                  <c:if test="${!empty sessionScope.member }">
                     <div style="width:170px; margin:0 auto; padding-top:15px;">
                        <button class="btn1" id="non2">리뷰 쓰기</button>
                     </div>
                     <div style="padding-top: 30px; margin:0 auto; text-align:center; width:80%;" id="non1">
                        <form action="/insertPerfumeReview" method="post" >
                           <input style="width:100%;" type="hidden" name="perfumeNo" value="${perfume.perfumeNo }">
                           <input style="width:100%;" type="hidden" name="memberNo" value="${sessionScope.member.memberNo }">
                           <input style="width:100%;" type="hidden" name="memberNickname" value="${sessionScope.member.memberNickname }">
                           <div style ="width:100%; height:200px;">
                              <div style="width:100%;">
                                 <input class="input1" type="text" name="perfumeReviewTitle" placeholder="제목">
                              </div>
                              <div style="width:100%;">
                                 <textarea class="textarea1" name="perfumeReviewContent" placeholder="내용"></textarea>
                              </div>
                              <div style="width:170px; margin:0 auto; padding-top:15px;">
                                 <button class="btn1">리뷰 등록하기</button>
                              </div>                           
                           </div>                           
                        </form>                     
                     </div>
                     
                  </c:if>         
               </div><br>
                     
               
             </div>             
          </div>
         
      </div>
   </section>
   <%@ include file="/WEB-INF/views/common/footer.jsp" %>
   <script>
      $(function(){
         $('#non1').addClass('hidden');
         
         if(${!empty righttab }){
            $('#tab1').addClass('hidden');
             $('#tab2').removeClass('hidden');
             $("#tabright").css("background-color","black");
             $("#tabright").css("color","white");
             $("#tableft").css("background-color","white");
             $("#tableft").css("color","black");
         }   
      });
      
      function leftclick() {
         $('#tab2').addClass('hidden');
          $('#tab1').removeClass('hidden');
          $("#tableft").css("background-color","black");
          $("#tableft").css("color","white");
          $("#tabright").css("background-color","white");
          $("#tabright").css("color","black");
      }
      
      function rightclick() {
         $('#tab1').addClass('hidden');
          $('#tab2').removeClass('hidden');
          $("#tabright").css("background-color","black");
          $("#tabright").css("color","white");
          $("#tableft").css("background-color","white");
          $("#tableft").css("color","black");
      }
      
      $("#non2").click(function(){
         $('#non2').addClass('hidden');
         $('#non1').removeClass('hidden');
      });
      
      function paymentDirect(atr){
            var amount = $("#amount").val();
            if(amount == 0){
               alert("수량을 선택해주세요.")
               return;
            }
            location.href="/paymentDirect?perfumeNo="+atr+"&amount="+amount;
        }
      
   </script>
</body>
</html>