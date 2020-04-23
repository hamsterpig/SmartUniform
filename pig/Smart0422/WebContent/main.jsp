<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="ko">
<head>
    <script  src="http://code.jquery.com/jquery-latest.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/main.css">
    <link rel="stylesheet" href="css/mainNav.css">
    <link rel="stylesheet" href="css/reaction.css">
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:wght@800&display=swap" rel="stylesheet">
    <title>Smart Main</title>
<style>
	    .Mstate{
	        position: fixed;
	        z-index: 9;
	        width: 250px;
	        height: 200px;
	        left: 88%;
	        top: 30%;
	        background-color: rgba(80,80,255,0.5);
	        color: white;
	        padding: 1%;
	        transition: all 1s;
	        overflow: hidden;
	        border-radius: 25px;
	    }
	    .MstateC{
	    	position: fixed;
	        z-index: 10;
	        width: 60px;
	        height: 25px;
	        left: 97%;
	        top: 29%;
	        background-color: orange;
	        color: white;
	        border-radius: 25px;
	        transition: all 1s;
	    }
	    .o{
	    	position: relative;
	    	width: 25px;
	    	heigth: 25px;
	    	background-color: white;
	    	border-radius: 50%;
	    	left: 0px;
	    	transition: all 1s;
	    }
	    .aLogin{
	    	color: red;
	    	font-size: 20px;
	    	font-weight: bold;
	    }
	   	.btnM{
	   		width: 50%;
	   		margin: 1px;
	   		border: 1px solid black;
	   		color: black;
	   		background-color: rgba(0,0,0,0);
	   		transition: all 0.5s;
	   		font-size: 1.1em;
	   		font-weight: 300;
	   	}
	   	.btnM:hover{
	   		background-color: rgba(255,255,255,0.5);
	   	}
	   	
	</style>
</head>
<body>
	<% String id = (String)session.getAttribute("id"); %>
	<div class="Mstate"> <!-- ---------------------------- -->
		<div class="guest">
		 ��ȸ���Դϴ�.<br>
		</div>
		
		<div class="member">
			<%=id %>�� �ݰ����ϴ�^^
		</div><br>
		
	    <a class="aLogin" href="login.do">�α��� �ϱ�</a>

	    <form class="boardmain" action="boardmain.do" method="post"> 
          	<input class="btnM" type="submit" value="�Խ���">
          	<input type="hidden" value="<%=session.getAttribute("id") %>" name="userid">
        </form>
        
        <input class="msgView btnM" type="button" value="��������"><br>
        <input class="infoUpdate btnM" type="button" value="��������"><br>
        
        
        <input class="btnLogout btnM" type="submit" value="�α׾ƿ�" onclick="logout()">
	 </div>
	 <div class="MstateC">
	 	<div class="o">
	 	��
	 	</div>
	 </div>
	 <script>
	 	var mstate = "on";
	 
	 	$('.MstateC').click(function(){
	 		
	 		if(mstate=="on"){
	 			mstate = "off";
	 			$('.o').css('left', '35px');
	 			$('.MstateC').css('background-color', 'gray');
		 		$('.Mstate').css({
		 			'height': '0px',
		 			'opacity': '0'
		 		});
	 		} else{
	 			mstate = "on";
	 			$('.o').css('left', '0px');
	 			$('.MstateC').css('background-color', 'orange');
		 		$('.Mstate').css({
		 			'height': '200px',
		 			'opacity': '1'
		 		});
	 		}
	 	});
	 	
	 	var id = "<%=id%>";
	 	
	 	if(id=="null"){ // ��ȸ�� ����
	 		$('.member').css('display', 'none'); // ȯ�� ��Ȱ��
	 		$('.btnLogout').css('display', 'none'); // �α׾ƿ� ��Ȱ��
	 		$('.boardmain').css('display', 'none'); // �Խ��� ��Ȱ��
	 		$('.msgView').css('display', 'none'); // ��������
	 		$('.infoUpdate').css('display', 'none'); // ��������
	 	} else { // �α��� ����
	 		$('.guest').css('display', 'none'); // ��ȸ�� ��Ȱ��
	 		$('.aLogin').css('display', 'none'); // �α��� ��ư ��Ȱ��
	 	}
	 	
	 </script> <!-- ---------------------------- -->


    <div class="base">
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
                    <a href="MoveStyle.do">����Ʈ��Ÿ��</a>
                    <a href="main_shop.do">����/������</a>
                </div>
            
            
			<!-- <form action="logout.do">
				<input class="btnLogout" type="submit" value="�α׾ƿ�">
			</form> -->
		
			
				
			
				<script>
					function logout(){
						location.href="Logout.do"		
					} 
				</script>
				
                <a href="script:" onclick="MmenuView()">
                   <div class="rightMenubarMobile">
                        <i class="fa fa-bars"></i>
                    </div>
                    <div class="MmenuView">
                        <a  class="MmenuViewList" href="#">�б��ְ�����
                        </a>
                        <a  class="MmenuViewList" href="#">����Ʈ��Ÿ��
                        </a>               
                        <a  class="MmenuViewList" href="#" >����/������                       
                        </a>
                    </div>
                </a>
                
                
            </div>
        </nav>
       <div class="wrap">
			<div class="page">
			
				<div class="banner_4 bnr">
					<div class="bnr4_img_1 bnr_img"><img src="img/txx_slide4.png"></div>
					<div class="bnr4_imggb_1 bnr_img">
						<div class="bnr4_img_2 bnr_img"><img src="img/img_slide3_1.png"></div>
						<div class="bnr4_img_3 bnr_img"><img src="img/img_slide3_2.png"></div>					
					</div>
					<div class="bnr4_imggb_2 bnr_img">
						<div class="bnr4_img_4" ><img src="img/logo2.png"></div>
						<div class="bnr4_img_5"><img src="img/txtlogo.png" ></div>				
					</div>				
				</div>
			
				<div class="banner_3 bnr">
					<div class="bnr3_bimg"><img src="img/img_slide2_4.png"></div>
					<div class="bnr3_img_1 bnr_img"><img src="img/img_slide2_3.png"></div>
					<div class="bnr3_txt1 bnr_img"><img src="img/txt_slide3.png"></div>
					
					<div class="bnr3_txtgb bnr_img">
					<div class="bnr3_txt2"><strong>��!������</strong>��<br><strong>����Ʈ</strong>�ϰ�</div>
					<div class="bnr3_txt3">�پ ���༺ ���� �������� ���<br>��� ������! �ÿ���&����� ����!</div>
					</div>
					
				</div>
				
				<div class="banner_2 bnr">
					<div class="bnr2_img_1 bnr_img" ><img src="img/img_slide2.png"></div>
					<div class="bnr2_img_2 bnr_img"><img src="img/img_slide2_2.png"></div>
					<div class="bnr2_txt_1 bnr_img"><img src="img/txt_slide2.png"></div>
					<div class="bnr2_txtgb bnr_img">
					<div class="bnr2_txt_2 "><strong >�λ�����</strong>��<br><strong>����Ʈ</strong>�ϰ�</div>
					<div class="bnr2_txt_3 ">���� �����ο� �پ ���༺����!<br>�� �������� �ÿ��ϰ� ����� ����</div>
					</div>
					<div class="bnr2_img_4"></div>							
				</div>
				
				<div class="banner_1 bnr">
					<div class="bnr1_txt_1 bnr_img"><img src="img/txt_slide0.png"></div>
					<div class="bnr1_txt_2 bnr_img"><strong>���ɱ���</strong>����<br><strong>����Ʈ</strong>�ϰ�</div>
					<div class="bnr1_txt_3 bnr_img">�������� ���ϰ� ��Ÿ���� ����<br>����Ʈ �л���</div>
					<div class="bnr1_img_1 bnr_img"><img src="img/bannerslide.png"></div>			
				</div>

			</div> 
           <div class="content1 page">
        
               <div class="content1_left">
               <div class="c1_txt">
                 <div>�����б�</div>  
      			 <div class="cl_804">804</div> 	       	
       			 </div> 
               <div class="content1_left_txt">
               <span class="c1_txt_first">
               	�б��ְ����� 1��</span><br>            	
               		<strong class="c1_txt_second">1�� �л��� ����Ʈ</strong>
               
               		<div class="c1_fundiv">		
               <div class="c1_bar1"></div>
               <div class="c1_bar1_txt bartxt"><span>SMART</span> �л���</div>	
                <div class="c1_bar2_num">658</div>
      			<div class="c1_bar2"></div>	
      			<div class="c1_bar2_txt bartxt">A��</div>
				
     			<div class="c1_bar3_num">568</div>
      			<div class="c1_bar3"></div>	
      			<div class="c1_bar3_txt bartxt">B��</div>
      			
      			<div class="c1_bar4_num">525</div>	
      			<div class="c1_bar4"></div>	
              	<div class="c1_bar4_txt bartxt">C��</div>
              	
               </div>   
               	<div class="c1_noti">(2019.05 ��������)</div>   
               	   	       	
               </div>
               </div>
               <div class="content1_right">
               	<div class="c1_right_img"><img src="img/content1_img.png"></div>
               	<div class="c1_right_img2"><img src="img/content1_txt.png"></div>
               	
               	<div class="c1_right_noti">
               	
               		
               		<div class="c1_right_btn2">
               		<img src="img/content1_btn.png" class="btn2">
               		<div class="c1_right_btn"><img src="img/content1_btn.png"></div>
               		</div>
               		
          
               		<div class="c1_right_noti_txt">
               		<span >�б��ְ�����</span>         		
               		<span >�ٷΰ���</span>
               		</div>
               	</div>
               </div>
            </div>           
            
           <div class="content2 page">
          
           	<div class="c_2layoutbox">
           		<div class="c2_title">
           			<strong>����</strong>
           			<span>��</span>
           			<strong>����Ʈ</strong>
           			<span>�ϰ�</span>
           			<strong>+</strong>         			
           		</div>
           		<div class="c2_txt">
           			<strong>������, ǰ��, ���</strong>
           			���� 
           			<strong>��� ����Ʈ��</strong>
           			 ����Ʈ �л�����<br>
           			 <strong>2020�� ��Ÿ��</strong>
           			 �� ���� ������!   			
           		</div>
           	</div>
           	 <div class="cngbtn">
           	 <span style="font-weight: bolder;font-size: 30px">�� </span>
				<span style="margin-left: 15px">
					2020
					<strong>�ҳ�</strong>
					��Ÿ��
					
				</span>   
          	</div>
          	
          	 <div class="cngbtn2">
           	 <span style="font-weight: bolder;font-size: 30px">�� </span>
				<span style="margin-left: 15px">
					2020
					<strong>�ҳ�</strong>
					��Ÿ��
					
				</span>   
          	</div>
          	
          	
           	<div class="c2_slidebox">     		
           			<div class="c2_slide">
           				<div class="c2_slideM"><img src="img/c2_slide1.png"></div>
           				<div class="c2_slideM"><img src="img/c2_slide2.png"></div>
						<div class="c2_slideM"><img src="img/c2_slide3.png"></div>
						<div class="c2_slideM"><img src="img/c2_slide4.png"></div>
						<div class="c2_slideM"><img src="img/c2_slide5.png"></div>
						<div class="c2_slideM"><img src="img/c2_slide6.png"></div>	
           			</div>
           			
           			<div class="c2_slide2">
           				<div class="c2_slideW"><img src="img/c2_Wslide1.png"></div>
           				<div class="c2_slideW"><img src="img/c2_Wslide12.png"></div>
						<div class="c2_slideW"><img src="img/c2_Wslide3.png"></div>
						<div class="c2_slideW"><img src="img/c2_Wslide4.png"></div>
						<div class="c2_slideW"><img src="img/c2_Wslide5.png"></div>
						<div class="c2_slideW"><img src="img/c2_Wslide6.png"></div>	
           			</div>
           			
           		
           	</div>
           	
           </div>
           
           <div class="content3 page">
           <div class="c3_circle">
           		<div class="pink_circle"></div>
           		<div class="small_circle"></div>
           </div>
           
           <div class="lookbtnbase1">
           <div class="loobookbtn1"><img src="img/cross.png" class="cross1">
           <div class="lookbook_txt">�ҳ���</div>
           </div>
           </div>
           
           <div class="lookbtnbase2">
           <div class="loobookbtn2"><img src="img/cross.png" class="cross2">
           <div class="lookbook_txt">�ҳ���</div>
           </div>
           </div>
           
           <div class="content3_img"><img src="img/content3_img.png"></div>
           	<div class="layoutbox">         	
           		<div class="layoutbox_2">
           			<div class="videoimg">
           			
           			<div class="view_video">
           			<iframe width="100%" src="https://www.youtube.com/embed/Z_Z10KoNi0U?version=2&amp;loop=1&amp;autohide=1&amp;controls=0&amp;showinfo=0&amp;rel=0&amp;wmode=opaque" frameborder="0" id="video" allowfullscreen=""></iframe>
           			</div>
           			
           			<img src="img/movieimg.jpg" class="video_img">
           			<img src="img/playbtn.png" class="video_btn">
           			</div>
           			<div class="movietxt"><img src="img/movietxt.png"></div>
           			<div class="c3_text">
					<span class="txt1">S</span><span id="c3_color"  class="txt1">M</span><span  class="txt1">ART</span><br>	
           			<span  class="txt2">SS S</span><span id="c3_color"   class="txt2">E</span><span   class="txt2">ASON</span>
           			</div>
           			
           			<div class="c3_text2">
           			<strong>2020 ����Ʈ</strong>
           			<div>�Ϻ� �Կ�����ġ</div>	
           			</div>
         		</div>          				
           	</div>
           	
           </div>
           <div class="content4 page">
           	<div class="layoutbox2">
           		<div class="layoutbox_2_2">
           			<div class="c4_title">
           			<strong>��ſ�</strong>��
          			<strong>����Ʈ</strong>�ϰ�
          			<strong>+</strong>
           			  </div>
           			<div class="c4_list">
           				<ul>
           					<li class="c4_li_yellow">
							<div class="c4_tit">
								<strong>CHANNEL</strong>
								<span>SMART</span>	
							</div>
          					<div class="c4_txt">ä�� ����Ʈ</div>
          					<div class="c4_li_img1">
          						<img src="img/content4_list1.png">
          					</div>
          					
          					
          					</li>
          					
           					<li class="c4_li_pink">
							<div class="c4_rotate">
								<strong>FILM</strong>
								<span>SMART</span>
							</div>
         					<div class="c4_txt2">
         						<strong>����Ʈ �ʸ�</strong>
         					</div>
         					<div class="c4_li_img1">
          						<img src="img/content4_list2.png">
          					</div>
          					</li>
          					
           					<li class="c4_li_blue">
           					<div class="c4_tit3">
								<strong>ON</strong>
								<span>AIR</span>	
							</div>
          					<div class="c4_txt3">�¿���</div>
          					<div class="c4_li_img1">
          						<img src="img/content4_list3.png">
          					</div>
          					</li>
          					
           					<li class="c4_li_blue">
								<div class="c4_tit4">
								<strong>SMART</strong>
								<span>GALLERY</span>	
							</div>
          					<div class="c4_txt4">ȭ��������</div>
          					<div class="c4_li_img1">
          						<img src="img/content4_list4.png">
          					</div>
          					</li>
          					
          					
           					<li class="c4_li_yellow">
								
         					<div class="c4_tit5">
								<strong>SMART</strong>
								<span>EVENT</span>	
							</div>
          					<div class="c4_txt5">�̺�Ʈ</div>
          					<div class="c4_li_img1">
          						<img src="img/content4_list5.png">
          					</div>
          					</li>
           					<li class="c4_li_pink">
							
								<div class="c4_tit4">
								<strong>SMART</strong>
								<span>SNS</span>	
							</div>
          					<div class="c4_txt4">����Ʈ �л��� SNS</div>
          					<div class="c4_li_img1">
          						<img src="img/content4_list6.png">
          					</div>
          					</li>
           					
           					
           				</ul>
           				
           			</div>
           			
           		</div>		
           	</div>	        	
           </div>
           <div class="content5 lastpage"></div>
           
           
       
    </div>
    
	</div>
    
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
		
		
 		$(function(){
			banner1();
			cont2text1();
			viewvideo();			
			cont3fun();
			cngslide();
			moveslide();
		});/*��ü ���*/
		
		function banner1(){
			$('.banner_1').animate({opacity:'0'},2000,function(){
				bannerclear2();
				banner2();
			});
		}
		
		function banner2(){
			$('.banner_2').animate({opacity:'1'});
			$('.bnr2_txt_1').animate({right:'25%',opacity:'1'},function(){
			$('.bnr2_img_2').animate({right:'5%',opacity:'1'},function(){
			$('.bnr2_img_1').animate({left:'30%',opacity:'1'},function(){
					$('.bnr2_txtgb').animate({left:'5%',opacity:'1'},function(){
						$('.banner_2').animate({opacity:'0'},2000,function(){
							bannerclear3();
							banner3();
						});
					});
				});
			});		
		});
			
		}
		
		function banner3(){
			$('.banner_3').animate({opacity:'1'});
			$('.bnr3_txt1').animate({right:'18%',opacity:'1'},function(){
			$('.bnr3_img_1').animate({right:'5%',opacity:'1'},function(){
			$('.bnr3_txtgb').animate({left:'7%',opacity:'1'},2000,function(){
				$('.banner_3').animate({opacity:'0'},2000,function(){
					bannerclear4();
					banner4();
				});
			});
			});
		});
			
		}
		
		function banner4(){
			$('.banner_4').animate({opacity:'1'});
			$('.bnr4_img_1').animate({right:'5%',opacity:'1'},function(){
			$('.bnr4_imggb_1').animate({opacity:'1'},function(){
			$('.bnr4_imggb_2').animate({opacity:'1'},function(){
				$('.banner_4').animate({opacity:'1'},2000,function(){
					$('.banner_4').animate({opacity:'0'},2000,function(){
						bannerclear1();
						banner1();
					});
				});
			});
			});
		});
		}
		
		
		function bannerclear1(){
			$('.banner_1').css('opacity','1');
			
		}
		
		
		function bannerclear2(){
			$('.banner_2').css('display','block');
			$('.bnr2_txt_1').css('opacity','0');
			$('.bnr2_txt_1').css('right','5%');
			$('.bnr2_img_2').css('right','-55%');
			$('.bnr2_img_2').css('opacity','0');		
			$('.bnr2_img_1').css('left','10%');
			$('.bnr2_img_1').css('bottom','0');
			$('.bnr2_img_1').css('opacity','0');
			$('.bnr2_txtgb').css('left','-5%');
			$('.bnr2_txtgb').css('opacity','0');
		}	
		
		function bannerclear3(){
			$('.bnr3_txtgb').css('top','20%');
			$('.bnr3_txtgb').css('opacity','0');
			$('.bnr3_img_1').css('right','-10%');
			$('.bnr3_img_1').css('opacity','0');
			$('.bnr3_txt1').css('right','-10%');
			$('.bnr3_txt1').css('opacity','0');
		}
			
		function bannerclear4(){
			$('.bnr4_img_1').css('right','0');
			$('.bnr4_img_1').css('opacity','0');
			$('.bnr4_imggb_1').css('right','18%');
			$('.bnr4_imggb_1').css('opacity','0');
			$('.bnr4_imggb_2').css('left','10%');
			$('.bnr4_imggb_2').css('opacity','0');
			$('.bnr').css('display','block');
		}	
		
		function cont2text1(){
			$('.c1_right_img2').animate({marginRight:'+=100px',opacity:'1'},function(){
				$('.c1_right_img').animate({opacity:'1'},500,function(){
					$('.c1_txt_first').animate({left:'10%',opacity:'1'},1000);
					$('.c1_txt_second').animate({left:'10%',opacity:'1'},1000,function(){
						$('.c1_fundiv').animate({opacity:'1'},1000,function(){
							$('.c1_bar1').animate({width:'450px'},1000);
							$('.c1_bar2').animate({width:'250px'},1000);
							$('.c1_bar3').animate({width:'150px'},1000);
							$('.c1_bar4').animate({width:'50px'},1000,function(){
								$('.c1_noti').animate({opacity:'1'},function(){
									$('.c1_right_noti_txt').animate({opacity:'1'});
									$('.c1_right_btn2').animate({opacity:'1'});
								});
							});
						});
						$('.c1_txt').animate({opacity:'1'});
					});
				});
			});
		}
		
		function viewvideo(){
			$('.video_btn').click(function(){
				$('.video_img').css('display','none');
				$('.video_btn').css('display','none');
				$('.view_video').css('display','block');
			});
		}
		
		
		function cont3fun(){
			$('.c3_circle').animate({left:'880px',opacity:'1'},function(){
				$('.txt1').animate({opacity:'1'},function(){
					$('.txt2').animate({opacity:'1'});
				});
			$('.movietxt').animate({left:'400px',opacity:'1'});	
			$('.c3_text2').animate({marginLeft:'160px',opacity:'1'},1000,function(){
				$('.content3_img').animate({opacity:'1'},function(){
					$('.loobookbtn1').animate({opacity:'1'});
					$('.loobookbtn2').animate({opacity:'1'});
				});
			});	
			});
			
		}
		
		
		
        function cngslide(){
			$('.cngbtn').click(function(){
				$('.c2_slide').css('opacity','0');
				$('.cngbtn2').css('opacity','1');
				$('.cngbtn2').css('z-index','2');
				$('.cngbtn').css('z-index','0');
				$('.c2_slide2').animate({opacity:'1'},1000);
			});
			
			$('.cngbtn2').click(function(){
				$('.c2_slide2').css('opacity','0');
				$('.cngbtn').css('opacity','1');
				$('.cngbtn').css('z-index','2');
				$('.cngbtn2').css('z-index','0');
				$('.c2_slide').animate({opacity:'1'},1000);
			});
		}
		/*function moveslide(){
			$('.c2_slideM:nth-child(1)').animate({marginTop:'-=140px',opacity:'1'});
		}*/
		
		
    </script>
</body>
</html>