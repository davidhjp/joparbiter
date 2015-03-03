package cmp;

import java.util.Vector;


import com.jopdesign.io.IOFactory;
import com.jopdesign.io.SysDevice;
import com.jopdesign.sys.Startup;

public class CMPBench1 {
	public static Vector msg = new Vector();

	public static void main(String[] args) {
		SysDevice sys = IOFactory.getFactory().getSysDevice();
		Thrd[] rr = new Thrd[sys.nrCpu-1];
//		for (int i=0; i<sys.nrCpu-1; ++i) {
			Thrd r = new Thrd(0);
//			rr[i] = (Thrd)r;
			Startup.setRunnable(r, 0);
//		}
		// start the other CPUs
		sys.signal = 1;
		
		boolean chk = false;
		long start = System.currentTimeMillis();
		
		while (!r.done) {
			
		}
		
		long end = System.currentTimeMillis();
		System.out.println("done "+(end-start));

	}
	
	static class Thrd implements Runnable{
		int id;
		public boolean done = false;
		public Thrd(int i) {id = i;}
		public void run() {
			int pp = 1000000;
			for(int i=0;i<pp;i++){
				int a = 123;
			}
			done = true;
			while(true){}
		}
	}

}
