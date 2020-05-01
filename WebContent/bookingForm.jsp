<%@page import="com.bean.serviceBean"%>
<%@page import="java.util.List"%>
<%@page import="com.model.serviceModel"%>
<%@page import="com.bean.signup"%>
<%@page import="com.model.signupModel"%>
<%@page import="java.util.ArrayList"%>



<%!signup st=new signup(); %>
<%
	st=(signup)session.getAttribute("user");
%>
	
	
<%
	int id=Integer.parseInt(request.getParameter("id"));
	/* System.out.println("ID of interior is :-"+id); */
	
	serviceModel dao=new serviceModel();
	List<serviceBean> list=dao.getServices(id);
%>

	
	<form name="frm" action="booking" method="post" class="f-color">
			<input type="hidden" name="id" value="<%=id %>">
			
				<div class="row contact-form ">

						<div class="col-lg-6 wthree-form-left">
						
						
						
							
							<div class="form-group">
								<label>Select Sub Service</label>
								 <select class="form-control" name="seName" required>
								    <%for(serviceBean bean:list){ %>
								    <option><%=bean.getSe_name() %></option>
								    <%} %>
							 	  </select>
							</div>
							<br/><br/>
					 		
					 		
							<div class="form-group">
								 <label>Your Requirement</label>
						        <textarea class="form-control" rows="3" name="req"></textarea>
							</div>
							<br/><br/>

														
							<div class="form-group">
								    <label>Confirm Date</label><br>
       								 
							         <input type="date" class="form-control" name="dat" id='d1' required>
							         <script type="text/javascript">
										var d1 = new Date();
										var y1= d1.getFullYear();
										var m1 = d1.getMonth()+1;
										if(m1<10)
										    m1="0"+m1;
										var dt1 = d1.getDate()+1;
										if(dt1<10)
										dt1 = "0"+dt1;
										var d2 = y1+"-"+m1+"-"+dt1;
										document.getElementById('d1').setAttribute("min",d2);
									</script>		
							</div>
							<br/><br/>
							
							
							<div class="form-group">	
							        <label>Confirm Time</label><br>   
							        <input type="time" class="form-control" name="tim" required>
							</div>
							<br/><br/>
							
				
					</div>
					
			
					
						
				
					<div class="col-lg-6  mt-lg-0 mt-5 map contact-right">
					
					
							<div class="form-group">
								<label>User Name</label>
    							<input type="text" name="uname" class="form-control" value="<%=st.getUname()%>" readonly>  
							</div>
							<br/><br/>
							
										
							<div class="form-group">
								<label>Address</label>
     							<textarea class="form-control" name="add" rows="3" required><%=st.getAdd()%></textarea>
							</div>	
							<br/><br/>
							
							<div class="form-group">
							    <label>Phone Number</label>
							    <input type="text" class="form-control" name="phon" maxlength="10" value="<%=st.getPhon()%>" required>
							</div>    
							<br/><br/>		
								
							
							<div class="form-group">
								<label>Email address</label>
    							<input type="text" name="mail" class="form-control" id="exampleInputEmail1" value="<%=st.getEmail()%>" readonly>
							</div>
							<br/><br/>	
							
															
				</div>		
				
				
				</div>			
				<button type="submit" name="submit" class="btn btn-info btn-block1">Book Service</button>			
					</form>	