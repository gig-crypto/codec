
<html>
    <body>
    <form name="f1" method="get" action="signupinsert.jsp">
       <select name="clr">
           <option>Red</option>
           <option>Blue</option>   
           <option>Green</option>
           <option>Pink</option>
       </select>
     <input type="submit" name="submit" value="Select Color"/>
    </form>

     <% 
                String s=request.getParameter("f1");
                if (s !=null)
                {
                    out.println("Selected Color is : "+s);
                }
      %>
</body>
</html>