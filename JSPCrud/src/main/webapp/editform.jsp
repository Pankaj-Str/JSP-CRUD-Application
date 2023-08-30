<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
<%@page import="p4n.in.UserDao,p4n.in.User"%>

<%
String id=request.getParameter("id");
User u=UserDao.getRecordById(Integer.parseInt(id));
%>
<jsp:include page="Header.html"></jsp:include>
 <div class="col-lg-6 mx-auto">
 <h4 class="display-5 fw-bold text-body-emphasis">Edit User</h4>
    <form action="edituser.jsp" method="post">
    <input type="hidden" name="id" value="<%=u.getId() %>"/>
      <div class="mb-3">
        <label for="name" class="form-label">Name:</label>
        <input type="text" class="form-control" id="name" name="name" value="<%= u.getName()%>">
      </div>
      <div class="mb-3">
        <label for="password" class="form-label">Password:</label>
        <input type="password" class="form-control" id="password" name="password" value="<%= u.getPassword()%>">
      </div>
      <div class="mb-3">
        <label for="email" class="form-label">Email:</label>
        <input type="email" class="form-control" id="email" name="email" value="<%= u.getEmail()%>">
      </div>
      <div class="mb-3">
        <label class="form-label">Sex:</label>
        <div class="form-check">
          <input type="radio" class="form-check-input" id="male" name="sex" value="male">
          <label class="form-check-label" for="male">Male</label>
        </div>
        <div class="form-check">
          <input type="radio" class="form-check-input" id="female" name="sex" value="female">
          <label class="form-check-label" for="female">Female</label>
        </div>
      </div>
      <div class="mb-3">
        <label for="country" class="form-label">Country:</label>
        <select class="form-select" id="country" name="country">
		  <option value="India">India</option>
		  <option value="Pakistan">Pakistan</option>
		  <option value="Afghanistan">Afghanistan</option>
		  <option value="Burma">Burma</option>
		  <option value="Australia">Australia</option>
		  <option value="Canada">Canada</option>
		  <option value="Brazil">Brazil</option>
		  <option value="France">France</option>
		  <option value="Japan">Japan</option>
		  <option value="Mexico">Mexico</option>
		  <option value="South Africa">South Africa</option>
		  <option value="Other">Other</option>
        </select>
      </div>
      <button type="submit" class="btn btn-primary">Edit User</button>
    </form>
  </div>
</body>
</html>