import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import jess.*;
@WebServlet("/SystemEngine")
public class SystemEngine extends HttpServlet 
{
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private Rete engine;
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
    			 * Rarely = 0.33
    			 * Sometimes = .66
    			 * Often = 0.99
    			 */
    			String name = request.getParameter("Name");
    			String age = request.getParameter("Age");
    			int q1Ans = Integer.parseInt(request.getParameter("Q1")); // How often do you find yourself distracted?
    			int q2Ans = Integer.parseInt(request.getParameter("Q2"));
    			int q3Ans = Integer.parseInt(request.getParameter("Q3"));
    			int q4Ans = Integer.parseInt(request.getParameter("Q4")); // Subtract from adhd factor for defrule
    			int q5Ans = Integer.parseInt(request.getParameter("Q5")); // if yes add, if no subtract 
    			int q6Ans = Integer.parseInt(request.getParameter("Q6"));

    			
    			int[] ans = new int[6];
    			ans[0] = q1Ans;
    			ans[1] = q2Ans;
    			ans[2] = q3Ans;
    			ans[3] = q4Ans; // subtraction value 
    			ans[4] = q5Ans;
    			ans[5] = q6Ans;

    			
    			
    			System.out.println(name+ " " + age + " " + q1Ans + " " + q2Ans +  " " + q3Ans + " " + q4Ans + " " + q5Ans + " " + q6Ans );
    			
    			//
    	        Rete engine = new Rete();
    	      
    	        //engine.eval("(deftemplate person (slot name) (slot age) (slot adhdFactor))"); //Declaring the deftemplates
    	        //engine.eval("(assert(person (name "+name+") (age "+age+") (adhdFactor 0.0)))");
    	        System.out.println("Got to this point");
			engine.eval("(deftemplate questions" + " (slot q1)" + " (slot q2)" + " (slot q3)" + " (slot q4)" + " (slot q5)" + " (slot q6)" + ")"); 
	        System.out.println("After Template");
	        engine.eval("(defglobal ?*risk-factor* = 0)");
			engine.eval("(assert(questions (q1 "+q1Ans+") (q2 "+ q2Ans+")"+" (q3 "+ q3Ans+")"+" (q4 "+ q4Ans+")" +" (q5 "+ q5Ans +")" +" (q6 "+ q6Ans +"))" );
			
	        System.out.println("After Assert");

    	        
			//Add all 
	        
	        engine.eval("(defrule Q1Never \n" + 
					"(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))\n" + 
					"(test (= ?q1 0))\n" + 
					"=>\n" + 
					"  (bind ?*risk-factor*(+ ?*risk-factor* 0))\n" + 
					"  (printout t \"risk factor = \" ?*risk-factor* crlf)\n" + 
					")"+
					"(run)");
			
			// Defrule q1Never = (Defrule) engine.findDefrule("Q1Never");
		//	    System.out.println(new PrettyPrinter(q1Never));

//			  engine.run();
//			  engine.
//			  engine.setEventMask(JessEvent.DEFRULE_FIRED);
//			  
			System.out.println("After Run");
    			
			
			
			
			//Content that will printout reuslts to a new page
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
			        "<title>Bears</title>"+
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
	        
			 
				//Content that will printout reuslts to a new page=============================================================
	        
	       // engine.eval("(deffunction square (?n) (return (* ?n ?n)))");
	       // Value value = engine.eval("(square 3)");
	     
	        
	      //  System.out.println(value.intValue(engine.getGlobalContext()));
		 } 
			catch (JessException ex)
			{
		        System.err.println(ex);
		    }
	}
    
	public static void main(String[] unused) 
	{        
		try 
		{	
			
			
			
			
			
			
			Rete engine = new Rete();
  	      
	        engine.eval("(deftemplate person (slot name) (slot age) (slot adhdFactor))"); //Declaring the deftemplates
	        engine.eval("(assert(person (name "+"Kyle"+") (age "+"1"+") (adhdFactor 0.0)))");
	        System.out.println("Got to this point");
			
	        engine.add("(assert(questions (q1 "+0+") (q2 "+ 3+")"+" (q3 "+ 9+")"+" (q4 "+ 1+")" +" (q5 "+ 0 +")" +" (q6 "+ 1 +"))" );

        System.out.println("After Template");

		engine.add(("(assert(questions (q1 "+5+") (q2 "+ 1+")"+" (q3 "+ 1+")"+" (q4 "+ 1+")" +" (q5 "+ 1 +")" +" (q6 "+ 1 +"))" ));
		
        System.out.println("After Assert");

	        
        Value value = engine.eval("(defrule Q1Never \n" + 
				"(questions (q1 ?q1) (q2 ?q2) (q3 ?q3) (q4 ?q4) (q5 ?q5) (q6 ?q6))\n" + 
				"(test (= ?q1 5))\n" + 
				"=>\n" + 
				"(printout t \"Answer = \" ?q1 crlf)\n" + 
				")");
		
		 Defrule q1Never = (Defrule) engine.findDefrule("Q1Never");
		    System.out.println(new PrettyPrinter(q1Never));

		  System.out.println(engine.run());;
		 // engine.getObjects(arg0)
		  System.out.println(value.stringValue(engine.getGlobalContext()));
			
			
			
		 
			
			
			
			
			Rete r = new Rete();
		    Context c = r.getGlobalContext();
		    Funcall f = new Funcall("set-reset-globals", r);
		    f.arg(Funcall.TRUE);
		    Value result = f.execute(c);
		    System.out.println(result);
			
	       // Rete engine = new Rete();
	        //Declaring the deftemplates/fact for the jess project
	        engine.eval("(deftemplate person (slot name)(slot age) (slot adhdFactor))");
	        engine.eval("(deffunction square (?n) (return (* ?n ?n)))");
	        Value value2 = engine.eval("(square 3)");
	        System.out.println(value2.intValue(engine.getGlobalContext()));
	        
	    } 
		catch (JessException ex)
		{
	        System.err.println(ex);
	    }   
	}
}
