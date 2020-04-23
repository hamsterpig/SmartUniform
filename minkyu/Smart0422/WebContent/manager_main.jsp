<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
    <link rel="stylesheet" href="css/manager_main.css">
    <title>������ ȭ��</title>
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
                   <a href="manager_main.do">���幮��</a>
                    <div class="sub_menu2"></div>
                </div>
                
                
                <div class="sub_menu">
                   <a href="manager_about.do">������</a>
                    <div class="sub_menu2"></div>
                </div>
                
                <div class="sub_menu">
                   <a href="manager_partnership.do">���� ���޹���</a>
                    <div class="sub_menu2"></div>
                </div>
                
                <div class="sub_menu">
                   <a href="manager_agency.do">�븮�� ��������</a>
                    <div class="sub_menu2"></div>
                </div>
                
            </div>
        </div>
       
        <div class="main_font">
            <div class="m_font">
                ���� ã�� ������ ȭ��
                <input type="button" value="�α׾ƿ�" onclick="logoutfun()">
            </div>
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
            </div>   
      </div>   
    </div>

    <script>
        $(".base").on("mousewheel", function(e) {
            var wheel = e.originalEvent.wheelDelta; 
            var sHeight = $(document).scrollTop();

            if(wheel>0){ // ��ũ�� �÷��� ��
                if(sHeight<120){
                    $("nav").css(
                        'opacity', '0'
                    );
                }
            } else { // ��ũ�� ������ ��
                if(sHeight>=0){
                    $("nav").css(
                        'opacity', '0.5'
                    );
                }
            } 
        });
      

           
        $(function(){

    	    //����
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
   
        function logoutfun(){
        	location.href="ManagerLogout.do";
        }

        
    </script>
</body>
</html>