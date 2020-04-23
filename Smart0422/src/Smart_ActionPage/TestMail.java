package Smart_ActionPage;
import java.awt.BorderLayout; 
import java.awt.event.*;
import javax.swing.*;
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;

public class TestMail extends JFrame implements ActionListener
{
	final static String googleId = "aowlrsnfk1@gmail.com"; // 구글ID
	final static String googlePw = "qaz124578"; // 구글 PW
	final static String googleEmail = "aowlrsnfk1@gmail.com";// aowlrsnfk1@gmail.com
	
	JPanel north1;
	JLabel des1;
	JTextField email;
	
	JPanel north2;
	JLabel des2;
	JTextField title;
	JButton send;
	
	JPanel center;
	JLabel des3;
	JTextArea contents;
	
	TestMail(){
		north1 = new JPanel(new BorderLayout());
		des1 = new JLabel("보낼 이메일 : ");
		email = new JTextField();
		north1.add(des1, BorderLayout.WEST);
		north1.add(email, BorderLayout.CENTER);
		
		north2 = new JPanel(new BorderLayout());
		des2 = new JLabel("제목 : ");
		title = new JTextField();
		send = new JButton("보내기");
		
		send.addActionListener(this);
		
		north2.add(des2, BorderLayout.WEST);
		north2.add(title, BorderLayout.CENTER);
		north2.add(send, BorderLayout.EAST);
		
		north2.add(north1, BorderLayout.NORTH);
		this.add(north2, BorderLayout.NORTH);
		
		contents = new JTextArea();
		des3 = new JLabel("내용 : ");
		center = new JPanel(new BorderLayout());
		center.add(des3, BorderLayout.WEST);
		center.add(contents, BorderLayout.CENTER);
		
		this.add(center, BorderLayout.CENTER);
		
		this.setDefaultCloseOperation(EXIT_ON_CLOSE);
		this.setSize(500,300);
		this.setVisible(false);
	}

	@Override
	public void actionPerformed(ActionEvent e) {
		sendMail(googleId, googlePw, googleEmail, email.getText(), title.getText(), contents.getText());
	}
	
	public void sendMail(String id, String pw, String sendMail, String destinationMail, String title, String contents) {
		Properties prop = new Properties(); 
		prop.put("mail.smtp.host", "smtp.gmail.com"); 
		prop.put("mail.smtp.port", 465); 
		prop.put("mail.smtp.auth", "true"); 
		prop.put("mail.smtp.ssl.enable", "true"); 
		prop.put("mail.smtp.ssl.trust", "smtp.gmail.com");

		Session session = Session.getDefaultInstance(prop, new javax.mail.Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(id, pw);
            }
        });

        try {        	
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(sendMail));

            //수신자메일주소
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(destinationMail)); 

            // Subject
            message.setSubject(title); //메일 제목을 입력

            // Text
            message.setText(contents);    //메일 내용을 입력

            // send the message
            Transport.send(message); ////전송
            System.out.println("message sent successfully...");
        } catch (AddressException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        } catch (MessagingException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
	}
	
	
	
	public static void main(String args[]) {
		new TestMail();
	}

}







