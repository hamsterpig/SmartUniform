<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
 <%@ page import ="java.util.*" %>
 <%@ page import ="SmartDTO.*" %>
 <%@ page import = "Smart.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
   <meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <link rel="stylesheet" href="css/manager_about.css">
    <title>관리자 고객문의</title>
</head>
<body>
   <nav>
        <div class="navLeft"></div>
        <div class="navCenter"></div>
        <div class="navRight"></div>
   </nav>
   
    <div class="base">
       <div class="wrap">
          <div class="top_img">
            <div class="t_img"><img src="img/main_topbanner.png"></div>
          </div>

          <div class="main_menu"> 
            <div class="menu">
                <div class="sub_menu">
                   <a href="manager_main.do">매장찾기</a>
                    <div class="sub_menu2"></div>
                </div>
                
                
                <div class="sub_menu">
                   <a href="">고객문의</a>
                    <div class="sub_menu2"></div>
                </div>
                
                <div class="sub_menu">
                   <a href="manager_partnership.do">업무 제휴문의</a>
                    <div class="sub_menu2"></div>
                </div>
                
                <div class="sub_menu">
                   <a href="manager_agency.do">대리점 개설문의</a>
                    <div class="sub_menu2"></div>
                </div>
                
            </div>
        </div>
       
        <div class="main_font">
            <div class="m_font">
                고객 문의 관리자 화면
                <%=session.getAttribute("id") %>
            </div>
        </div>  
        
        <div class="main_hr">
            <hr>
        </div>
        
        <div class="about_table">
            <table class="about_view">
                <tr>
                    <th></th><th>이름</th><th>전화번호</th><th>이메일</th><th>회사명</th><th>분류</th><th>제목</th><th>이미지</th><th>날짜</th>
                </tr>
                <%
                		System.out.println("1");
                		boolean isClient = false;
          			      SmartDAO dao  =new SmartDAO();
                		Vector<ManagerInquiryDTO> ve = (Vector<ManagerInquiryDTO>)request.getAttribute("inquiry");
                		for(int i=0; i<ve.size(); i++){
                			System.out.println("2");	
                			String type =ve.get(i).getType();
                        	String[] type_arr=type.split("@");
                        	
                
                        	if(type_arr[1].equals("client")){
                        		isClient = true;
                        	}else{
                        		isClient =false;
                        	}
                        	
                        	if(isClient){
                        		System.out.println("5");
                        		type_arr=ve.get(i).getType().split("@");
                        		String tmp =type_arr[0];
                        		%>
                        		  <tr onClick="clickfun('<%=ve.get(i).getIdx()%>')" style="cursor:pointer;" >
				                    <td><%=ve.get(i).getIdx() %></td>
				                    <td><%=ve.get(i).getId() %></td>
				                    <td><%=ve.get(i).getPhone() %></td>
				                    <td><%=ve.get(i).getEmail() %></td>
				                    <td><%=ve.get(i).getCompany() %></td>
				                    <td><%=ve.get(i).getAgency() %></td>
				                    <td><%=tmp%></td>
				                    <td><%=ve.get(i).getTitle() %>
				                    <td><%=ve.get(i).getContent() %>
				                    <td><%=ve.get(i).getOriginimg()%></td>
				                    <td><%=ve.get(i).getDate()%></td>
				                 
				                </tr>
                        		
                        	<% } %>
              
                <%} %>
            </table>
        </div>
        
       
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
                        'opacity', '0'
                    );
                }
            } else { // 스크롤 내렸을 때
                if(sHeight>=0){
                    $("nav").css(
                        'opacity', '0.5'
                    );
                }
            } 
        });


        function clickfun(idx){
     	   location.href="managerinquiry_view.do?idx="+idx;
        }

        
    </script>
</body>
</html>