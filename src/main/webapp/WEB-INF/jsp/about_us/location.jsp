<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>STM</title>

<!-- favicon -->
<link rel="shortcut icon" type="image/x-icon" href="/assets/img/stm_ico.ico">

<style>

@media (min-width: 992px) {
	.nav > .about_us .nav-menu{
		color: rgba(235, 63, 49, 1);
	    font-weight: bold;
	}
}

.location_container{
	padding: 3rem 1rem;
}

.location_container > .container{
	padding: 0;
}

.location_container .location_box{
	padding: 1.5rem 0;
}

.location_container .location_box .location_title{
	position: relative;
    text-align: center;
    font-size: 2.5rem;
    height: 4rem;
    width: 10rem;
    padding: 0.1em 0;
    margin: 0;
    border-radius: 0.5rem;
}

.location_container .location_box .location_title .title_border{
	position: absolute;
    height: 4rem;
    width: 2.6rem;
    top: 0;
    right: 0rem;
    border-bottom: 2px solid rgba(255, 63, 18, 1);
    padding: 0.1em 0;
}

.location_container .location_box .location{
	margin: 0;
	padding: 1.2rem 0;
	font-size: 1.2rem;
}

#map{
	height: 50vw;
}

</style>

</head>
<body>

	<!-- Navbar -->
	<%@ include file="../include/navbar.jsp" %>
	
	<!-- Content-->
	<div class="mainContainer" id="main">
		
		<div class="top_logo">
			<img class="top_logo_img" src="/assets/img/about_us/about.gif" alt="" />
			<div class="container">
				<div class="menu_location">메인 > 회사소개 > 사업장 소개</div>
			</div>
		</div>
	
		<div class="location_container">
			<div class="container">
				<div class="location_box">
					<div class="location_title">
						오시는 길
						<div class="title_border"></div>
					</div>
					<p class="location"><string>주소</string>경기도 의왕시 오봉산단3로 25(삼동 의왕테크노파크 더리브비즈원 1동 307호))</p>
				</div>
				<div id="map"></div>
		
				<script>
		                
		                  function initMap() {// 지도 요청시 callback으로 호출될 메서드 부분으로 지도를 맨처음 초기화하고, 표시해주는 함수
		                	  
		                    var latVal = 0.0;// 게시글 DTO에서 위도값을 가져옴
		                    var lngVal = 0.0;// 게시글 DTO에서 경도값을 가져옴
		                    var mapLocation = new google.maps.LatLng(37.328218, 126.952820);// 위도, 경도를 가지는 객체를 생성
		                /*     var map = new google.maps.Map(document.getElementById('map'), { // 위의 div id="map" 부분에 지도를 추가하는 부분
		                      zoom: 18, // 확대 정도(ZOOM)
		                      center: uluru // 지도에 표시해주는 중심이 우리가 만든 객체의 위치를 지정해주도록 함
		                    });
		                     */
		                    var mapOptions = {
		                            center: mapLocation, // 지도에서 가운데로 위치할 위도와 경도(변수)
		                            zoom: 17, // 지도 zoom단계
		                            mapTypeId: google.maps.MapTypeId.ROADMAP
							};
		                   var map = new google.maps.Map(document.getElementById("map"), mapOptions);
		                            
		                    var marker = new google.maps.Marker({
		                    	
		                        position: mapLocation,
		                        map: map
		                        
		                      });
		                  }
				</script>
	                
				<script async defer src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBpfSQqD6uQatBdWEAO8UHvff2xrvJtrEA&callback=initMap"></script>
			
			
			</div>
			
		</div>
		
	</div>
	<!-- Footer-->
	<%@ include file="../include/footer.jsp" %>
	
</body>
</html>