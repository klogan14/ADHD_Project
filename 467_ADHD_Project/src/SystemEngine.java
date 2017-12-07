import java.awt.TextArea;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.io.Writer;
import java.util.Iterator;
import java.util.List;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jess.*;
import jess.awt.TextAreaWriter;
@WebServlet("/SystemEngine")
public class SystemEngine extends HttpServlet 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public static	Rete engine = new Rete();
    private WorkingMemoryMarker marker;
   // private Database database;

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
		doGet(request,response);
		System.out.println("DoPost Run");
	}
    
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException
	{
    		try 
		{
    			/*
    			 * The values we receive from the users are as follows:
    			 * Never = 0
    			 * Rarely = 3
    			 * Sometimes = 6
    			 * Often = 9
    			 */
    			
    			String age = request.getParameter("Age");
    			int q1Ans = Integer.parseInt(request.getParameter("Q1")); 
    			int q2Ans = Integer.parseInt(request.getParameter("Q2"));
    			int q3Ans = Integer.parseInt(request.getParameter("Q3"));
    			int q4Ans = Integer.parseInt(request.getParameter("Q4")); 
    			int q5Ans = Integer.parseInt(request.getParameter("Q5")); 
    			int q6Ans = Integer.parseInt(request.getParameter("Q6"));
    			int q7Ans = Integer.parseInt(request.getParameter("Q7")); 
    			int q8Ans = Integer.parseInt(request.getParameter("Q8"));
    			int q9Ans = Integer.parseInt(request.getParameter("Q9"));
    			int q10Ans = Integer.parseInt(request.getParameter("Q10")); 
    			int q11Ans = Integer.parseInt(request.getParameter("Q11")); 
    			int q12Ans = Integer.parseInt(request.getParameter("Q12"));
    			int q13Ans = Integer.parseInt(request.getParameter("Q13")); 
    			int q14Ans = Integer.parseInt(request.getParameter("Q14"));
    			int q15Ans = Integer.parseInt(request.getParameter("Q15"));
    			int q16Ans = Integer.parseInt(request.getParameter("Q16")); 
    			int q17Ans = Integer.parseInt(request.getParameter("Q17")); 
    			int q18Ans = Integer.parseInt(request.getParameter("Q18"));
    			/*
    			 * Getting the userinput from the Java Server Page
    			 */
    			int[] ans = new int[6];
    			ans[0] = q1Ans;
    			ans[1] = q2Ans;
    			ans[2] = q3Ans;
    			ans[3] = q4Ans; 
    			ans[4] = q5Ans;
    			ans[5] = q6Ans;
    			ans[6] = q7Ans;
    			ans[7] = q8Ans;
    			ans[8] = q9Ans;
    			ans[9] = q10Ans; 
    			ans[10] = q11Ans;
    			ans[11] = q12Ans;
    			ans[12] = q13Ans;
    			ans[13] = q14Ans;
    			ans[14] = q15Ans;
    			ans[15] = q16Ans; 
    			ans[16] = q17Ans;
    			ans[17] = q18Ans;
    			
    			
    	        Rete engine = new Rete();
    	      
			engine.batch("Rules.clp");
			engine.eval("(deftemplate questions" + " (slot q1)" + " (slot q2)" + " (slot q3)" + " (slot q4)" + " (slot q5)" + " (slot q6)" + ")" +
					"(assert(questions (q1 "+q1Ans+") (q2 "+ q2Ans+")"+" (q3 "+ q3Ans+")"+" (q4 "+ q4Ans+")" +" (q5 "+ q5Ans +")" +" (q6 "+ q6Ans +")"+
					"(q7 "+q7Ans+") (q8 "+ q8Ans+")"+" (q9 "+ q9Ans+")"+" (q10 "+ q10Ans+")" +" (q11 "+ q11Ans +")" +" (q12 "+ q12Ans +")" +
					"(q13 "+q13Ans+") (q14 "+ q14Ans+")"+" (q15 "+ q15Ans+")"+" (q16 "+ q16Ans+")" +" (q17 "+ q17Ans +")" +" (q18 "+ q18Ans +")))"
					//Add the question answers from the user to create a questions fact 
					);
			engine.run();
			

    	        
	        
			  
			System.out.println("After Run");
    			
			
			
			
			//Content that will printout results to a new page
			String docType = "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.0 "+
					"Transitional//EN\">\n";
			String bc = "#051C2C";
			PrintWriter out = response.getWriter();
			out.println(docType +"<HTML>\n"+
					"<HEAD><TITLE>"+
	        			"Test Results"+ 
	        			"</TITLE>"+
	        			"<style>"+
	        			"body {background-color :  "+bc+" }"+
						".topnav {\n" + 
						"  overflow: hidden;\n" + 
						"  background-color: #333;\n" + 
						"}\n" + 
						"\n" + 
						".topnav a {\n" + 
						"  float: left;\n" + 
						"  display: block;\n" + 
						"  color: #f2f2f2;\n" + 
						"  text-align: center;\n" + 
						"  padding: 14px 16px;\n" + 
						"  text-decoration: none;\n" + 
						"  font-size: 17px;\n" + 
						"}\n" + 
						"\n" + 
						".topnav a:hover {\n" + 
						"  background-color: #ddd;\n" + 
						"  color: black;\n" + 
						"}\n" + 
						"\n" + 
						".topnav a.active {\n" + 
						"    background-color: #4CAF50;\n" + 
						"    color: white;\n" + 
						"}"+
		        			"</style>"+
					
					"</HEAD>\n"+
			        "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">"+
			        "<title>Test Results</title>"+
			        "</head>" +
			        "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=ISO-8859-1\">"+
			        "<title>Results</title>"+
			        "</head>"+ 
			        "<div class=\"topnav\">"+
			        "<a href=\"index.jsp\">Home</a>"+
			        "</div>"+
			        "<h1 style=\"color:white;\" align=\"center\">"+
			        		"Test Results"+
			        		"</h1>"
				//insert test results below here 
	        );
			 out.println("</BODY></HTML>");
	        
			 Iterator rules =  engine.listDefrules();
			 while(rules.hasNext())
		     {
		       System.out.println("RuleName: "+rules.next().toString());
		     }	         
	      //  System.out.println(value.intValue(engine.getGlobalContext()));
		 } 
			catch (JessException ex)
			{
		        System.err.println(ex);
		    }
	}
    
	public static void main(String[] unused) throws ClassNotFoundException 
	{        
		try 
		{	
            engine.batch("Rules.clp");
            WorkingMemoryMarker mark =  engine.mark();

			engine.reset();

            engine.add("(assert(questions (q1 "+0+") (q2 "+ 3+")"+" (q3 "+ 9+")"+" (q4 "+ 1+")" +" (q5 "+ 0 +")" +" (q6 "+ 1 +")"+ 
            "(q7 "+0+") (q8 "+ 3+")"+" (q9 "+ 9+")"+" (q10 "+ 1+")" +" (q11 "+ 0 +")"  +"(q12 "+0+") (q13 "+ 3+")"+" (q14 "+ 9+")"+" (q15 "+ 1+")" +" (q16 "+ 0 +")"+
            "(q17 "+0+") (q18 "+ 3+")"+"))");
            questions qs = new questions();
            
            engine.store("Questions", qs);
		    RiskFactor rf = new RiskFactor(3);
		    
		    engine.run();

            Funcall risk = new Funcall("High", engine);
            
            
//            Defrule q1Never = (Defrule) engine.findDefrule("Q1Never");
//            Defrule q2Never = (Defrule) engine.findDefrule("Q2Sometimes");
//            System.out.println(new PrettyPrinter(q1Never));
//		      System.out.println(new PrettyPrinter(q2Never));

          
            
            Value val2 = engine.eval("(facts)");
           
            System.out.println("VAL2: " + val2.toString());
		    
		    
		    Iterator it = engine.getObjects(new Filter.ByClass(RiskFactor.class));
		    
		     Iterator concern = engine.getObjects(new Filter.ByClass(Concern.class));
		     
		     
		    //System.out.println("Concern: " + concern.concernLevel);
			    Iterator rules =  engine.listDefrules();
		    
		    
		    
		    
		    Iterator facts = engine.listFacts();
		    
		    engine.add("(assert(questions (q1 "+0+") (q2 "+ 3+")"+" (q3 "+ 9+")"+" (q4 "+ 1+")" +" (q5 "+ 0 +")" +" (q6 "+ 1 +")"+ 
	                "(q7 "+0+") (q8 "+ 3+")"+" (q9 "+ 9+")"+" (q10 "+ 1+")" +" (q11 "+ 0 +")"  +"(q12 "+0+") (q13 "+ 3+")"+" (q14 "+ 9+")"+" (q15 "+ 1+")" +" (q16 "+ 0 +")"+
	                "(q17 "+0+") (q18 "+ 3+")"+"))" );
		    engine.findClass("RiskFactor");
		    
		    while(facts.hasNext())
		    {
		    System.out.println("facts: "+facts.next().toString());
		    }    
		    
		      Value va3 = engine.eval("(run)");
		      System.out.println("VA3: " + va3.intValue(engine.getGlobalContext()));
		} 
		catch (JessException ex)
		{
	        System.err.println(ex.toString());
	    }   
	}
}
