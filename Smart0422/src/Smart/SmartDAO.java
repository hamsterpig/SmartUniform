package Smart;

import java.sql.Connection;   
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Date;
import java.util.Vector;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import SmartDTO.*;

public class SmartDAO {
	private DataSource ds;
	
	public SmartDAO(){
		try {
			Context init = new InitialContext();
			ds = (DataSource)init.lookup("java:comp/env/jdbc/smartdb");
		} catch (NamingException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	//게시판 시간표기 관련 
	private static class TIME_MAXIMUM
    {
        public static final int SEC = 60;
        public static final int MIN = 60;
        public static final int HOUR = 24;
        public static final int DAY = 30;
        public static final int MONTH = 12;
    }
	
	  public String calculateTime(Date date)
	    {

	        long curTime = System.currentTimeMillis();
	        long regTime = date.getTime();
	        long diffTime = (curTime - regTime) / 1000;

	        String msg = null;

	        if (diffTime < TIME_MAXIMUM.SEC)
	        {
	            // sec
	            msg ="방금 전";
	        }
	        else if ((diffTime /= TIME_MAXIMUM.SEC) < TIME_MAXIMUM.MIN)
	        {
	            // min
	            System.out.println(diffTime);
	           
	            msg = diffTime + "분전";
	        }
	        else if ((diffTime /= TIME_MAXIMUM.MIN) < TIME_MAXIMUM.HOUR)
	        {
	            // hour
	            msg = (diffTime ) + "시간전";
	        }
	        else if ((diffTime /= TIME_MAXIMUM.HOUR) < TIME_MAXIMUM.DAY)
	        {
	            // day
	            msg = (diffTime ) + "일전";
	        }
	        else if ((diffTime /= TIME_MAXIMUM.DAY) < TIME_MAXIMUM.MONTH)
	        {
	            // day
	            msg = (diffTime ) + "달전";
	        }
	        else
	        {
	            msg = (diffTime) + "년전";
	        }
	       
	        return msg;
	    }
	
	
	
	
	
	
	/*중복 체크*/
	public int getCount() {
		String sql = "SELECT count(*) FROM shop";
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;		
		int count = 0;
		try {
			con = ds.getConnection();
			stmt = con.createStatement();
			rs = stmt.executeQuery(sql);			
			if(rs.next()) {
				count = rs.getInt(1);
			}
		} catch (SQLException e) {			
			e.printStackTrace();
		} finally {
			try {
				rs.close();
				stmt.close();
				con.close();
			} catch (Exception e) {				
				e.printStackTrace();
			}
		}
		return count;
	} 
	
	
	/*문의*/
	public int Inquiry(InquiryDTO dto){
		int result=0;
		PreparedStatement pstmt = null;
		Connection conn =null;
		String query = "insert into customer values(null,?,?,?,?,?,?,?,?,?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,dto.getName());
			pstmt.setString(2,dto.getTel());
			pstmt.setString(3,dto.getEmail());
			pstmt.setString(4,dto.getSchool());
			pstmt.setString(5,dto.getAgency());
			pstmt.setString(6,dto.getType());
			pstmt.setString(7,dto.getTitle());
			pstmt.setString(8,dto.getContent());
			pstmt.setString(9,dto.getOriginname());	
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			
				try {
					if(pstmt !=null){
						pstmt.close();
				}	
					if(conn != null){
						conn.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
			return result;
	}
	
	/* 제휴문의 */
	public int alliance(allianceDTO dto){
		int result=0;
		PreparedStatement pstmt = null;
		Connection conn =null;
		String query = "insert into alliance values(null,?,?,?,?,?,?,?,?,?)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,dto.getName());
			pstmt.setString(2,dto.getTel());
			pstmt.setString(3,dto.getEmail());
			pstmt.setString(4,dto.getCompany());
			pstmt.setString(5,dto.getAgency());
			pstmt.setString(6,dto.getType());
			pstmt.setString(7,dto.getTitle());
			pstmt.setString(8,dto.getContent());
			pstmt.setInt(9,dto.getImgindex());	
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			
				try {
					if(pstmt !=null){
						pstmt.close();
				}	
					if(conn != null){
						conn.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
			return result;
	}
	

	/*매장 검색*/
	public Vector<ShopDTO> selectShop(){
		Vector<ShopDTO> v= new Vector<ShopDTO>();
		String query = "select * from shop";
		Connection conn =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()){
				ShopDTO dto = new ShopDTO();
				dto.setIdx(rs.getString(1));
				dto.setName(rs.getString(2));
				dto.setAddress(rs.getString(3));
				dto.setTel(rs.getString(4));
				v.add(dto);
			}		
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{			
			try {
				if(rs != null){
					rs.close();
				}
				if(pstmt != null){
					pstmt.close();
				}
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}	
		return v;
	}
	
	/*자유게시판 메인 셀렉*/
	public Vector<BoardDTO> SelectBoard(){
		Vector<BoardDTO> v=new Vector<BoardDTO>();
		String query = "select * from board";
		Connection conn =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()){
				BoardDTO dto = new BoardDTO();
				dto.setIdx(rs.getString("idx"));
				dto.setTitle(rs.getString("title"));
				dto.setId(rs.getString("id"));
				dto.setNickname(rs.getString("nickname"));
				dto.setDate(rs.getString("DATE"));
				dto.setViews(rs.getString("views"));
				dto.setIsLike(rs.getString("isLike"));
				dto.setSysname(rs.getString("sysname"));
				dto.setSaveFolder(rs.getString("savepath"));
				v.add(dto);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{			
			try {
				if(rs != null){
					rs.close();
				}
				if(pstmt != null){
					pstmt.close();
				}
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}	
		return v;
	}
	
	
	/*글쓰기*/
	public int addBoard(BoardDTO dto){
		int result=0;
		PreparedStatement pstmt = null;
		Connection conn =null;
		String query = "INSERT INTO board VALUES(NULL, 0, 0, 0, ?,?,?,?,null,NOW(),FALSE,?,?,?)";
		
		try {	
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,dto.getId());
			pstmt.setString(2,dto.getNickname());
			pstmt.setString(3,dto.getTitle());
			pstmt.setString(4,dto.getContent());
			pstmt.setString(5,dto.getSysname());
			pstmt.setString(6,dto.getOriginname());
			pstmt.setString(7,dto.getSaveFolder());
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			
				try {
					if(pstmt !=null){
						pstmt.close();
				}	
					if(conn != null){
						conn.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
			return result;
	}
	
	
	/*게시물보기 */
	public Vector<BoardDTO> viewList(String idx){
		Vector<BoardDTO> v=new Vector<BoardDTO>();
		System.out.println(idx);
		String query = "select * from board WHERE idx=?";
		Connection conn =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, idx);
			rs = pstmt.executeQuery();			
			while(rs.next()){
				BoardDTO dto = new BoardDTO();
				dto.setIdx(rs.getString("idx"));
				dto.setTitle(rs.getString("title"));
				dto.setId(rs.getString("id"));
				dto.setDate(rs.getString("DATE"));
				dto.setViews(rs.getString("views"));
				dto.setIsLike(rs.getString("isLike"));
				dto.setIsHate(rs.getString("isHate"));
				dto.setContent(rs.getString("content"));
				dto.setSysname(rs.getString("sysname"));
				dto.setSaveFolder(rs.getString("savepath"));
				v.add(dto);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{			
			try {
				if(rs != null){
					rs.close();
				}
				if(pstmt != null){
					pstmt.close();
				}
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}	
		return v;
	}
	
	/*조회수 메소드 */
	public int hits(String idx){
		int result=0;
		PreparedStatement pstmt = null;
		Connection conn =null;
		String query = "UPDATE board SET views = views+1 WHERE idx=?";
		
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,idx);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			try {
				if(pstmt !=null){
					pstmt.close();
			}	
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
		return result;	
	}
	
	/*좋아요 카운트 임시*/
	public int up(String idx){
		int result=0;
		PreparedStatement pstmt = null;
		Connection conn =null;
		String query = "UPDATE board SET isLike = isLike+1 WHERE idx=?";
		
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,idx);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			try {
				if(pstmt !=null){
					pstmt.close();
			}	
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
		return result;	
	}
	/*싫어요 임시*/
	public int down(String idx){
		int result=0;
		PreparedStatement pstmt = null;
		Connection conn =null;
		String query = "UPDATE board SET isHate = isHate+1 WHERE idx=?";
		
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,idx);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			try {
				if(pstmt !=null){
					pstmt.close();
			}	
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
		return result;	
	}
	
	
	/*로그인*/
	public int insert(String id, String pw, String nicname, String email){
		int result = 0;
		PreparedStatement pstmt = null;
		Connection conn = null;
		String query = "insert into member values(null,?,?,?,?,now(),null,null)";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,id);
			pstmt.setString(2,pw);
			pstmt.setString(3,nicname);
			pstmt.setString(4,email);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	/* 회원탈퇴 */
	public int delete(String id, String pw){
		int result = 0;
		String query = "delete * from member where id=? and pw=?";
		PreparedStatement pstmt = null;
		Connection conn = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return result;
	}
	/* 정보 수정 */
	public int update(String idx,String pw,String nicname,String email,String id){
		int result = 0;
		String query = "UPDATE member SET id=?,pw=?,nicname=?,email=? WHERE id=?";
		PreparedStatement pstmt = null;
		Connection conn = null;
		
		try {
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, idx);
			pstmt.setString(2, pw);
			pstmt.setString(3, nicname);
			pstmt.setString(4, email);
			pstmt.setString(5, id);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return result;
	}
	
	/*로그인 확인*/
	public String isLogin(String id,String pw){
		String tempId=null;
		ResultSet rs = null;
	
		String query = "SELECT * FROM member WHERE id=? AND PASSWORD=?";
		PreparedStatement pstmt = null;
		Connection conn = null;
		
		try {
			conn= ds.getConnection();
			pstmt = conn.prepareStatement(query);
			
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			
			rs = pstmt.executeQuery();
			while(rs.next()){
				tempId = rs.getString("id");
			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return tempId;
	}
	
	
	/*회원 테이블 셀렉*/
	public Vector<MemberDTO> selMembertbl(String id){
		Vector<MemberDTO> v = new Vector<MemberDTO>();
		String query = "select * from member where id = ?";
		Connection conn =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()){
				MemberDTO dto = new MemberDTO();
				dto.setIdx(rs.getString("idx"));
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("PASSWORD"));
				dto.setNickname(rs.getString("nicName"));
				dto.setEmail(rs.getString("email"));
				dto.setDate(rs.getString("DATE"));
				dto.setBoard_like(rs.getString("Board_like"));
				dto.setBoard_hate(rs.getString("Board_hate"));
				
				v.add(dto);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{			
			try {
				if(rs != null){
					rs.close();
				}
				if(pstmt != null){
					pstmt.close();
				}
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}	
		return v;
	}
	/* 게시글 삭제 */
	public int del_board(String id,String idx){
		int result=0;
		PreparedStatement pstmt = null;
		Connection conn =null;
		String query = "DELETE FROM board WHERE id=? and idx=?";
		
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,id);
			pstmt.setString(2,idx);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			try {
				if(pstmt !=null){
					pstmt.close();
			}	
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
		return result;	
	}
	
	/*게시글 수정*/
	public int up_board(String idx,String id , String title , String content){
		int result=0;
		PreparedStatement pstmt = null;
		Connection conn =null;
		String query = "UPDATE board SET  title=? ,content=?  WHERE id=? AND idx=?";
	
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,title);
			pstmt.setString(2,content);
			pstmt.setString(3,id);
			pstmt.setString(4,idx);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			try {
				if(pstmt !=null){
					pstmt.close();
			}	
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
		return result;	
	}
	
	/*게시판 수정할때 셀렉하는 메소드  */
	public Vector<BoardDTO> SelectBoard_update(String idx){
		Vector<BoardDTO> v=new Vector<BoardDTO>();
		String query = "select * from board where idx=?";
		Connection conn =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, idx);
			rs = pstmt.executeQuery();
			while(rs.next()){
				BoardDTO dto = new BoardDTO();
				dto.setIdx(rs.getString("idx"));
				dto.setTitle(rs.getString("title"));
				dto.setId(rs.getString("id"));
				dto.setNickname(rs.getString("nickname"));
				dto.setDate(rs.getString("DATE"));
				dto.setViews(rs.getString("views"));
				dto.setIsLike(rs.getString("isLike"));
			
				
				
				v.add(dto);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{			
			try {
				if(rs != null){
					rs.close();
				}
				if(pstmt != null){
					pstmt.close();
				}
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}	
		return v;
	}
	/*게시판 삭제할때 셀렉하는 메소드*/
	public Vector<BoardDTO> SelectBoard_Del(String idx){
		Vector<BoardDTO> v=new Vector<BoardDTO>();
		String query = "select * from board where idx=?";
		Connection conn =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, idx);
			rs = pstmt.executeQuery();
			while(rs.next()){
				BoardDTO dto = new BoardDTO();
				dto.setIdx(rs.getString("idx"));
				dto.setTitle(rs.getString("title"));
				dto.setId(rs.getString("id"));
				dto.setNickname(rs.getString("nickname"));
				dto.setDate(rs.getString("DATE"));
				dto.setViews(rs.getString("views"));
				dto.setIsLike(rs.getString("isLike"));
				dto.setSysname(rs.getString("sysname"));
				
				
				v.add(dto);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{			
			try {
				if(rs != null){
					rs.close();
				}
				if(pstmt != null){
					pstmt.close();
				}
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}	
		return v;
	}
	/*댓글 쓰기*/
	public int addComment(String board_idx ,String nickname,String id,String content){
		int result=0;
		PreparedStatement pstmt = null;
		Connection conn =null;
		String query = "insert INTO COMMENT VALUES(NULL,?,?,?,?,NOW())";
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,board_idx);
			pstmt.setString(2,nickname);
			pstmt.setString(3,id);
			pstmt.setString(4,content);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			
				try {
					if(pstmt !=null){
						pstmt.close();
				}	
					if(conn != null){
						conn.close();
					}
				} catch (SQLException e) {
					e.printStackTrace();
				}
		}
			return result;
	}
	
	/*댓글 쓸때 닉네임 가져오는메소드 */	
	public Vector<MemberDTO> SelectMember_nickname(String id){
		Vector<MemberDTO> v=new Vector<MemberDTO>();
		String query = "SELECT nicName FROM member where id=?";
		Connection conn =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, id);
			rs = pstmt.executeQuery();
			while(rs.next()){
				MemberDTO dto = new MemberDTO();
				dto.setId(rs.getString("nicName"));
				v.add(dto);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{			
			try {
				if(rs != null){
					rs.close();
				}
				if(pstmt != null){
					pstmt.close();
				}
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}	
		return v;
	}
	/*댓글 셀렉*/
	public Vector<CommentDTO> SelectComment(String board_idx){
		Vector<CommentDTO> v=new Vector<CommentDTO>();
		String query = "select * from comment where board_idx=?";
		Connection conn =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, board_idx);
			rs = pstmt.executeQuery();
			while(rs.next()){
				CommentDTO dto = new CommentDTO();
				dto.setIdx(rs.getString("idx"));
				dto.setBoard_idx(rs.getString("board_idx"));
				dto.setNickname(rs.getString("nickname"));
				dto.setContent(rs.getString("content"));
				dto.setDate(rs.getString("date"));
				dto.setId(rs.getString("id"));
				v.add(dto);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{			
			try {
				if(rs != null){
					rs.close();
				}
				if(pstmt != null){
					pstmt.close();
				}
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}	
		return v;
	}
	
	/* 댓글 삭제 */
	public int del_Comment(String idx){
		int result=0;
		PreparedStatement pstmt = null;
		Connection conn =null;
		String query = "DELETE FROM comment WHERE idx=?";
	
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,idx);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			try {
				if(pstmt !=null){
					pstmt.close();
			}	
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
		return result;	
	}
	
	/*댓글 수정*/
	public int up_comment(String idx,String content,String id){
		int result=0;
		PreparedStatement pstmt = null;
		Connection conn =null;
		String query = "UPDATE comment SET content=?  WHERE idx=? and id=?";
	
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,content);
			pstmt.setString(2,idx);
			pstmt.setString(3,id);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			try {
				if(pstmt !=null){
					pstmt.close();
			}	
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
		return result;	
	}
	
	/*비밀번호 찾기관련 이메일로 회원정보 셀렉*/
	public Vector<MemberDTO> f_assword(String email){
		Vector<MemberDTO> v=new Vector<MemberDTO>();
		String query = "SELECT * FROM member WHERE email=?";
		Connection conn =null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, email);
			rs = pstmt.executeQuery();
			while(rs.next()){
				MemberDTO dto = new MemberDTO();
				dto.setIdx(rs.getString("idx"));
				dto.setId(rs.getString("id"));
				dto.setPw(rs.getString("PASSWORD"));
				v.add(dto);
			}
			
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally{			
			try {
				if(rs != null){
					rs.close();
				}
				if(pstmt != null){
					pstmt.close();
				}
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		}	
		return v;
	}
	/* 비밀번호 찾기관련 비밀번호 업데이트 */
	public int up_Password(String pw,String email){
		int result=0;
		PreparedStatement pstmt = null;
		Connection conn =null;
		String query = "UPDATE member SET PASSWORD=? WHERE email=?";
	
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1,pw);
			pstmt.setString(2,email);
			pstmt.executeUpdate();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			try {
				if(pstmt !=null){
					pstmt.close();
			}	
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
		return result;	
	}
	
	/*게시판 댓글 갯수 셀렉*/
	public int commentCount(int board_idx){
		int count=0;
		PreparedStatement pstmt = null;
		Connection conn =null;
		ResultSet rs = null;
		String query = "SELECT COUNT(*) FROM comment WHERE board_idx=?";
	
		try {
			conn = ds.getConnection();
			pstmt = conn.prepareStatement(query);
			pstmt.setInt(1,board_idx);
			rs = pstmt.executeQuery();
			if(rs.next()){
				count = rs.getInt(1);
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}finally {
			
			try {
				if(pstmt !=null){
					pstmt.close();
			}	
				if(conn != null){
					conn.close();
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}
	}
		return count;	
	}
	
	// 대리점 셀렉
		public Vector<AgencyDTO> selSelagencyAll(){
			Vector<AgencyDTO> v = new Vector<AgencyDTO>();
			String query = "select * from shop";
			Connection conn =null;
			PreparedStatement pstmt = null;
			ResultSet rs = null;
			
			try {
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(query);
				rs = pstmt.executeQuery();
				
				while(rs.next()){
					AgencyDTO dto = new AgencyDTO();
					dto.setIdx(rs.getString("idx"));
					dto.setName(rs.getString("name"));
					dto.setAddress(rs.getString("address"));
					dto.setTel(rs.getString("tel"));
					
					v.add(dto);
				}
				
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally{			
				try {
					if(rs != null){
						rs.close();
					}
					if(pstmt != null){
						pstmt.close();
					}
					if(conn != null){
						conn.close();
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
				
			}	
			return v;
		}
		
		public int selectCnt(String table){
			int result = 0;
			ResultSet rs = null;
			PreparedStatement pstmt = null;
			Connection conn =null;
			String sql = "select count(*) from "+table;
			try {
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()){
					result = rs.getInt(1);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally{
				try {
					rs.close();
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			return result;
		}
		public int selectCntWhere(String table, String address){
			int result = 0;
			ResultSet rs = null;
			PreparedStatement pstmt = null;
			Connection conn =null;
			String sql = "select count(*) from "+table+" where address LIKE '%"+address+"%'";
			try {
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(sql);
				rs = pstmt.executeQuery();
				if(rs.next()){
					result = rs.getInt(1);
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally{
				try {
					rs.close();
					pstmt.close();
				} catch (SQLException e) {
					e.printStackTrace();
				}
			}
			System.out.println(result);
			return result;
		}
		public Vector<AgencyDTO> selectPage(String table, int start, int pageCnt){
			ResultSet rs=null;
			PreparedStatement pstmt = null;
			Connection conn =null;
			String sql = "SELECT * FROM "+table+" limit ?, ?";
			Vector<AgencyDTO> v = new Vector<AgencyDTO>();
			
			try{
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(sql); // db에 연결하여 SQL 사용 준비
				pstmt.setInt(1, start);
				pstmt.setInt(2, pageCnt);
				rs = pstmt.executeQuery();
				while(rs.next()){
					AgencyDTO dto = new AgencyDTO();
					dto.setIdx(rs.getString("idx"));
					dto.setName(rs.getString("name"));
					dto.setAddress(rs.getString("address"));
					dto.setTel(rs.getString("tel"));
					
					v.add(dto);
				}
			}catch(Exception e){
				e.printStackTrace();
			} finally{
				try { // 다 썻으니 닫아줘야 한다.
					if(rs != null){
						rs.close();
					}
					if(pstmt != null){
						pstmt.close();
					}
					if(conn != null){
						conn.close();
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return v;
		}
		
		public Vector<AgencyDTO> selectPageWhere(String table, int start, int pageCnt, String address){
			ResultSet rs=null;
			PreparedStatement pstmt = null;
			Connection conn =null;
			String sql = "SELECT * FROM "+table+" WHERE address LIKE '%"+address+"%' limit ?, ?";
			Vector<AgencyDTO> v = new Vector<AgencyDTO>();
			
			try{
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(sql); // db에 연결하여 SQL 사용 준비
				pstmt.setInt(1, start);
				pstmt.setInt(2, pageCnt);
				rs = pstmt.executeQuery();
				while(rs.next()){
					AgencyDTO dto = new AgencyDTO();
					dto.setIdx(rs.getString("idx"));
					dto.setName(rs.getString("name"));
					dto.setAddress(rs.getString("address"));
					dto.setTel(rs.getString("tel"));
					
					v.add(dto);
				}
			}catch(Exception e){
				e.printStackTrace();
			} finally{
				try { // 다 썻으니 닫아줘야 한다.
					if(rs != null){
						rs.close();
					}
					if(pstmt != null){
						pstmt.close();
					}
					if(conn != null){
						conn.close();
					}
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return v;
		}
		
		public Vector<AdminDTO> selectManager(){
			Vector<AdminDTO> ve = new Vector<AdminDTO>();
			String query="SELECT * FROM admin ";
			Connection conn =null;
			PreparedStatement  pstmt =null;
			ResultSet rs = null;
			
			try {
				conn=ds.getConnection();
				pstmt=conn.prepareStatement(query);
				rs=pstmt.executeQuery();
				while(rs.next()){
					AdminDTO dto = new AdminDTO();
					dto.setId(rs.getString("id"));
					dto.setPASSWORD(rs.getString("PASSWORD"));
					
					ve.add(dto);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			return ve;
		}
		public Vector<ManagerInquiryDTO> selectAboutView(){
			Vector<ManagerInquiryDTO> ve = new Vector<ManagerInquiryDTO>();
			String query = "SELECT * FROM inquiry";
			ResultSet rs= null;
			Connection conn=null;
			PreparedStatement pstmt =null;
			try {
				conn=ds.getConnection();
				pstmt=conn.prepareStatement(query);
				rs=pstmt.executeQuery();
				while(rs.next()){
					ManagerInquiryDTO dto = new ManagerInquiryDTO();
					dto.setIdx(rs.getString(1));
					dto.setId(rs.getString(2));
					dto.setPhone(rs.getString(3));
					dto.setEmail(rs.getString(4));
					dto.setCompany(rs.getString(5));
					dto.setAgency(rs.getString(6));
					dto.setType(rs.getString(7));
					dto.setTitle(rs.getString(8));
					dto.setContent(rs.getString(9));
					dto.setOriginimg(rs.getString(10));
					dto.setDate(rs.getString(11));
					
					
					ve.add(dto);

				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return ve;
		}
		public Vector<ManagerInquiryDTO> selectPartnerView(){
			Vector<ManagerInquiryDTO> ve = new Vector<ManagerInquiryDTO>();
			String query = "select * from inquiry";
			ResultSet rs= null;
			Connection conn=null;
			PreparedStatement pstmt =null;
			try {
				conn=ds.getConnection();
				pstmt=conn.prepareStatement(query);
				rs=pstmt.executeQuery();
				while(rs.next()){
					ManagerInquiryDTO dto = new ManagerInquiryDTO();
					dto.setIdx(rs.getString(1));
					dto.setId(rs.getString(2));
					dto.setPhone(rs.getString(3));
					dto.setEmail(rs.getString(4));
					dto.setCompany(rs.getString(5));
					dto.setType(rs.getString(6));
					dto.setTitle(rs.getString(7));
					dto.setContent(rs.getString(8));
					dto.setOriginimg(rs.getString(9));
					dto.setDate(rs.getString(10));
					
					ve.add(dto);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			return ve;
		}
		public Vector<Inquiry_CustomerDTO> selectAgencyView(){
			Vector<Inquiry_CustomerDTO> ve = new Vector<Inquiry_CustomerDTO>();
			String query = "select * from inquiry_Customer";
			ResultSet rs= null;
			Connection conn=null;
			PreparedStatement pstmt =null;
			try {
				conn=ds.getConnection();
				pstmt=conn.prepareStatement(query);
				rs=pstmt.executeQuery();
				while(rs.next()){
					Inquiry_CustomerDTO dto = new Inquiry_CustomerDTO();
					dto.setIdx(rs.getString(1));
					dto.setId(rs.getString(2));
					dto.setPhone(rs.getString(3));
					dto.setEmail(rs.getString(4));
					dto.setArea(rs.getString(5));
					dto.setTitle(rs.getString(6));
					dto.setContent(rs.getString(7));
					dto.setImg(rs.getString(8));
					dto.setDate(rs.getString(9));
					
					ve.add(dto);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
			
			return ve;
		}
		public Vector<ManagerInquiryDTO> selectInquiryView(){
			Vector<ManagerInquiryDTO> ve = new Vector<ManagerInquiryDTO>();
			String query="select * from inquiry";
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs = null;
			try {
				conn=ds.getConnection();
				pstmt=conn.prepareStatement(query);
				rs=pstmt.executeQuery();
				if(rs.next()){
					ManagerInquiryDTO dto = new ManagerInquiryDTO();
					dto.setTitle(rs.getString("title"));
					dto.setContent(rs.getString("content"));
					
					ve.add(dto);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return ve;
		}
		
		public Vector<ManagerInquiryDTO> selectInquiryIDView(String idx){
			Vector<ManagerInquiryDTO> ve = new Vector<ManagerInquiryDTO>();
			String query="select * from inquiry where idx=?";
			Connection conn=null;
			PreparedStatement pstmt=null;
			ResultSet rs = null;
			try {
				conn=ds.getConnection();
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, idx);
				rs=pstmt.executeQuery();
				if(rs.next()){
					ManagerInquiryDTO dto = new ManagerInquiryDTO();
					dto.setIdx(rs.getString("idx"));
					dto.setId(rs.getString("id"));
					dto.setTitle(rs.getString("title"));
					dto.setOriginimg(rs.getString("originimg"));
					dto.setContent(rs.getString("content"));
					
					
					ve.add(dto);
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return ve;
		}
		public int insertreply(String id,String title,String content){
			int result =0;
			Connection conn = null;
			PreparedStatement pstmt = null;
			String query="insert into msg values(null,?,?,?,now())";
			
			try {
				conn=ds.getConnection();
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1,id);
				pstmt.setString(2,title);
				pstmt.setString(3,content);
				result=pstmt.executeUpdate();
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			return result;
		}
		public int Inquiry_about(String name,String tel,String email,String school,String agency,String type,String title,String content,String originimg){
			int result=0;
			PreparedStatement pstmt = null;
			Connection conn =null;
			String query = "insert into inquiry values(null,?,?,?,?,?,?,?,?,?,now())";
			
			try {
				conn = ds.getConnection();
				pstmt = conn.prepareStatement(query);
				pstmt.setString(1,name);
				pstmt.setString(2,tel);
				pstmt.setString(3,email);
				pstmt.setString(4,school);
				pstmt.setString(5,agency);
				pstmt.setString(6,type);
				pstmt.setString(7,title);
				pstmt.setString(8,content);
				pstmt.setString(9,originimg);	
				pstmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			}finally {
				
					try {
						if(pstmt !=null){
							pstmt.close();
					}	
						if(conn != null){
							conn.close();
						}
					} catch (SQLException e) {
						e.printStackTrace();
					}
			}
				return result;
		}
		
		
	
	
}