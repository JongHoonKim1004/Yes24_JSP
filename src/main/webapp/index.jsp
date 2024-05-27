<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>예스24 - 김종훈</title>
<link type="text/css" rel="stylesheet" href="css/reset.css">
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/main.css">
<script src="https://code.jquery.com/jquery-3.7.0.js"></script>
<!--자바스크립트-->
<script type="text/javascript" src="js/header_ad.js"></script>
<script type="text/javascript" src="js/lower_nav.js"></script>
<script type="text/javascript" src="js/fast_search.js"></script>
<script type="text/javascript" src="js/slider_1.js"></script>
<script type="text/javascript" src="js/slider_2.js"></script>
<script type="text/javascript" src="js/today_book.js"></script>
<script type="text/javascript" src="js/grae.js"></script>
<script type="text/javascript" src="js/now_this_book.js"></script>
<script type="text/javascript" src="js/wadai_book.js"></script>
<script type="text/javascript" src="js/bestseller_1to6.js"></script>
<script type="text/javascript" src="js/youtube.js"></script>
<script type="text/javascript" src="js/card_news.js"></script>
<script type="text/javascript" src="js/multi_select.js"></script>
<script type="text/javascript" src="js/bestseller.js"></script>

<!--Open API-->
<script type="text/javascript" src="js/openApi.js"></script>

</head>

<body>
	<div id="header-ad">
		<div id="header-ad-all">
			<div class="header-ad-all">
				<div id="header-ad-left">
					<div id="header-ad-left-img">
						<a href="sub.jsp" target="_self"><img alt="header-ad"
							src="img/1229_topbn_480x50_L_01.png"></a>
					</div>
				</div>
				<div id="header-ad-right">
					<div id="header-ad-right-img">
						<a href="sub.jsp" target="_self"><img alt="header-ad"
							src="img/1229_topbn_480x50_R_01.png"></a>
					</div>
					<a href="javascript:void(0);" target="_self"
						id="header-ad-close-btn"><img alt="ad-close"
						src="img/8666595_x_icon.png"></a>
				</div>
			</div>
		</div>
	</div>
	<header
		style="background-image: url('img/bgGnbN4.png'); background-size: contain;">
		<div id="header">
			<div id="upper-nav">
				<ul id="upper-nav-left">
					<li><a href="sub.jsp" target="_self">국내도서</a></li>
					<li><a href="sub.jsp" target="_self">외국도서</a></li>
					<li><a href="sub.jsp" target="_self">중고샵</a></li>
					<li><a href="sub.jsp" target="_self">eBook</a></li>
					<li><a href="sub.jsp" target="_self">크레마클럽</a></li>
					<li><a href="sub.jsp" target="_self">CD/LP</a></li>
					<li><a href="sub.jsp" target="_self">DVD/BD</a></li>
					<li><a href="sub.jsp" target="_self">문구/GIFT</a></li>
					<li><a href="sub.jsp" target="_self">티켓</a></li>
				</ul>
				<ul id="upper-nav-right">
					<c:choose>
						<c:when test="${ empty loginUser }">
							<li><a href="login.do" target="_self">로그인</a></li>
							<li><a href="join.do" target="_self">회원가입</a></li>
							<li><a href="memberUpdate.do?userid=${loginUser.userid }" target="_self" onclick="return false">마이페이지▽</a></li>
						</c:when>
						<c:otherwise>
							<li style="color: white;">${ loginUser.name } 님, 환영합니다</li>
							<li><a href="logout.do" target="_self">로그아웃</a></li>
							<c:if test="${loginUser.admin == 1 }">
								<li><a href="admin.jsp" target="_self">관리자메뉴</a></li>
							</c:if>
							<li><a href="memberUpdate.do?userid=${loginUser.userid }" target="_self" onclick="return true">마이페이지▽</a></li>
						</c:otherwise>
					</c:choose>
					<li><a href="BoardServlet?command=board_list" target="_self">공지사항</a></li>
					<li><a href="sub.jsp" target="_self">주문배송</a></li>
					<li><a href="sub.jsp" target="_self">고객센터</a></li>
				</ul>
			</div>
			<div id="main-header">
				<div id="logo">
					<a href="index.jsp" target="_self"><img alt="logo"
						src="img/logoN4.svg"></a>
				</div>
				<div id="search">
					<input type="text" id="input-search" maxlength="80">
					<button for="input-search" id="search-button">
						<img src="img/8666693_search_icon.png">
					</button>
				</div>
				<div id="main-header-banner">
					<a href="sub.jsp" target="_self"><img alt="main-banner"
						src="img/bn_360x224.jpg"></a>
				</div>
			</div>
			<div id="lower-nav">
				<div id="fast-search">
					<a href="sub.jsp" target="_self">
						<h2>빠른분야찾기</h2>
					</a>
					<div id="fast-search-div" style="display: none;">
						<div id="fast-search-ul-div">
							<ul>
								<li class="fast-search-div-li"><a href="sub.jsp"
									target="_self">국내도서</a>
									<div class="fast-search-div">
										<div class="fast-search-content">
											<dl>
												<dt>
													<a href="sub.jsp" target="_self">국내도서</a>
												</dt>
												<dd class="fast-search-dd-1">
													<ul>
														<li><a href="sub.jsp" target="_self">소설/시/희곡</a></li>
														<li><a href="sub.jsp" target="_self">에세이</a></li>
														<li><a href="sub.jsp" target="_self">인문</a></li>
														<li><a href="sub.jsp" target="_self">역사</a></li>
														<li><a href="sub.jsp" target="_self">예술</a></li>
														<li><a href="sub.jsp" target="_self">종교</a></li>
														<li><a href="sub.jsp" target="_self">사회 정치</a></li>
														<li><a href="sub.jsp" target="_self">자연과학</a></li>
														<li><a href="sub.jsp" target="_self">경제 경영</a></li>
														<li><a href="sub.jsp" target="_self">자기계발</a></li>
														<li><a href="sub.jsp" target="_self">인물</a></li>
														<li><a href="sub.jsp" target="_self">유아</a></li>
														<li><a href="sub.jsp" target="_self">어린이</a></li>
														<li><a href="sub.jsp" target="_self">청소년</a></li>
														<li><a href="sub.jsp" target="_self">전집</a></li>
													</ul>
												</dd>
												<dd class="fast-search-dd-2">
													<ul>
														<li><a href="sub.jsp" target="_self">만화</a></li>
														<li><a href="sub.jsp" target="_self">라이트노벨</a></li>
														<li><a href="sub.jsp" target="_self">여행</a></li>
														<li><a href="sub.jsp" target="_self">요리</a></li>
														<li><a href="sub.jsp" target="_self">육아</a></li>
														<li><a href="sub.jsp" target="_self">가정살림</a></li>
														<li><a href="sub.jsp" target="_self">건강 취미</a></li>
														<li><a href="sub.jsp" target="_self">잡지</a></li>
														<li><a href="sub.jsp" target="_self">대학교재</a></li>
														<li><a href="sub.jsp" target="_self">국어 외국어 사전</a></li>
														<li><a href="sub.jsp" target="_self">IT 모바일</a></li>
														<li><a href="sub.jsp" target="_self">공무원</a></li>
														<li><a href="sub.jsp" target="_self">수험서 자격증</a></li>
														<li><a href="sub.jsp" target="_self">초등참고서</a></li>
														<li><a href="sub.jsp" target="_self">중고등참고서</a></li>
														<li><a href="sub.jsp" target="_self">EBS교재</a></li>
													</ul>
												</dd>
												<div class="fast-search-banner">
													<a href="sub.jsp" target="_self"><img alt="1월의 굿즈"
														src="img/qBook_1214.png"></a>
												</div>
											</dl>
										</div>
									</div></li>
								<li class="fast-search-div-li"><a href="sub.jsp"
									target="_self">외국도서</a>
									<div class="fast-search-div">
										<div class="fast-search-content">
											<dl>
												<dt>
													<a href="sub.jsp" target="_self">외국도서</a>
												</dt>
												<dd class="fast-search-dd-1">
													<ul>
														<li><a href="sub.jsp" target="_self">ELT 사전</a></li>
														<li><a href="sub.jsp" target="_self">문학 소설</a></li>
														<li><a href="sub.jsp" target="_self">경제 경영</a></li>
														<li><a href="sub.jsp" target="_self">인문 사회</a></li>
														<li><a href="sub.jsp" target="_self">예술 대중문화</a></li>
														<li><a href="sub.jsp" target="_self">취미 라이프스타일</a></li>
														<li><a href="sub.jsp" target="_self">컴퓨터</a></li>
														<li><a href="sub.jsp" target="_self">자연과학</a></li>
														<li><a href="sub.jsp" target="_self">대학교재 전문서</a></li>
														<li><a href="sub.jsp" target="_self">해외잡지</a></li>
														<li><a href="sub.jsp" target="_self">일본도서</a></li>
														<li><a href="sub.jsp" target="_self">중국도서</a></li>
														<li><a href="sub.jsp" target="_self">프랑스도서</a></li>
													</ul>
												</dd>
												<dd class="fast-search-dd-2">
													<ul>
														<li><a href="sub.jsp" target="_self">유아 어린이 청소년</a></li>
														<li><a href="sub.jsp" target="_self">캐릭터북</a></li>
														<li><a href="sub.jsp" target="_self">초등코스북</a></li>
														<li><a href="sub.jsp" target="_self">학습서</a></li>
														<li><a href="sub.jsp" target="_self">Lexile®</a></li>
													</ul>
												</dd>
											</dl>
											<div class="fast-search-banner">
												<a href="sub.jsp" target="_self"><img
													alt="넷플릭스 원작 소설 모음" src="img/qFBook_0126.png"></a>
											</div>
										</div>
									</div></li>
								<li class="fast-search-div-li"><a href="sub.jsp"
									target="_self">중고샵</a>
									<div class="fast-search-div">
										<div class="fast-search-content">
											<dl>
												<dt>
													<a href="sub.jsp" target="_self">중고샵</a>
												</dt>
												<dd class="fast-search-dd-wide">
													<ul>
														<li><a href="sub.jsp" target="_self">중고 국내도서</a></li>
														<li><a href="sub.jsp" target="_self">중고 외국도서</a></li>
														<li><a href="sub.jsp" target="_self">직배송 중고도서</a></li>
														<li><a href="sub.jsp" target="_self">중고 음반</a></li>
														<li><a href="sub.jsp" target="_self">중고 DVD</a></li>
														<li><a href="sub.jsp" target="_self">바이백(중고팔기)</a></li>
														<li><a href="sub.jsp" target="_self">중고매장</a></li>
													</ul>
												</dd>
											</dl>
											<div class="fast-search-banner">
												<a href="sub.jsp" target="_self"><img
													alt="직배송 중고책 슈퍼특가" src="img/qUsed_0126.png"></a>
											</div>
										</div>
									</div></li>
								<li class="fast-search-div-li"><a href="sub.jsp"
									target="_self">eBook</a>
									<div class="fast-search-div">
										<div class="fast-search-content">
											<dl>
												<dt>
													<a href="sub.jsp" target="_self">eBook</a>
												</dt>
												<dd class="fast-search-dd-1">
													<ul>
														<li><a href="sub.jsp" target="_self">로맨스</a></li>
														<li><a href="sub.jsp" target="_self">BL</a></li>
														<li><a href="sub.jsp" target="_self">만화</a></li>
														<li><a href="sub.jsp" target="_self">소설</a></li>
														<li><a href="sub.jsp" target="_self">경제 경영</a></li>
														<li><a href="sub.jsp" target="_self">라이트노벨</a></li>
														<li><a href="sub.jsp" target="_self">판타지/무협</a></li>
														<li><a href="sub.jsp" target="_self">에세이 시</a></li>
														<li><a href="sub.jsp" target="_self">인문</a></li>
														<li><a href="sub.jsp" target="_self">사회 정치</a></li>
														<li><a href="sub.jsp" target="_self">자기계발</a></li>
														<li><a href="sub.jsp" target="_self">역사</a></li>
														<li><a href="sub.jsp" target="_self">종교</a></li>
														<li><a href="sub.jsp" target="_self">예술 대중문화</a></li>
														<li><a href="sub.jsp" target="_self">자연과학</a></li>
													</ul>
												</dd>
												<dd class="fast-search-dd-2">
													<ul>
														<li><a href="sub.jsp" target="_self">가정 살림</a></li>
														<li><a href="sub.jsp" target="_self">건강 취미 여행</a></li>
														<li><a href="sub.jsp" target="_self">어린이 유아</a></li>
														<li><a href="sub.jsp" target="_self">청소년</a></li>
														<li><a href="sub.jsp" target="_self">국어 외국어</a></li>
														<li><a href="sub.jsp" target="_self">IT 모바일</a></li>
														<li><a href="sub.jsp" target="_self">대학교재</a></li>
														<li><a href="sub.jsp" target="_self">수험서 자격증</a></li>
														<li><a href="sub.jsp" target="_self">잡지</a></li>
														<li><a href="sub.jsp" target="_self">해외원서</a></li>
														<li><a href="sub.jsp" target="_self">오디오북</a></li>
														<li><a href="sub.jsp" target="_self">무료eBook</a></li>
														<li><a href="sub.jsp" target="_self">eBook리더기</a></li>
													</ul>
												</dd>
											</dl>
											<div class="fast-search-banner">
												<a href="sub.jsp" target="_self"><img alt="네네 장르사용설명서"
													src="img/qEBook_1017.png"></a>
											</div>
										</div>
									</div></li>
								<li class="fast-search-div-li"><a href="sub.jsp"
									target="_self">크레마클럽</a>
									<div class="fast-search-div">
										<div class="fast-search-content">
											<dl>
												<dt>
													<a href="sub.jsp" target="_self">크레마클럽</a>
												</dt>
												<dd class="fast-search-dd-wide">
													<ul>
														<li><a href="sub.jsp" target="_self">YES24
																ORIGINAL</a></li>
														<li><a href="sub.jsp" target="_self">소설</a><em
															style="font-size: 10px; color: #555; padding: 0 5px;">|</em>
															<a href="sub.jsp" target="_self">에세이 시</a></li>
														<li><a href="sub.jsp" target="_self">경제 경영</a></li>
														<li><a href="sub.jsp" target="_self">자기계발</a></li>
														<li><a href="sub.jsp" target="_self">인문</a><em
															style="font-size: 10px; color: #555; padding: 0 5px;">|</em>
															<a href="sub.jsp" target="_self">사회 정치</a></li>
														<li><a href="sub.jsp" target="_self">역사</a><em
															style="font-size: 10px; color: #555; padding: 0 5px;">|</em>
															<a href="sub.jsp" target="_self">종교</a></li>
														<li><a href="sub.jsp" target="_self">예술 대중문화</a></li>
														<li><a href="sub.jsp" target="_self">자연과학</a></li>
														<li><a href="sub.jsp" target="_self">가정 살림</a></li>
														<li><a href="sub.jsp" target="_self">건강 취미 여행</a></li>
														<li><a href="sub.jsp" target="_self">어린이 유아</a><em
															style="font-size: 10px; color: #555; padding: 0 5px;">|</em>
															<a href="sub.jsp" target="_self">청소년</a></li>
														<li><a href="sub.jsp" target="_self">국어 외국어</a></li>
														<li><a href="sub.jsp" target="_self">IT 모바일</a></li>
														<li><a href="sub.jsp" target="_self">대학교재</a></li>
														<li><a href="sub.jsp" target="_self">잡지</a><em
															style="font-size: 10px; color: #555; padding: 0 5px;">|</em>
															<a href="sub.jsp" target="_self">만화</a></li>
													</ul>
												</dd>
											</dl>
											<div class="fast-search-banner">
												<a href="sub.jsp" target="_self"><img alt="CremaClub"
													src="img/qCrema_0818.png"></a>
											</div>
										</div>
									</div></li>
								<li class="fast-search-div-li"><a href="sub.jsp"
									target="_self">CD/LP</a>
									<div class="fast-search-div">
										<div class="fast-search-content">
											<dl>
												<dt>
													<a href="sub.jsp" target="_self">CD/LP</a>
												</dt>
												<dd class="fast-search-dd-1">
													<ul>
														<li><a href="sub.jsp" target="_self">가요</a></li>
														<li><a href="sub.jsp" target="_self">클래식</a></li>
														<li><a href="sub.jsp" target="_self">POP</a></li>
														<li><a href="sub.jsp" target="_self">ROCK</a></li>
														<li><a href="sub.jsp" target="_self">재즈</a></li>
														<li><a href="sub.jsp" target="_self">OST</a></li>
														<li><a href="sub.jsp" target="_self">뮤직 DVD</a></li>
														<li><a href="sub.jsp" target="_self">뮤직 블루레이</a></li>
														<li><a href="sub.jsp" target="_self">유아/어린이/명상</a></li>
														<li><a href="sub.jsp" target="_self">뉴에이지</a></li>
														<li><a href="sub.jsp" target="_self">종교음악</a></li>
														<li><a href="sub.jsp" target="_self">국악</a></li>
														<li><a href="sub.jsp" target="_self">일본음악</a></li>
														<li><a href="sub.jsp" target="_self">월드뮤직</a></li>
														<li><a href="sub.jsp" target="_self">예약음반</a></li>
													</ul>
												</dd>
												<dd class="fast-search-dd-2">
													<ul>
														<li><a href="sub.jsp" target="_self">중고음반</a></li>
														<li><a href="sub.jsp" target="_self">스타샵</a></li>
														<li><a href="sub.jsp" target="_self">해외 구매</a></li>
														<li><a href="sub.jsp" target="_self">LP(Vinyl)샵</a></li>
														<li><a href="sub.jsp" target="_self">스페셜샵</a></li>
													</ul>
												</dd>
											</dl>
											<div class="fast-search-banner">
												<a href="sub.jsp" target="_self"><img alt="임윤찬 앨범"
													src="img/qCDLP_0619.png"></a>
											</div>
										</div>
									</div></li>
								<li class="fast-search-div-li"><a href="sub.jsp"
									target="_self">DVD/BD</a>
									<div class="fast-search-div">
										<div class="fast-search-content">
											<dl>
												<dt>
													<a href="sub.jsp" target="_self">DVD/BD</a>
												</dt>
												<dd class="fast-search-dd-1">
													<ul>
														<li><a href="sub.jsp" target="_self">예약판매</a></li>
														<li><a href="sub.jsp" target="_self">스틸북샵</a></li>
														<li><a href="sub.jsp" target="_self">예스24 단독구매</a></li>
														<li><a href="sub.jsp" target="_self">블루레이</a></li>
														<li><a href="sub.jsp" target="_self">해외구매</a></li>
														<li><a href="sub.jsp" target="_self">애니메이션</a></li>
														<li><a href="sub.jsp" target="_self">액션/SF</a></li>
														<li><a href="sub.jsp" target="_self">드라마/코미디</a></li>
														<li><a href="sub.jsp" target="_self">고전/명화</a></li>
														<li><a href="sub.jsp" target="_self">3D 블루레이</a></li>
														<li><a href="sub.jsp" target="_self">다큐/교육</a></li>
														<li><a href="sub.jsp" target="_self">성인(19)</a></li>
														<li><a href="sub.jsp" target="_self">뮤직DVD</a></li>
														<li><a href="sub.jsp" target="_self">국내외 TV드라마</a></li>
														<li><a href="sub.jsp" target="_self">비디오/VCD</a></li>
													</ul>
												</dd>
												<dd class="fast-search-dd-2">
													<ul>
														<li><a href="sub.jsp" target="_self">독립,인디영화</a></li>
														<li><a href="sub.jsp" target="_self">공포 / 스릴러</a></li>
													</ul>
												</dd>
											</dl>
											<div class="fast-search-banner">
												<a href="sub.jsp" target="_self"><img alt="바이올렛에버가든"
													src="img/qDVD_0109.png"></a>
											</div>
										</div>
									</div></li>
								<li class="fast-search-div-li"><a href="sub.jsp"
									target="_self">문구</a>
									<div class="fast-search-div">
										<div class="fast-search-content">
											<dl>
												<dt>
													<a href="sub.jsp" target="_self">문구</a>
												</dt>
												<dd class="fast-search-dd-wide">
													<ul>
														<li><a href="sub.jsp" target="_self">예스굿즈</a></li>
														<li><a href="sub.jsp" target="_self">디자인문구</a></li>
														<li><a href="sub.jsp" target="_self">학습/독서</a></li>
														<li><a href="sub.jsp" target="_self">디지털</a></li>
														<li><a href="sub.jsp" target="_self">리빙</a></li>
														<li><a href="sub.jsp" target="_self">취미/여행</a></li>
														<li><a href="sub.jsp" target="_self">유아동</a></li>
														<li><a href="sub.jsp" target="_self">패션잡화</a></li>
														<li><a href="sub.jsp" target="_self">반려동물</a></li>
														<li><a href="sub.jsp" target="_self">1인샵</a></li>
													</ul>
												</dd>
											</dl>
											<div class="fast-search-banner">
												<a href="sub.jsp" target="_self"><img alt="슈퍼세일"
													src="img/qGift_0126.png"></a>
											</div>
										</div>
									</div></li>
								<li class="fast-search-div-li"><a href="sub.jsp"
									target="_self">티켓</a>
									<div class="fast-search-div">
										<div class="fast-search-content">
											<dl>
												<dt>
													<a href="sub.jsp" target="_self">티켓</a>
												</dt>
												<dd class="fast-search-dd-wide">
													<ul>
														<li><a href="sub.jsp" target="_self">콘서트</a></li>
														<li><a href="sub.jsp" target="_self">뮤지컬</a></li>
														<li><a href="sub.jsp" target="_self">연극</a></li>
														<li><a href="sub.jsp" target="_self">클래식/무용/국악</a></li>
														<li><a href="sub.jsp" target="_self">전시/행사</a></li>
														<li><a href="sub.jsp" target="_self">가족/아동</a></li>
													</ul>
												</dd>
											</dl>
											<div class="fast-search-banner">
												<a href="sub.jsp" target="_self"><img alt="티켓예매"
													src="img/qTicket_0126.png"></a>
											</div>
										</div>
									</div></li>
						</div>
						</ul>
					</div>
				</div>
				<div id="lower-nav-12">
					<div id="lower-nav-1">
						<ul>
							<li><a href="sub.jsp" target="_self">베스트</a></li>
							<li><a href="sub.jsp" target="_self">신상품</a></li>
							<li><a href="sub.jsp" target="_self">이벤트</a></li>
							<li><a href="sub.jsp" target="_self">바이백</a></li>
							<li><a href="sub.jsp" target="_self">매장안내</a></li>
						</ul>
					</div>
					<p>|</p>
					<div id="lower-nav-2">
						<ul>
							<li><a href="sub.jsp" target="_self">채널예스</a></li>
							<li><a href="sub.jsp" target="_self">블로그</a></li>
							<li><a href="sub.jsp" target="_self">예스펀딩</a></li>
							<li><a href="sub.jsp" target="_self">리:센스</a></li>
						</ul>
					</div>
				</div>
				<div id="lower-nav-3">
					<ul>
						<li><a href="sub.jsp" target="_self">예사단독판매</a></li>
						<li><a href="sub.jsp" target="_self">작가만남</a></li>
						<li><a href="sub.jsp" target="_self">이달의사은품</a></li>
						<li><a href="sub.jsp" target="_self">특가할인</a></li>
						<li><a href="sub.jsp" target="_self">추천도서</a></li>
						<li><a href="sub.jsp" target="_self">대량/법인</a></li>
					</ul>
				</div>
			</div>
		</div>
	</header>
	
	
	<!--메인 슬라이드 시작-->
	<div id="slider-section">
		<ul id="slider-main-ul">
			<li><a href="sub.jsp" target="_self">YES NOW</a>
				<div class="slider-box">
					<div class="slider-content">
						<div class="slider-title-div">
							<div id="title-1" class="yesnow-title">
								<a href="sub.jsp" target="_self">1월의 굿즈 : 북파우치 & 토트백</a>
							</div>
							<div id="title-2" class="yesnow-title">
								<a href="sub.jsp" target="_self">매일 10분 독서 시즌3</a>
							</div>
							<div id="title-3" class="yesnow-title">
								<a href=#>어크로스 브랜드전</a>
							</div>
							<div id="title-4" class="yesnow-title">
								<a href="sub.jsp" target="_self">신간 소개</a>
							</div>
						</div>
						<div class="yesnow-img">
							<a href="sub.jsp" target="_self"><img alt="yesnow_1"
								src="img/slider_yesnow_1.jpg"></a>
						</div>
						<div class="yesnow-img">
							<a href="sub.jsp" target="_self"><img alt="yesnow_2"
								src="img/slider_yesnow_2.jpg"></a>
						</div>
						<div class="yesnow-img">
							<a href="sub.jsp" target="_self"><img alt="yesnow_3"
								src="img/slider_yesnow_3.jpg"></a>
						</div>
						<div class="yesnow-img">
							<a href="sub.jsp" target="_self"><img alt="yesnow_4"
								src="img/slider_yesnow_4.jpg"></a>
						</div>
					</div>
				</div></li>
			<li><a href="sub.jsp" target="_self">국내도서</a>
				<div class="slider-box">
					<div class="slider-content">
						<div class="slider-sub-ul">
							<ul class="slider-sub-ul-1">
								<li><a href="sub.jsp" target="_self"
									style="font-weight: bolder;">소설/시</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self" style="font-weight: bolder;">에세이</a></li>
								<li><a href="sub.jsp" target="_self"
									style="font-weight: bolder;">인문</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">역사</a></li>
								<li><a href="sub.jsp" target="_self">예술</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">종교</a></li>
								<li><a href="sub.jsp" target="_self">사회</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">과학</a></li>
								<li><a href="sub.jsp" target="_self"
									style="font-weight: bolder;">경제 경영</a></li>
								<li><a href="sub.jsp" target="_self">자기계발</a></li>
								<li><a href="sub.jsp" target="_self">만화</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">라이트노벨</a></li>
								<li><a href="sub.jsp" target="_self">여행</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">잡지</a></li>
								<li><a href="sub.jsp" target="_self"
									style="font-weight: bolder;">어린이</a></li>
								<li><a href="sub.jsp" target="_self">유아</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">전집</a></li>
								<li><a href="sub.jsp" target="_self">청소년</a></li>
								<li><a href="sub.jsp" target="_self"
									style="font-weight: bolder;">요리</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">육아</a></li>
								<li><a href="sub.jsp" target="_self">가정 살림</a></li>
								<li><a href="sub.jsp" target="_self">건강 취미</a></li>
								<li><a href="sub.jsp" target="_self">대학교재</a></li>
								<li><a href="sub.jsp" target="_self"
									style="font-weight: bolder;">국어와 외국어</a></li>
								<li><a href="sub.jsp" target="_self">IT 모바일</a></li>
								<li><a href="sub.jsp" target="_self"
									style="font-weight: bolder;">수험서 자격증</a></li>
								<li><a href="sub.jsp" target="_self">초등참고서</a></li>
								<li><a href="sub.jsp" target="_self"
									style="font-weight: bolder;">중고등참고서</a></li>
							</ul>
						</div>
						<div class="slider-sub-title-div">
							<div class="slider-sub-title korean-title" id="title-kor1">
								<a href="sub.jsp" target="_self">푸바오 사랑해</a>
							</div>
							<div class="slider-sub-title korean-title" id="title-kor2">
								<a href="sub.jsp" target="_self">나의 용돈 일기</a>
							</div>
							<div class="slider-sub-title korean-title" id="title-kor3">
								<a href="sub.jsp" target="_self">MD 추천</a>
							</div>
							<div class="slider-sub-title korean-title" id="title-kor4">
								<a href="sub.jsp" target="_self">HOT! 이벤트</a>
							</div>
							<div class="slider-sub-title korean-title" id="title-kor5">
								<a href="sub.jsp" target="_self">화제의 책</a>
							</div>
							<div class="slider-sub-title korean-title" id="title-kor6">
								<a href="sub.jsp" target="_self">이주의 책</a>
							</div>
							<div class="slider-sub-title korean-title" id="title-kor7">
								<a href="sub.jsp" target="_self">이책 어때?</a>
							</div>
						</div>
						<div class="slider-sub-content korean-img">
							<a href="sub.jsp" target="_self"><img alt="korean_book"
								src="img/korean_book_1.jpg"></a>
						</div>
						<div class="slider-sub-content korean-img">
							<a href="sub.jsp" target="_self"><img alt="korean_book"
								src="img/korean_book_2.jpg"></a>
						</div>
						<div class="slider-sub-content korean-img">
							<ul>
								<li><a href="sub.jsp" target="_self"><img
										alt="slider-sub-korean" src="img/korean_book_3_1.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="slider-sub-korean" src="img/korean_book_3_2.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="slider-sub-korean" src="img/korean_book_3_3.jpg"></a></li>
							</ul>
						</div>
						<div class="slider-sub-content korean-img">
							<ul>
								<li><a href="sub.jsp" target="_self"><img
										alt="slider-sub-korean" src="img/korean_book_4_1.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="slider-sub-korean" src="img/korean_book_4_2.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="slider-sub-korean" src="img/korean_book_4_3.jpg"></a></li>
							</ul>
						</div>
						<div class="slider-sub-content korean-img">
							<ul>
								<li><a href="sub.jsp" target="_self"><img
										alt="slider-sub-korean" src="img/korean_book_5_1.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="slider-sub-korean" src="img/korean_book_5_2.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="slider-sub-korean" src="img/korean_book_5_3.jpg"></a></li>
							</ul>
						</div>
						<div class="slider-sub-content korean-img">
							<ul>
								<li><a href="sub.jsp" target="_self"><img
										alt="slider-sub-korean" src="img/korean_book_6_1.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="slider-sub-korean" src="img/korean_book_6_2.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="slider-sub-korean" src="img/korean_book_6_3.png"></a></li>
							</ul>
						</div>
						<div class="slider-sub-content korean-img">
							<ul>
								<li><a href="sub.jsp" target="_self"><img
										alt="slider-sub-korean" src="img/korean_book_7_1.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="slider-sub-korean" src="img/korean_book_7_2.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="slider-sub-korean" src="img/korean_book_7_3.jpg"></a></li>
							</ul>
						</div>
					</div>
				</div></li>
			<li><a href="sub.jsp" target="_self">외국도서</a>
				<div class="slider-box">
					<div class="slider-content">
						<div class="slider-sub-ul">
							<ul class="slider-sub-ul-1">
								<li><a href="sub.jsp" target="_self"
									style="font-weight: bolder;">ELT 사전</a></li>
								<li><a href="sub.jsp" target="_self">문학 소설</a></li>
								<li><a href="sub.jsp" target="_self">경제 경영</a></li>
								<li><a href="sub.jsp" target="_self">인문 사회</a></li>
								<li><a href="sub.jsp" target="_self">예술 대중문화</a></li>
								<li><a href="sub.jsp" target="_self">취미 라이프스타일</a></li>
								<li><a href="sub.jsp" target="_self">컴퓨터</a></li>
								<li><a href="sub.jsp" target="_self">자연과학</a></li>
								<li><a href="sub.jsp" target="_self"
									style="font-weight: bolder;">대학교재 전문서</a></li>
								<li><a href="sub.jsp" target="_self">해외잡지</a></li>
								<li><a href="sub.jsp" target="_self">유아어린이청소년</a></li>
								<li><a href="sub.jsp" target="_self">캐릭터북</a></li>
								<li><a href="sub.jsp" target="_self">초등코스북</a></li>
								<li><a href="sub.jsp" target="_self">학습서</a></li>
								<li><a href="sub.jsp" target="_self"
									style="font-weight: bolder;">일본도서</a></li>
								<li><a href="sub.jsp" target="_self">중국도서</a></li>
								<li><a href="sub.jsp" target="_self">프랑스도서</a></li>
								<li><a href="sub.jsp" target="_self">Lexile®</a></li>
							</ul>
						</div>
						<div>
							<div class="slider-sub-title foreign-title" id="title-for1">
								<a href="sub.jsp" target="_self">아가일 댓글 이벤트</a>
							</div>
							<div class="slider-sub-title foreign-title" id="title-for2">
								<a href="sub.jsp" target="_self">신간/베스트셀러</a>
							</div>
							<div class="slider-sub-title foreign-title" id="title-for3">
								<a href="sub.jsp" target="_self">세트 특가전</a>
							</div>
							<div class="slider-sub-title foreign-title" id="title-for4">
								<a href="sub.jsp" target="_self">겨울방학 영어 공부</a>
							</div>
							<div class="slider-sub-title foreign-title" id="title-for5">
								<a href="sub.jsp" target="_self">영어 원서 특가전</a>
							</div>
							<div class="slider-sub-title foreign-title" id="title-for6">
								<a href="sub.jsp" target="_self">MD 추천</a>
							</div>
						</div>
						<div class="slider-sub-content foreign-img">
							<a href="sub.jsp" target="_self"><img alt="foreign_book"
								src="img/foreign_book_1.jpg"></a>
						</div>
						<div class="slider-sub-content foreign-img">
							<a href="sub.jsp" target="_self"><img alt="foreign_book"
								src="img/foreign_book_2.jpg"></a>
						</div>
						<div class="slider-sub-content foreign-img">
							<a href="sub.jsp" target="_self"><img alt="foreign_book"
								src="img/foreign_book_3.jpg"></a>
						</div>
						<div class="slider-sub-content foreign-img">
							<a href="sub.jsp" target="_self"><img alt="foreign_book"
								src="img/foreign_book_4.jpg"></a>
						</div>
						<div class="slider-sub-content foreign-img">
							<a href="sub.jsp" target="_self"><img alt="foreign_book"
								src="img/foreign_book_5.jpg"></a>
						</div>
						<div class="slider-sub-content foreign-img">
							<ul>
								<li><a href="sub.jsp" target="_self"><img
										alt="foreign-img" src="img/foreign_book_6_1.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="foreign-img" src="img/foreign_book_6_2.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="foreign-img" src="img/foreign_book_6_3.jpg"></a></li>
							</ul>
						</div>
					</div>
				</div></li>
			<li><a href="sub.jsp" target="_self">중고샵</a>
				<div class="slider-box">
					<div class="slider-content">
						<div class="slider-sub-ul">
							<a href="sub.jsp" target="_self">
								<h4>중고도서</h4>
							</a>
							<ul class="slider-sub-ul-1">
								<li><a href="sub.jsp" target="_self">가정과 생활</a></li>
								<li><a href="sub.jsp" target="_self">국어/외국어</a></li>
								<li><a href="sub.jsp" target="_self">대학교재</a></li>
								<li><a href="sub.jsp" target="_self">소설/시</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">에세이</a></li>
								<li><a href="sub.jsp" target="_self">만화</a></li>
								<li><a href="sub.jsp" target="_self">비즈니스와 경제</a></li>
								<li><a href="sub.jsp" target="_self">자기관리</a></li>
								<li><a href="sub.jsp" target="_self">어린이</a></li>
								<li><a href="sub.jsp" target="_self">유아</a></li>
								<li><a href="sub.jsp" target="_self">인문</a></li>
								<li><a href="sub.jsp" target="_self">전집</a></li>
								<li><a href="sub.jsp" target="_self">중고등참고서</a></li>
								<li><a href="sub.jsp" target="_self">초등참고서</a></li>
								<li><a href="sub.jsp" target="_self">외국도서</a></li>
							</ul>
							<a href="sub.jsp" target="_self">
								<h4>직배송 중고</h4>
							</a> <a href="sub.jsp" target="_self">
								<h4>중고 음반</h4>
							</a> <a href="sub.jsp" target="_self">
								<h4>중고 DVD</h4>
							</a> <a href="sub.jsp" target="_self">
								<h4>매장안내</h4>
							</a>
						</div>
						<div>
							<div class="slider-sub-title used-title" id="title-used1">
								<a href="sub.jsp" target="_self">편의점 택배</a>
							</div>
							<div class="slider-sub-title used-title" id="title-used2">
								<a href="sub.jsp" target="_self">중고전집 특가</a>
							</div>
							<div class="slider-sub-title used-title" id="title-used3">
								<a href="sub.jsp" target="_self">중고샵 할인혜택</a>
							</div>
							<div class="slider-sub-title used-title" id="title-used4">
								<a href="sub.jsp" target="_self">매장 배송 중고</a>
							</div>
							<div class="slider-sub-title used-title" id="title-used5">
								<a href="sub.jsp" target="_self">금주의 바이백</a>
							</div>
							<div class="slider-sub-title used-title" id="title-used6">
								<a href="sub.jsp" target="_self">직배송 중고책 슈퍼특가</a>
							</div>
						</div>
						<div class="slider-sub-content used-img">
							<a href="sub.jsp" target="_self"><img alt="used_book"
								src="img/used_1.jpg"></a>
						</div>
						<div class="slider-sub-content used-img">
							<a href="sub.jsp" target="_self"><img alt="used_book"
								src="img/used_2.jpg"></a>
						</div>
						<div class="slider-sub-content used-img">
							<a href="sub.jsp" target="_self"><img alt="used_book"
								src="img/used_3.jpg"></a>
						</div>
						<div class="slider-sub-content used-img">
							<a href="sub.jsp" target="_self"><img alt="used_book"
								src="img/used_4.jpg"></a>
						</div>
						<div class="slider-sub-content used-img">
							<a href="sub.jsp" target="_self"><img alt="used_book"
								src="img/used_5.jpg"></a>
						</div>
						<div class="slider-sub-content used-img">
							<a href="sub.jsp" target="_self"><img alt="used_book"
								src="img/used_6.jpg"></a>
						</div>
					</div></li>
			<li><a href="sub.jsp" target="_self">eBook</a>
				<div class="slider-box">
					<div class="slider-content">
						<div class="slider-sub-ul">
							<a href="sub.jsp" target="_self">
								<h4>장르소설</h4>
							</a>
							<ul class="slider-sub-ul-1">
								<li><a href="sub.jsp" target="_self">로맨스</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">BL</a></li>
								<li><a href="sub.jsp" target="_self">판타지/무협</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">만화</a></li>
							</ul>
							<a href="sub.jsp" target="_self">
								<h4>단행본</h4>
							</a>
							<ul class="slider-sub-ul-1">
								<li><a href="sub.jsp" target="_self">소설</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">에세이 시</a></li>
								<li><a href="sub.jsp" target="_self">경제 경영</a></li>
								<li><a href="sub.jsp" target="_self">자기계발</a></li>
								<li><a href="sub.jsp" target="_self">인문</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">사회 정치</a></li>
								<li><a href="sub.jsp" target="_self">역사</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">종교</a></li>
								<li><a href="sub.jsp" target="_self">수험서/자격증</a></li>
								<li><a href="sub.jsp" target="_self">자연과학</a></li>
								<li><a href="sub.jsp" target="_self">외국어</a></li>
								<li><a href="sub.jsp" target="_self">IT 모바일</a></li>
								<li><a href="sub.jsp" target="_self">가정살림</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">전강 취미</a></li>
								<li><a href="sub.jsp" target="_self">해외원서</a></li>
								<li><a href="sub.jsp" target="_self">오디오북</a></li>
							</ul>

							<ul class="slider-sub-ul-2">
								<li><a href="sub.jsp" target="_self">eBook 리더기</a></li>
								<li><a href="sub.jsp" target="_self">디지털머니</a></li>
								<li><a href="sub.jsp" target="_self">단독 선출간</a></li>
							</ul>
						</div>
						<div>
							<div class="slider-sub-title eBook-title" id="title-eBook1">
								<a href="sub.jsp" target="_self">작가정신 <향></a>
							</div>
							<div class="slider-sub-title eBook-title" id="title-eBook2">
								<a href="sub.jsp" target="_self">킨더랜드</a>
							</div>
							<div class="slider-sub-title eBook-title" id="title-eBook3">
								<a href="sub.jsp" target="_self">이 주의 책</a>
							</div>
							<div class="slider-sub-title eBook-title" id="title-eBook4">
								<a href="sub.jsp" target="_self">이 주의 이벤트</a>
							</div>
							<div class="slider-sub-title eBook-title" id="title-eBook5">
								<a href="sub.jsp" target="_self">과학책 초특가</a>
							</div>
							<div class="slider-sub-title eBook-title" id="title-eBook6">
								<a href="sub.jsp" target="_self">리밋 허니 2 UP!</a>
							</div>
							<div class="slider-sub-title eBook-title" id="title-eBook7">
								<a href="sub.jsp" target="_self">AK 브랜드전</a>
							</div>
						</div>
						<div class="slider-sub-content eBook-img">
							<a href="sub.jsp" target="_self"><img alt="eBook_book"
								src="img/eBook_1.jpg"></a>
						</div>
						<div class="slider-sub-content eBook-img">
							<a href="sub.jsp" target="_self"><img alt="eBook_book"
								src="img/eBook_2.jpg"></a>
						</div>
						<div class="slider-sub-content eBook-img">
							<ul>
								<li><a href="sub.jsp" target="_self"><img
										alt="eBook-thumb" src="img/eBook_3_1.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="eBook-thumb" src="img/eBook_3_2.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="eBook-thumb" src="img/eBook_3_3.jpg"></a></li>
							</ul>
						</div>
						<div class="slider-sub-content eBook-img">
							<ul>
								<li><a href="sub.jsp" target="_self"><img
										alt="eBook-thumb" src="img/eBook_4_1.png"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="eBook-thumb" src="img/eBook_4_2.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="eBook-thumb" src="img/eBook_4_3.jpg"></a></li>
							</ul>
						</div>
						<div class="slider-sub-content eBook-img">
							<a href="sub.jsp" target="_self"><img alt="eBook_book"
								src="img/eBook_5.jpg"></a>
						</div>
						<div class="slider-sub-content eBook-img">
							<a href="sub.jsp" target="_self"><img alt="eBook_book"
								src="img/eBook_6.jpg"></a>
						</div>
						<div class="slider-sub-content eBook-img">
							<a href="sub.jsp" target="_self"><img alt="eBook_book"
								src="img/eBook_7.jpg"></a>
						</div>
					</div>
				</div></li>
			<li><a href="sub.jsp" target="_self">크레마클럽</a>
				<div class="slider-box">
					<div class="slider-content">
						<div class="slider-sub-ul">
							<ul class="slider-sub-ul-1">
								<li><a href="sub.jsp" target="_self">YES24 ORIGINAL</a></li>
								<li><a href="sub.jsp" target="_self">소설</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">에세이 시</a></li>
								<li><a href="sub.jsp" target="_self">경제 경영</a></li>
								<li><a href="sub.jsp" target="_self">자기계발</a></li>
								<li><a href="sub.jsp" target="_self">인문</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">사회 정치</a></li>
								<li><a href="sub.jsp" target="_self">역사</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">종교</a></li>
								<li><a href="sub.jsp" target="_self">예술 대중문화</a></li>
								<li><a href="sub.jsp" target="_self">자연과학</a></li>
								<li><a href="sub.jsp" target="_self">가정 살림</a></li>
								<li><a href="sub.jsp" target="_self">건강 취미 여행</a></li>
								<li><a href="sub.jsp" target="_self">어린이 유아</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">청소년</a></li>
								<li><a href="sub.jsp" target="_self">국어 외국어</a></li>
								<li><a href="sub.jsp" target="_self">IT 모바일</a></li>
								<li><a href="sub.jsp" target="_self">대학교재</a></li>
								<li><a href="sub.jsp" target="_self">잡지</a><em
									style="font-size: 10px; color: #555; padding: 0 5px;">|</em> <a
									href="sub.jsp" target="_self">만화</a></li>
							</ul>
							<ul class="slider-sub-ul-2">
								<li><a href="sub.jsp" target="_self">크레마클럽 베스트</a></li>
								<li><a href="sub.jsp" target="_self">첫 달 무료 가입</a></li>
							</ul>
						</div>
						<div>
							<div class="slider-sub-title crema-title" id="title-crema1">
								<a href="sub.jsp" target="_self">새해 독서 챌린지!</a>
							</div>
							<div class="slider-sub-title crema-title" id="title-crema2">
								<a href="sub.jsp" target="_self">장류진 신작 기대평</a>
							</div>
							<div class="slider-sub-title crema-title" id="title-crema3">
								<a href="sub.jsp" target="_self">MD's Pick</a>
							</div>
							<div class="slider-sub-title crema-title" id="title-crema4">
								<a href="sub.jsp" target="_self">주간 큐레이션</a>
							</div>
							<div class="slider-sub-title crema-title" id="title-crema5">
								<a href="sub.jsp" target="_self">크레마 리모컨 2세대 출시</a>
							</div>
							<div class="slider-sub-title crema-title" id="title-crema6">
								<a href="sub.jsp" target="_self">모티프 X 클럽 결합혜택</a>
							</div>
						</div>
						<div class="slider-sub-content crema-img">
							<a href="sub.jsp" target="_self"><img alt="crema_book"
								src="img/crema_1.jpg"></a>
						</div>
						<div class="slider-sub-content crema-img">
							<a href="sub.jsp" target="_self"><img alt="crema_book"
								src="img/crema_2.jpg"></a>
						</div>
						<div class="slider-sub-content crema-img">
							<a href="sub.jsp" target="_self"><img alt="crema_book"
								src="img/crema_3.jpg"></a>
						</div>
						<div class="slider-sub-content crema-img">
							<a href="sub.jsp" target="_self"><img alt="crema_book"
								src="img/crema_4.jpg"></a>
						</div>
						<div class="slider-sub-content crema-img">
							<a href="sub.jsp" target="_self"><img alt="crema_book"
								src="img/crema_5.jpg"></a>
						</div>
						<div class="slider-sub-content crema-img">
							<a href="sub.jsp" target="_self"><img alt="crema_book"
								src="img/crema_6.jpg"></a>
						</div>
					</div>
				</div></li>
			<li><a href="sub.jsp" target="_self">CD/LP</a>
				<div class="slider-box">
					<div class="slider-content">
						<div class="slider-sub-ul">
							<ul class="slider-sub-ul-1">
								<li><a href="sub.jsp" target="_self">가요</a></li>
								<li><a href="sub.jsp" target="_self">클래식</a></li>
								<li><a href="sub.jsp" target="_self">POP</a></li>
								<li><a href="sub.jsp" target="_self">ROCK</a></li>
								<li><a href="sub.jsp" target="_self">재즈</a></li>
								<li><a href="sub.jsp" target="_self">OST</a></li>
								<li><a href="sub.jsp" target="_self">뮤직 DVD</a></li>
								<li><a href="sub.jsp" target="_self">뮤직 블루레이</a></li>
								<li><a href="sub.jsp" target="_self">유아/어린이/영상</a></li>
								<li><a href="sub.jsp" target="_self">뉴에이지</a></li>
								<li><a href="sub.jsp" target="_self">종교음악</a></li>
								<li><a href="sub.jsp" target="_self">국악</a></li>
								<li><a href="sub.jsp" target="_self">일본음악</a></li>
								<li><a href="sub.jsp" target="_self">월드뮤직</a></li>
							</ul>
							<ul class="slider-sub-ul-2">
								<li><a href="sub.jsp" target="_self">해외구매</a></li>
								<li><a href="sub.jsp" target="_self">중고샵</a></li>
								<li><a href="sub.jsp" target="_self">LP샵</a></li>
								<li><a href="sub.jsp" target="_self">미리듣기</a></li>
								<li><a href="sub.jsp" target="_self">음악관련</a></li>
							</ul>
						</div>
						<div>
							<div class="slider-sub-title CDLP-title" id="title-CDLP1">
								<a href="sub.jsp" target="_self">이소라 LP 단독판매</a>
							</div>
							<div class="slider-sub-title CDLP-title" id="title-CDLP2">
								<a href="sub.jsp" target="_self">투어스 (TWS) 사인회</a>
							</div>
							<div class="slider-sub-title CDLP-title" id="title-CDLP3">
								<a href="sub.jsp" target="_self">EuroArts 영상물 할인전</a>
							</div>
							<div class="slider-sub-title CDLP-title" id="title-CDLP4">
								<a href="sub.jsp" target="_self">설아 쇼케이스</a>
							</div>
							<div class="slider-sub-title CDLP-title" id="title-CDLP5">
								<a href="sub.jsp" target="_self">2024 내한 아티스트</a>
							</div>
							<div class="slider-sub-title CDLP-title" id="title-CDLP6">
								<a href="sub.jsp" target="_self">트와이스 YES24 특전</a>
							</div>
						</div>
						<div class="slider-sub-content CDLP-img">
							<a href="sub.jsp" target="_self"><img alt="CDLP"
								src="img/CDLP_1.jpg"></a>
						</div>
						<div class="slider-sub-content CDLP-img">
							<a href="sub.jsp" target="_self"><img alt="CDLP"
								src="img/CDLP_2.jpg"></a>
						</div>
						<div class="slider-sub-content CDLP-img">
							<a href="sub.jsp" target="_self"><img alt="CDLP"
								src="img/CDLP_3.jpg"></a>
						</div>
						<div class="slider-sub-content CDLP-img">
							<a href="sub.jsp" target="_self"><img alt="CDLP"
								src="img/CDLP_4.jpg"></a>
						</div>
						<div class="slider-sub-content CDLP-img">
							<a href="sub.jsp" target="_self"><img alt="CDLP"
								src="img/CDLP_5.jpg"></a>
						</div>
						<div class="slider-sub-content CDLP-img">
							<a href="sub.jsp" target="_self"><img alt="CDLP"
								src="img/CDLP_6.jpg"></a>
						</div>
					</div>
				</div></li>
			<li><a href="sub.jsp" target="_self">DVD/BD</a>
				<div class="slider-box">
					<div class="slider-content">
						<div class="slider-sub-ul">
							<ul class="slider-sub-ul-1">
								<li><a href="sub.jsp" target="_self">예약판매</a></li>
								<li><a href="sub.jsp" target="_self">할인행사</a></li>
								<li><a href="sub.jsp" target="_self">블루레이</a></li>
								<li><a href="sub.jsp" target="_self">해외구매</a></li>
								<li><a href="sub.jsp" target="_self">애니메이션</a></li>
								<li><a href="sub.jsp" target="_self">액션/SF</a></li>
								<li><a href="sub.jsp" target="_self">드라마/코미디</a></li>
								<li><a href="sub.jsp" target="_self">고전/영화</a></li>
								<li><a href="sub.jsp" target="_self">3D 블루레이</a></li>
								<li><a href="sub.jsp" target="_self">다큐/교육</a></li>
								<li><a href="sub.jsp" target="_self">성인(19)</a></li>
								<li><a href="sub.jsp" target="_self">뮤직 DVD</a></li>
								<li><a href="sub.jsp" target="_self">국내외 TV드라마</a></li>
								<li><a href="sub.jsp" target="_self">비디오/VCD</a></li>
							</ul>
						</div>
						<div>
							<div class="slider-sub-title DVD-title" id="title-DVD1">
								<a href="sub.jsp" target="_self">바이올렛 에버가든</a>
							</div>
							<div class="slider-sub-title DVD-title" id="title-DVD2">
								<a href="sub.jsp" target="_self">노바미디어 단독</a>
							</div>
							<div class="slider-sub-title DVD-title" id="title-DVD3">
								<a href="sub.jsp" target="_self">스틸북샵</a>
							</div>
							<div class="slider-sub-title DVD-title" id="title-DVD4">
								<a href="sub.jsp" target="_self">원데이 특가</a>
							</div>
							<div class="slider-sub-title DVD-title" id="title-DVD5">
								<a href="sub.jsp" target="_self">연인</a>
							</div>
						</div>
						<div class="slider-sub-content DVD-img">
							<a href="sub.jsp" target="_self"><img alt="DVD"
								src="img/DVD_1.jpg"></a>
						</div>
						<div class="slider-sub-content DVD-img">
							<a href="sub.jsp" target="_self"><img alt="DVD"
								src="img/DVD_2.jpg"></a>
						</div>
						<div class="slider-sub-content DVD-img">
							<a href="sub.jsp" target="_self"><img alt="DVD"
								src="img/DVD_3.jpg"></a>
						</div>
						<div class="slider-sub-content DVD-img">
							<a href="sub.jsp" target="_self"><img alt="DVD"
								src="img/DVD_4.jpg"></a>
						</div>
						<div class="slider-sub-content DVD-img">
							<a href="sub.jsp" target="_self"><img alt="DVD"
								src="img/DVD_5.jpg"></a>
						</div>
					</div>
				</div></li>
			<li><a href="sub.jsp" target="_self">문구/GIFT</a>
				<div class="slider-box">
					<div class="slider-content">
						<div class="slider-sub-ul">
							<ul class="slider-sub-ul-1">
								<li><a href="sub.jsp" target="_self">예스굿즈</a></li>
								<li><a href="sub.jsp" target="_self">디자인문구</a></li>
								<li><a href="sub.jsp" target="_self">학습/독서</a></li>
								<li><a href="sub.jsp" target="_self">디지털</a></li>
								<li><a href="sub.jsp" target="_self">리빙</a></li>
								<li><a href="sub.jsp" target="_self">취미/여행</a></li>
								<li><a href="sub.jsp" target="_self">유아동</a></li>
								<li><a href="sub.jsp" target="_self">패션잡화</a></li>
								<li><a href="sub.jsp" target="_self">반려동물</a></li>
								<li><a href="sub.jsp" target="_self">1인샵</a></li>
							</ul>
							<ul class="slider-sub-ul-2">
								<li><a href="sub.jsp" target="_self">re:ssence</a></li>
								<li><a href="sub.jsp" target="_self">슈퍼특가</a></li>
								<li><a href="sub.jsp" target="_self">배송비채우기</a></li>
							</ul>
						</div>
						<div>
							<div class="slider-sub-title gift-title" id="title-gift1">
								<a href="sub.jsp" target="_self">1월쿠폰</a>
							</div>
							<div class="slider-sub-title gift-title" id="title-gift2">
								<a href="sub.jsp" target="_self">2024다이어리</a>
							</div>
							<div class="slider-sub-title gift-title" id="title-gift3">
								<a href="sub.jsp" target="_self">중고게임매입</a>
							</div>
							<div class="slider-sub-title gift-title" id="title-gift4">
								<a href="sub.jsp" target="_self">자문자답</a>
							</div>
							<div class="slider-sub-title gift-title" id="title-gift5">
								<a href="sub.jsp" target="_self">리:센스</a>
							</div>
							<div class="slider-sub-title gift-title" id="title-gift6">
								<a href="sub.jsp" target="_self">순금카드</a>
							</div>
							<div class="slider-sub-title gift-title" id="title-gift7">
								<a href="sub.jsp" target="_self">NEW 상품</a>
							</div>
						</div>
						<div class="slider-sub-content gift-img">
							<a href="sub.jsp" target="_self"><img alt="gift"
								src="img/gift_1.jpg"></a>
						</div>
						<div class="slider-sub-content gift-img">
							<a href="sub.jsp" target="_self"><img alt="gift"
								src="img/gift_2.jpg"></a>
						</div>
						<div class="slider-sub-content gift-img">
							<a href="sub.jsp" target="_self"><img alt="gift"
								src="img/gift_3.jpg"></a>
						</div>
						<div class="slider-sub-content gift-img">
							<a href="sub.jsp" target="_self"><img alt="gift"
								src="img/gift_4.jpg"></a>
						</div>
						<div class="slider-sub-content gift-img">
							<a href="sub.jsp" target="_self"><img alt="gift"
								src="img/gift_5.jpg"></a>
						</div>
						<div class="slider-sub-content gift-img">
							<a href="sub.jsp" target="_self"><img alt="gift"
								src="img/gift_6.jpg"></a>
						</div>
						<div class="slider-sub-content gift-img">
							<ul>
								<li><a href="sub.jsp" target="_self"><img
										alt="gift-thum" src="img/gift_7_1.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="gift-thum" src="img/gift_7_2.jpg"></a></li>
								<li><a href="sub.jsp" target="_self"><img
										alt="gift-thum" src="img/gift_7_3.jpg"></a></li>
							</ul>
						</div>
					</div>
				</div></li>
			<li><a href="sub.jsp" target="_self">티켓</a>
				<div class="slider-box">
					<div class="slider-content">
						<div class="slider-sub-ul">
							<ul class="slider-sub-ul-1">
								<li><a href="sub.jsp" target="_self">콘서트</a></li>
								<li><a href="sub.jsp" target="_self">뮤지컬</a></li>
								<li><a href="sub.jsp" target="_self">연극</a></li>
								<li><a href="sub.jsp" target="_self">클래식/무용/국악</a></li>
								<li><a href="sub.jsp" target="_self">전시/행사</a></li>
								<li><a href="sub.jsp" target="_self">가족/아동</a></li>
							</ul>
							<ul class="slider-sub-ul-2">
								<li><a href="sub.jsp" target="_self">엔젤티켓</a></li>
								<li><a href="sub.jsp" target="_self">티켓오픈공지</a></li>
								<li><a href="sub.jsp" target="_self">예매순위</a></li>
								<li><a href="sub.jsp" target="_self">초대이벤트</a></li>
								<li><a href="sub.jsp" target="_self">공연매거진</a></li>
								<li><a href="sub.jsp" target="_self">MD#</a></li>
							</ul>
						</div>
						<div>
							<div class="slider-sub-title ticket-title" id="title-ticket1">
								<a href="sub.jsp" target="_self">오페라의 유령</a>
							</div>
							<div class="slider-sub-title ticket-title" id="title-ticket2">
								<a href="sub.jsp" target="_self">LG아트센터 기획공연</a>
							</div>
							<div class="slider-sub-title ticket-title" id="title-ticket3">
								<a href="sub.jsp" target="_self">일 테노레</a>
							</div>
							<div class="slider-sub-title ticket-title" id="title-ticket4">
								<a href="sub.jsp" target="_self">컴프롬어웨이</a>
							</div>
							<div class="slider-sub-title ticket-title" id="title-ticket5">
								<a href="sub.jsp" target="_self">마리 쿼리</a>
							</div>
							<div class="slider-sub-title ticket-title" id="title-ticket6">
								<a href="sub.jsp" target="_self">헤르츠클란</a>
							</div>
							<div class="slider-sub-title ticket-title" id="title-ticket7">
								<a href="sub.jsp" target="_self">김창옥 토크콘서트</a>
							</div>
						</div>
						<div class="slider-sub-content ticket-img">
							<a href="sub.jsp" target="_self"><img alt="ticket"
								src="img/ticket_1.jpg"></a>
						</div>
						<div class="slider-sub-content ticket-img">
							<a href="sub.jsp" target="_self"><img alt="ticket"
								src="img/ticket_2.jpg"></a>
						</div>
						<div class="slider-sub-content ticket-img">
							<a href="sub.jsp" target="_self"><img alt="ticket"
								src="img/ticket_3.jpg"></a>
						</div>
						<div class="slider-sub-content ticket-img">
							<a href="sub.jsp" target="_self"><img alt="ticket"
								src="img/ticket_4.jpg"></a>
						</div>
						<div class="slider-sub-content ticket-img">
							<a href="sub.jsp" target="_self"><img alt="ticket"
								src="img/ticket_5.jpg"></a>
						</div>
						<div class="slider-sub-content ticket-img">
							<a href="sub.jsp" target="_self"><img alt="ticket"
								src="img/ticket_6.jpg"></a>
						</div>
						<div class="slider-sub-content ticket-img">
							<a href="sub.jsp" target="_self"><img alt="ticket"
								src="img/ticket_7.jpg"></a>
						</div>
					</div>
				</div></li>
		</ul>
	</div>
	<!--메인슬라이더 끝-->
	<hr>
	<!--두번째 문단(그래제본소,오늘의책,베스트셀러) 시작-->
	<div class="secondary-section">
		<!-- 그래제본소 -->
		<div id="grae">
			<div id="grae-in">
				<div id="grae-main">
					<h2>
						<a href="sub.jsp" target="_self">그래제본소</a>
					</h2>
					<h4></h4>
				</div>
				<div class="grae-main">
					<div class="grae-btn grae-prev">&lt;</div>
					<div class="grae-btn grae-next">&gt;</div>
					<a href="sub.jsp" target="_self"><img alt="grae-main"
						src="img/grae_main_1.jpg"></a> <a href="sub.jsp" target="_self"
						class="grae-main-title">그래도 봄은 오는데</a>
				</div>
				<div class="grae-main">
					<div class="grae-btn grae-prev">&lt;</div>
					<div class="grae-btn grae-next">&gt;</div>
					<a href="sub.jsp" target="_self"><img alt="grae-main"
						src="img/grae_main_2.jpg"></a> <a href="sub.jsp" target="_self"
						class="grae-main-title">궤뚫는 한국사</a>
				</div>
				<div class="grae-main">
					<div class="grae-btn grae-prev">&lt;</div>
					<div class="grae-btn grae-next">&gt;</div>
					<a href="sub.jsp" target="_self"><img alt="grae-main"
						src="img/grae_main_3.jpg"></a> <a href="sub.jsp" target="_self"
						class="grae-main-title">성공자의 고백</a>
				</div>
				<div class="grae-main">
					<div class="grae-btn grae-prev">&lt;</div>
					<div class="grae-btn grae-next">&gt;</div>
					<a href="sub.jsp" target="_self"><img alt="grae-main"
						src="img/grae_main_4.jpg"></a> <a href="sub.jsp" target="_self"
						class="grae-main-title">내 안전은 내가 지켜요</a>
				</div>
				<div class="grae-main">
					<div class="grae-btn grae-prev">&lt;</div>
					<div class="grae-btn grae-next">&gt;</div>
					<a href="sub.jsp" target="_self"><img alt="grae-main"
						src="img/grae_main_5.jpg"></a> <a href="sub.jsp" target="_self"
						class="grae-main-title">브루베이커 & 라크 : 데어데블 옴니버스</a>
				</div>
			</div>
			<div id="grae-ad">
				<a href="sub.jsp" target="_self"><img alt="grae-ad"
					src="img/grae_ad.png"></a>
			</div>
		</div>
		<!-- 오늘의 책 -->
		<div id="today-book">
			<div class="today-book">
				<div id="mini-thumb-div">
					<div class="today-book-mini-thumb mini-thumb-1"></div>
					<div class="today-book-mini-thumb mini-thumb-2"></div>
					<div class="today-book-mini-thumb mini-thumb-3"></div>
					<div class="today-book-mini-thumb mini-thumb-4"></div>
				</div>
				<div class="today-book-main">
					<div class="today-book-thumbnail"></div>
					<div class="today-book-intro"></div>
				</div>
				<div class="today-book-main">
					<div class="today-book-thumbnail"></div>
					<div class="today-book-intro"></div>
				</div>
				<div class="today-book-main">
					<div class="today-book-thumbnail"></div>
					<div class="today-book-intro"></div>
				</div>
				<div class="today-book-main">
					<div class="today-book-thumbnail"></div>
					<div class="today-book-intro"></div>
				</div>
				<div id="today-book-blank"></div>
			</div>
		</div>
		<!--베스트셀러 & 인기검색어-->
		<div id="bestseller">
			<div id="bestseller-btn-div">
				<div class="bestseller-btn" id="bestseller-btn">
					<p>베스트셀러</p>
				</div>
				<div class="bestseller-btn">
					<p>인기검색어</p>
				</div>
				<div class="bestseller-main">
					<select name="bestseller" id="bestseller-selector">
						<option value="국내도서">국내도서</option>
						<option value="외국도서">외국도서</option>
						<option value="중고샵">중고샵</option>
						<option value="eBook">eBook</option>
						<option value="웹소설/코믹">웹소설/코믹</option>
						<option value="CD/LP">CD/LP</option>
						<option value="DVD/BD">DVD/BD</option>
						<option value="문구/GIFT">문구/GIFT</option>
						<option value="티켓">티켓</option>
					</select>
					<div class="bestseller-ranking-div">
						<h3 class="bestseller-rank-num">1~5위</h3>
						|
						<h3 class="bestseller-rank-num">6~10위</h3>
						<a href="sub.jsp" target="_self" class="bestseller-see-more">더보기</a>
						<div class="bestseller-ranking">
							<div class="bestseller-ranking-mini">
								<a href="sub.jsp" target="_self">
									<div class="bestseller-number">
										<img alt="number"
											src="img/9024794_number_square_one_light_icon.png">
									</div>
									<div class="bestseller-intro"></div>
								</a>
							</div>
							<div class="bestseller-ranking-mini">
								<a href="sub.jsp" target="_self">
									<div class="bestseller-number">
										<img alt="number"
											src="img/9024578_number_square_two_light_icon.png">
									</div>
									<div class="bestseller-intro"></div>
								</a>
							</div>
							<div class="bestseller-ranking-mini">
								<a href="sub.jsp" target="_self">
									<div class="bestseller-number">
										<img alt="number"
											src="img/9024799_number_square_three_light_icon.png">
									</div>
									<div class="bestseller-intro"></div>
								</a>
							</div>
							<div class="bestseller-ranking-mini">
								<a href="sub.jsp" target="_self">
									<div class="bestseller-number">
										<img alt="number"
											src="img/9024726_number_square_four_light_icon.png">
									</div>
									<div class="bestseller-intro"></div>
								</a>
							</div>
							<div class="bestseller-ranking-mini">
								<a href="sub.jsp" target="_self">
									<div class="bestseller-number">
										<img alt="number"
											src="img/9024637_number_square_five_light_icon.png">
									</div>
									<div class="bestseller-intro"></div>
								</a>
							</div>
						</div>
						<div class="bestseller-ranking">
							<div class="bestseller-ranking-mini">
								<a href="sub.jsp" target="_self">
									<div class="bestseller-number">
										<img alt="number"
											src="img/9024577_number_square_six_light_icon.png">
									</div>
									<div class="bestseller-intro"></div>
								</a>
							</div>
							<div class="bestseller-ranking-mini">
								<a href="sub.jsp" target="_self">
									<div class="bestseller-number">
										<img alt="number"
											src="img/9024576_number_square_seven_light_icon.png">
									</div>
									<div class="bestseller-intro"></div>
								</a>
							</div>
							<div class="bestseller-ranking-mini">
								<a href="sub.jsp" target="_self">
									<div class="bestseller-number">
										<img alt="number"
											src="img/9024793_number_square_eight_light_icon.png">
									</div>
									<div class="bestseller-intro"></div>
								</a>
							</div>
							<div class="bestseller-ranking-mini">
								<a href="sub.jsp" target="_self">
									<div class="bestseller-number">
										<img alt="number"
											src="img/9024795_number_square_nine_light_icon.png">
									</div>
									<div class="bestseller-intro"></div>
								</a>
							</div>
							<div class="bestseller-ranking-mini">
								<a href="sub.jsp" target="_self">
									<div class="bestseller-number">
										<img alt="number" src="img/ios-10.png">
									</div>
									<div class="bestseller-intro"></div>
								</a>
							</div>
						</div>
					</div>
				</div>
				<div class="bestseller-main" style="display: none;">
					<select name="bestsearch" id="bestsearch-selector">
						<option selected>통합</option>
					</select>
					<div class="bestsearch-div">
						<ul>
							<li class="bestsearch-div-li"><a href="sub.jsp"
								target="_self"> <strong>1</strong>
									<p>주술회전</p> <em>-</em>
							</a></li>
							<li class="bestsearch-div-li"><a href="sub.jsp"
								target="_self"> <strong>2</strong>
									<p>수능특강</p> <em>-</em>
							</a></li>
							<li class="bestsearch-div-li"><a href="sub.jsp"
								target="_self"> <strong>3</strong>
									<p>라이즈</p> <em>-</em>
							</a></li>
							<li class="bestsearch-div-li"><a href="sub.jsp"
								target="_self"> <strong>4</strong>
									<p>당신이 생각하는 모든 것을 믿지 말라</p> <em>-</em>
							</a></li>
							<li class="bestsearch-div-li"><a href="sub.jsp"
								target="_self"> <strong>5</strong>
									<p>스트레이키즈</p> <em>-</em>
							</a></li>
							<li class="bestsearch-div-li"><a href="sub.jsp"
								target="_self"> <strong>6</strong>
									<p>마이데몬</p> <em>-</em>
							</a></li>
							<li class="bestsearch-div-li"><a href="sub.jsp"
								target="_self"> <strong>7</strong>
									<p>푸바오</p> <em>-</em>
							</a></li>
							<li class="bestsearch-div-li"><a href="sub.jsp"
								target="_self"> <strong>8</strong>
									<p>riize</p> <em>-</em>
							</a></li>
							<li class="bestsearch-div-li"><a href="sub.jsp"
								target="_self"> <strong>9</strong>
									<p>뒤통수</p> <em>-</em>
							</a></li>
							<li class="bestsearch-div-li"><a href="sub.jsp"
								target="_self"> <strong>10</strong>
									<p>이가격실화?</p> <em>-</em>
							</a></li>
						</ul>
					</div>
				</div>

			</div>

		</div>
	</div>
	<!--두번째 문단 끝-->
	<hr>
	<!-- 지금, 이 책 영역 시작 -->
	<div class="secondary-section">
		<div class="secondary-big-box">
			<div class="secondary-main">
				<div class="secondary-title">
					<h2>
						<a href="sub.jsp" target="_self">지금, 이 책</a>
					</h2>
					<div class="secondary-page-num now-this-book-num">
						<h6>1/3</h6>
					</div>
				</div>

				<div class="secondary-book now-this-book">
					<div class="secondary-btn sec-prev">&lt;</div>
					<div class="secondary-btn sec-next">&gt;</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img now-this-book-img"></div>
						<div class="secondary-book-info now-this-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img now-this-book-img"></div>
						<div class="secondary-book-info now-this-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img now-this-book-img"></div>
						<div class="secondary-book-info now-this-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img now-this-book-img"></div>
						<div class="secondary-book-info now-this-book-info"></div>
					</div>
				</div>
				<div class="secondary-book now-this-book">
					<div class="secondary-btn sec-prev">&lt;</div>
					<div class="secondary-btn sec-next">&gt;</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img now-this-book-img"></div>
						<div class="secondary-book-info now-this-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img now-this-book-img"></div>
						<div class="secondary-book-info now-this-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img now-this-book-img"></div>
						<div class="secondary-book-info now-this-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img now-this-book-img"></div>
						<div class="secondary-book-info now-this-book-info"></div>
					</div>
				</div>
				<div class="secondary-book now-this-book">
					<div class="secondary-btn sec-prev">&lt;</div>
					<div class="secondary-btn sec-next">&gt;</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img now-this-book-img"></div>
						<div class="secondary-book-info now-this-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img now-this-book-img"></div>
						<div class="secondary-book-info now-this-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img now-this-book-img"></div>
						<div class="secondary-book-info now-this-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img now-this-book-img"></div>
						<div class="secondary-book-info now-this-book-info"></div>
					</div>
				</div>
			</div>
			<div class="secondary-ad" id="secondary-recommend">
				<h2>출판사 추천</h2>
				<ul>
					<li class="secondary-ad-main"><a href="sub.jsp"
						target="_self"><img alt="" src="img/2575682_240104012804.jpg"></a>
					</li>
					<li class="secondary-ad-main"><a href="sub.jsp"
						target="_self"><img alt="" src="img/2711035_240104041201.png"></a>
					</li>
				</ul>
			</div>
		</div>
	</div>
	<!-- 지금, 이 책 영역 끝 -->
	<hr>
	<!-- 화제의 책 영역 시작 -->
	<div class="secondary-section">
		<div class="secondary-big-box">
			<div class="secondary-main">
				<div class="secondary-title">
					<h2>
						<a href="sub.jsp" target="_self">크레마샵 화제의 책</a>
					</h2>
					<div class="secondary-page-num wadai-book-num">
						<h6>1/3</h6>
					</div>
				</div>
				<div class="secondary-book wadai-book">
					<div class="secondary-btn wadai-prev">&lt;</div>
					<div class="secondary-btn wadai-next">&gt;</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img wadai-book-img"></div>
						<div class="secondary-book-info wadai-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img wadai-book-img"></div>
						<div class="secondary-book-info wadai-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img wadai-book-img"></div>
						<div class="secondary-book-info wadai-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img wadai-book-img"></div>
						<div class="secondary-book-info wadai-book-info"></div>
					</div>
				</div>
				<div class="secondary-book wadai-book">
					<div class="secondary-btn wadai-prev">&lt;</div>
					<div class="secondary-btn wadai-next">&gt;</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img wadai-book-img"></div>
						<div class="secondary-book-info wadai-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img wadai-book-img"></div>
						<div class="secondary-book-info wadai-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img wadai-book-img"></div>
						<div class="secondary-book-info wadai-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img wadai-book-img"></div>
						<div class="secondary-book-info wadai-book-info"></div>
					</div>
				</div>
				<div class="secondary-book wadai-book">
					<div class="secondary-btn wadai-prev">&lt;</div>
					<div class="secondary-btn wadai-next">&gt;</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img wadai-book-img"></div>
						<div class="secondary-book-info wadai-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img wadai-book-img"></div>
						<div class="secondary-book-info wadai-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img wadai-book-img"></div>
						<div class="secondary-book-info wadai-book-info"></div>
					</div>
					<div class="secondary-book-box">
						<div class="secondary-book-img wadai-book-img"></div>
						<div class="secondary-book-info wadai-book-info"></div>
					</div>
				</div>
			</div>
			<div class="secondary-ad" id="secondary-crema">
				<div class="secondary-page-num-in-crema">
					<h6>1/3</h6>
				</div>

				<div class="secondary-ad-crema">
					<div class="secondary-btn cremaAd-prev">&lt;</div>
					<div class="secondary-btn cremaAd-next">&gt;</div>
					<a href="sub.jsp" target="_self"><img alt="crema-ad"
						src="img/secondary_crema_1.jpg"> </a>
				</div>
				<div class="secondary-ad-crema">
					<div class="secondary-btn cremaAd-prev">&lt;</div>
					<div class="secondary-btn cremaAd-next">&gt;</div>
					<a href="sub.jsp" target="_self"><img alt="crema-ad"
						src="img/secondary_crema_2.jpg"> </a>
				</div>
				<div class="secondary-ad-crema">
					<div class="secondary-btn cremaAd-prev">&lt;</div>
					<div class="secondary-btn cremaAd-next">&gt;</div>
					<a href="sub.jsp" target="_self"><img alt="crema-ad"
						src="img/secondary_crema_3.jpg"> </a>
				</div>
			</div>
		</div>
	</div>
	<!-- 화제의 책 영역 끝 -->
	<hr>
	<!-- 멀티셀렉트 영역 시작-->
	<div id="multi-select-section">
		<div id="ms-menu-bar">
			<div>
				<div class="ms-menu-img">
					<img alt="ms-menu" src="img/8666715_book_open_icon.png">
					<p>도서</p>
				</div>
				<div class="ms-menu-img">
					<img alt="ms-menu"
						src="img/8686652_fluent_arrow_repeat_all_regular_icon.png">
					<p>중고샵</p>
				</div>
				<div class="ms-menu-img">
					<img alt="ms-menu"
						src="img/7217360_tablet_computer_gadget_mobile_device_icon.png">
					<p>eBook</p>
				</div>
				<div class="ms-menu-img">
					<img alt="ms-menu" src="img/8688004_ic_fluent_tv_regular_icon.png">
					<p>웹소설/코믹</p>
				</div>
				<div class="ms-menu-img">
					<img alt="ms-menu"
						src="img/2317944_audio_gramophone_melody_music_play_icon.png">
					<p>CD/LP</p>
				</div>
				<div class="ms-menu-img">
					<img alt="ms-menu"
						src="img/2317939_cd_cddrive_device_disc_drive_icon.png">
					<p>DVD/BD</p>
				</div>
				<div class="ms-menu-img">
					<img alt="ms-menu"
						src="img/8134640_gift_birthday_present_box_icon.png">
					<p>문구/GIFT</p>
				</div>
				<div class="ms-menu-img">
					<img alt="ms-menu"
						src="img/7114156_cinema_theater_movie_theatre_audience_icon.png">
					<p>티켓</p>
				</div>
			</div>
			<div class="ms-menu">
				<div class="ms-middle-box">
					<div class="ms-middle-title-text">
						<h3>예스's Pick</h3>
					</div>
					<div class="ms-middle-title-type">
						<ul class="ms-middle-title-type-ul">
							<li>화제의 책</li> |
							<li>외국도서</li> |
							<li>세트도서</li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-book">
						<div class="ms-middle-btn msBook-prev">&lt;</div>
						<div class="ms-middle-btn msBook-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-book-img"></div>
									<div class="ms-middle-content-info middle-box-book-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-book-img"></div>
									<div class="ms-middle-content-info middle-box-book-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-book-img"></div>
									<div class="ms-middle-content-info middle-box-book-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-book">
						<div class="ms-middle-btn msBook-prev">&lt;</div>
						<div class="ms-middle-btn msBook-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-book-img"></div>
									<div class="ms-middle-content-info middle-box-book-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-book-img"></div>
									<div class="ms-middle-content-info middle-box-book-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-book-img"></div>
									<div class="ms-middle-content-info middle-box-book-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-book">
						<div class="ms-middle-btn msBook-prev">&lt;</div>
						<div class="ms-middle-btn msBook-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-book-img"></div>
									<div class="ms-middle-content-info middle-box-book-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-book-img"></div>
									<div class="ms-middle-content-info middle-box-book-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-book-img"></div>
									<div class="ms-middle-content-info middle-box-book-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-book">
						<div class="ms-middle-btn msBook-prev">&lt;</div>
						<div class="ms-middle-btn msBook-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-book-img"></div>
									<div class="ms-middle-content-info middle-box-book-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-book-img"></div>
									<div class="ms-middle-content-info middle-box-book-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-book-img"></div>
									<div class="ms-middle-content-info middle-box-book-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-book">
						<div class="ms-middle-btn msBook-prev">&lt;</div>
						<div class="ms-middle-btn msBook-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-book-img"></div>
									<div class="ms-middle-content-info middle-box-book-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-book-img"></div>
									<div class="ms-middle-content-info middle-box-book-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-book-img"></div>
									<div class="ms-middle-content-info middle-box-book-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-num middle-box-book-num">
						<h6>1/5</h6>
					</div>
				</div>
				<div class="ms-lower-box">
					<ul>
						<li><a href="sub.jsp" target="_self"><img
								alt="book-lower" src="img/korean_book_1.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="book-lower" src="img/korean_book_2.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="book-lower" src="img/foreign_book_1.jpg"></a></li>
					</ul>
				</div>
			</div>
			<div class="ms-menu">
				<div class="ms-middle-box">
					<div class="ms-middle-title-text">
						<h3>금주의 중고</h3>
					</div>
					<div class="ms-middle-title-type">
						<ul class="ms-middle-title-type-ul">
							<li>도서</li> |
							<li>음반&DVD</li> |
							<li>전집</li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-used">
						<div class="ms-middle-btn msUsed-prev">&lt;</div>
						<div class="ms-middle-btn msUsed-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-used">
						<div class="ms-middle-btn msUsed-prev">&lt;</div>
						<div class="ms-middle-btn msUsed-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-used">
						<div class="ms-middle-btn msUsed-prev">&lt;</div>
						<div class="ms-middle-btn msUsed-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-used">
						<div class="ms-middle-btn msUsed-prev">&lt;</div>
						<div class="ms-middle-btn msUsed-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-used">
						<div class="ms-middle-btn msUsed-prev">&lt;</div>
						<div class="ms-middle-btn msUsed-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-used">
						<div class="ms-middle-btn msUsed-prev">&lt;</div>
						<div class="ms-middle-btn msUsed-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-used-img"></div>
									<div class="ms-middle-content-info middle-box-used-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-num middle-box-used-num">
						<h6>1/6</h6>
					</div>
				</div>
				<div class="ms-lower-box">
					<ul>
						<li><a href="sub.jsp" target="_self"><img
								alt="uesd-lower" src="img/used_1.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="uesd-lower" src="img/used_2.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="uesd-lower" src="img/used_3.jpg"></a></li>
					</ul>
				</div>
			</div>
			<div class="ms-menu">
				<div class="ms-middle-box">
					<div class="ms-middle-title-text">
						<h3>eBook</h3>
					</div>
					<div class="ms-middle-title-type">
						<ul class="ms-middle-title-type-ul">
							<li>소설/에세이</li> |
							<li>인문/경제</li> |
							<li>로맨스</li> |
							<li>만화</li> |
							<li>판타지/무협</li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-eBook">
						<div class="ms-middle-btn msEBook-prev">&lt;</div>
						<div class="ms-middle-btn msEBook-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-eBook">
						<div class="ms-middle-btn msEBook-prev">&lt;</div>
						<div class="ms-middle-btn msEBook-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-eBook">
						<div class="ms-middle-btn msEBook-prev">&lt;</div>
						<div class="ms-middle-btn msEBook-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-eBook">
						<div class="ms-middle-btn msEBook-prev">&lt;</div>
						<div class="ms-middle-btn msEBook-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-eBook">
						<div class="ms-middle-btn msEBook-prev">&lt;</div>
						<div class="ms-middle-btn msEBook-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-eBook">
						<div class="ms-middle-btn msEBook-prev">&lt;</div>
						<div class="ms-middle-btn msEBook-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-eBook">
						<div class="ms-middle-btn msEBook-prev">&lt;</div>
						<div class="ms-middle-btn msEBook-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-eBook">
						<div class="ms-middle-btn msEBook-prev">&lt;</div>
						<div class="ms-middle-btn msEBook-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-eBook">
						<div class="ms-middle-btn msEBook-prev">&lt;</div>
						<div class="ms-middle-btn msEBook-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-content middle-box-eBook">
						<div class="ms-middle-btn msEBook-prev">&lt;</div>
						<div class="ms-middle-btn msEBook-next">&gt;</div>
						<ul>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
							<li><a href="sub.jsp" target="_self">
									<div class="ms-middle-content-img middle-box-eBook-img"></div>
									<div class="ms-middle-content-info middle-box-eBook-info">
									</div>
							</a></li>
						</ul>
					</div>
					<div class="ms-middle-title-type-num middle-box-eBook-num">
						<h6>1/10</h6>
					</div>
				</div>
				<div class="ms-lower-box">
					<ul>
						<li><a href="sub.jsp" target="_self"><img
								alt="eBook-lower" src="img/eBook_1.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="eBook-lower" src="img/eBook_2.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="eBook-lower" src="img/eBook_5.jpg"></a></li>
					</ul>
				</div>
			</div>
			<div class="ms-menu">
				<div class="ms-middle-box">
					<ul>
						<li class="ms-middle-box-li middle-box-comic">
							<div class="ms-middle-box-li-img middle-box-comic-img"></div>
							<div class="ms-middle-box-li-text middle-box-comic-text"></div>
						</li>
						<li class="ms-middle-box-li middle-box-comic">
							<div class="ms-middle-box-li-img middle-box-comic-img"></div>
							<div class="ms-middle-box-li-text middle-box-comic-text"></div>
						</li>
						<li class="ms-middle-box-li middle-box-comic">
							<div class="ms-middle-box-li-img middle-box-comic-img"></div>
							<div class="ms-middle-box-li-text middle-box-comic-text"></div>
						</li>
						<li class="ms-middle-box-li middle-box-comic">
							<div class="ms-middle-box-li-img middle-box-comic-img"></div>
							<div class="ms-middle-box-li-text middle-box-comic-text"></div>
						</li>
					</ul>
				</div>
				<div class="ms-lower-box">
					<ul>
						<li><a href="sub.jsp" target="_self"><img
								alt="comic-lower" src="img/DVD_5.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="comic-lower" src="img/DVD_4.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="comic-lower" src="img/eBook_6.jpg"></a></li>
					</ul>
				</div>
			</div>
			<div class="ms-menu">
				<div class="ms-middle-box">
					<ul>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-CDLP-img"></div>
							<div class="ms-middle-box-li-text middle-box-CDLP-text"></div>
						</li>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-CDLP-img"></div>
							<div class="ms-middle-box-li-text middle-box-CDLP-text"></div>
						</li>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-CDLP-img"></div>
							<div class="ms-middle-box-li-text middle-box-CDLP-text"></div>
						</li>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-CDLP-img"></div>
							<div class="ms-middle-box-li-text middle-box-CDLP-text"></div>
						</li>
					</ul>
				</div>
				<div class="ms-lower-box">
					<ul>
						<li><a href="sub.jsp" target="_self"><img
								alt="CDLP-lower" src="img/CDLP_1.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="CDLP-lower" src="img/CDLP_2.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="CDLP-lower" src="img/CDLP_3.jpg"></a></li>
					</ul>
				</div>
			</div>
			<div class="ms-menu">
				<div class="ms-middle-box">
					<ul>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-DVD-img"></div>
							<div class="ms-middle-box-li-text middle-box-DVD-text"></div>
						</li>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-DVD-img"></div>
							<div class="ms-middle-box-li-text middle-box-DVD-text"></div>
						</li>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-DVD-img"></div>
							<div class="ms-middle-box-li-text middle-box-DVD-text"></div>
						</li>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-DVD-img"></div>
							<div class="ms-middle-box-li-text middle-box-DVD-text"></div>
						</li>
					</ul>
				</div>
				<div class="ms-lower-box">
					<ul>
						<li><a href="sub.jsp" target="_self"><img
								alt="DVD-lower" src="img/DVD_1.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="DVD-lower" src="img/DVD_2.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="DVD-lower" src="img/DVD_3.jpg"></a></li>
					</ul>
				</div>
			</div>
			<div class="ms-menu">
				<div class="ms-middle-box">
					<ul>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-gift-img"></div>
							<div class="ms-middle-box-li-text middle-box-gift-text"></div>
						</li>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-gift-img"></div>
							<div class="ms-middle-box-li-text middle-box-gift-text"></div>
						</li>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-gift-img"></div>
							<div class="ms-middle-box-li-text middle-box-gift-text"></div>
						</li>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-gift-img"></div>
							<div class="ms-middle-box-li-text middle-box-gift-text"></div>
						</li>
					</ul>
				</div>
				<div class="ms-lower-box">
					<ul>
						<li><a href="sub.jsp" target="_self"><img
								alt="gift-lower" src="img/gift_1.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="gift-lower" src="img/gift_2.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="gift-lower" src="img/gift_3.jpg"></a></li>
					</ul>
				</div>
			</div>
			<div class="ms-menu">
				<div class="ms-middle-box">
					<ul>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-ticket-img"></div>
							<div class="ms-middle-box-li-text middle-box-ticket-text">
							</div>
						</li>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-ticket-img"></div>
							<div class="ms-middle-box-li-text middle-box-ticket-text">
							</div>
						</li>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-ticket-img"></div>
							<div class="ms-middle-box-li-text middle-box-ticket-text">
							</div>
						</li>
						<li class="ms-middle-box-li">
							<div class="ms-middle-box-li-img middle-box-ticket-img"></div>
							<div class="ms-middle-box-li-text middle-box-ticket-text">
							</div>
						</li>
					</ul>
				</div>
				<div class="ms-lower-box">
					<ul>
						<li><a href="sub.jsp" target="_self"><img
								alt="ticket-lower" src="img/ticket_1.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="ticket-lower" src="img/ticket_2.jpg"></a></li>
						<li><a href="sub.jsp" target="_self"><img
								alt="ticket-lower" src="img/ticket_3.jpg"></a></li>
					</ul>
				</div>
			</div>
		</div>
	</div>
	<!-- 멀티셀렉트 영역 끝-->
	<hr>
	<!-- 예스튜브 영역 시작-->
	<div id="youtube-section">
		<h3>예스24 유튜브</h3>
		<div class="youtube-main-box">
			<div class="youtube-main"></div>
			<div class="youtube-main"></div>
			<div class="youtube-main"></div>
		</div>
		<div class="youtube-main-content">
			<div class="youtube-main-content-thumbnail"></div>
			<div class="youtube-main-content-box">
				<p>관련상품</p>
				<div class="youtube-main-content-intro">
					<div class="youtube-main-content-img"></div>
					<div class="youtube-main-content-text">
						<p class="youtube-text-long"></p>
						<p class="youtube-text-title"></p>
						<p class="youtube-text-author"></p>
						<p class="youtube-text-comp"></p>
					</div>
				</div>
			</div>
		</div>
		<div class="youtube-main-content">
			<div class="youtube-main-content-thumbnail"></div>
			<div class="youtube-main-content-box">
				<p>관련상품</p>
				<div class="youtube-main-content-intro">
					<div class="youtube-main-content-img"></div>
					<div class="youtube-main-content-text">
						<p class="youtube-text-long"></p>
						<p class="youtube-text-title"></p>
						<p class="youtube-text-author"></p>
						<p class="youtube-text-comp"></p>
					</div>
				</div>
			</div>
		</div>
		<div class="youtube-main-content">
			<div class="youtube-main-content-thumbnail"></div>
			<div class="youtube-main-content-box">
				<p>관련상품</p>
				<div class="youtube-main-content-intro">
					<div class="youtube-main-content-img"></div>
					<div class="youtube-main-content-text">
						<p class="youtube-text-long"></p>
						<p class="youtube-text-title"></p>
						<p class="youtube-text-author"></p>
						<p class="youtube-text-comp"></p>
					</div>
				</div>
			</div>
		</div>
		<h4 class="youtube-info"></h4>
		<h4 class="youtube-info"></h4>
		<h4 class="youtube-info"></h4>

	</div>
	<!-- 예스튜브 영역 끝 -->
	<hr>
	<!-- 카드섹션 영역 시작-->
	<div id="card-section">
		<div id="card-news">
			<div class="card-news-content">
				<div class="card-news-btn card-news-prev">&lt;</div>
				<div class="card-news-btn card-news-next">&gt;</div>
				<h3>카드뉴스로 보는 책</h3>
				<div class="card-news-content-book">
					<div class="card-news-content-book-img"></div>
					<div class="card-news-content-book-text">
						<p class="card-news-content-book-title"></p>
						<div class="card-news-content-book-text-lower">
							<p class="card-news-content-book-subtitle"></p>
							<p class="card-news-content-book-author"></p>
						</div>
					</div>
				</div>
			</div>
			<div class="card-news-content">
				<div class="card-news-btn card-news-prev">&lt;</div>
				<div class="card-news-btn card-news-next">&gt;</div>
				<h3>카드뉴스로 보는 책</h3>
				<div class="card-news-content-book">
					<div class="card-news-content-book-img"></div>
					<div class="card-news-content-book-text">
						<p class="card-news-content-book-title"></p>
						<div class="card-news-content-book-text-lower">
							<p class="card-news-content-book-subtitle"></p>
							<p class="card-news-content-book-author"></p>
						</div>
					</div>
				</div>
			</div>
			<div class="card-news-content">
				<div class="card-news-btn card-news-prev">&lt;</div>
				<div class="card-news-btn card-news-next">&gt;</div>
				<h3>카드뉴스로 보는 책</h3>
				<div class="card-news-content-book">
					<div class="card-news-content-book-img"></div>
					<div class="card-news-content-book-text">
						<p class="card-news-content-book-title"></p>
						<div class="card-news-content-book-text-lower">
							<p class="card-news-content-book-subtitle"></p>
							<p class="card-news-content-book-author"></p>
						</div>
					</div>
				</div>
			</div>
			<div class="card-news-img"></div>
			<div class="card-news-img"></div>
			<div class="card-news-img"></div>
			<div class="card-news-content-num">
				<h6>1/3</h6>
			</div>
		</div>
		<div class="card-section">
			<div class="card-section-box">
				<h3>이런 책들은 어떤가요?</h3>
				<div class="card-section-box-main cardSec-upper">
					<div class="card-section-btn cardUpper-prev">&lt;</div>
					<div class="card-section-btn cardUpper-next">&gt;</div>
					<ul>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-upper-img"></div>
							<div class="card-main-li-text-div card-upper-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-upper-img"></div>
							<div class="card-main-li-text-div card-upper-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-upper-img"></div>
							<div class="card-main-li-text-div card-upper-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-upper-img"></div>
							<div class="card-main-li-text-div card-upper-text"></div>
						</li>
					</ul>
				</div>
				<div class="card-section-box-main cardSec-upper">
					<div class="card-section-btn cardUpper-prev">&lt;</div>
					<div class="card-section-btn cardUpper-next">&gt;</div>
					<ul>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-upper-img"></div>
							<div class="card-main-li-text-div card-upper-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-upper-img"></div>
							<div class="card-main-li-text-div card-upper-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-upper-img"></div>
							<div class="card-main-li-text-div card-upper-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-upper-img"></div>
							<div class="card-main-li-text-div card-upper-text"></div>
						</li>
					</ul>
				</div>
				<div class="card-section-box-main cardSec-upper">
					<div class="card-section-btn cardUpper-prev">&lt;</div>
					<div class="card-section-btn cardUpper-next">&gt;</div>
					<ul>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-upper-img"></div>
							<div class="card-main-li-text-div card-upper-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-upper-img"></div>
							<div class="card-main-li-text-div card-upper-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-upper-img"></div>
							<div class="card-main-li-text-div card-upper-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-upper-img"></div>
							<div class="card-main-li-text-div card-upper-text"></div>
						</li>
					</ul>
				</div>
				<div class="card-section-box-num">
					<h6>1/3</h6>
				</div>
			</div>
			<div class="card-section-box">
				<h3>이 책들도 추천합니다</h3>
				<div class="card-section-box-main cardSec-lower">
					<div class="card-section-btn cardLower-prev">&lt;</div>
					<div class="card-section-btn cardLower-next">&gt;</div>
					<ul>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-lower-img"></div>
							<div class="card-main-li-text-div card-lower-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-lower-img"></div>
							<div class="card-main-li-text-div card-lower-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-lower-img"></div>
							<div class="card-main-li-text-div card-lower-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-lower-img"></div>
							<div class="card-main-li-text-div card-lower-text"></div>
						</li>
					</ul>
				</div>
				<div class="card-section-box-main cardSec-lower">
					<div class="card-section-btn cardLower-prev">&lt;</div>
					<div class="card-section-btn cardLower-next">&gt;</div>
					<ul>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-lower-img"></div>
							<div class="card-main-li-text-div card-lower-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-lower-img"></div>
							<div class="card-main-li-text-div card-lower-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-lower-img"></div>
							<div class="card-main-li-text-div card-lower-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-lower-img"></div>
							<div class="card-main-li-text-div card-lower-text"></div>
						</li>
					</ul>
				</div>
				<div class="card-section-box-main cardSec-lower">
					<div class="card-section-btn cardLower-prev">&lt;</div>
					<div class="card-section-btn cardLower-next">&gt;</div>
					<ul>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-lower-img"></div>
							<div class="card-main-li-text-div card-lower-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-lower-img"></div>
							<div class="card-main-li-text-div card-lower-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-lower-img"></div>
							<div class="card-main-li-text-div card-lower-text"></div>
						</li>
						<li class="card-section-box-main-li">
							<div class="card-main-li-img-div card-lower-img"></div>
							<div class="card-main-li-text-div card-lower-text"></div>
						</li>
					</ul>
				</div>
				<div class="card-section-box-num">
					<h6>1/3</h6>
				</div>
			</div>
		</div>
	</div>
	<!-- 카드섹션 영역 끝 -->
	<hr>
	<!-- 중간광고 영역 시작-->
	<div id="yes-ad-section">
		<a href="sub.jsp" target="_self" id="main-ad-a"><img
			alt="advertision" src="img/bn_PC_Wel_1920x120.jpg"></a>
	</div>
	<!-- 중간광고 영역 끝 -->
	<hr>
	<!-- 서비스 통합 영역 시작-->
	<div id="service-big-section">
		<div id="service-section">
			<div class="service-yes24">
				<h3>예스24 대표서비스</h3>
				<a href="sub.jsp" target="_self" class="service-see-more">더보기</a>
				<div class="service-yes24-content">
					<dl class="service-cheap">
						<dt>싸다</dt>
						<dl>
							<a href="sub.jsp" target="_self">영원한 YES 포인트</a>
						</dl>
						<dl>
							<a href="sub.jsp" target="_self">무료배송+추가적립</a>
						</dl>
						<dl>
							<a href="sub.jsp" target="_self">신규회원 혜택</a>
						</dl>
						<dl>
							<a href="sub.jsp" target="_self">중고샵/바이백</a>
						</dl>
						<dl>
							<a href="sub.jsp" target="_self">제휴카드 안내</a>
						</dl>
						<dl>
							<a href="sub.jsp" target="_self">최저가격보상제도</a>
						</dl>
					</dl>
					<dl class="service-fast">
						<dt>빠르다</dt>
						<dl>
							<a href="sub.jsp" target="_self">총알배송</a>
						</dl>
						<dl>
							<a href="sub.jsp" target="_self">총알검색</a>
						</dl>
						<dl>
							<a href="sub.jsp" target="_self">매장 픽업 서비스</a>
						</dl>
						<dl>
							<a href="sub.jsp" target="_self">알림 신청 안내</a>
						</dl>
						<dl>
							<a href="sub.jsp" target="_self">모바일 서비스</a>
						</dl>
						<dl>
							<a href="sub.jsp" target="_self">간편결제 서비스</a>
						</dl>
					</dl>
					<dl class="service-believe">
						<dt>믿을 수 있다</dt>
						<dl>
							<a href="sub.jsp" target="_self">YES마니아</a>
						</dl>
						<dl>
							<a href="sub.jsp" target="_self">스타블로거</a>
						</dl>
						<dl>
							<a href="sub.jsp" target="_self">제휴 상품권 환전</a>
						</dl>
						<dl>
							<a href="sub.jsp" target="_self">YES상품권</a>
						</dl>
					</dl>
					<dl class="service-banner">
						<ul>
							<li><a href="sub.jsp" target="_self"><img
									alt="service-banner" src="img/yesCalender.png"></a></li>
							<li><a href="sub.jsp" target="_self"><img
									alt="service-banner" src="img/yesReview.png"></a></li>
							<li><a href="sub.jsp" target="_self"><img
									alt="service-banner" src="img/yesLateReward.png"></a></li>
						</ul>
					</dl>
				</div>
			</div>

			<div class="service-school">
				<h3>한 학기 한 권 읽기</h3>
				<div class="service-school-img">
					<a href="sub.jsp" target="_self"><img alt="school-img"
						src="img/bn_228x164.jpg"></a>
				</div>
			</div>
			<div class="service-event">
				<div class="service-event-1">
					<a href="sub.jsp" target="_self"><img alt="service-event-img"
						src="img/B2B_188x96_02.jpg"></a>
				</div>
				<div class="service-event-1">
					<a href="sub.jsp" target="_self"><img alt="service-event-img"
						src="img/B2B_188x96_05.jpg"></a>
				</div>
			</div>
		</div>
		<hr>
		<div id="notice-section">
			<h2>공지사항</h2>
			<ul>
				<li><a href="sub.jsp" target="_self">1월 신용카드 무이자할부 안내</a>
					2024-01-01</li>
				<li><a href="sub.jsp" target="_self">1월 상품권+쿠폰+결제+추천 혜택모음</a>
					2024-01-01</li>
				<li><a href="sub.jsp" target="_self">도서앱 다운받으면 상품권 1천원</a>
					2024-01-01</li>
			</ul>
			<a href="sub.jsp" target="_self" class="notice-see-more">더보기</a>
		</div>
		<hr>
		<div id="event-section">
			<div class="event-img">
				<a href="sub.jsp" target="_self"><img alt="event-img"
					src="img/YES24_Banner_PC_Wel_Bottom@2x_958x116.jpg"></a>
			</div>
			<div class="event-img">
				<a href="sub.jsp" target="_self"><img alt="event-img"
					src="img/YES24_Banner_PC_Wel_Bottom_2x_958x116.png"></a>
			</div>
		</div>
	</div>
	<!-- 서비스 통합 영역 끝-->
	<hr>
	<div id="main-hidden"></div>
	<!-- footer 영역 시작-->
	<footer>
		<div id="footer">
			<div id="footer-top">
				<div id="footer-top-left">
					<ul>
						<li><a href="sub.jsp" target="_self">회사소개</a></li>
						<li><a href="sub.jsp" target="_self">인재채용</a></li>
						<li><a href="sub.jsp" target="_self">이용약관</a></li>
						<li id="private-information"><a href="sub.jsp"
							target="_self"><strong>개인정보처리방침</strong></a></li>
						<li><a href="sub.jsp" target="_self">청소년보호정책</a></li>
						<li><a href="sub.jsp" target="_self">도서홍보안내</a></li>
						<li><a href="sub.jsp" target="_self">광고안내</a></li>
						<li><a href="sub.jsp" target="_self">제휴안내</a></li>
						<li><a href="sub.jsp" target="_self">복지제휴</a></li>
						<li><a href="sub.jsp" target="_self">매장안내</a></li>
					</ul>
				</div>
				<div id="footer-top-right">
					<div id="footer-top-right-sns">
						<ul>
							<li class="sns"><a href="sub.jsp" target="_self"><img
									alt="kakaotalk" src="img/172556_speech_bubble_icon.png"></a></li>
							<li class="sns"><a href="sub.jsp" target="_self"><img
									alt="facebook" src="img/107153_circle_facebook_icon.png"></a></li>
							<li class="sns"><a href="sub.jsp" target="_self"><img
									alt="twitter" src="img/104461_twitter_icon.png"></a></li>
							<li class="sns_in"><a href="sub.jsp" target="_self"><img
									alt="instagram"
									src="img/7693314_instagram_social media_logo_apps_icon.png"></a></li>
						</ul>
					</div>
					<div id="footer-top-right-family">
						<select name="family-site" id="family-site">
							<option value="#">가족회사 소개</option>
							<option value="yes24Holdings">한세예스24홀딩스</option>
							<option value="HansaeSilUp">한세실업</option>
							<option value="HansaeDream">한세드림</option>
							<option value="CurlySoo">컬리수</option>
							<option value="Style24">STYLE24</option>
							<option value="Dong-A">동아출판</option>
						</select>
					</div>
				</div>
			</div>
			<div id="footer-mid">
				<div id="footer-logo">
					<img alt="footer-logo" src="img/footer_logo.png">
				</div>
				<div id="footer-address">
					<dl>
						<dt>예스이십사(주)</dt>
						<dd>
							<address>
								서울시 영등포구 은행로 11, 5층~6층(여의도동,일신빌딩)<br> 대표 : 김석환, 최세라
								개인정보보호책임자 : 권민석 yes24help@yes24.com<br> 사업자등록번호 :
								229-81-37000 통신판매업신고 : 제 2005-02682호 <a href="sub.jsp"
									target="_self" style="color: #666;">사업자 정보확인</a><br> 호스팅
								서비스사업자 : 예스이십사(주)<br> Copyright ⓒ YES24 Corp. All Rights
								Reserved.
							</address>
						</dd>
					</dl>
				</div>
				<div id="footer-service">
					<ul>
						<li class="customer-center">
							<dl>
								<dt>고객문의</dt>
								<dd>
									<p>
										<span class="cc-name">도서/음반</span> <span class="cc-phone">1544-3800</span>
									</p>
									<p>
										<span class="cc-name">중고샵</span> <span class="cc-phone">1566-4295</span>
									</p>
									<p>
										<span class="cc-name">티켓예매</span> <span class="cc-phone">1544-6399</span>
									</p>
									<p>
										<span class="cc-name"> <a href="sub.jsp"
											target="_self">eBook 1:1 문의</a></span>
									</p>
								</dd>
							</dl>
						</li>
						<li class="customer-center-btn"></li>
					</ul>
				</div>
			</div>
			<div id="footer-img">
				<img alt="footer-img" src="img/img_glory.gif">
			</div>
			<div id="footer-bottom">
				<p>
					<storng>소비자피해보상보험</storng>
					<img alt="sgi" src="img/sgi.png"> 고객님은 안전거래를 위해 현금 등으로 결제 시
					저희 쇼핑몰에서 가입한 구매안전서비스를 이용하실 수 있습니다. <a href="sub.jsp"
						target="_self" id="ser">서비스가입사실 확인</a>
				</p>
			</div>
		</div>
	</footer>
	<!-- footer 영역 끝 -->

</body>

</html>