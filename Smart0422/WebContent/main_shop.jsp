<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="Smart.SmartDAO, SmartDTO.AgencyDTO, java.util.Vector" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/shopMain.css">
    <link rel="stylesheet" href="css/mainNav.css">
    <title>Smart Main</title>
</head>
<body>
    <div class="modal">
        </div>
        <div class="pop_con">
           <div class="center">
                <div class="popBase">
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            학교주관 구매제
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">학교주관 구매제란
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">왜 스마트인가
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">스마트 신제품
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">교복관리 TIPS
                            </a></li>
                        </ul>
                    </div>
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            스마트 스타일
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">소년 스타일
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">소녀 스타일
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">스타일링 아이템
                            </a></li>
                        </ul>
                    </div>
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            학교주관 구매제
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">2020 스마트 화보
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">2020 소년 룩북
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">2020 소녀 룩북
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">화보 갤러리
                            </a></li>
                        </ul>
                    </div>
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            스마트 TV
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">채널 스마트
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">스마트 필름
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">온에어
                            </a></li>
                        </ul>
                    </div>
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            학교주관 구매제
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">스마트 플레이
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">이벤트
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">월페이퍼
                            </a></li>
                        </ul>
                    </div>
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            학교주관 구매제
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">매장/고객센터
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">매장찾기
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">고객문의
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">업무 제휴문의
                            </a></li>
                        </ul>
                    </div>
                    <div class="popTitle2">브랜드</div>
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            S'FD 소개
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">S'FD 회사소개
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">CI
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">인재채용
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">복리후생
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">리틀스마트
                            </a></li>
                        </ul>
                    </div>
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            스마트 소개
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">스마트소개
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">수상연혁
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">사회공헌
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">글로벌 네트워크
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">언론보도
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">모델 히스토라
                            </a></li>
                        </ul>
                    </div>
                </div>
                
           </div>
            <div class="mSNS">
                <a href="http://www.facebook.com">
                    <img src="img/icon_facebook.png">
                </a>
                <a href="http://www.facebook.com">
                    <img src="img/ico_youtube.png">
                </a>
                <a href="http://www.facebook.com">
                    <img src="img/ico_twitter.png">
                </a>
                <a href="http://www.facebook.com">
                    <img src="img/ico_story.png">
                </a>
                <a href="http://www.facebook.com">
                    <img src="img/ico_nblog.png">
                </a>
                <a href="http://www.facebook.com">
                    <img src="img/ico_instargram.png">
                </a>
            </div>
        </div>

        
        <nav>
            <div class="navLeft">
               
               <a class="btnPop" href="javascript:">
                   <span>
                    ME<br>
                    NU
                    </span>
               </a>
               <button class="pop_close">X</button>
               
            </div>
            <div class="navCenter">
                <a href="main.html">
                    <img class="logoImg" src="img/logo.png">
                </a>
            </div>
            <div class="navRight">
                <div class="rightMenubar">
                    <a href="#">학교주관구매</a>
                    <a href="#">스마트스타일</a>
                    <a href="#">매장/고객센터</a>
                </div>
                <a href="script:" onclick="MmenuView()">
                   <div class="rightMenubarMobile">
                        <i class="fa fa-bars"></i>
                    </div>	
                    <div class="MmenuView">
                        <a  class="MmenuViewList" href="#">학교주관구매
                        </a>
                        <a  class="MmenuViewList" href="#">스마트스타일
                        </a>
                        <a  class="MmenuViewList" href="#">매장/고객센터
                        </a>
                    </div>
                </a>
                
                
            </div>
        </nav>
   
    <div class="base">
       <div class="wrap">
          <div class="top_img">
            <div class="t_img"><img src="img/main_topbanner.png"></div>
          </div>

          <div class="main_menu"> 
            <div class="menu">
                <div class="sub_menu">
                
                   <a href="about_shop.do">매장찾기</a>
                   
                   <div class="sub_menu2"></div>
                </div>
                <div class="sub_menu">
                   <a href="about_shop.do">고객문의</a>
                    <div class="sub_menu2"></div>
                </div>
                
                <div class="sub_menu">
                   <a href="html/shop/partnership_shop.jsp">업무 제휴문의</a>
                    <div class="sub_menu2"></div>
                </div>
                
                <div class="sub_menu">
                   <a href="html/shop/agency_shop.jsp">대리점 개설문의</a>
                    <div class="sub_menu2"></div>
                </div>
                
                <div class="sub_menu">
                   <a href="html/shop/faq.jsp">FAQ</a>
                    <div class="sub_menu2"></div>
                </div>
                
                  <div class="sub_menu">
                   <a href="wirtepage.html">자유게시판</a>
                    <div class="sub_menu2"></div>
                  </div>
                
            </div>
        </div>
       
        <div class="main_font">
            <div class="m_font">
                전국의 SMART 학생복 매장을<br>한 눈에 찾아 보실 수 있습니다.
            </div>
        </div>  
        
        <div class="search">
            <div class="search_menu">
                <div class="se_font">지역 및 학교검색</div>
                <select id="city_select" >
                    <option value="default">시도 선택</option>
                    <option value="seoul">서울특별시</option>
                    <option value="gangwondo">강원도</option>
                    <option value="gwangju">광주광역시</option>
                    <option value="jeolnam">전라남도</option>
                    <option value="jeolbuk">전라북도</option>
                    <option value="daegu">대구광역시</option>
                    <option value="gyeongbuk">경상북도</option>
                    <option value="gyenonggi">경기도</option>
                    <option value="sejoing">세종특별자치시</option>
                    <option value="daejeon">대전광역시</option>
                    <option value="chungnam">충청남도</option>
                    <option value="chungbuk">충청북도</option>
                    <option value="incheon">인천광역시</option>
                    <option value="busan">부산광역시</option>
                    <option value="gyeongnam">경상남도</option>
                    <option value="ulsan">울산광역시</option>
                    <option value="jeju">제주특별자치도</option>
                </select>
                <select id="government">
                    <option value="default">시도 선택</option>
                </select>
                    <input type="text" value="학교명 검색"onclick="this.value='';" style="opacity: 0.5">
                    
                <div class="search_btn">
                    <button class="ser_btn">매장 검색하기</button>
                </div>
            </div>          
        </div><!--search end-->
            <div class="middle">
                <div class="Map">
					<div class="mapCon">
						<!-- <img src="../images/img/img_cscenter_map_00.png" alt="" class="basicMap" /> -->
						<ul>
							<li style="display: block"><img src="img/map_main.png" alt="" usemap="#mapHover" id="map00" class="mp"/></li>
							<li style="display: none"><img src="img/map_incheon.png" alt="인천광역시" usemap="#mapHover" id="map01" class="mp" /></li>
							<li style="display: none"><img src="img/map_incheon.png" alt="인천광역시" usemap="#mapHover" class="mp"/></li>
							<li style="display: none"><img src="img/map_jeju.png" alt="제주특별자치도" usemap="#mapHover" id="map02" class="mp"/></li>
							<li style="display: none"><img src="img/map_gwangju.jpg" alt="광주광역시" usemap="#mapHover" id="map03" class="mp"/></li>
							<li style="display: none"><img src="img/map_jeolnam.png" alt="전라남도" usemap="#mapHover" id="map04" class="mp"/></li>
							<li style="display: none"><img src="img/map_busan.png" alt="부산광역시" usemap="#mapHover" id="map05" class="mp"/></li>
							<li style="display: none"><img src="img/map_ulsan.png" alt="울산광역시" usemap="#mapHover" id="map06" class="mp"/></li>
							<li style="display: none"><img src="img/map_daegu.png" alt="대구광역시" usemap="#mapHover" id="map07" class="mp"/></li>
							<li style="display: none"><img src="img/map_gyeongnam.png" alt="경상남도" usemap="#mapHover" id="map08" class="mp"/></li>
							<li style="display: none"><img src="img/map_jeolbukdo.png" alt="전라북도" usemap="#mapHover" id="map09" class="mp"/></li>
							<li style="display: none"><img src="img/map_gyeongbuk.png" alt="경상북도" usemap="#mapHover" id="map10" class="mp"/></li>
							<li style="display: none"><img src="img/map_chungbuk.png" alt="충청북도" usemap="#mapHover" id="map11" class="mp"/></li>
							<li style="display: none"><img src="img/map_daejeon.png" alt="대전광역시" usemap="#mapHover" id="map12" class="mp"/></li>
							<li style="display: none"><img src="img/map_sejong.png" alt="세종특별자치시" usemap="#mapHover" id="map13" class="mp"/></li>
							<li style="display: none"><img src="img/map_chungnam.png" alt="충청남도" usemap="#mapHover" id="map14" class="mp"/></li>
							<li style="display: none"><img src="img/map_Seoul.png" alt="서울특별시" usemap="#mapHover" id="map15" class="mp"/></li>
							<li style="display: none"><img src="img/map_gyeonggi.png" alt="경기도" usemap="#mapHover" id="map16" class="mp"/></li>
							<li style="display: none"><img src="img/map_gangwon-do.png" alt="강원도" usemap="#mapHover" id="map17" class="mp"/></li>
						</ul>
						<map name="mapHover" id="mapHover">
							 <area shape="poly" coords="270,218,268,229,268,234,272,240,274,275,256,322,244,334,224,353,214,370,193,380,143,383,108,402,97,408,84,414,50,412,40,394,20,400,16,380,18,335,32,309,28,257,31,196,19,164,36,136,42,106,28,74,44,66,54,66,67,39,94,22,119,19,160,17,182,9,200,13,217,40,235,67,253,94,263,118,270,142,274,109,272,40,270,8,134,4,52,10,6,6,4,463,23,462,35,438,60,434,87,432,92,450,81,464,271,464,278,152,272,156,268,218">
							<area shape="poly" coords="45,73,41,82,45,85,45,89,43,93,48,93,52,92,54,88,53,82,50,77,44,75" href="?search=인천광역시" alt="인천광역시">
							<area shape="poly" coords="53,104,57,102,60,104,63,100,68,99,71,102,72,106,74,111,69,114,63,113,54,106,53,104" href="?search=인천광역시" alt="인천광역시">
							<area shape="poly" coords="38,466,34,467,29,463,27,456,33,447,41,442,53,439,56,437,62,436,70,435,75,435,79,439,84,442,86,445,85,450,81,454,79,458,75,462,68,464,59,466,48,467,43,465,39,465" href="?search=제주" alt="제주특별자치도">
							<area shape="poly" coords="67,324,66,317,71,313,75,311,81,312,88,315,94,319,89,325,85,328,75,330,66,323" href="?search=광주광역시" alt="광주광역시">
							<area shape="poly" coords="70,328,73,330,80,332,90,328,93,323,97,318,92,314,82,309,75,309,69,311,64,315,62,320,55,321,48,323,45,321,39,313,38,310,44,303,47,301,55,299,54,304,61,305,66,303,71,300,74,298,76,295,84,294,86,296,88,299,93,301,96,307,100,308,103,308,109,309,118,309,122,309,125,305,132,306,134,313,136,319,139,327,143,332,144,336,137,339,133,341,136,347,141,346,145,351,143,356,137,357,135,362,130,363,133,357,130,351,124,344,121,348,118,354,120,360,125,366,125,369,117,372,117,376,111,379,106,378,103,374,99,375,102,369,107,369,108,358,102,361,98,362,91,367,87,372,86,377,83,380,76,381,74,378,68,380,64,385,61,389,59,392,53,391,50,388,50,377,47,375,41,371,39,364,34,359,36,355,42,348,44,342,44,335,42,331,35,329,33,326,36,321,42,326,51,325,60,325,65,324,67,326" href="?search=전라남도" alt="전라남도">
							<area shape="poly" coords="253,302,246,305,244,309,240,312,238,314,234,318,231,320,229,322,234,325,237,327,240,323,244,320,248,318,254,317,256,309,256,307,253,303" href="?search=부산광역시" alt="부산광역시">
							<area shape="poly" coords="251,296,247,290,239,287,237,284,240,280,244,277,245,274,253,273,256,277,260,278,266,278,271,279,270,286,266,290,263,293,262,300,260,302,257,302,254,298" href="?search=울산광역시" alt="울산광역시">
							<area shape="poly" coords="193,278,199,277,201,273,201,270,204,268,210,268,211,264,215,258,216,254,218,248,216,243,207,242,203,242,202,248,197,250,194,251,193,257,194,263,191,267,193,269,191,271,191,273,191,278" href="?search=대구광역시" alt="대구광역시">
							<area shape="poly" coords="148,336,146,330,143,326,143,322,139,317,138,312,137,306,138,301,141,296,140,292,139,287,137,283,141,276,143,270,146,264,151,258,155,255,159,258,164,261,172,265,173,266,174,267,177,274,180,278,182,278,187,278,191,280,195,281,199,281,206,281,209,283,217,284,221,285,226,283,228,280,232,280,233,282,233,285,237,288,239,290,244,292,247,296,248,299,246,303,242,306,236,309,232,313,230,316,225,320,221,322,214,324,209,320,203,321,201,324,195,326,198,330,195,335,195,337,195,341,195,349,192,351,189,345,181,340,176,339,172,340,167,338,168,345,168,351,166,357,156,358,152,352,149,347,152,342,147,336" href="?search=경상남도" alt="경상남도">
							<area shape="poly" coords="46,295,48,289,53,285,61,281,51,278,51,274,58,269,61,265,62,260,63,251,61,245,72,242,79,236,88,234,94,234,98,236,109,234,113,234,115,239,121,244,125,244,130,243,135,243,138,244,147,244,150,244,155,245,155,250,152,254,146,257,141,261,138,267,136,271,136,273,134,277,133,281,133,284,137,289,137,291,136,297,134,300,131,301,120,299,108,302,101,303,97,299,92,295,84,291,77,289,72,293,69,297,63,299,58,299,54,295,50,295,46,295" href="?search=전라북도" alt="전라북도">
							<area shape="poly" coords="188,274,180,274,178,270,177,266,172,260,166,257,159,253,158,246,159,237,162,232,164,227,166,223,160,219,154,218,153,216,153,210,153,202,155,197,154,193,156,184,161,180,167,181,168,178,170,172,179,169,182,169,187,173,193,172,197,169,197,165,199,158,209,153,210,151,218,150,220,146,225,144,227,146,234,149,241,151,244,152,244,161,246,164,252,169,256,169,258,176,257,184,265,186,267,189,269,198,269,205,266,212,262,220,264,228,266,234,268,240,274,239,278,243,277,251,275,258,271,267,270,272,263,274,257,274,251,269,245,272,238,275,231,277,223,275,220,278,211,278,205,275,209,272,217,264,219,257,221,246,218,240,212,239,205,239,198,242,192,246,190,256,189,263,188,269,186,272" href="?search=경상북도" alt="경상북도">
							<area shape="poly" coords="159,227,158,233,156,237,150,238,143,239,135,237,131,230,125,220,126,213,128,206,126,203,121,199,117,196,114,189,110,186,111,181,115,174,116,169,114,165,112,163,122,159,122,155,125,151,132,140,147,137,152,140,158,132,165,133,166,135,175,134,182,134,184,137,183,140,189,143,191,142,194,145,199,146,205,148,208,148,197,153,192,159,193,166,191,169,183,166,178,165,167,168,162,172,157,176,152,181,148,186,148,194,146,204,147,212,149,219,153,222,160,225" href="?search=충청북도" alt="충청북도">
							<area shape="poly" coords="113,202,113,208,111,215,113,220,117,219,118,223,121,223,121,219,123,214,125,208,122,205,117,202,113,202" href="?search=대전광역시" alt="대전광역시">
							<area shape="poly" coords="101,180,102,185,101,190,102,196,102,199,104,201,104,206,107,210,109,211,110,202,113,196,111,192,107,188,106,184,106,181,101,178" href="?search=세종특별자치시" alt="세종특별자치시">
							<area shape="poly" coords="108,163,110,167,111,170,112,174,108,178,102,177,98,177,97,184,99,191,99,197,100,204,103,208,105,214,109,218,110,222,115,223,120,228,123,226,126,228,129,234,130,238,123,241,118,236,112,230,105,231,100,231,92,230,76,231,75,234,73,236,63,237,57,230,55,227,55,219,54,213,54,206,52,202,49,189,53,186,47,176,44,180,37,180,33,178,28,175,26,173,24,172,29,163,33,161,37,155,41,161,45,155,40,154,46,150,49,154,52,149,54,147,60,149,62,153,66,151,72,153,75,157,77,162,81,164,82,161,87,161,97,161,98,160,103,161,104,162,110,163" href="?search=충청남도" alt="충청남도">
							<area shape="poly" coords="77,99,82,98,83,95,83,92,91,92,91,89,95,88,98,93,98,96,96,98,102,99,101,101,99,104,100,107,96,109,89,110,87,108,81,109,80,107,77,105,76,99" href="?search=서울특별시" alt="서울특별시">
							<area shape="poly" coords="59,91,56,85,56,79,61,79,66,75,68,69,75,61,80,56,84,51,87,44,88,41,94,46,105,49,107,49,113,51,118,51,121,52,122,59,125,66,128,66,134,68,134,72,129,75,127,82,125,8,128,95,132,97,136,99,142,101,148,103,146,106,144,111,126,146,120,150,117,155,113,157,102,157,95,155,84,155,73,148,73,139,70,133,67,137,65,135,67,129,75,125,75,121,70,118,75,115,75,108,78,109,84,112,90,114,96,110,102,108,105,103,105,98,101,93,99,87,94,85,88,87,83,90,78,92,76,96,75,100,75,104,71,99,66,96,63,95,58,92" href="?search=경기도" alt="경기도">
							<area shape="poly" coords="92,36,96,39,101,46,108,46,114,48,125,51,126,54,126,61,132,63,139,68,139,73,134,77,131,81,130,87,131,92,136,95,143,97,148,99,150,102,150,107,136,137,146,135,150,136,159,132,166,130,171,131,179,131,183,133,186,134,193,138,197,141,202,143,205,143,212,147,216,146,219,143,234,142,238,146,245,147,247,156,247,163,253,165,262,170,260,179,266,182,270,180,271,174,270,166,268,157,267,145,263,134,245,101,239,87,224,66,206,43,193,6,190,2,186,3,185,12,175,25,166,27,153,27,147,26,140,27,133,27,127,29,119,27,115,26,108,27,100,28,92,35" href="?search=강원도" alt="강원도">
						</map>
                    </div>
                 <div class="table_view">
                    <table class="table_view_sub">
                       
                        <tr>
                            <th>매장명 </th>
                            <th>주소 </th>
                            <th>전화번호</th>
                            <th>자세히 보기</th>
                        </tr>
                        <!-- <tr class="mem_info">
                            <td>영월</td>
                            <td>강원 영월군 영월읍 중앙1로 34 (하송리) 스마트 영월점</td>
                            <td>033-373-4455</td>
                            <td><img src="../img/icon_navigate.png"></td>
                        </tr> -->
                        <% 
                        
                        
                        SmartDAO dao = new SmartDAO();
                        
                       	String tempSearch = request.getParameter("search"); // 검색 결과
                       	
                       	int count = 0;
                       	String tempStart = "";
                       	if(tempSearch!=null){
                       		count = dao.selectCntWhere("shop", tempSearch); // 지역별 검색
                       		
                       	} else {
                       		count = dao.selectCnt("shop"); // 전체행 갯수
                       	}
                       	tempStart = request.getParameter("page");
                       	int pageInt = 1;
                       	if(tempStart!=null){
                       		pageInt = Integer.parseInt(request.getParameter("page")); // 이전페이지, 다음페이지 끝 script 확인용
                       	}
                       	
                		
                		// 현재 페이지를 받아옴 
                		int startPage = 0; // limit의 시작값 -> 첫 limit 0,10
                		int onePageCnt = 10; // 한페이지에 출력할 행의 갯수
                		
                		count = (int)Math.ceil((double)count/(double)onePageCnt);
                		// 페이지 수 저장
                		
                		int currentPage = 1;
						int prePage = 1;
						int nextPage = 2;
                		if(tempStart != null){ // 처음에는 실행되지 않는다.
                			startPage = (Integer.parseInt(tempStart)-1)*onePageCnt;
                			currentPage = Integer.parseInt(tempStart);
                			prePage = Integer.parseInt(tempStart)-1;
                			nextPage = Integer.parseInt(tempStart)+1;
                			if(nextPage<=0){
                				nextPage = 0;
                			} else if(nextPage==count) {
                				nextPage = count;
                			}
                		} else {
                			
                		}
                		
                		Vector<AgencyDTO> v = null;
                		if(tempSearch!=null){
                			v = dao.selectPageWhere("shop", startPage, onePageCnt, tempSearch);
                		} else {
                			v = dao.selectPage("shop", startPage, onePageCnt);
                		}
                		
                        
                        for(int i=0; i<v.size(); i++){ %>
                        <tr class="mem_info" style='border: 1px solid black'>
                        	<td><%=v.get(i).getName() %></td>
                            <td><%=v.get(i).getAddress() %></td>
                            <td><%=v.get(i).getTel() %></td>
                            <td><img src="img/icon_navigate.png"></td>
                        </tr>
                        	
                       <%}
                        %>
                        
                    </table>
                </div>      
            </div>
            
            <script>
            	$('.ser_btn').click(function(){
            		var temp = $('#city_select').val();
            		if(temp=="default"){
            			alert("지역을 선택하세요.");
            		}else if(temp=="seoul"){
            			location.href="main_shop.do?search=서울";
            		}else if(temp=="gangwondo"){
            			location.href="main_shop.do?search=강원도";
            		}else if(temp=="gwangju"){
            			location.href="main_shop.do?search=광주";
            		}else if(temp=="jeolnam"){
            			location.href="main_shop.do?search=전라남도";
            		}else if(temp=="jeolbuk"){
            			location.href="main_shop.do?search=전라북도";
            		}else if(temp=="daegu"){
            			location.href="main_shop.do?search=대구";
            		}else if(temp=="gyeongbuk"){
            			location.href="main_shop.do?search=경상북도";
            		}else if(temp=="gyenonggi"){
            			location.href="main_shop.do?search=경기도";
            		}else if(temp=="sejoing"){
            			location.href="main_shop.do?search=세종";
            		}else if(temp=="daejeon"){
            			location.href="main_shop.do?search=대전";
            		}else if(temp=="chungnam"){
            			location.href="main_shop.do?search=충청남도";
            		}else if(temp=="chungbuk"){
            			location.href="main_shop.do?search=충청북도";
            		}else if(temp=="incheon"){
            			location.href="main_shop.do?search=인천";
            		}else if(temp=="busan"){
            			location.href="main_shop.do?search=부산";
            		}else if(temp=="gyeongnam"){
            			location.href="main_shop.do?search=경상남도";
            		}else if(temp=="ulsan"){
            			location.href="main_shop.do?search=울산";
            		}else if(temp=="jeju"){
            			location.href="main_shop.do?search=제주";
            		}
            	});
            	
            	<%-- $(function(){
            		var page = <%=pageInt%>;

            		alear(page);
            	}); --%>
            	

            	
            </script>     
               
            </div><!--middle end-->
            <div class="page">
                  <div class="page_btn">
                        <a href="?page=1"><img src="img/icon_firstpage.png"></a>
                        <a href="?page=<%=prePage%>&search=<%=tempSearch%>"><img src="img/icon_prevpage.png"></a>
                        <button><%=currentPage%>/<%=count%></button>
                        <a href="?page=<%=nextPage%>&search=<%=tempSearch%>"><img src="img/icon_nextpage.png"></a>
                        <a href="?page=<%=count%>&search=<%=tempSearch%>"><img src="img/icon_lastpage.png"></a>
                 </div>
            </div><!--page end-->
            <div class="bottom">
               <div class="bo_btn">
                    <a href="https://www.facebook.com/smartzzang"><div><img src="img/icon_c_facebook.png"></div></a>
                    <a href="https://twitter.com/smart_zzang"><div><img src="img/icon_c_tittwer.png"></div></a>
                    <a href="https://blog.naver.com/smartfnd"><div><img src="img/icon_c_naverblog.png"></div></a>
                    <a href="https://www.youtube.com/channel/UC9Pfm_o3Y3OgtpFXUIvsV7w?feature=watch"><div><img src="img/icon_c_youtube.png"></div></a>
                    <a href="https://www.instagram.com/ilovesmart/"><div><img src="img/icon_c_instargram.png"></div></a>
                    <a href="https://story.kakao.com/ch/smartfnd"><div><img src="img/icon_c_kakaostory.png"></div></a>
                </div>
                
                <div class="bo_font">
                    <div class="bo_l_font">
                        (주)스마트에프앤디<br>소비자상담실 080-900-3400
                    </div>
                    <div class="bo_c_font">
                        대표자 : 윤경석<br><p>등록번호 : 206-86-70883</p>
                    </div>
                    <div class="bo_r_font">
                        서울특별시 광진구 자양로 116<br>
                        대표번호 : 070-7492-0099
                    </div>
                </div>
                 <div class="bo_b_font">
                        COPYRIGHT @ 2020 S'FD. ALL RIGHTS RESERVED.
                    </div>
            </div>   
      </div>   
    </div>

    <script>
        $(".base").on("mousewheel", function(e) {
            var wheel = e.originalEvent.wheelDelta; 
            var sHeight = $(document).scrollTop();

            if(wheel>0){ // 스크롤 올렸을 때
                if(sHeight<120){
                    $("nav").css(
                        'background-color', 'rgba(255,255,255,0)'
                    );
                    $(".rightMenubar").css({
                        'border': '3px solid rgba(0,0,0,1)',
                        'box-shadow': '2px 2px 5px rgba(0, 0, 0, 0.2)'
                    }
                        
                    );
                }
            } else { // 스크롤 내렸을 때
                if(sHeight>=0){
                    $("nav").css(
                        'background-color', 'rgba(255,255,255,0.5)'
                    );
                    $(".rightMenubar").css({
                        'border': '3px solid rgba(0,0,0,0)',
                        'box-shadow': '2px 2px 5px rgba(0, 0, 0, 0)'
                    })
                }
            }
        });
		
        var MmenuFlag = 0;
		function MmenuView(){
            if(MmenuFlag==0){
                MmenuFlag = 1;
                $('.modal').fadeIn(100,function(){
                    $('.MmenuView').css('height', '120px');
                });   
            } else {
                MmenuFlag = 0;
                $('.modal').fadeOut(100,function(){
                    $('.MmenuView').css('height', '0px');
                });
            }
        }
        $('.modal').click(function(){
            if(MmenuFlag==1){
                MmenuFlag = 0;
                $('.modal').fadeOut(100,function(){
                    $('.MmenuView').css('height', '0px');
                });
            }
        });
		 $(".btnPop").click(function(){
            $(".modal").fadeIn(300, function(){
                popOpen();

            });
        });
        $(".pop_close").click(function(){
            $(".modal").fadeOut(300, function(){
                popClose();
            });

        });
        
        function popOpen(){
            $(".pop_con").fadeIn(500);
            $("body").css('overflow-y', 'hidden');
            $("nav").css('z-index', '10');
            $(".pop_close").css('display', 'block');
            $(".btnPop").css('display', 'none');
            $(".logoImg").attr('src', 'img/logo_on.png');
            $('.navLeft').css('border', '0px solid black');
            $('.rightMenubar').css('border', '3px solid white');
            $('.rightMenubar > a').css('color', 'white');
            $('.rightMenubarMobile').css('color', 'white');
            
        }
        function popClose(){
            $(".pop_con").fadeOut(500);
            $("body").css('overflow-y', 'scroll');
            $("nav").css('z-index', '10');
            $(".pop_close").css('display', 'none');
            $(".btnPop").css('display', 'block');
            $(".logoImg").attr('src', 'img/logo.png');
            $('.navLeft').css('border', '3px solid black');
            $('.rightMenubar').css('border', '3px solid black');
            $('.rightMenubar > a').css('color', 'black');
            $('.rightMenubarMobile').css('color', 'black');
        }
      

           
        $(function(){

    	    //지도
    $(".mapCon li:eq(0)").css('display','block');
    $("#mapHover area").each( function(){
       $(this).bind('mouseenter click', function(){
          var _index = $(this).index();
          $(".mapCon li").css("display","none");
          $(".mapCon li").eq(_index).css("display","block");
       });
    });

	$(window).bind('resize', function() {
	 $('map').imageMapResize();
	});

    $('map').imageMapResize();

	$(".selTwo .bdSboxInner").addClass("LocateStore");




});
   
       
        
    </script>
</body>
</html>