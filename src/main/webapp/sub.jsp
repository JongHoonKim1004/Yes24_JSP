<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="ko">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>창피하지만, 일단 해봅시다.</title>
    <link type="text/css" rel="stylesheet" href="css/reset.css">
    <link type="text/css" rel="stylesheet" href="css/common.css">
    <link type="text/css" rel="stylesheet" href="css/sub.css">
    <script type="text/javascript" src="https://code.jquery.com/jquery-3.7.0.js"></script>
    <script type="text/javascript" src="js/header_ad.js"></script>
    <script type="text/javascript" src="js/lower_nav.js"></script>
    <script type="text/javascript" src="js/fast_search.js"></script>
    <script type="text/javascript" src="js/sub_this_event.js"></script>
    <script type="text/javascript" src="js/sub_card_news.js"></script>
    <script type="text/javascript" src="js/sub_index.js"></script>
    <script type="text/javascript" src="js/sub_author.js"></script>
    <script type="text/javascript" src="js/sub_buy_related.js"></script>
    <script type="text/javascript" src="js/sub_user_review.js"></script>
    <script type="text/javascript" src="js/sub_location.js"></script>
    <script type="text/javascript" src="js/sub_upper_left.js"></script>
    <script type="text/javascript" src="js/sub_upper_right.js"></script>
    <script type="text/javascript" src="js/sub_upper_ad.js"></script>
    <script type="text/javascript" src="js/sub_UpRecom.js"></script>
    <script type="text/javascript" src="js/sub_detail_nav.js"></script>
    <script type="text/javascript" src="js/sub_openApi.js"></script>

    <!-- Json -->
    <script type="text/javascript" src="json/sub_this_event.json"></script>
</head>

<body>
    <!-- 헤더 광고 영역 시작 -->
    <div id="header-ad">
        <div id="header-ad-all">
            <div class="header-ad-all">
                <div id="header-ad-left">
                    <div id="header-ad-left-img">
                        <a href="#"><img alt="header-ad" src="img/1229_topbn_480x50_L_01.png"></a>
                    </div>
                </div>
                <div id="header-ad-right">
                    <div id="header-ad-right-img">
                        <a href="#"><img alt="header-ad" src="img/1229_topbn_480x50_R_01.png"></a>
                    </div>
                    <a href="javascript:void(0);" id="header-ad-close-btn"><img alt="ad-close" src="img/8666595_x_icon.png"></a>
                </div>
            </div>

        </div>
    </div>
    <!-- 헤더 광고 영역 끝 -->
    <hr>
    <!-- 헤더 영역 시작 -->
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
    
    
    <!-- 헤더 영역 끝 -->
    <hr>
    <!-- 헤더 밑 배너 영역 시작-->
    <div id="upper-banner">
        <div>
            <a href="#"><img alt="upperBannerAd" src="img/sub/upper_sub_ad.png"></a>
        </div>
    </div>
    <!-- 헤더 밑 배너 영역 끝 -->
    <hr>
    <!-- 배너 밑 네비게이션 시작-->
    <div id="location">
        <div class="location">
            <a class="loc-welcome" href="#">웰컴</a>
            <div class="loc-nav">
                <span class="loc-nav-gt">&gt;</span>
                <a href="javascript:void(0)">국내도서</a>
                <div class="loc-nav-btn">&gt;</div>
                <div class="loc-nav-contents nav-contents-1">
                    <ul>
                        <li><a href='#' style="font-weight: bold;">국내도서</a></li>
                        <li><a href='#'>외국도서</a></li>
                        <li><a href='#'>eBook</a></li>
                        <li><a href='#'>CD/LP</a></li>
                        <li><a href='#'>DVD/Blu-ray</a></li>
                        <li><a href='#'>문구/GIFT</a></li>
                        <li><a href='#'>중고샵</a></li>
                    </ul>
                </div>
            </div>
            <div class="loc-nav">
                <span class="loc-nav-gt">&gt;</span>
                <a href="javascript:void(0)">자기계발</a>
                <div class="loc-nav-btn">&gt;</div>
                <div class="loc-nav-contents nav-contents-2">
                    <ul>
                        <li><a href="#">가정 살림</a></li>
                        <li><a href="#">건강 취미</a></li>
                        <li><a href="#">경제 경영</a></li>
                        <li><a href="#">국어 외국어 사전</a></li>
                        <li><a href="#">대학교재</a></li>
                        <li><a href="#">만화/라이트노벨</a></li>
                        <li><a href="#">사회 정치</a></li>
                    </ul>
                    <ul>
                        <li><a href="#">소설/시/희곡</a></li>
                        <li><a href="#">수험서 자격증</a></li>
                        <li><a href="#">어린이</a></li>
                        <li><a href="#">에세이</a></li>
                        <li><a href="#">여행</a></li>
                        <li><a href="#">역사</a></li>
                        <li><a href="#">예술</a></li>
                    </ul>
                    <ul>
                        <li><a href="#">유아</a></li>
                        <li><a href="#">인문</a></li>
                        <li><a href="#">인물</a></li>
                        <li><a href="#" style="font-weight: bold;">자기게발</a></li>
                        <li><a href="#">자연과학</a></li>
                        <li><a href="#">잡지</a></li>
                        <li><a href="#">전집</a></li>
                    </ul>
                    <ul>
                        <li><a href="#">종교</a></li>
                        <li><a href="#">청소년</a></li>
                        <li><a href="#">IT 모바일</a></li>
                        <li><a href="#">초등참고서</a></li>
                        <li><a href="#">중고등참고서</a></li>
                    </ul>
                </div>
            </div>
            <div class="loc-nav">
                <span class="loc-nav-gt">&gt;</span>
                <a href="javascript:void(0)">처세술/삶의 자...</a>
                <div class="loc-nav-btn">&gt;</div>
                <div class="loc-nav-contents nav-contents-3">
                    <ul>
                        <li><a href="#" style="font-weight: bold;">처세술/삶의 자세</a></li>
                        <li><a href="#">인간관계</a></li>
                        <li><a href="#">성공학/경력관리</a></li>
                        <li><a href="#">화술/협상/회의진행</a></li>
                        <li><a href="#">기획/정보/시간관리</a></li>
                        <li><a href="#">창조적사고/두뇌개발</a></li>
                        <li><a href="#">여성을 위한 자지게발</a></li>
                    </ul>
                    <ul>
                        <li><a href="#">취업/유망직업</a></li>
                        <li><a href="#">성공스토리</a></li>
                        <li><a href="#">유학/이민</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- 배너 밑 네비게이션 끝-->
    <hr>
    <!-- 상단 서브 영역 시작-->
    <div class="upper-sub">
        <!-- 상단 상품소개 영역 시작 -->
        <div class="upper-main">
            <div class="upper-main-thumbnail">
                <div class="upper-main-thumb-img">
                    <img alt="mainThumbnail" src="img/sub/mainThumbnail.jfif">
                </div>
                <div class="upper-main-thumb-btn">
                    <a href="#" class="upper-thumb-button">미리보기</a>
                    <a href="#" class="upper-thumb-button">사이즈비교</a>
                    <a href="#" class="upper-thumb-button">카드뉴스</a>
                    <a href="#" class="upper-thumb-button">공유하기</a>
                </div>
            </div>
            <div class="upper-main-info">
                <div class="upper-info-top">
                    <span class="info-top-1">
                        <span class="info-top-1-1">소득공제</span>
                    </span>
                    <div class="info-top-2">
                        <h3>창피하지만, 일단 해봅시다</h3>
                        <h4>지금 창피한 마음은 미래의 성공이 보내는 신호</h4>
                    </div>
                    <span class="info-top-3">
                        <span class="info-top-3-author"><a href="#">나카가와 료</a> 저/<a href="#">김나정</a> 역</span>
                        <em style="font-size: 14px; color:#666; margin:0 5px;">|</em>
                        <span class="info-top-3-comp"><a href="#">갈매나무</a></span>
                        <em style="font-size: 14px; color:#666; margin:0 5px;">|</em>
                        <span class="info-top-3-date">2022년 12월 01일</span>
                        <em style="font-size: 14px; color:#666; margin:0 5px;">|</em>
                        <span class="info-top-3-oriTitle">원제 : <a href="#">いくつになっても恥をかける人になる</a></span>
                    </span>
                    <div class="info-top-4">
                        <span class="info-top-4-1">
                            <a href="javascript:void(0);">
                                <img alt="miniFullStar" src="img/sub/full_star.png">
                                <img alt="miniFullStar" src="img/sub/full_star.png">
                                <img alt="miniFullStar" src="img/sub/full_star.png">
                                <img alt="miniFullStar" src="img/sub/full_star.png">
                                <img alt="miniFullStar" src="img/sub/full_star.png">
                                <span>9.8</span>
                            </a>
                            <a href="#" class="info-top-review">회원리뷰(36건)</a>
                        </span>
                        <em style="font-size: 14px; color:#666; margin:0 10px;">|</em>
                        <span class="info-top-4-2">
                            <span>판매지수 1,641</span>
                            <em style="font-size: 14px; color:#666; margin:0 10px;">|</em>
                            <span>처세술/삶의 자세 top100 2주</span>
                        </span>
                    </div>
                </div>
                <div class="upper-info-bot">
                    <div class="info-bot-left">
                        <div class="info-left-1">
                            <table>
                                <colgroup>
                                    <col width="110">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th>정가</th>
                                        <td>15,500원</td>
                                    </tr>
                                    <tr>
                                        <th style="font-weight: bold;">판매가</th>
                                        <td style="color:tomato;"><span class="info-left-price">13,950</span>원 (10% 할인)
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>YES포인트</th>
                                        <td>770원 (5% 적립)<br>5만원 이상 구매 시 2천원 추가적립</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="info-left-2">
                            <table>
                                <colgroup>
                                    <col width="110">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th>카드결제</th>
                                        <td>카드/간편결제 혜택을 확인하세요</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="info-left-3">
                            <table>
                                <colgroup>
                                    <col width="110">
                                </colgroup>
                                <tbody>
                                    <tr>
                                        <th>배송안내</th>
                                        <td>서울특별시 영등포구 은행로 11(여의도동, 일신빌딩) <a href="javascript:void(0);">지역변경</a></td>
                                    </tr>
                                </tbody>
                            </table>
                            <div class="info-left-3-del">
                                <span>아침배송</span>
                                <p style="display: inline-block;">22시까지 주문하면 <strong>내일 아침 7시 전(1/26, 금)</strong> 도착예정
                                </p>
                            </div>
                            <ul>
                                <li>
                                    배송비 : 유료 (도서 15,000원 이상 무료)
                                </li>
                            </ul>
                            <div class="info-left-3-sell">
                                <p>이미 소장하고 있다면 <strong>1,100원</strong>에 판매해 보세요!</p>
                            </div>
                        </div>
                        <div class="info-left-ad">
                            <div class="left-ad-img">
                                <a href="#"><img alt="leftAdImg" src="img/sub/upper_left_ad.png"></a>
                            </div>
                            <div class="left-ad-close">
                                <img alt="x-button" src="img/8666595_x_icon.png">
                            </div>
                        </div>
                    </div>
                    <div class="info-bot-right">
                        <div class="info-right-moving">
                            <div class="right-moving-up">
                                <p class="right-up-onSale">판매중</p>
                                <ul class="right-up-count">
                                    <li>
                                        <p>수량</p>
                                    </li>
                                    <li>
                                        <span class="count-amount">1</span>
                                        <button name="right-up-amount" class="rightUp-button count-minus">-</button>
                                        <button name="right-up-amount" class="rightUp-button count-plus">+</button>
                                    </li>
                                </ul>
                                <div class="right-up-btn">
                                    <div class="right-up-inCart"><a href="#">
                                        <p>카트에 넣기</p>
                                    </a></div>
                                    <div class="right-up-buyNow"><a href="#">
                                        <p>바로구매</p>
                                    </a></div>
                                </div>
                            </div>
                            <div class="right-moving-down">
                                <div class="right-down-ul">
                                    <li>해외배송 가능</li>
                                    <li>최저가 보장</li>
                                    <li>문화비소득공제 신청가능</li>
                                </div>
                                <div class="right-down-btn">
                                    <div class="right-down-onList">
                                        <p>리스트에 넣기</p>
                                    </div>
                                    <div class="right-down-eBookReq">
                                        <p>eBook 출간 알림신청</p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- 상단 상품소개 영역 끝 -->
        <!-- 상단 광고 영역 시작-->
        <div class="upper-ad">
            <div class="upper-ad-leftMulti">
                <ul>
                    <li class="leftMulti-li">평론가 이동진 선정 올해의 책</li>
                    <li class="leftMulti-li">다산북스 창립 20주년</li>
                    <li class="leftMulti-li">1월의 굿즈 : 북파우치/토트백</li>
                    <li class="leftMulti-li">응원해용 키링</li>
                </ul>
            </div>
            <div class="upper-ad-main"></div>
            <div class="upper-ad-main"></div>
            <div class="upper-ad-main"></div>
            <div class="upper-ad-main"></div>
            <div class="upper-ad-right">
                <a href="#"><img alt="upperAdImg" src="img/sub/upper_banner_ad.png"></a>
            </div>
        </div>
        <!-- 상단 광고 영역 끝 -->
        <!-- 상단 책 추천 영역 시작 -->
        <div class="upper-recommend">
            <div class="UpRecom-menubar">
                <div class="UpRecom-menu">
                    이 책을 구입하신 분들이 <strong>함께 산 책</strong>
                </div>
                <div class="UpRecom-menu">
                    이 책을 구입하신 분들이 <strong>많이 산 책</strong>
                </div>
            </div>
            
            <div class="UpRecom-page">
                <div class="UpRecom-button-div">
                    <div class="UpRecom-btn UpRecom-together-prev UpRecom-prev">
                        <img alt="leftBtn" src="img/left_btn.png">
                    </div>
                    <div class="UpRecom-btn UpRecom-together-next UpRecom-next">
                        <img alt="rightBtn" src="img/right_btn.png">
                    </div>
                </div>
                <div class="UpRecom-main UpRecom-together">
                    <div class="UpRecom-main-content">
                        <ul>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="UpRecom-main UpRecom-together">
                    <div class="UpRecom-main-content">
                        <ul>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="UpRecom-main UpRecom-together">
                    <div class="UpRecom-main-content">
                        <ul>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="UpRecom-main UpRecom-together">
                    <div class="UpRecom-main-content">
                        <ul>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="UpRecom-page">
                <div class="UpRecom-button-div">
                    <div class="UpRecom-btn UpRecom-lot-prev UpRecom-prev">
                        <img alt="leftBtn" src="img/left_btn.png">
                    </div>
                    <div class="UpRecom-btn UpRecom-lot-next UpRecom-next">
                        <img alt="rightBtn" src="img/right_btn.png">
                    </div>
                </div>
                <div class="UpRecom-main UpRecom-lot" >
                    <div class="UpRecom-main-content">
                        <ul>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="UpRecom-main UpRecom-lot" >
                    <div class="UpRecom-main-content">
                        <ul>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="UpRecom-main UpRecom-lot" >
                    <div class="UpRecom-main-content">
                        <ul>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="UpRecom-main UpRecom-lot" >
                    <div class="UpRecom-main-content">
                        <ul>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                            <li>
                                <div class="UpRecom-content-img">
                                </div>
                                <div class="UpRecom-content-text">
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- 상단 책 추천 영역 끝 -->
    </div>
    <!-- 상단 서브 영역 끝-->
    <hr>
    <!-- 화면 내리면 고정되는 영역 시작-->
    <div id="detail-nav">
        <div class="detail-nav-title">
            <div>
                <h4>창피하지만, 일단 해봅시다</h4>
            </div>
        </div>
        <div class="detail-nav-price">
            <div>
                <div class="nav-price-left">
                    <div class="price-left-btn">도서정보</div>
                    <div class="price-left-btn">리뷰/한줄평 <em style="color:#999; font-size: 12px; font-weight: normal;">(32/4)</em></div>
                    <div class="price-left-btn">배송/반품/교환</div>
                </div>
                <div class="nav-price-right">
                    <div class="price-right-btn right-btn-inCart"><a href="#">카트에 넣기</a></div>
                    <div class="price-right-btn right-btn-buyNow"><a href="#">바로구매</a></div>
                    <div class="price-right-price"><strong>13,950</strong>원</div>
                </div>
            </div>
        </div>
    </div>
    <!-- 화면 내리면 고정되는 영역 끝 -->
    <hr>
    <!-- 하단 서브 영역 시작-->
    <div id="lower-sub">
        <div class="lower-sub">
            <!-- 하단 우측 영역 시작-->
            <div class="lower-right">
                <div class="lower-right-box right-box-1">
                    <div class="right-box-title">
                        <h3>이 분야 베스트셀러</h3>
                        <div class="right-box-moreSee"><a href="#">더보기<em style="font-size: 15px; color:#666;">&nbsp;&gt;</em></a></div>
                    </div>
                    <div class="right-box-content">
                        <ul>
                            <li class="right-box-li">
                                <div class="right-box-li-img">
                                </div>
                                <div class="right-box-li-text">
                                </div>
                            </li>
                            <li class="right-box-li">
                                <div class="right-box-li-img">
                                </div>
                                <div class="right-box-li-text">
                                </div>
                            </li>
                            <li class="right-box-li">
                                <div class="right-box-li-img">
                                </div>
                                <div class="right-box-li-text">
                                </div>
                            </li>
                            <li class="right-box-li">
                                <div class="right-box-li-img">
                                </div>
                                <div class="right-box-li-text">
                                </div>
                            </li>
                            <li class="right-box-li">
                                <div class="right-box-li-img">
                                </div>
                                <div class="right-box-li-text">
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="lower-right-box right-box-2">
                    <div class="right-box-title">
                        <h3>이 분야 신상품</h3>
                        <div class="right-box-moreSee"><a href="#">더보기<em style="font-size: 15px; color:#666;">&nbsp;&gt;</em></a></div>
                    </div>
                    <div class="right-box-content">
                        <ul>
                            <li class="right-box-li">
                                <div class="right-box-li-img">
                                </div>
                                <div class="right-box-li-text">
                                    <p class="right-box-li-title"></p>
                                    <p class="right-box-author"></p>
                                    <p class="right-box-price"><strong></strong>(10% 할인)</p>
                                </div>
                            </li>
                            <li class="right-box-li">
                                <div class="right-box-li-img">
                                </div>
                                <div class="right-box-li-text">
                                    <p class="right-box-li-title"></p>
                                    <p class="right-box-author"></p>
                                    <p class="right-box-price"><strong></strong>(10% 할인)</p>
                                </div>
                            </li>
                            <li class="right-box-li">
                                <div class="right-box-li-img">
                                </div>
                                <div class="right-box-li-text">
                                    <p class="right-box-li-title"></p>
                                    <p class="right-box-author"></p>
                                    <p class="right-box-price"><strong></strong>(10% 할인)</p>
                                </div>
                            </li>
                            <li class="right-box-li">
                                <div class="right-box-li-img">
                                </div>
                                <div class="right-box-li-text">
                                    <p class="right-box-li-title"></p>
                                    <p class="right-box-author"></p>
                                    <p class="right-box-price"><strong></strong>(10% 할인)</p>
                                </div>
                            </li>
                            <li class="right-box-li">
                                <div class="right-box-li-img">
                                </div>
                                <div class="right-box-li-text">
                                    <p class="right-box-li-title"></p>
                                    <p class="right-box-author"></p>
                                    <p class="right-box-price"><strong></strong>(10% 할인)</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="lower-right-ad">
                    <a href="#"><img alt="lowerRightAdver" src="img/sub/content_right_banner.jpg"></a>
                </div>
            </div>
            <!-- 하단 우측 영역 끝-->
            <hr>
            <!--하단 좌측 영역 시작-->
            <div class="lower-left">
                <!-- 하단 품목정보 영역 시작 -->
                <div class="lower-item-info">
                    <div class="item-info-text">
                        <h3>품목정보</h3>
                    </div>

                    <table class="info-table">
                        <colgroup>
                            <col width="170px">
                            <col width="*">
                        </colgroup>
                        <tbody>
                            <tr class="info-table-tr">
                                <th>
                                    발행일
                                </th>
                                <td>
                                    2022년 12월 01일
                                </td>
                            </tr>
                            <tr class="info-table-tr">
                                <th>
                                    쪽수, 무게, 크기
                                </th>
                                <td>
                                    268쪽 | 324g | 130*200*17mm
                                </td>
                            </tr>
                            <tr class="info-table-tr">
                                <th>
                                    ISBN13
                                </th>
                                <td>
                                    9791191842395
                                </td>
                            </tr>
                            <tr class="info-table-tr">
                                <th>
                                    ISBN10
                                </th>
                                <td>
                                    1191842398
                                </td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <!-- 하단 품목정보 영역 끝 -->
                <hr>
                <!-- 하단 관련분류 영역 시작 -->
                <div class="lower-classification">
                    <div class="classification-title">
                        <h3>관련분류</h3>
                    </div>
                    <div class="classification-main">
                        <h4>카테고리 분류</h4>
                        <ul class="classification-ul">
                            <li>
                                <a href="#">국내도서</a>
                                <em class="right-arrow">&gt;</em>
                                <a href="#">자기계발</a>
                                <em class="right-arrow">&gt;</em>
                                <a href="#">처세술/삶의자세</a>
                            </li>
                            <li>
                                <a href="#">국내도서</a>
                                <em class="right-arrow">&gt;</em>
                                <a href="#">자기계발</a>
                                <em class="right-arrow">&gt;</em>
                                <a href="#">성공학/경력관리</a>
                            </li>
                            <li>
                                <a href="#">국내도서</a>
                                <em class="right-arrow">&gt;</em>
                                <a href="#">자기계발</a>
                                <em class="right-arrow">&gt;</em>
                                <a href="#">기획/정보/시간관리</a>
                            </li>
                            <li>
                                <a href="#">국내도서</a>
                                <em class="right-arrow">&gt;</em>
                                <a href="#">자기계발</a>
                                <em class="right-arrow">&gt;</em>
                                <a href="#">창조적사고/두뇌개발</a>
                            </li>
                            <li>
                                <a href="#">국내도서</a>
                                <em class="right-arrow">&gt;</em>
                                <a href="#">자기계발</a>
                                <em class="right-arrow">&gt;</em>
                                <a href="#">성공스토리</a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 하단 관련분류 영역 끝 -->
                <hr>
                <!-- 하단 이 상품의 이벤트 영역 시작 -->
                <div class="lower-this-event">
                    <div class="this-event-text">
                        <h3>이 상품의 이벤트</h3><em style="font-size: 14px; color:#666;">(6개)</em>
                    </div>
                    <div class="this-event-main">
                        <ul>
                            <li class="this-event-main-li">
                                <div class="this-event-main-content">
                                    <div class="main-content-img">
                                    </div>
                                    <div class="main-content-marking">
                                        <ul>
                                            <li class="content-mark mark1">선착순</li>
                                            <li class="content-mark mark2">사은품</li>
                                            <li class="content-mark mark3">기획전</li>
                                        </ul>
                                    </div>
                                    <div class="main-content-text">
                                    </div>
                                </div>
                                <div class="this-event-main-content">
                                    <div class="main-content-img">
                                    </div>
                                    <div class="main-content-marking">
                                        <ul>
                                            <li class="content-mark mark1">선착순</li>
                                            <li class="content-mark mark2">사은품</li>
                                            <li class="content-mark mark3">기획전</li>
                                        </ul>
                                    </div>
                                    <div class="main-content-text">
                                    </div>
                                </div>
                            </li>
                            <li class="this-event-main-li">
                                <div class="this-event-main-content">
                                    <div class="main-content-img">
                                    </div>
                                    <div class="main-content-marking">
                                        <ul>
                                            <li class="content-mark mark1">선착순</li>
                                            <li class="content-mark mark2">사은품</li>
                                            <li class="content-mark mark3">기획전</li>
                                        </ul>
                                    </div>
                                    <div class="main-content-text">
                                    </div>
                                </div>
                                <div class="this-event-main-content">
                                    <div class="main-content-img">
                                    </div>
                                    <div class="main-content-marking">
                                        <ul>
                                            <li class="content-mark mark1">선착순</li>
                                            <li class="content-mark mark2">사은품</li>
                                            <li class="content-mark mark3">기획전</li>
                                        </ul>
                                    </div>
                                    <div class="main-content-text">
                                    </div>
                                </div>
                            </li>
                            <li class="this-event-main-li">
                                <div class="this-event-main-content">
                                    <div class="main-content-img">
                                    </div>
                                    <div class="main-content-marking">
                                        <ul>
                                            <li class="content-mark mark1">선착순</li>
                                            <li class="content-mark mark2">사은품</li>
                                            <li class="content-mark mark3">기획전</li>
                                        </ul>
                                    </div>
                                    <div class="main-content-text">
                                    </div>
                                </div>
                                <div class="this-event-main-content">
                                    <div class="main-content-img">
                                    </div>
                                    <div class="main-content-marking">
                                        <ul>
                                            <li class="content-mark mark1">선착순</li>
                                            <li class="content-mark mark2">사은품</li>
                                            <li class="content-mark mark3">기획전</li>
                                        </ul>
                                    </div>
                                    <div class="main-content-text">
                                    </div>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <div class="this-event-button">
                        <p>펼쳐보기</p>
                        <em class="UpDown-btn">&gt;</em>
                    </div>
                </div>
                <!-- 하단 이 상품의 이벤트 영역 끝 -->
                <hr>
                <!-- 하단 카드뉴스로 보는 책 영역 시작 -->
                <div class="lower-card-news">
                    <div class="card-news-text">
                        <h3>카드뉴스로 보는 책</h3>
                        <div class="card-news-num">
                            <h6>1/5</h6>
                        </div>
                    </div>
                    <div class="card-news-button">
                        <div class="card-news-prev">&lt;</div>
                        <div class="card-news-next">&gt;</div>
                    </div>
                    <div class="card-news-content">
                        <img alt="cardNewsImg" src="img/sub/card_news_1.jpg">
                        <img alt="cardNewsImg" src="img/sub/card_news_2.jpg">
                    </div>
                    <div class="card-news-content">
                        <img alt="cardNewsImg" src="img/sub/card_news_3.jpg">
                        <img alt="cardNewsImg" src="img/sub/card_news_4.jpg">
                    </div>
                    <div class="card-news-content">
                        <img alt="cardNewsImg" src="img/sub/card_news_5.jpg">
                        <img alt="cardNewsImg" src="img/sub/card_news_6.jpg">
                    </div>
                    <div class="card-news-content">
                        <img alt="cardNewsImg" src="img/sub/card_news_7.jpg">
                        <img alt="cardNewsImg" src="img/sub/card_news_8.jpg">
                    </div>
                    <div class="card-news-content">
                        <img alt="cardNewsImg" src="img/sub/card_news_9.jpg">
                        <img alt="cardNewsImg" src="img/sub/card_news_10.jpg">
                    </div>
                </div>
                <!-- 하단 카드뉴스로 보는 책 영역 끝-->
                <hr>
                <!-- 하단 책 소개 영역 시작 -->
                <div class="lower-text-introduction">
                    <div class="intro-title">
                        <h3>책 소개</h3>
                    </div>
                    <div class="intro-content">
                        <b>
                            "“혹시 아나요? 일단 해본 뒤에 어떤 멋진 인생이 펼쳐질지!”"<br>
                            - 성현규, 유튜버 감성대디<br>
                            <br>
                            생각만 많고 실천은 못 하는 당신에게<br>
                            아무것도 묻고 따지지도 않고 일단 해보길 권함!<br>
                            <br>
                            무난하고 안전한 길만 택한다면 제자리걸음뿐,<br>
                            대담하게 새로운 길을 개척하기 위한<br>
                            단계별 창피함 극복 솔루션 50<br>
                        </b>
                        <br>
                        <p>수업이나 강의를 들을 때 맨 앞자리에 앉기를 피하는가? 모르거나 궁금한 게 있어도 바로 물어보기가 망설여지는가? 서툴고 부족한 나를 내보이기 싫어서 새로운 일에
                            도전하기를 포기하거나 배울 기회를 지나친다면 지금 당장 더 나은 내가 될 가능성을 놓친 것이다. 이처럼 우리의 성장과 발전을 가로막는 가장 큰 원인은 ‘창피함’이라는
                            감정이다. 남들 눈에 어떻게 보일지 걱정하는 것과 나 스스로 부족함을 느끼며 부끄러워하는 것 모두 창피함이라는 감정에서 비롯된다. 어떤 일을 앞두고 창피함에
                            머뭇거리고 주저하며 망설일 때, 무조건 ‘일단 해보기’를 선택한다면 어떤 일이 벌어질까?</p>
                        <br>
                        <p>여기에 ‘창피할 땐 일단 해보기’를 실천한 사람이 있다. 이른 나이에 카피라이터 겸 광고기획자로 성공하여 세계 유수의 창작자들과 어깨를 나란히 한 나카가와 료는 자신의
                            독창적인 창작력과 일련의 성공들이 모두 ‘창피한 순간에서 일단 해보는 선택’ 덕분이었다고 말한다. 책에서는 창피함이란 우리의 변화와 성공을 방해하는 걸림돌이지만,
                            일단 넘어서기만 하면 오히려 창피함을 성공의 길로 가는 나침반으로 활용할 수 있다고 말한다. 저자는 자신만의 경험으로 창피함이란 감정을 분석하며, 상황별로 적용할 수
                            있는 일상적이고 구체적인 실천 방안들을 제시한다,</p>
                        <br>
                        <p>창피함은 이제 갓 일을 시작한 신입 사원이든, 나이와 경력을 쌓은 베테랑 팀장이든 상관없이 누구나 겪는 감정이다. 늘어나는 정년과 평생 직장이 사라진 시대에 우리는
                            나이가 들어도 끊임없이 성장하고 변화하며 적응해야 한다. 계속해서 용기 있게 새로운 도전을 마주하는 태도를 갖춘 사람만이 무한 경쟁의 시대에 살아남는다. 창피해서
                            이래저래 미루었던 일들이 있다면, 더 이상의 고민 걱정은 멈추자. 창피함은 짧고, 인생은 길다. 이 책을 읽고 창피해도 일단 해보는 사람이 된다면, 앞으로 나아갈
                            길이 극적으로 달라질 것이다.</p>
                        <br>
                        <ul>
                            <li>책의 일부 내용을 미리 읽어보실 수 있습니다<a href="#">미리보기</a></li>
                        </ul>
                    </div>

                </div>
                <!-- 하단 책 소개 영역 끝 -->
                <hr>
                <!-- 하단 목차 영역 시작 -->
                <div class="lower-book-index">
                    <div class="index-title">
                        <h3>목차</h3>
                    </div>
                    <div class="index-content">
                        들어가며: 고민될 때마다 나는 창피한 쪽을 택한다<br><br>
                        <b>Ⅰ . 창피를 모를수록 진정한 나를 알 수 있다</b><br><br>
                        변화가 필요한 시대에서 살아남기<br>
                        인간은 완벽을 원할수록 더 불완전해진다<br>
                        농담에 담긴 무시무시한 힘<br>
                        미래의 목표라는 허상에서 벗어나라<br>
                        존경받고 싶다는 마음보다 중요한 것<br>
                        후배에게 평가받는 선배의 마음<br>
                        SNS로 드러나는 욕망의 얼굴들<br>
                        솔직함은 수치심보다 힘이 세다<br>
                        당신을 옭아매는 '꼭 이래야 한다'는 착각<br>
                        타인의 평가가 내 선택을 방해하지 않게<br><br>
                        <b>Ⅱ. 창피를 피할수록 오히려 기회가 사라지는 이유</b><br><br>
                        기다리는 자에게 '언젠가'는 절대 오지 않는다<br>
                        당신이 시작하지 못하는 진짜 이유<br>
                        막상 시작해도 지속하지 못하는 이유<br>
                        이불킥을 하더라도 자신을 혐오하진 말자<br>
                        평생 끝나지 않는 '완벽한 준비'<br>
                        잘해서가 아니라 부족해서 강점이 된다<br>
                        적이 가까울수록, 분명해지는 내편<br>
                        잊고 싶은 트라우마를 해프닝으로 만드는 여유<br>
                        창피도 함께 나누면 팀의 성과가 된다<br>
                        거대한 바위처럼 보여도 딛고 나면 돌부리일 뿐<br><br>
                        <b>Ⅲ. 창피함에 맞서기 위한 나만의 관점 키우기</b><br><br>
                        창피함은 나이와 경력을 따지지 않는다<br>
                        '남들에게 어떻게 보일까?'를 신경쓰는 외적 창피함<br>
                        '나는 이래야 해!'라는 고집이 낳는 내적 창피함<br>
                        ▶입문기 창피: 새로운 일을 막 시작한 사람들을 위한 조언<br>
                        ① 나도 모르게 아는 체하게 된다<br>
                        ② 예상치 못한 질문에 그럴듯한 대답을 지어낸다<br>
                        ③ 모르는 일을 혼자서 해결하려고 한다<br>
                        ④ 자신이 없어도 할 수 있는 척 한다<br>
                        ▶발전기 창피: 실력 향상을 위해 노력하는 사람들을 위한 조언<br>
                        ① 이제 와서 못한다고 말할 수 없다<br>
                        ② 내가 잘하는 일만 하고 싶다<br>
                        ③ 타인의 성과를 인정하고 싶지 않다<br>
                        ④ 노력하는 모습을 타인에게 보이기 싫다<br>
                        ⑤ 주변에 협력을 부탁하지 못한다<br>
                        ▶숙련기 창피: 주변보다 경력이 오래된 사람들을 위한 조언<br>
                        ① 솔직하게 사과하지 못한다<br>
                        ② 마음에 안 들면 곧장 화가 난다<br>
                        ③ 후배를 지도, 지적하는 것을 주저하게 된다<br>
                        ④ 분위기를 띄우기 위해 타인을 조롱한다<br>
                        ⑤ 이제 와서 새로운 일을 시작하기가 어렵다<br>
                        창조적인 일을 하는 사람이 느끼는 열등감<br>
                        타인의 창피함을 대하는 자세<br><br>
                        <b>Ⅳ. 창피한 마음을 이기면, 그것이 바로 성공의 신호</b><br><br>
                        스스로 책임지고 도전하고 있다는 증거<br>
                        누구나 돈 들이지 않고 할 수 있는 투자<br>
                        능력이 아니라 태도로 싸워라<br>
                        창피함을 넘어서는 열정과 만나는 법<br>
                        우리는 응원받는 사람이 되어야 한다<br>
                        선택이 나침반이 되어주는 창피함의 힘<br><br>
                        <b>Ⅴ. 기회는 만들고 나를 바꾸는, 창피함 극복 솔루션 50</b><br><br>
                        마치며: 창피함을 넘어서면 오는 행복
                    </div>
                    <div class="index-button">
                        <p>펼쳐보기</p>
                        <em class="UpDown-btn">&gt;</em>
                    </div>
                </div>
                <!-- 하단 목차 영역 끝 -->
                <hr>
                <!-- 하단 채널예스 기사 영역 시작 -->
                <div class="lower-channelYes">
                    <div class="channelYes-text">
                        <h3>채널예스 기사</h3><em style="font-size: 14px; color:#666;">(1개)</em>
                    </div>
                    <div class="channelYes-news">
                        <ul>
                            <li class="channelYes-article">
                                <p>
                                    <a href="#">
                                        <em style="z-index: 2; background-color: beige; font-weight: bolder;">카드뉴스로 보는
                                            책</em>
                                        <em><img alt="article1" src="img/sub/channelYes.jpg"></em>
                                    </a>
                                </p>
                                <div class="article-content">
                                    <p class="article-title"><a href="#">[창피하지만, 일단 해봅니다] 단계별 창피함 극복 솔루션 50</a></p>
                                    <p class="article-date">2022년 12월 12일</p>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
                <!-- 하단 채널예스 기사 영역 끝 -->
                <hr>
                <!-- 하단 상세 이미지 영역 시작 -->
                <div class="lower-long-image">
                    <div class="long-image-text">
                        <h3 class="long-image-h3">상세 이미지</h3>
                    </div>
                    <div class="long-image-img">
                        <img alt="longImage" src="img/sub/long_1.jpg">
                    </div>
                </div>
                <!-- 하단 상세 이미지 영역 끝 -->
                <hr>
                <!-- 하단 저자 소개 영역 시작 -->
                <div class="lower-author-group">
                    <div class="author-group-title">
                        <h3>저자 소개</h3><em style="font-size: 14px; color:#666;">(2명)</em>
                    </div>
                    <div class="author-group-main1">
                        <div class="author-title">
                            <div class="author-name">
                                저 :
                                <a href="#">나카가와 료</a>
                                <span>(中川 諒)</span>
                            </div>
                            <div class="author-btn">
                                <div class="author-file">작가 파일<em
                                        style="font-size: 12px; color:#999; margin-left:3px;">&gt;</em></div>
                                <div class="author-notice">관심작가 알림신청</div>
                            </div>
                        </div>
                        <div class="author-content">
                            <div class="author-text author-content-text">
                                카피라이터 겸 광고기획자. 1988년 일본에서 태어나 유년기를 이집트와 독일에서 보냈으며, 게이오기주쿠대학 환경정보학부를 졸업했다. 레드불 재팬,
                                와이든+케네디 도쿄를 거쳐 2011년에 세계 5위 규모의 광고대행사 덴쓰에 입사한다. 낯선 이국에 살며 다르다는 이유만으로 주눅 들었던 기억, 바라던 부서에
                                배정받지 못해 겉돌던 시절을 지나면서, ‘창피당하고 싶지 않은 마음’을 오랫동안 곱씹어봤다. 그러다 창피함...
                            </div>
                            <div class="author-text-long author-content-text">
                                카피라이터 겸 광고기획자. 1988년 일본에서 태어나 유년기를 이집트와 독일에서 보냈으며, 게이오기주쿠대학 환경정보학부를 졸업했다. 레드불 재팬,
                                와이든+케네디 도쿄를 거쳐 2011년에 세계 5위 규모의 광고대행사 덴쓰에 입사한다.
                                <br><br>
                                낯선 이국에 살며 다르다는 이유만으로 주눅 들었던 기억, 바라던 부서에 배정받지 못해 겉돌던 시절을 지나면서, ‘창피당하고 싶지 않은 마음’을 오랫동안
                                곱씹어봤다. 그러다 창피함을 무릅쓰는 순간마다 새로운 길이 열리고 신나는 일이 생기는 걸 경험했고, 이후 구글에서 크리에이티브 디렉터로 활동하고,
                                유니클로·산토리·혼다의 광고를 제작하는 등 꾸준히 성장과 성공을 쌓아왔다. 나아가 칸 국제광고제에서 영 칸 라이언즈와 영 스파이크 상을 받아 세계적인
                                창작자들과 어깨를 나란히 했으며, ADC 글로벌 어워즈, 원 쇼, 애드페스트, 스파이크스, 애드 스타즈 등 유수의 광고 상들을 수상하는 등 다양한 경력을
                                밟아왔다.
                                <br><br>
                                지금도 덴쓰에서 일하며 ‘PR아키텍트’라는 전에 없던 직함을 스스로 만들어, 누가 뭐라건 자신만의 길을 꿋꿋이 개척해나가고 있다.
                            </div>
                            <div class="author-button">
                                <p>펼쳐보기</p>
                                <em class="UpDown-btn">&gt;</em>
                            </div>
                        </div>
                    </div>
                    <div class="author-group-main2">
                        <div class="author-title">
                            <div class="author-name">
                                역 :
                                <a href="#">김나정</a>
                            </div>
                            <div class="author-btn">
                                <div class="author-file">작가 파일<em
                                        style="font-size: 12px; color:#999; margin-left:3px;">&gt;</em></div>
                                <div class="author-notice ">관심작가 알림신청</div>
                            </div>
                        </div>
                        <div class="author-content">
                            <div class="author-text author-text2">
                                일본 릿쿄대학에서 국제경영학을 전공하고 이화여자대학교 통역번역대학원 번역학과에서 석사 학위를 취득했다. 현재는 전문 번역가로 활동 중이다. 옮긴 책으로는
                                『창피하지만, 일단 해봅니다』, 『논리적으로 글쓰는 습관』, 『논리적으로 생각하는 습관』, 『어린이를 위한 천재의 습관』, 『한 장으로 보는 중국 스타트업
                                비즈니스 모델』, 『크리에이티브 사고를 방해하는 것들』 등이 있다.
                            </div>
                            <div class="author-another">
                                <div class="author-another-title">
                                    <a href="#">작가의 다른 상품<em
                                            style="font-size: 12px; color:#999; margin-left:3px;">&gt;</em></a>
                                </div>
                                <div class="author-another-book">
                                    <ul>
                                        <li class="another-book-li"><a href="#">
                                            <div class="another-book-li-img">
                                            </div>
                                            <div class="another-book-li-text">
                                            </div>
                                        </a></li>
                                        <li class="another-book-li"><a href="#">
                                            <div class="another-book-li-img">
                                            </div>
                                            <div class="another-book-li-text">
                                            </div>
                                        </a></li>
                                        </a></li>
                                        <li class="another-book-li"><a href="#">
                                            <div class="another-book-li-img">
                                            </div>
                                            <div class="another-book-li-text">
                                            </div>
                                        </a></li>
                                        <li class="another-book-li"><a href="#">
                                            <div class="another-book-li-img">
                                            </div>
                                            <div class="another-book-li-text">
                                            </div>
                                        </a></li>
                                        <li class="another-book-li"><a href="#">
                                            <div class="another-book-li-img">
                                            </div>
                                            <div class="another-book-li-text">
                                            </div>
                                        </a></li>
                                        <li class="another-book-li"><a href="#">
                                            <div class="another-book-li-img">
                                            </div>
                                            <div class="another-book-li-text">
                                            </div>
                                        </a></li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 하단 저자 소개 영역 끝 -->
                <hr>
                <!-- 하단 만든 이 코멘트 영역 시작-->
                <div class="lower-author-comment">
                    <div class="author-comment-title">
                        <h3>만든 이 코멘트</h3>
                        <span>저자, 역자, 편집자를 위한 공간입니다. 독자들에게 전하고 싶은 말씀을 남겨주세요</span>
                        <div class="author-comment-box">
                            <span>코멘트 쓰기</span>
                        </div>
                    </div>
                    <div class="author-comment-main">
                        <p>접수된 글은 확인을 거쳐 이 곳에 게재됩니다.</p>
                        <p>독자 분들의 리뷰는 리뷰 쓰기를, 책에 대한 문의는 1:1 문의를 이용해 주세요.</p>
                    </div>
                </div>
                <!-- 하단 만든 이 코멘트 영역 끝-->
                <hr>
                <!-- 하단 추천평 영역 시작 -->
                <div class="lower-recommend-comment">
                    <div class="rec-comment-title">
                        <h3>추천평</h3>
                    </div>
                    <div class="rec-comment-main">
                        <p>누구나 살면서 시시때때로 선택의 기로에 섭니다. 저도 사진작가를 하다가 음악이 너무 좋아 무작정 클럽 DJ에 도전했고, 생업으로 목수일을 배워 5년 만에 목수반장도
                            해보고, 또 무작정 유튜브를 시작해 지금 이 자리까지 왔지요. 수많은 갈림길에서 가장 큰 걸림돌은 역시 저자의 말처럼 남들 시선을 의식해 부끄러움으로 주저하는
                            마음이었습니다. 하지만 ‘창피함’을 넘어 과감히 시작했기에 인생이 극적으로 바뀔 수 있었죠. “첫발을 내딛는 용기로 당신은 해본 적 없는 사람에서 해본 적 있는
                            사람이 된다”라는 이 책의 문장처럼, 여러분들도 창피함을 무릅쓰고 ‘해본 적 있는 사람’이 되어보길 바랍니다. 혹시 아나요? 일단 해본 뒤에 어떤 멋진 인생이
                            펼쳐질지!</p>
                        <p><a href="#">- 성현규 (유튜버 감성대디, 『하고 싶은 대로 살아보겠습니다』 저자)</a></p>
                    </div>
                </div>
                <!-- 하단 추천평 영역 끝 -->
                <hr>
                <!-- 하단 회원리뷰 영역 시작 -->
                <div class="lower-user-review">
                    <div class="user-review-title">
                        <h3>회원리뷰</h3><em style="font-size: 14px; color:#666;">(32건)</em>
                    </div>
                    <div class="user-review-titletext">
                        <p>매주 10건의 우수리뷰를 선정하여 YES포인트 3만원을 드립니다.</p>
                        <p>3,000원 이상 구매 후 리뷰 작성 시 <strong>일반회원 300원, 마니아회원 600원</strong>의 YES포인트를 드립니다.</p>
                        <p>eBook은 다운로드 후 작성한 리뷰만 YES포인트 지급됩니다.</p>
                        <p>CD/LP, DVD/Blu-ray, 패션 및 판매금지 상품, 예스24 앱스토어 상품 제외됩니다.<a href="#">리뷰/한줄평 정책 자세히 보기<em
                                    style="font-size: 12px; color:#999; margin-left:3px;">&gt;</em></a></p>
                        <div class="user-review-button"><a href="#">리뷰쓰기<em
                                    style="font-size: 12px; color:#999; margin-left:3px;">&gt;</em></a></div>
                    </div>
                    <div class="user-review-pointbox">
                        <div class="user-pointbox-upper">
                            <p><em style="color:#6699cc">32</em>명의 예스24 회원이 평가한 평균별점</p>
                            <div class="pointbox-point">
                                <div class="pointbox-point-star">
                                    <img alt="fullstar" src="img/sub/full_star_f8f8f8.png">
                                    <img alt="fullstar" src="img/sub/full_star_f8f8f8.png">
                                    <img alt="fullstar" src="img/sub/full_star_f8f8f8.png">
                                    <img alt="fullstar" src="img/sub/full_star_f8f8f8.png">
                                    <img alt="fullstar" src="img/sub/full_star_f8f8f8.png">
                                </div>
                                <p style="font-size: 48px;">9.8</p>
                                <p style="font-size: 30px; color:#999;">/ 10.0</p>
                            </div>
                        </div>
                        <div class="user-pointbox-lower">
                            <div class="user-pointbox-graph">
                                <div class="graph-title">
                                    <h3>별점별로 리뷰를 확인해 보세요.</h3>
                                </div>
                                <div class="graph-content">
                                    <ul>
                                        <li class="graph-star-li">
                                            <div class="graph-star-star">
                                                <img alt="graphFullstar" src="img/sub/full_star.png">
                                                <img alt="graphFullstar" src="img/sub/full_star.png">
                                                <img alt="graphFullstar" src="img/sub/full_star.png">
                                                <img alt="graphFullstar" src="img/sub/full_star.png">
                                                <img alt="graphFullstar" src="img/sub/full_star.png">
                                            </div>
                                            <div class="graph-star-persent">
                                                <div class="five-star-persent">
                                                    <span>94%</span>
                                                </div>
                                            </div>
                                        </li>
                                        <li class="graph-star-li">
                                            <div class="graph-star-star">
                                                <img alt="graphFullstar" src="img/sub/full_star.png">
                                                <img alt="graphFullstar" src="img/sub/full_star.png">
                                                <img alt="graphFullstar" src="img/sub/full_star.png">
                                                <img alt="graphFullstar" src="img/sub/full_star.png">
                                                <img alt="graphEmptystar" src="img/sub/empty_star.png">
                                            </div>
                                            <div class="graph-star-persent">
                                                <div class="four-star-persent"></div>
                                                <span class="four-star-span">6%</span>
                                            </div>
                                        </li>
                                        <li class="graph-star-li">
                                            <div class="graph-star-star">
                                                <img alt="graphFullstar" src="img/sub/full_star.png">
                                                <img alt="graphFullstar" src="img/sub/full_star.png">
                                                <img alt="graphFullstar" src="img/sub/full_star.png">
                                                <img alt="graphEmptystar" src="img/sub/empty_star.png">
                                                <img alt="graphEmptystar" src="img/sub/empty_star.png">
                                            </div>
                                            <div class="graph-star-persent">
                                                <div class="three-star-persent"></div>
                                                <span class="three-star-span">0%</span>
                                            </div>
                                        </li>
                                        <li class="graph-star-li">
                                            <div class="graph-star-star">
                                                <img alt="graphFullstar" src="img/sub/full_star.png">
                                                <img alt="graphFullstar" src="img/sub/full_star.png">
                                                <img alt="graphEmptystar" src="img/sub/empty_star.png">
                                                <img alt="graphEmptystar" src="img/sub/empty_star.png">
                                                <img alt="graphEmptystar" src="img/sub/empty_star.png">
                                            </div>
                                            <div class="graph-star-persent">
                                                <div class="two-star-persent"></div>
                                                <span class="two-star-span">0%</span>
                                            </div>
                                        </li>
                                        <li class="graph-star-li">
                                            <div class="graph-star-star">
                                                <img alt="graphFullstar" src="img/sub/full_star.png">
                                                <img alt="graphEmptystar" src="img/sub/empty_star.png">
                                                <img alt="graphEmptystar" src="img/sub/empty_star.png">
                                                <img alt="graphEmptystar" src="img/sub/empty_star.png">
                                                <img alt="graphEmptystar" src="img/sub/empty_star.png">
                                            </div>
                                            <div class="graph-star-persent">
                                                <div class="one-star-persent"></div>
                                                <span class="one-star-span">0%</span>
                                            </div>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                            <div class="user-pointbox-graph">
                                <div class="graph-title">
                                    <h3>연령대별 평균 점수는?</h3>
                                </div>
                                <div class="graph-content">
                                    <ul>
                                        <li class="graph-line"></li>
                                        <li class="graph-line"></li>
                                        <li class="graph-line"></li>
                                        <li class="graph-line"></li>
                                        <li class="graph-line"></li>
                                        <li class="graph-line">
                                            <span>10대</span>
                                            <span>20대</span>
                                            <span>30대</span>
                                            <span>40대</span>
                                            <span>50대</span>
                                        </li>
                                    </ul>
                                    <div class="graph-stick stick-10">
                                        <span>10.0</span>
                                    </div>
                                    <div class="graph-stick stick-20">
                                        <span>10.0</span>
                                    </div>
                                    <div class="graph-stick stick-30">
                                        <span>9.0</span>
                                    </div>
                                    <div class="graph-stick stick-40">
                                        <span>9.0</span>
                                    </div>
                                    <div class="graph-stick stick-50">
                                        <span>9.0</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="user-review-userimg">
                    </div>
                    <div class="user-review-multibox">
                        <div class="user-multi-menubar">
                            <div class="user-multi-menu">
                                <h3>전체 리뷰</h3><em style="font-size: 16px; color:#666;">(32)</em>
                            </div>
                            <div class="user-multi-menu">
                                <h3>구매 리뷰</h3><em style="font-size: 16px; color:#666;">(1)</em>
                            </div>
                            <div class="user-multi-menu">
                                <h3>포토 리뷰</h3><em style="font-size: 16px; color:#666;">(12)</em>
                            </div>
                            <div class="user-multi-menu">
                                <h3>스타블로거 리뷰</h3><em style="font-size: 16px; color:#666;">(9)</em>
                            </div>
                        </div>
                        <div class="user-multi-review">
                            <div class="user-multi-review-pagebar">
                                <div class="review-pagebar-left">
                                    <span>&lt;&lt;</span>
                                    <span>&lt;</span>
                                    <span>1</span>
                                    <span>2</span>
                                    <span>3</span>
                                    <span>4</span>
                                    <span>5</span>
                                    <span>6</span>
                                    <span>7</span>
                                    <span>&gt;</span>
                                    <span>&gt;&gt;</span>
                                </div>
                                <div class="review-pagebar-right">
                                    <span>최근순</span>
                                    |
                                    <span>추천순</span>
                                    |
                                    <span>별점순</span>
                                </div>
                            </div>
                            <div class="user-multi-review-main">
                                <div class="multi-review-title">
                                    <span>종이책</span>
                                    창피하지만, 일단 해봅니다
                                </div>
                                <div class="multi-review-id">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <em>|</em>
                                    <span>n*******0</span>
                                    <em>|</em>
                                    <span>2022-12-13</span>
                                </div>
                                <div class="multi-review-content">
                                    스스로 완벽해야 해야 한다는 강박 때문에 수차례 기회를 놓쳤던 경험이 있었다. 처음 해외 학회에 참석했을 때 모든 것이 두려웠다. 누군가 내게 질문을
                                    할까 두려웠고 그 모든 일이 외국어로 이루어진다는 사실에 공포감은 증가했다. 하지만 다시 일상으로 돌아왔을 때 그날의 기억은 후회로만 남았다. 완벽하지
                                    않은 내 모습에 창피함을 느끼고 머뭇거렸던 그...
                                </div>
                                <div class="multi-review-recommend">
                                    <div class="review-recommend-left">
                                        <strong>2명</strong>이 이 리뷰를 추천합니다
                                    </div>
                                    <div class="review-recommend-right">
                                        <div class="review-recommend-comment">댓글</div>
                                        <div class="review-recommend-heart">
                                            <img alt="heart" src="img/sub/8725993_heart_sign_icon.png">
                                            <span>2</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="user-multi-review-main">
                                <div class="multi-review-title">
                                    <span>종이책</span>
                                    창피하지만, 일단 해봅니다
                                </div>
                                <div class="multi-review-id">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <em>|</em>
                                    <span>j****8r</span>
                                    <em>|</em>
                                    <span>2022-12-08</span>
                                </div>
                                <div class="multi-review-content">
                                    아마 기억하는 이가 거의 없을 테지만 원로 코미디언 전유성 씨가 했던 유명한(?) 말을 떠올려 본다. 잠깐의 굴욕을 참으면 인생이 행복하다. 굴욕은
                                    본래 ’남에게 억눌리어 업신여김을 받음‘을 뜻하는데 최근에 와서는 그 의미가 옅어져 ’창피하다‘와 거의 비슷하게 쓰이는 것 같다. 지금 우리가 무언가
                                    창피함을 느낀다면 이는 미래가 보내는 성공의 신호라고...
                                </div>
                                <div class="multi-review-recommend">
                                    <div class="review-recommend-left">
                                        <strong>2명</strong>이 이 리뷰를 추천합니다
                                    </div>
                                    <div class="review-recommend-right">
                                        <div class="review-recommend-comment">댓글</div>
                                        <div class="review-recommend-heart">
                                            <img alt="heart" src="img/sub/8725993_heart_sign_icon.png">
                                            <span>2</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="user-multi-review-main">
                                <div class="multi-review-title">
                                    <span>종이책</span>
                                    [서평] 창피하지만, 일단 해봅니다
                                </div>
                                <div class="multi-review-id">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <em>|</em>
                                    <span>b******7</span>
                                    <em>|</em>
                                    <span>2023-08-02</span>
                                </div>
                                <div class="multi-review-content">
                                    '창피하기 때문에' 주저하거나 '창피해서 피했던 것'을 후회하는, 한국 사회를 살아가는 보통의 어른들에게 추천하고 싶은 책이다. 나이가 들수록 다른
                                    이유 때문이 아닌 오로지 '창피'를 면하기 위해 행동하지 않는 것들이 많아지는 듯 하다. 그리고 겨우 그까짓 이유로 수동적으로 살아오는 자신을 보면
                                    후회감이 밀려오는 것은 덤. 어쩌면 더 큰 창피함을 느낀다...
                                </div>
                                <div class="multi-review-recommend">
                                    <div class="review-recommend-left">
                                        <strong>1명</strong>이 이 리뷰를 추천합니다
                                    </div>
                                    <div class="review-recommend-right">
                                        <div class="review-recommend-comment">댓글</div>
                                        <div class="review-recommend-heart">
                                            <img alt="heart" src="img/sub/8725993_heart_sign_icon.png">
                                            <span>1</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="user-multi-review-main">
                                <div class="multi-review-title">
                                    <span>종이책</span>
                                    창피하지만 일단 해봅니다
                                </div>
                                <div class="multi-review-id">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <em>|</em>
                                    <span>d*****2</span>
                                    <em>|</em>
                                    <span>2023-02-25</span>
                                </div>
                                <div class="multi-review-content">
                                    #창피하지만일단해봅니다#나카가와료#김나정#갈매나무#지금#창피한#마음은#미래가#보내는#성공의#신호#실천#창피함극복#솔루션 나는 창피함을 많이 느끼는
                                    사람이다.그래서인지 이 책 제목은 나에게 해결책을 제시해 줄 것 같은기대가 생겨서 정이 가는 책이었다. 책 표지에서조차도‘지금 창피한 마음은 미래가
                                    보내는 성공의 신호’라며 응원을 해주는 책이다....
                                </div>
                                <div class="multi-review-recommend">
                                    <div class="review-recommend-left">
                                        <strong>1명</strong>이 이 리뷰를 추천합니다
                                    </div>
                                    <div class="review-recommend-right">
                                        <div class="review-recommend-comment">댓글</div>
                                        <div class="review-recommend-heart">
                                            <img alt="heart" src="img/sub/8725993_heart_sign_icon.png">
                                            <span>1</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="user-multi-review-main">
                                <div class="multi-review-title">
                                    <span>종이책</span>
                                    창피하지만!! 일단 해봅니다
                                </div>
                                <div class="multi-review-id">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <img alt="reviewStar" src="img/sub/full_star.png">
                                    <em>|</em>
                                    <span>2*****a</span>
                                    <em>|</em>
                                    <span>2023-01-06</span>
                                </div>
                                <div class="multi-review-content">
                                    "창피하지만 일단 해봅니다"그동안 창피함 때문에 많은 걸 포기해왔던 내게 꼭 필요한 말이었다! 책을 읽으면 읽을수록 너무 공감되는 내용이 많아서
                                    웃기다가도, 그만큼 내가 지금까지 창피함으로 인해 많은 걸 놓치고 살았다는 걸 알게 되는 것 같아서 좀 씁쓸했다..ㅎㅎ책에 나오는 창피함 극복 솔루션
                                    중,&lt;강연이나 세미나를 들을 땐 제일 앞자리에 앉아라&gt;...
                                </div>
                                <div class="multi-review-recommend">
                                    <div class="review-recommend-left">
                                        <strong>1명</strong>이 이 리뷰를 추천합니다
                                    </div>
                                    <div class="review-recommend-right">
                                        <div class="review-recommend-comment">댓글</div>
                                        <div class="review-recommend-heart">
                                            <img alt="heart" src="img/sub/8725993_heart_sign_icon.png">
                                            <span>1</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="user-multi-review-pagebar">
                                <div class="review-pagebar-left">
                                    <span>&lt;&lt;</span>
                                    <span>&lt;</span>
                                    <span>1</span>
                                    <span>2</span>
                                    <span>3</span>
                                    <span>4</span>
                                    <span>5</span>
                                    <span>6</span>
                                    <span>7</span>
                                    <span>&gt;</span>
                                    <span>&gt;&gt;</span>
                                </div>
                                <div class="review-pagebar-right">
                                    <span>최근순</span>
                                    |
                                    <span>추천순</span>
                                    |
                                    <span>별점순</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- 하단 회원리뷰 영역 끝 -->
                <hr>
                <!-- 하단 분야 연관 책 영역 시작 -->
                <div class="lower-buy-related">
                    <div class="related-title">
                        <h3>이 책을 구입하신 분들이 산 </h3>
                        <h4> 분야 연관 책</h4>
                    </div>
                    <div class="related-num">
                        <h6>1/4</h6>
                    </div>
                    <div class="related-button">
                        <div class="related-prev">&lt;</div>
                        <div class="related-next">&gt;</div>
                    </div>
                    <div class="related-main">
                        <ul>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                        </ul>
                    </div>
                    <div class="related-main">
                        <ul>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                        </ul>
                    </div>
                    <div class="related-main">
                        <ul>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                        </ul>
                    </div>
                    <div class="related-main">
                        <ul>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                            <li class="related-main-li related-page-1"><a href="#">
                                <div class="related-main-img">
                                </div>
                                <div class="related-main-text">
                                </div>
                            </a></li>
                        </ul>
                    </div>
                </div>
                <!-- 하단 분야 연관 책 영역 끝 -->
                <hr>
                <!-- 하단 배송/교환/환불 안내 영역 시작 -->
                <div class="lower-delivery">
                    <div class="del-ref-title">
                        <h3>배송/환불/교환 안내</h3>
                    </div>
                    <div class="delivery-title">
                        <h4>배송 안내</h4>
                    </div>
                    <div class="delivery-main">
                        <table class="del-ref-table">
                            <colgroup>
                                <col width="170px">
                                <col width="*">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th>
                                        배송 구분
                                    </th>
                                    <td>
                                        <p>예스24 배송</p>
                                        <p>● 배송비 : 2,500원</p>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        포장 안내
                                    </th>
                                    <td>
                                        <p style="font-weight: 700;">
                                            안전하고 정확한 포장을 위해 CCTV를 설치하여 운영하고 있습니다.
                                        </p>
                                        <p>
                                            고객님께 배송되는 모든 상품을 CCTV로 녹화하고 있으며, 철저한 모니터링을 통해 작업 과정에 문제가 없도록 최선을 다 하겠습니다.
                                        </p>
                                        <p>
                                            목적 : 안전한 포장 관리<br>
                                            촬영범위 : 박스 포장 작업
                                        </p>
                                        <div class="delivery-table-img">
                                            <img alt="deliveryImg" src="img/sub/thumb_deli01.jpg">
                                            <img alt="deliveryImg" src="img/sub/thumb_deli02.jpg">
                                            <img alt="deliveryImg" src="img/sub/thumb_deli03.jpg">
                                            <img alt="deliveryImg" src="img/sub/thumb_deli04.jpg">
                                        </div>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <div class="refund-title">
                        <h4>반품/교환 안내</h4>
                        <h5>※ 상품 설명에 반품/교환과 관련한 안내가 있는경우 아래 내용보다 우선합니다. (업체 사정에 따라 달라질 수 있습니다)</h5>
                    </div>
                    <div class="refund-main">
                        <table class="del-ref-table">
                            <colgroup>
                                <col width="170px">
                                <col width="*">
                            </colgroup>
                            <tbody>
                                <tr>
                                    <th>
                                        반품/교환 방법
                                    </th>
                                    <td>
                                        <p>● 마이페이지 > <a href="#">반품/교환 신청 및 조회</a>, <a href="#">1:1 문의</a>,
                                            고객만족센터(1544-3800), 중고샵(1566-4295)</p>
                                        <p>● 판매자 배송 상품은 판매자와 반품/교환이 협의된 상품에 한해 가능합니다.</p>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        반품/교환 가능시간
                                    </th>
                                    <td>
                                        <p>● 출고 완료 후 10일 이내의 주문 상품</p>
                                        <p>● 디지털 콘텐츠인 eBook의 경우 구매 후 7일 이내의 상품</p>
                                        <p>● 중고상품의 경우 출고 완료일로부터 6일 이내의 상품 (구매확정 전 상태)</p>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        반품/교환 비용
                                    </th>
                                    <td>
                                        <p>● 고객의 단순변심 및 착오구매일 경우 반송비용은 고객 부담임</p>
                                        <p>● 직수입양서/직수입일서중 일부는 변심 또는 착오로 취소시 해외주문취소수수료 20%를 부과할 수 있음</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;단, 아래의 주문/취소 조건인 경우, 취소 수수료 면제</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;- 오늘 00시 ~ 06시 30분 주문을 익일 오전 06시 30분 이전에 취소</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;- 오늘 06시 30분 이후 주문을 익일 오전 06시 30분 이전에 취소</p>
                                        <p>● 직수입 음반/영상물/기프트 중 일부는 변심 또는 착오로 취소 시 해외주문취소수수료 30%를 부과할 수 있음</p>
                                        <p>&nbsp;&nbsp;&nbsp;&nbsp;단, 당일 00시 ~ 13시 사이의 주문은 취소 수수료 면제</p>
                                        <p>● 박스 포장은 택배 배송이 가능한 규격과 무게를 준수하며, 고객의 단순변심 및 착오구매일 경우 상품의 반송비용은 박스 당 부과됩니다.
                                        </p>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        반품/교환 불가사유
                                    </th>
                                    <td>
                                        <p>● 소비자의 책임 있는 사유로 상품 등이 손실 또는 훼손된 경우</p>
                                        <p>● 소비자의 사용, 포장 새봉에 의해 상품 등의 가치가 현저히 감소한 경우 : 예) 화장품, 식품, 가전제품, 전자책 단말기 등</p>
                                        <p>● 복제가 가능한 상품 등의 포장을 훼손한 경우 : 예) CD/LP, DVD/Blu-ray, 소프트웨어, 만화책, 잡지, 영상 화보집
                                        </p>
                                        <p>● 소비자의 요청에 따라 개별적으로 주문 제작되는 상품의 경우</p>
                                        <p style="font-weight: bold;">● 디지털 컨텐츠인 eBook, 오디오북 등을 1회 이상 다운로드를 받았을 경우</p>
                                        <p>● eBook 대여 상품은 대여 기간이 종료 되거나, 2회 이상 대여했을 경우 취소 불가</p>
                                        <p>● 중고상품이 구매확정(자동 구매확정은 출고완료일로부터 7일)된 경우</p>
                                        <p>● LP상품의 재생 불량 원인이 기기의 사양 및 문제인 경우 (All-in-One 일체형 일부 보급형 오디오 모델 사용 등)</p>
                                        <p>● 시간의 경과에 의해 재판매가 곤란한 정도로 가치가 현저히 감소한 경우</p>
                                        <p>● 전자상거래 등에서의 소비자보호에 관한 법률이 정하는 소비자 청약철회 제한 내용에 해당되는 경우</p>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        소비자 피해보상
                                    </th>
                                    <td>
                                        <p>● 상품의 불량에 의한 반품, 교환, A/S, 환불, 품질보증 및 피해보상 등에 관한 사항은 소비자분쟁해결기준(공정거래위원회 고시)에
                                            준하여 처리됨</p>
                                    </td>
                                </tr>
                                <tr>
                                    <th>
                                        환불 지연에 따른 배상
                                    </th>
                                    <td>
                                        <p>● 대금 환불 및 환불 지연에 따른 배상금 지급 조건, 절차 등은 전자상거래 등에서의 소비자 보호에 관한 법률에 따라 처리</p>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
                <hr>
                <!-- 하단 배송/교환/환불 안내 영역 끝 -->
            </div>
        </div>
    </div>
    <!-- 하단 서브 영역 끝 -->
    <hr>
    <!-- footer 영역 시작 -->
    <footer>
        <div id="footer">
            <div id="footer-top">
                <div id="footer-top-left">
                    <ul>
                        <li><a href="#">회사소개</a></li>
                        <li><a href="#">인재채용</a></li>
                        <li><a href="#">이용약관</a></li>
                        <li id="private-information"><a href="#"><strong>개인정보처리방침</strong></a></li>
                        <li><a href="#">청소년보호정책</a></li>
                        <li><a href="#">도서홍보안내</a></li>
                        <li><a href="#">광고안내</a></li>
                        <li><a href="#">제휴안내</a></li>
                        <li><a href="#">복지제휴</a></li>
                        <li><a href="#">매장안내</a></li>
                    </ul>
                </div>
                <div id="footer-top-right">
                    <div id="footer-top-right-sns">
                        <ul>
                            <li class="sns"><a href="#"><img alt="kakaotalk"
                                        src="img/172556_speech_bubble_icon.png"></a></li>
                            <li class="sns"><a href="#"><img alt="facebook"
                                        src="img/107153_circle_facebook_icon.png"></a></li>
                            <li class="sns"><a href="#"><img alt="twitter" src="img/104461_twitter_icon.png"></a></li>
                            <li class="sns_in"><a href="#"><img alt="instagram"
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
                                서울시 영등포구 은행로 11, 5층~6층(여의도동,일신빌딩)<br>
                                대표 : 김석환, 최세라 개인정보보호책임자 : 권민석 yes24help@yes24.com<br>
                                사업자등록번호 : 229-81-37000 통신판매업신고 : 제 2005-02682호 <a href="#" style="color:#666;">사업자
                                    정보확인</a><br>
                                호스팅 서비스사업자 : 예스이십사(주)<br>
                                Copyright ⓒ YES24 Corp. All Rights Reserved.
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
                                        <span class="cc-name">도서/음반</span>
                                        <span class="cc-phone">1544-3800</span>
                                    </p>
                                    <p>
                                        <span class="cc-name">중고샵</span>
                                        <span class="cc-phone">1566-4295</span>
                                    </p>
                                    <p>
                                        <span class="cc-name">티켓예매</span>
                                        <span class="cc-phone">1544-6399</span>
                                    </p>
                                    <p>
                                        <span class="cc-name"><a href="#">eBook 1:1 문의</a></span>
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
                    <img alt="sgi" src="img/sgi.png">
                    고객님은 안전거래를 위해 현금 등으로 결제 시 저희 쇼핑몰에서 가입한 구매안전서비스를 이용하실 수 있습니다.
                    <a href="#" id="ser">서비스가입사실 확인</a>
                </p>
            </div>
        </div>
    </footer>
    <!-- footer 영역 끝 -->
</body>

</html>