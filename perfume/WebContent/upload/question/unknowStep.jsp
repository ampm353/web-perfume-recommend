<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<script src="https://code.jquery.com/jquery-latest.min.js"></script>
<link rel="stylesheet" type="text/css" href="/css/choice/step.css">
<body>
<%@ include file = "/WEB-INF/views/common/header.jsp" %>
<hr style = "margin-top: 1px; margin-bottom: 1px;">
<form action = "/knowStep" method = "post">
<div id = "step1">
<div class = "stepWrap">
	<label style = "cursor:pointer; color:black;" onclick = "backPage(1)">step1</label>
	<span style = "color:black;">></span>
	<label>step2</label>
	<span>></span>
	<label>step3</label>
	<span>></span>
	<label>step4</label>
</div>
	<div class = "div">
		<h4>하루의 시작을 어떤 향과 함께하고 싶으신가요?</h4>
		<div>
		<label class = "label" for = "q1_1">
			<span><img src="/choiceimg/note/Bergamot.jpg" class = "img"></span>
			<span><p>베르가못<br>Bergamot</p></span>
			<span><input type = "checkbox" id = "q1_1" name = "q1" value = "Basil" /></span>
		</label>
		<label class = "label" for = "q1_2">
			<span><img src="/choiceimg/note/Mint.png" class = "img"></span>
			<span><p>민트<br>Mint</p></span>
			<span><input type = "checkbox" id = "q1_2" name = "q1" value = "Bergamot" /></span>
		</label>
		<label class = "label" for = "q1_3">
			<span><img src="/choiceimg/note/Pear.jpg" class = "img"></span>
			<span><p>배<br>Pear</p></span>
			<span><input type = "checkbox" id = "q1_3" name = "q1" value = "GrapeFruit" /></span>
		</label>
		<label class = "label" for = "q1_4">
			<span><img src="/choiceimg/note/Grapefruit.jpg" class = "img"></span>
			<span><p>자몽<br>Grapefruit</p></span>
			<span><input type = "checkbox" id = "q1_4" name = "q1" value = "Lavender" /></span>
		</label>
		<label class = "label" for = "q1_5">
			<span><img src="/choiceimg/note/Neroli.jpg" class = "img"></span>
			<span><p>네롤리<br>Neroli</p></span>
			<span><input type = "checkbox" id = "q1_5" name = "q1" value = "Lemon" /></span>
		</label>
		<label class = "label" for = "q1_6">
			<span><img src="/choiceimg/note/Lavanda.jpg" class = "img"></span>
			<span><p>라벤더<br>Lavender</p></span>
			<span><input type = "checkbox" id = "q1_6" name = "q1" value = "Lime" /></span>
		</label>
		<label class = "label" for = "q1_7">
			<span><img src="/choiceimg/note/Pink-Pepper.jpg" class = "img"></span>
			<span><p>핑크페퍼<br>Pink pepper</p></span>
			<span><input type = "checkbox" id = "q1_7" name = "q1" value = "Mint" /></span>
		</label>
		<label class = "label" for = "q1_8">
			<span><img src="/choiceimg/note/Lime.jpg" class = "img"></span>
			<span><p>라임<br>Lime</p></span>
			<span><input type = "checkbox" id = "q1_8" name = "q1" value = "Neroli" /></span>
		</label>
		<label class = "label" for = "q1_9">
			<span><img src="/choiceimg/note/Orange.jpg" class = "img"></span>
			<span><p>오렌지<br>Orange</p></span>
			<span><input type = "checkbox" id = "q1_9" name = "q1" value = "RoseMary" /></span>
		</label>
		<label class = "label" for = "q1_10">
			<span><img src="/choiceimg/note/Lemon.jpg" class = "img"></span>
			<span><p>레몬<br>Lemon</p></span>
			<span><input type = "checkbox" id = "q1_10" name = "q1" value = "SweetOrange" /></span>
		</label>
		<label class = "label" for = "q1_10">
			<span><img src="/choiceimg/note/Currant.jpg" class = "img"></span>
			<span><p>건포도<br>Currant</p></span>
			<span><input type = "checkbox" id = "q1_11" name = "q1" value = "SweetOrange" /></span>
		</label>
		<label class = "label" for = "q1_10">
			<span><img src="/choiceimg/note/Rose.jpg" class = "img"></span>
			<span><p>장미<br>Rose</p></span>
			<span><input type = "checkbox" id = "q1_12" name = "q1" value = "SweetOrange" /></span>
		</label>
		<label class = "label" for = "q1_10">
			<span><img src="/choiceimg/note/Mandarin.jpg" class = "img"></span>
			<span><p>만다린<br>Mandarin</p></span>
			<span><input type = "checkbox" id = "q1_13" name = "q1" value = "SweetOrange" /></span>
		</label>
		<label class = "label" for = "q1_10">
			<span><img src="/choiceimg/note/Rasberry.jpg" class = "img"></span>
			<span><p>산딸기<br>Raspberry</p></span>
			<span><input type = "checkbox" id = "q1_14" name = "q1" value = "SweetOrange" /></span>
		</label>
		</div>
	</div>
	<div class = "wrap">
	<input type = "button" class = "buttons" value = "BACK" onclick="location.href = '/paper/choice.jsp'"><input type = "button" value = "NEXT" class = "buttons black" onclick="goPage(2, this)" />
	</div>
</div>
<div id = "step2">
<div class = "stepWrap">
	<label style = "cursor:pointer; color:black;" onclick = "backPage(1)">step1</label>
	<span style = "color:black;">></span>
	<label style = "cursor:pointer; color:black;" onclick = "backPage(2)">step2</label>
	<span style = "color:black;">></span>
	<label>step3</label>
	<span>></span>
	<label>step4</label>
</div>
	<div class = "div">
		<h4>하루의 대부분을 어떤 향과 보내고 싶으신가요?</h4>
		<div>
		<label class = "label" for = "q2_1">
			<span><img src="/choiceimg/note/Orange.jpg" class = "img"></span>
			<span><p>오렌지<br>Orange</p></span>
			<span><input type = "checkbox" id = "q2_1" name = "q2" value = "Black Pepper" /></span>
		</label>
		<label class = "label" for = "q2_2">
			<span><img src="/choiceimg/note/Peony.jpg" class = "img"></span>
			<span><p>모란<br>Peony</p></span>
			<span><input type = "checkbox" id = "q2_2" name = "q2" value = "Cardamom" /></span>
		</label>
		<label class = "label" for = "q2_3">
			<span><img src="/choiceimg/note/Jasmine.jpg" class = "img"></span>
			<span><p>자스민<br>Jasmine</p></span>
			<span><input type = "checkbox" id = "q2_3" name = "q2" value = "Chamomile" /></span>
		</label>
		<label class = "label" for = "q2_4">
			<span><img src="/choiceimg/note/Geranium.jpg" class = "img"></span>
			<span><p>제라늄<br>Geranium</p></span>
			<span><input type = "checkbox" id = "q2_4" name = "q2" value = "Cinnamon" /></span>
		</label>
		<label class = "label" for = "q2_5">
			<span><img src="/choiceimg/note/Clove.jpg" class = "img"></span>
			<span><p>정향<br>Clove</p></span>
			<span><input type = "checkbox" id = "q2_5" name = "q2" value = "Clove" /></span>
		</label>
		<label class = "label" for = "q2_6">
			<span><img src="/choiceimg/note/Peach.jpg" class = "img"></span>
			<span><p>복숭아<br>Peach</p></span>
			<span><input type = "checkbox" id = "q2_6" name = "q2" value = "Fir Needle" /></span>
		</label>
		<label class = "label" for = "q2_7">
			<span><img src="/choiceimg/note/Rose.jpg" class = "img"></span>
			<span><p>장미<br>Rose</p></span>
			<span><input type = "checkbox" id = "q2_7" name = "q2" value = "Jasmine" /></span>
		</label>
		<label class = "label" for = "q2_8">
			<span><img src="/choiceimg/note/Freesia.jpg" class = "img"></span>
			<span><p>프리지아<br>Freesia</p></span>
			<span><input type = "checkbox" id = "q2_8" name = "q2" value = "Juniper" /></span>
		</label>
		<label class = "label" for = "q2_9">
			<span><img src="/choiceimg/note/Lemongrass.jpg" class = "img"></span>
			<span><p>레몬그라스<br>Lemongrass</p></span>
			<span><input type = "checkbox" id = "q2_9" name = "q2" value = "Lemongrass" /></span>
		</label>
		<label class = "label" for = "q2_10">
			<span><img src="/choiceimg/note/amber.webp" class = "img"></span>
			<span><p>앰버<br>Amber</p></span>
			<span><input type = "checkbox" id = "q2_10" name = "q2" value = "Neroli" /></span>
		</label>
		<label class = "label" for = "q2_11">
			<span><img src="/choiceimg/note/Lily.jpg" class = "img"></span>
			<span><p>백합<br>lily</p></span>
			<span><input type = "checkbox" id = "q2_11" name = "q2" value = "Nutmeg" /></span>
		</label>
		<label class = "label" for = "q2_12">
			<span><img src="/choiceimg/note/Mayvalley.jpg" class = "img"></span>
			<span><p>은방울꽃<br>May lily</p></span>
			<span><input type = "checkbox" id = "q2_12" name = "q2" value = "Rose" /></span>
		</label>
		<label class = "label" for = "q2_13">
			<span><img src="/choiceimg/note/Lavanda.jpg" class = "img"></span>
			<span><p>라벤더<br>Lavender</p></span>
			<span><input type = "checkbox" id = "q2_13" name = "q2" value = "Rosewood" /></span>
		</label>
		<label class = "label" for = "q2_14">
			<span><img src="/choiceimg/note/Iris.jpg" class = "img"></span>
			<span><p>붓꽃<br>Iris</p></span>
			<span><input type = "checkbox" id = "q2_14" name = "q2" value = "Ylang-Ylang" /></span>
		</label>
		<label class = "label" for = "q2_14">
			<span><img src="/choiceimg/note/Violet.jpg" class = "img"></span>
			<span><p>제비꽃<br>Violet</p></span>
			<span><input type = "checkbox" id = "q2_15" name = "q2" value = "Ylang-Ylang" /></span>
		</label>
		</div>
	</div>
	<div class = "wrap">
	<input type = "button" class = "buttons" value = "BACK" onclick = "backPage(1)" /><input type = "button" value = "NEXT" class = "buttons black" onclick = "goPage(3, this)" />
	</div>
</div>
<div id = "step3">
<div class = "stepWrap">
	<label style = "cursor:pointer; color:black;" onclick = "backPage(1)">step1</label>
	<span style = "color:black;">></span>
	<label style = "cursor:pointer; color:black;" onclick = "backPage(2)">step2</label>
	<span style = "color:black;">></span>
	<label style = "cursor:pointer; color:black;" onclick = "backPage(3)">step3</label>
	<span style = "color:black;">></span>
	<label>step4</label>
</div>
	<div class = "div">
		<h4>하루의 끝을 어떤 향과 마무리하고 싶으신가요?</h4>
		<div>
		<label class = "label" for = "q3_1">
			<span><img src="/choiceimg/note/amber.webp" class = "img"></span>
			<span><p>앰버<br>Amber</p></span>
			<span><input type = "checkbox" id = "q3_1" name = "q3" value = "Cedarwood" /></span>
		</label>
		<label class = "label" for = "q3_2">
			<span><img src="/choiceimg/note/Vanilla.jpg" class = "img"></span>
			<span><p>바닐라<br>Vanilla</p></span>
			<span><input type = "checkbox" id = "q3_2" name = "q3" value = "Cypress" /></span>
		</label>
		<label class = "label" for = "q3_3">
			<span><img src="/choiceimg/note/wood.jpg" class = "img"></span>
			<span><p>우드<br>Wood</p></span>
			<span><input type = "checkbox" id = "q3_3" name = "q3" value = "Ginger" /></span>
		</label>
		<label class = "label" for = "q3_4">
			<span><img src="/choiceimg/note/Musk.jpg" class = "img"></span>
			<span><p>머스크<br>Musk</p></span>
			<span><input type = "checkbox" id = "q3_4" name = "q3" value = "Patchouli" /></span>
		</label>
		<label class = "label" for = "q3_5">
			<span><img src="/choiceimg/note/Cedarwood.jpg" class = "img"></span>
			<span><p>시더우드<br>Cedarwood</p></span>
			<span><input type = "checkbox" id = "q3_5" name = "q3" value = "Pine" /></span>
		</label>
		<label class = "label" for = "q3_6">
			<span><img src="/choiceimg/note/Patchouli.webp" class = "img"></span>
			<span><p>페츌리<br>Patchouli</p></span>
			<span><input type = "checkbox" id = "q3_6" name = "q3" value = "Sandalwood" /></span>
		</label>
		<label class = "label" for = "q3_7">
			<span><img src="/choiceimg/note/Sandalwood.jpg" class = "img"></span>
			<span><p>샌달우드<br>Sandalwood</p></span>
			<span><input type = "checkbox" id = "q3_7" name = "q3" value = "Vanilla" /></span>
		</label>
		<label class = "label" for = "q3_8">
			<span><img src="/choiceimg/note/Tonka-bean.jpg" class = "img"></span>
			<span><p>통카 빈<br>Tonka Bean</p></span>
			<span><input type = "checkbox" id = "q3_8" name = "q3" value = "Vetiver" /></span>
		</label>
		<label class = "label" for = "q3_8">
			<span><img src="/choiceimg/note/Oakmoss.jpg" class = "img"></span>
			<span><p>오크모스<br>Oakmoss</p></span>
			<span><input type = "checkbox" id = "q3_9" name = "q3" value = "Vetiver" /></span>
		</label>
		</div>
	</div>
	<div class = "wrap">
	<input type = "button" class = "buttons" value = "BACK" onclick = "backPage(2)" /><input type = "button" value = "NEXT" class = "buttons black" onclick = "goPage(4, this)" />
	</div>
</div>
<div id = "step4">
<div class = "stepWrap">
	<label style = "cursor:pointer; color:black;" onclick = "backPage(1)">step1</label>
	<span style = "color:black;">></span>
	<label style = "cursor:pointer; color:black;" onclick = "backPage(2)">step2</label>
	<span style = "color:black;">></span>
	<label style = "cursor:pointer; color:black;" onclick = "backPage(3)">step3</label>
	<span style = "color:black;">></span>
	<label style = "cursor:pointer; color:black;" onclick = "backPage(4)">step4</label>
</div>
<!-- 
	<div class = "div overflow">
		<h4>몇 시간 동안 지속되었으면 좋겠나요?</h4>
		<div>
		<label class = "verticalabel">
			<span><img src="/choiceimg/spring.jpg" style ="height:94px;width:94px;border-radius: 50%;margin: 0px 5px;"></span>
		<span><p>9~12시간<br>(Perfume)</p></span>
			<span style = "display: none;"><input type = "radio" name = "q4" value = "0"></span>
		</label>
		<label class = "verticalabel">
			<span><img src="/choiceimg/spring.jpg" style ="height:94px;width:94px;border-radius: 50%;margin: 0px 5px;"></span>
			<span><p>7~9시간<br>(Eau do Parfum)</p></span>
			<span style = "display: none;"><input type = "radio" name = "q4" value = "1"></span>
		</label>
		<label class = "verticalabel">
			<span><img src="/choiceimg/spring.jpg" style ="height:94px;width:94px;border-radius: 50%;margin: 0px 5px;"></span>
			<span><p>5~7시간<br>(Eau de Toilette)</p></span>
			<span style = "display: none;"><input type = "radio" name = "q4" value = "2"></span>
		</label>
		<label class = "verticalabel">
			<span><img src="/choiceimg/spring.jpg" style ="height:94px;width:94px;border-radius: 50%;margin: 0px 5px;"></span>
			<span><p>3~5시간<br>(Eau de Cologne)</p></span>
			<span style = "display: none;"><input type = "radio" name = "q4" value = "3"></span>
		</label>
		<label class = "verticalabel">
			<span><img src="/choiceimg/spring.jpg" style ="height:94px;width:94px;border-radius: 50%;margin: 0px 5px;"></span>
			<span><p>1~2시간<br>()Eau Fraiche</p></span>
			<span style = "display: none;"><input type = "radio" name = "q4" value = "4"></span>
		</label>
		</div>
	</div>
	 -->
	<div class = "div">
		<h4>브랜드를 선택하세요</h4>
		<div style="position:relative;">
		<input type = "text" autocomplete="off" id = "view" name = brand class = "text" style ="color: black;width: 200px; height:30px; border: 1px solid black; border-bottom-color: #aaa; border-left-color: #777; border-right-color: #ccc; box-sizing: border-box; padding:1px 6px;">
		<input type = "button" class = "cancel" value = "선택안함" style = "background-color: black; color: white; border:0; height : 30px; width : 150px;">
		<div id = "output" style = "position:absolute; top:40px; left:10px; border:1px solid #aaa; width:200px; background-color: white; overflow: hidden; display:none;"></div>
		</div>
		
	</div>
	<div class = "div">
		<h4>가격을 최대 어디까지 알아보고 계신가요?</h4>
		<div>
		<label class = "span" style = "padding-left: 10px;"><input type = "radio" name = "q5" value = "30000">삼만원</label>
		<label class = "span" style = "padding-left: 10px;"><input type = "radio" name = "q5" value = "50000">오만원</label>
		<label class = "span" style = "padding-left: 10px;"><input type = "radio" name = "q5" value = "100000">십만원</label>
		<label class = "span" style = "padding-left: 10px;"><input type = "radio" name = "q5" value = "0">상관없음</label>
		</div>
	</div>
	<div class = "div">
		<h4>대중적인 향수를 찾으시나요?</h4>
		<div>
		<h6 style="margin: 0px;margin-bottom: 5px;">저희 사이트를 기준으로 추천수가 많거나 구매수가 많은 향수를 추천해드립니다.</h6>
		<label class = "span"  style = "padding-left: 10px;"><input type = "radio" name = "q6" value = "true">네</label>
		<label class = "span" style = "padding-left: 10px;"><input type = "radio" name = "q6" value = "false">아니오</label>
		</div>
	</div>
	<div class = "wrap">
	<input type = "button" class = "buttons" value = "BACK" onclick = "backPage(3)"><input type = "submit" value = "NEXT" class = "buttons black">
	</div>
</div>
</form>
<script type="text/javascript">
	//브랜드 자바스크립트
	function brand(me){
		$("#view").val(me.innerHTML);
		$("#output").css("display","none");
	}
	//페이지 onload
	$(function(){
		for(var i = 2; i < 5; i++){
			$("#step"+i).css("display","none");
		}
		var array1 = new Array();
		var array2 = new Array();
		var array3 = new Array();
		$(".label").attr("i", "0");
		$(".label").css("position", "relative");
		//checkboxToggle
		$(".label[for*=q1]").click(function(){
			$(".label[for*=q1]>img").remove();
			$(".label[for*=q1]").children().css("opacity","1");
			$(".label[for*=q1]").find("input").prop('checked', false);
			if($(this).attr("i") == "0" && array1.length < 3){
				array1.push($(this));
				$(this).attr("i", "1");
			}else if($(this).attr("i") == "0"){
				alert("3개 이상의 note를 선택할 수 없습니다.");
			}else{
				$(this).attr("i", "0");
				for(var j = 0; j < array1.length; j++){
					if(array1[j].children().eq(1).html() == $(this).children().eq(1).html()){
						array1.splice(j, 1);
						break;
					}
				}
			}
			for(var i = 0; i < array1.length; i++){
				array1[i].children().css("opacity", "0.4");
				array1[i].find("input").prop('checked', true);
				array1[i].prepend('<img src="/choiceimg/checkIcon.png" style ="width:80px; height:80px; position: absolute; z-index:1; top:25px; left:30px;">');
			}
			return false;
		});
		$(".label[for*=q2]").click(function(){
			$(".label[for*=q2]>img").remove();
			$(".label[for*=q2]").children().css("opacity","1");
			$(".label[for*=q2]").find("input").prop('checked', false);
			if($(this).attr("i") == "0" && array2.length < 3){
				array2.push($(this));
				$(this).attr("i", "1");
			}else if($(this).attr("i") == "0"){
				alert("3개 이상의 note를 선택할 수 없습니다.");
			}else{
				$(this).attr("i", "0");
				for(var j = 0; j < array2.length; j++){
					if(array2[j].children().eq(1).html() == $(this).children().eq(1).html()){
						array2.splice(j, 1);
						break;
					}
				}
			}
			for(var i = 0; i < array2.length; i++){
				array2[i].children().css("opacity", "0.4");
				array2[i].find("input").prop('checked', true);
				array2[i].prepend('<img src="/choiceimg/checkIcon.png" style ="width:80px; height:80px; position: absolute; z-index:1; top:25px; left:30px;">');
			}
			return false;
		});
		//제약조건 만들기
		$(".label[for*=q3]").click(function(){
			$(".label[for*=q3]>img").remove();
			$(".label[for*=q3]").children().css("opacity","1");
			$(".label[for*=q3]").find("input").prop('checked', false);
			if($(this).attr("i") == "0" && array3.length < 3){
				array3.push($(this));
				$(this).attr("i", "1");
			}else if($(this).attr("i") == "0"){
				alert("3개 이상의 note를 선택할 수 없습니다.");
			}else{
				$(this).attr("i", "0");
				for(var j = 0; j < array3.length; j++){
					if(array3[j].children().eq(1).html() == $(this).children().eq(1).html()){
						array3.splice(j, 1);
						break;
					}
				}
			}
			for(var i = 0; i < array3.length; i++){
				array3[i].children().css("opacity", "0.4");
				array3[i].find("input").prop('checked', true);
				array3[i].prepend('<img src="/choiceimg/checkIcon.png" style ="width:80px; height:80px; position: absolute; z-index:1; top:25px; left:30px;">');
			}
			return false;
		});
		//step4
		$(".span").click(function(){
			$(this).children("input").checked;
		});
		$(".cancel").click(function(){
			$(".text").val("");
		});
		$(".verticalabel").click(function(){
			$(".verticalabel>span").css("opacity","1");
			$(".verticalabel>img").remove();
			$(this).children().css("opacity","0.4");
			$(this).prepend('<img src="/choiceimg/checkIcon.png" style ="width:80px; height:80px; position: absolute; z-index:1; top:25px; left:10px;">');
		});
		//브랜드 스크립트 시작
		$(window).scroll(function(){
			$("#output").css("display","none");
		});
		$("#view").keyup(function(){
			var msg = $("#view").val();
			$.ajax({
				url : "/viewBrand",
				data : {msg:msg},
				type : "get",
				success : function(data){
					var temp = "";
					var color1 = '"#aaa"';
					var color2 = '"white"';					
					for(var i = 0; i < data.length; i++){
						temp += "<div style = 'box-sizing: border-box; color:black; cursor:pointer; padding:6px;' onclick = 'brand(this)' onmouseover='this.style.background="+color1+"' onmouseout='this.style.background="+color2+"'>" + data[i] + "</div>";
					}
					$("#output").html(temp);
					$("#output").css("display","");
				},
				error : function(){
					console.log("서버전송실패");
				}
			});
		});
	});
	function goPage(go, me){
		if($(me).parent().parent().find("label[i=1]").length != 0){
			for(var i = 1; i < 5; i++){
				$("#step"+i).css("display", "none");
			}
			$("#step"+go).css("display", "");
		}else{
			alert("하나 이상 선택해주세요");
			return false;
		}
	}
	function backPage(go){
		for(var i = 1; i < 5; i++){
			$("#step"+i).css("display", "none");
		}
		$("#step"+go).css("display", "");
	}
	var submitAction = function(e) {
		if($("input:checked").length < 6 || $("input[type=text]").val() == ""){
			alert("비어있는 값이 있습니다.");
			e.preventDefault();
		    e.stopPropagation();
		}
		/* do something with Error */
	};
	$('form').bind('submit', submitAction);
</script>
<%@ include file = "/WEB-INF/views/common/footer.jsp" %>
</body>
</html>

</body>
</html>