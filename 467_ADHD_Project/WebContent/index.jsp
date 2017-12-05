<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>ADHD/ADD Test</title>
</head>
<body>
	<H1 ALIGN=CENTER>ADHD/ADD Form</H1>
	
          <form action="${pageContext.request.contextPath}/SystemEngine"  method="post">
                <br> Age:<input type=text name=Age size=25>
                
<br>How often do you find yourself distracted?<br>
		        <input type=radio name=Q1 value=0>Never<br>
      			<input type=radio name=Q1 value=3>Rarely<br>
      			<input type=radio name=Q1 value=6>Sometimes<br>
                <input type=radio name=Q1 value=9>Often<br>
How often while talking do you find yourself changing topics and not being able to keep focus?<br>
                	<input type=radio name=Q2 value=0>Never<br>
				<input type=radio name=Q2 value=3>Rarely<br>
                <input type=radio name=Q2 value=6>Sometimes<br>
                <input type=radio name=Q2 value=9>Often<br>
                
How often do you feel the need to fidget with something, move your hands and feet?<br>
                	<input type=radio name=Q3 value=0>Never<br>
				<input type=radio name=Q3 value=3>Rarely<br>
                <input type=radio name=Q3 value=6>Sometimes<br>
                <input type=radio name=Q3 value=9>Often<br>
                
How often do you avoid activities that require you to pay attention and/or focus?<br>
                	<input type=radio name=Q4 value=0>Never<br>
				<input type=radio name=Q4 value=3>Rarely<br>
                <input type=radio name=Q4 value=6>Sometimes<br>
                <input type=radio name=Q4 value=9>Often<br>
                
How often do you have trouble listening to others when they are talking to you?<br>
                 <input type=radio name=Q5 value=0>Never<br>
				<input type=radio name=Q5 value=3>Rarely<br>
                <input type=radio name=Q5 value=6>Sometimes<br>
                <input type=radio name=Q5 value=9>Often<br>
                
How often do you find yourself losing important things, like keys, wallet, phone, etc.?<br> 
                <input type=radio name=Q6 value=0>Never<br>
				<input type=radio name=Q6 value=3>Rarely<br>
                <input type=radio name=Q6 value=6>Sometimes<br>
                <input type=radio name=Q6 value=9>Often<br>
                
How often do you feel like you don’t have enough time to do things and things getting out of control?<br> 
                 <input type=radio name=Q7 value=0>Never<br>
				<input type=radio name=Q7 value=3>Rarely<br>
                <input type=radio name=Q7 value=6>Sometimes<br>
                <input type=radio name=Q7 value=9>Often<br>
                
                
How often while talking do you find yourself changing topics and not being able to keep focus?<br> 
				<input type=radio name=Q8 value=0>Never<br>
				<input type=radio name=Q8 value=3>Rarely<br>
                <input type=radio name=Q8 value=6>Sometimes<br>
                <input type=radio name=Q8 value=9>Often<br>
                
How often do you find yourself forgetting to do things, especially routine tasks, ex: paying bills, missing dates?<br> 
                <input type=radio name=Q9 value=0>Never<br>
				<input type=radio name=Q9 value=3>Rarely<br>
                <input type=radio name=Q9 value=6>Sometimes<br>
                <input type=radio name=Q9 value=9>Often<br>
                
How often do you find it difficult to wait or be patient, such as waiting in a checkout line or a package to arrive?<br>
                <input type=radio name=Q10 value=0>Never<br>
				<input type=radio name=Q10 value=3>Rarely<br>
                <input type=radio name=Q10 value=6>Sometimes<br>
                <input type=radio name=Q10 value=9>Often<br>

Do you often find yourself interrupting others, or worrying you might lose a thought?<br>
                <input type=radio name=Q11 value=0>Never<br>
				<input type=radio name=Q11 value=3>Rarely<br>
                <input type=radio name=Q11 value=6>Sometimes<br>
                <input type=radio name=Q11 value=9>Often<br>
                
Do you often feel restless and uneasy if you are not doing anything?<br>
				<input type=radio name=Q12 value=0>Never<br>
				<input type=radio name=Q12 value=3>Rarely<br>
                <input type=radio name=Q12 value=6>Sometimes<br>
                <input type=radio name=Q12 value=9>Often<br>

Do you find yourself talking aimlessly, continuously, and excessively?<br>
				<input type=radio name=Q13 value=0>Never<br>
				<input type=radio name=Q13 value=3>Rarely<br>
                <input type=radio name=Q13 value=6>Sometimes<br>
                <input type=radio name=Q13 value=9>Often<br>
                
How often are you unsuccessful in completing tasks, like homework, chores, or tasks at work? How often do you find yourself getting sidetracked?<br>
				<input type=radio name=Q14 value=0>Never<br>
				<input type=radio name=Q14 value=3>Rarely<br>
                <input type=radio name=Q14 value=6>Sometimes<br>
                <input type=radio name=Q14 value=9>Often<br>
                
Have you had a sudden change in your life, like a recent passing of a relative, divorce, loss of a job, other major event?<br>
                <input type=radio name=Q15 value=1>Yes<br> 
                <input type=radio name=Q15 value=0>No<br>
Have you experienced these symptoms in more than one place for example home, work, or school?
               	<input type=radio name=Q16 value=1>Yes<br> 
                <input type=radio name=Q16 value=0>No<br>
               
Did you experience these symptoms before the age of 12?<br>
                <input type=radio name=Q17 value=1>Yes<br>
                <input type=radio name=Q17 value=0>No<br>
               
Have you you experienced these symptoms from the previous questions for longer than 6 months?<br>
                <input type=radio name=Q18 value=1>Yes<br>
                <input type=radio name=Q18 value=0>No<br>
                <input type=submit value="Submit Order">
           </form>
</body>
</html>