<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*,java.util.Scanner"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<html>

<head>
	<title>ope 操作</title>
</head>

<body>
	<%
    Class.forName("com.mysql.cj.jdbc.Driver").newInstance();
	String url ="jdbc:mysql://localhost:3306/sc?user=root&password=123456&useSSL=false&serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8";
	Connection conn= DriverManager.getConnection(url);
	PreparedStatement pstat = null;
	ResultSet rs = null;
	String sql = null;
	String op = request.getParameter("op");
    if (op.equals("del")){
		int id = Integer.parseInt(request.getParameter("id"));
		sql = "delete from shopcar where ID=?";
		pstat = conn.prepareStatement(sql);
		pstat.setInt(1,id);
		pstat.executeUpdate();
		pstat.close();	
		conn.close();
        response.sendRedirect("Shopcar.jsp");
	}
	if (op.equals("deldizhi")){
		int id = Integer.parseInt(request.getParameter("id"));
		sql = "delete from address where ID=?";
		pstat = conn.prepareStatement(sql);
		pstat.setInt(1,id);
		pstat.executeUpdate();
		pstat.close();	
		conn.close();
        response.sendRedirect("Myaddress.jsp");
	}
	if (op.equals("delorder")){
		int id = Integer.parseInt(request.getParameter("id"));
		sql = "delete from t_order where ID=?";
		pstat = conn.prepareStatement(sql);
		pstat.setInt(1,id);
		pstat.executeUpdate();
		pstat.close();	
		conn.close();
        response.sendRedirect("Myorder.jsp");
	}
	if (op.equals("login")){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		sql = "select * from user where phone=?";
		pstat = conn.prepareStatement(sql);
		pstat.setString(1,username);
		rs = pstat.executeQuery();
		if (rs.next()){
			String pwd = rs.getString("password").trim();
			String token = rs.getString("phone").trim();
			if(password.equals(pwd)){
			rs.close();
			pstat.close();
			conn.close();
			response.sendRedirect("Home.jsp?token="+token);
			}else{response.sendRedirect("Login.jsp");}
		}
		else{
			response.sendRedirect("Register.jsp");
		}
	}
	if (op.equals("regist")){
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		sql = "insert into user(phone,password) values(?,?)";
		pstat = conn.prepareStatement(sql);
		pstat.setString(1,username);
		pstat.setString(2,password);
		pstat.executeUpdate();
		pstat.close();
		conn.close();
		response.sendRedirect("Login.jsp");
	}
	if (op.equals("intocar")){
		String price = request.getParameter("price");
		String title = request.getParameter("title");
		String pic = request.getParameter("pic");
		sql = "insert into shopcar(price,title,pic,number,selecttype) values(?,?,?,?,?)";
		pstat = conn.prepareStatement(sql);
		pstat.setString(1,price);
		pstat.setString(2,title);
		pstat.setString(3,pic);
		pstat.setInt(4,1);
		pstat.setString(5,"暂无套餐");
		pstat.executeUpdate();
		pstat.close();
		conn.close();
		response.sendRedirect("Shopcar.jsp");
	}
	if (op.equals("adizhi")){
		String phone = request.getParameter("phone");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String postcode = request.getParameter("postcode");
		sql = "insert into address(phone,name,address,postcode) values(?,?,?,?)";
		pstat = conn.prepareStatement(sql);
		pstat.setString(1,phone);
		pstat.setString(2,name);
		pstat.setString(3,address);
		pstat.setString(4,postcode);
		pstat.executeUpdate();
		pstat.close();
		conn.close();
		response.sendRedirect("Adda.jsp");
	}
	if (op.equals("updatemyinfo")){
		String nickname = request.getParameter("nickname");
		String realname = request.getParameter("realname");
		String birthday = request.getParameter("birthday");
		String phone = request.getParameter("phone");
		int id = Integer.parseInt(request.getParameter("id"));
		sql="update user SET nickname = ? ,realname = ? ,birthday = ? ,phone = ? WHERE Id = ?";
		pstat = conn.prepareStatement(sql);
		pstat.setString(1,nickname);
		pstat.setString(2,realname);
		pstat.setString(3,birthday);
		pstat.setString(4,phone);
		pstat.setInt(5,id);
		pstat.executeUpdate();
		pstat.close();
		conn.close();
		response.sendRedirect("Myinfo.jsp");
	}
	if (op.equals("updizhi")){
		String phone = request.getParameter("phone");
		String name = request.getParameter("name");
		String address = request.getParameter("address");
		String postcode = request.getParameter("postcode");
		int id = Integer.parseInt(request.getParameter("id"));
		sql="update address SET phone = ? ,name = ? ,address = ? ,postcode = ? WHERE Id = ?";
		pstat = conn.prepareStatement(sql);
		pstat.setString(1,phone);
		pstat.setString(2,name);
		pstat.setString(3,address);
		pstat.setString(4,postcode);
		pstat.setInt(5,id);
		pstat.executeUpdate();
		pstat.close();
		conn.close();
		response.sendRedirect("Myaddress.jsp");
	}
	if (op.equals("sendinfo")){
		int num = Integer.parseInt(request.getParameter("count"));
		for(int i=0;i<num;i++){

			String price = request.getParameter("price"+i);
			int number =  Integer.parseInt(request.getParameter("number"+i));
			String pic = request.getParameter("pic"+i);
			String title = request.getParameter("title"+i);
			String selecttype = request.getParameter("selecttype"+i);
			String name = request.getParameter("name"+i);
			String phone = request.getParameter("phone"+i);
			String address = request.getParameter("address"+i);
			String postcode = request.getParameter("postcode"+i);
			sql = "insert into t_order(price,title,pic,number,selecttype,name,phone,address,postcode) values(?,?,?,?,?,?,?,?,?)";
			pstat = conn.prepareStatement(sql);
			pstat.setString(1,price);
			pstat.setString(2,title);
			pstat.setString(3,pic);
			pstat.setInt(4,number);
			pstat.setString(5,selecttype);
			pstat.setString(6,name);
			pstat.setString(7,phone);
			pstat.setString(8,address);
			pstat.setString(9,postcode);
			pstat.executeUpdate();
			pstat.close();
		}
		conn.close();
		response.sendRedirect("Pay.jsp");
	}
%>
</body>

</html>