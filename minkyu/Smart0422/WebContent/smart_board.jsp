<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
    <%@page import="java.util.*" %>
    <%@page import="SmartDTO.*" %>
    <%@page import="Smart.*" %>
    <%@page import="java.text.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/mainNav.css" type="text/css">
    <link rel="stylesheet" href="css/writepage.css" type="text/css">

    
    
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<%
	
	session.getAttribute("id");
	String id = (String)session.getId();
	String str = (String)session.getAttribute("id");
	out.println(id);
	out.println(str);
	int a = 10;
	
	%>
	<div class="modal">
        </div>
        <div class="pop_con">
           <div class="center">
                <div class="popBase">
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            �б��ְ� ������
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">�б��ְ� ��������
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">�� ����Ʈ�ΰ�
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">����Ʈ ����ǰ
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">�������� TIPS
                            </a></li>
                        </ul>
                    </div>
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            ����Ʈ ��Ÿ��
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">�ҳ� ��Ÿ��
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">�ҳ� ��Ÿ��
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">��Ÿ�ϸ� ������
                            </a></li>
                        </ul>
                    </div>
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            �б��ְ� ������
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">2020 ����Ʈ ȭ��
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">2020 �ҳ� ���
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">2020 �ҳ� ���
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">ȭ�� ������
                            </a></li>
                        </ul>
                    </div>
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            ����Ʈ TV
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">ä�� ����Ʈ
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">����Ʈ �ʸ�
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">�¿���
                            </a></li>
                        </ul>
                    </div>
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            �б��ְ� ������
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">����Ʈ �÷���
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">�̺�Ʈ
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">��������
                            </a></li>
                        </ul>
                    </div>
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            �б��ְ� ������
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">����/������
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">����ã��
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">������
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">���� ���޹���
                            </a></li>
                        </ul>
                    </div>
                    <div class="popTitle2">�귣��</div>
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            S'FD �Ұ�
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">S'FD ȸ��Ұ�
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">CI
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">����ä��
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">�����Ļ�
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">��Ʋ����Ʈ
                            </a></li>
                        </ul>
                    </div>
                    <div class="popBox">
                       <a href="script:">
                          <div class="pTitle">
                            ����Ʈ �Ұ�
                            </div> 
                       </a>
                        <hr>
                        <ul class="popSub">
                            <li><a href="#">
                               <img src="img/navi_sub_a.png">����Ʈ�Ұ�
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">������
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">��ȸ����
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">�۷ι� ��Ʈ��ũ
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">��к���
                            </a></li>
                            <li><a href="#">
                                <img src="img/navi_sub_a.png">�� �������
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
                <a href="main.do">
                    <img class="logoImg" src="img/logo.png">
                </a>
            </div>
            <div class="navRight">
                <div class="rightMenubar">
                    <a href="#">�б��ְ�����</a>
                    <a href="#">����Ʈ��Ÿ��</a>
                    <a href="#">����/������</a>
                </div>
                <a href="script:" onclick="MmenuView()">
                   <div class="rightMenubarMobile">
                        <i class="fa fa-bars"></i>
                    </div>
                    <div class="MmenuView">
                        <a  class="MmenuViewList" href="#">�б��ְ�����
                        </a>
                        <a  class="MmenuViewList" href="#">����Ʈ��Ÿ��
                        </a>
                        <a  class="MmenuViewList" href="#">����/������
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
                   <a href="main_shop.html">����ã��</a>
                    <div class="sub_menu2"></div>
                </div>
                
                
                <div class="sub_menu">
                    <div class="sub_menu2"></div>
                    <a href="">������</a>
                    </div>
                
                <div class="sub_menu">
                   <a href="partnership_shop.html">���� ���޹���</a>
                    <div class="sub_menu2"></div>
                </div>
                
                <div class="sub_menu">
                   <a href="agency_shop.html">�븮�� ��������</a>
                    <div class="sub_menu2"></div>
                </div>
                
                <div class="sub_menu">
                   <a href="faq.html">FAQ</a>
                    <div class="sub_menu2"></div>
                </div>
                
                <div class="sub_menu">
                   <a href="">�����Խ���</a> 
                    <div class="sub_menu2"></div>
                  </div>
                
            </div>
        </div>
       
        <div class="main_font">
            <div class="m_font">
                ���� �Խ���
            </div>
 
              <input type="button" value="�۾���" class="writebtn" onclick="gowrite()">
            
        </div>  
        <div class="main_hr">
                <hr>   
        </div>  
        
        <div class="writeboard">
          <table class="writeboard_sub" style="border: 1px solid black; border-collapse: collapse;">
            <tr>
                <th>��ȣ</th> 
                <th>�ۼ���</th>
                <th>�ۼ���</th>  
                <th>����</th>             
                <th>��ȸ</th>
                <th>��� ��</th>
            </tr>
            <%	
	Vector<BoardDTO> board = (Vector<BoardDTO>)request.getAttribute("board");
                   
	for(int i=0;i<board.size();i++){
	SmartDAO dao = new SmartDAO();
	
	String from = board.get(i).getDate();
	SimpleDateFormat transFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
	Date to = transFormat.parse(from);
	
	%>
	<tr>
	<td><%=board.get(i).getIdx() %></td>
	<td><%=board.get(i).getNickname() %></td>
	<td><%=dao.calculateTime(to) %></td>
	<td onclick="viewList('<%=board.get(i).getIdx() %>')"><%=board.get(i).getTitle() %></td>
	<td><%=board.get(i).getViews() %></td>
	<td><%=dao.commentCount(Integer.parseInt(board.get(i).getIdx())) %></td>
	</tr>
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
                        (��)����Ʈ�����ص�<br>�Һ��ڻ��� 080-900-3400
                    </div>
                    <div class="bo_c_font">
                        ��ǥ�� : ���漮<br><p>��Ϲ�ȣ : 206-86-70883</p>
                    </div>
                    <div class="bo_r_font">
                        ����Ư���� ������ �ھ�� 116<br>
                        ��ǥ��ȣ : 070-7492-0099
                    </div>
                </div>
                 <div class="bo_b_font">
                        COPYRIGHT @ 2020 S'FD. ALL RIGHTS RESERVED.
                    </div>
            </div>  <!--bottom end--> 
      </div>  <!-- wrap end--> 
    </div><!-- base end-->

    <script>
        $(".base").on("mousewheel", function(e) {
            var wheel = e.originalEvent.wheelDelta; 
            var sHeight = $(document).scrollTop();

            if(wheel>0){ // ��ũ�� �÷��� ��
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
            } else { // ��ũ�� ������ ��
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
  
    /* 
        var uploadFile=$('.filebox' '.uploadBtn');
        uploadFile.on('change',function(){
            if(window.FileReader){
                var filename = $(this)[0].files[0].name;
           } else {
                var filename = $(this).val().split('/').pop().split('\\').pop();
           }
            $(this).siblings('.fileName').val(filename);
            });*/
            
	function gowrite() { //�۾��� 
         location.href="Board_AddPage.do"; 
	}
    function viewList(idx) { //�Խù� Ŭ��
		location.href="Board_ViewAction.do?idx="+idx;
	}       

          
    </script>
	


</body>
</html>