<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>YES24 회원가입</title>
<script type="text/javascript" src="js/member.js"></script>
<link type="text/css" rel="stylesheet" href="css/reset.css">
<link type="text/css" rel="stylesheet" href="css/common.css">
<link type="text/css" rel="stylesheet" href="css/member.css">
</head>
<body>
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

<div id="loginJoin">
	<div class="loginJoinDiv">
		<div class="JoinDivTitle">
			<h1>회원가입</h1>
		</div>
		<div class=JoinDivForm>
			<form method="POST" action="join.do" name="frm">
				<dl>
					<dt>아이디</dt>
					<dd><input type="text" name="userid" size="20" class="joinInput" placeholder="4 ~ 20자리"></dd>
					<dt><input type="button" value="중복 체크" onclick="idCheck()"> </dt>
					<dd><input type="hidden" name="reid" size="20"></dd>
					<dt>비밀번호</dt>
					<dd><input type="password" name="pwd" size="20" class="joinInput" placeholder="비밀번호를 입력하세요"></dd>
					<dt>비밀번호 확인</dt>
					<dd><input type="password" name="pwd_check" size="20" class="joinInput" placeholder="비밀번호와 동일하게 입력하세요"></dd>
					<dt>이름</dt>
					<dd><input type="text" name="name" size="20" class="joinInput"></dd>
					<dt>이메일</dt>
					<dd><input type="text" name="email" size="50" class="joinInput"></dd>
					<dt>전화번호</dt>
					<dd><input type="text" name="phone" size="13" class="joinInput"></dd>
					<dt>등급</dt>
					<dd>
						<input type="radio" name="admin" value="0" checked="checked" class="joinRadio"> 일반회원
						<input type="radio" name="admin" value="1" class="joinRadio"> 관리자
					</dd>
					
				</dl>
				<input type="submit" value="가입 완료" onclick="return joinCheck()" class="joinSubmit">
			</form>
		</div>
	</div>
</div>

<div id="loginFooter">
		<div style="padding-top: 10px;">
			<img alt="loginFooterAD" src="img/member/bn_login_n_960x60.gif" style="width: 960px; height: 60px;"> 
		</div>
		<div style="text-align: center; font-size: 12px; color: #666; padding: 10px 0;">
			<p>
			 Copyright © YES24 Corp. All Rights Reserved.
			</p>
		</div>
	</div>
</body>
</html>