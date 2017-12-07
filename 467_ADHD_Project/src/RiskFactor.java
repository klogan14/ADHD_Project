import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import jess.Filter;
import jess.FilteringIterator;
import jess.JessException;
import jess.Rete;

public class RiskFactor
{
	public int factor;
	private Map field;
	public RiskFactor(int f)
	{
		this.factor = f;
	}
	
	public static void main(String[] args) throws JessException
	{
		Rete engine = new Rete();
        engine.batch("Rules.clp");
        engine.reset();
        
        engine.add("(assert(questions (q1 "+0+") (q2 "+ 3+")"+" (q3 "+ 9+")"+" (q4 "+ 1+")" +" (q5 "+ 0 +")" +" (q6 "+ 1 +")"+ 
                "(q7 "+0+") (q8 "+ 3+")"+" (q9 "+ 9+")"+" (q10 "+ 1+")" +" (q11 "+ 0 +")"  +"(q12 "+0+") (q13 "+ 3+")"+" (q14 "+ 9+")"+" (q15 "+ 1+")" +" (q16 "+ 0 +")"+
                "(q17 "+0+") (q18 "+ 3+")"+"))" );
        
        
        Iterator concern = engine.getObjects(new Filter.ByClass(Concern.class));
        
        Iterator it = new FilteringIterator (engine.listFacts(),
                new Filter.ByModule("Concern"));  //engine.getObjects(new Filter.ByClass(RiskFactor.class));
        while (it.hasNext()) 
        {
        	
	        	System.out.println("===");
	            System.out.println(it.next().toString());
        }
	}
	
	public int getFactor()
	{
		return this.factor;
	}
	
	
	public void createQField()
	{
		field = new HashMap();
		
		
	}
	
}
