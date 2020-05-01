package com.service;

import java.util.Properties;

import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;

public class Services {

	public void sendMail(String email,String emailId,String pname,String uname,String service,String date,String time,String add,String phon){
		final String username  = "eliteservices1999@gmail.com";
		final String password   = "elite@123";
		
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));//to mail address.
			message.setSubject("Service Confirmation");
			message.setText("Dear "+uname+ ","+"\n\nYour order for a service on "+date+" at "+time+" has been accepted.\n"+pname +" will serve your request.");
			Transport.send(message);
			
			Message message1 = new MimeMessage(session);
			message1.setFrom(new InternetAddress(username));
			message1.setRecipients(Message.RecipientType.TO,InternetAddress.parse(emailId));//to mail address.
			message1.setSubject("New service Request");
			message1.setText("Dear "+pname+","+ "\n\n You have new service request.\n"+"\n Customer details:\n\n"+" Name: "+uname+"\n Address: "+ add +"\n Email Id :"+ email +"\n Contact:"+ phon +"\n Date:"+date +"\n Time:"+time);
 
			Transport.send(message1);					

 
			System.out.println("Done");
 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}		
	}
	
	public void sendResponse(String email)
	{
		final String username  = "eliteservices1999@gmail.com";
		final String password   = "elite@123";
		
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));//to mail address.
			message.setSubject("user query");
			message.setText("Dear user,Your query will be resolved within short time.\n"+"Thank you!");
			Transport.send(message);
			
			System.out.println("Done");
			 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}		

	}
	
	public void sendPassword(String email, String pass)
	{
		final String username  = "eliteservices1999@gmail.com";
		final String password   = "elite@123";
		
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));//to mail address.
			message.setSubject("Password recovery");
			message.setText("Hey User! Your Password is: "+ pass);
			Transport.send(message);
			
			System.out.println("Done");
			 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}		


	}
	
	
	
	public void sendPasswordSP(String email, String pass)
	{
		final String username  = "eliteservices1999@gmail.com";
		final String password   = "elite@123";
		
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));//to mail address.
			message.setSubject("Password recovery");
			message.setText("Hey Service Provider!  Your Password is: "+ pass);
			Transport.send(message);
			
			System.out.println("Done");
			 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}		


	}
	
	
	
	
	
	public void sendSPreg(String email,String name,String serv)
	{
		final String username = "eliteservices1999@gmail.com";
		final String password = "elite@123";
		
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));//to mail address.
			message.setSubject("Registration confirmation");
			message.setText("Dear "+ name+ " , You have registered successfully to provide  '"+serv + "'  service!\n"+"\nYou will be activated soon!");
			Transport.send(message);
			
			System.out.println("Done");
			 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}		

	}
	
	
	
	
	
	public void sendUserreg(String email,String name)
	{
		final String username = "eliteservices1999@gmail.com";
		final String password = "elite@123";
		
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));//to mail address.
			message.setSubject("Registration confirmation");
			message.setText("Dear " + name+ " , You have registered successfully!\n");
			Transport.send(message);
			
			System.out.println("Done");
			 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}		

	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	public void sendSpActivate(String email)
	{
		final String username  = "eliteservices1999@gmail.com";
		final String password   = "elite@123";
		
 
		Properties props = new Properties();
		props.put("mail.smtp.auth", "true");
		props.put("mail.smtp.starttls.enable", "true");
		props.put("mail.smtp.host", "smtp.gmail.com");
		props.put("mail.smtp.port", "587");
 
		Session session = Session.getInstance(props,
		  new javax.mail.Authenticator() {
			protected PasswordAuthentication getPasswordAuthentication() {
				return new PasswordAuthentication(username, password);
			}
		  });
 
		try {
 
			Message message = new MimeMessage(session);
			message.setFrom(new InternetAddress(username));
			message.setRecipients(Message.RecipientType.TO,InternetAddress.parse(email));//to mail address.
			message.setSubject("Service provider approved");
			message.setText("Dear service provider,You are activated successfully.\n" + "you can use below link for login.\n"+"http://localhost:8080/EliteServices/serviceprovider/index.jsp");
			Transport.send(message);
			
			System.out.println("Done");
			 
		} catch (MessagingException e) {
			throw new RuntimeException(e);
		}		


		
	}



}
