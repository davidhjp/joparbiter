package cmp;

import java.util.Vector;


import com.jopdesign.io.IOFactory;
import com.jopdesign.io.SysDevice;
import com.jopdesign.sys.Startup;

public class CMPBench1 {
	public static Vector msg = new Vector();
	public static float ss;

	public static void main(String[] args) {
		SysDevice sys = IOFactory.getFactory().getSysDevice();
		for (int i=0; i<sys.nrCpu-1; ++i) {
			Thrd r = new Thrd(i+1);
			Startup.setRunnable(r, i);
		}
		// start the other CPUs
		sys.signal = 1;
		
		boolean chk = false;
		long start = System.currentTimeMillis();
		int i = 0;
		while (i < 200000) {
			ss = 100000000000000000f;
			ss = 100000000000000000f;
			ss = 100000000000000000f;
			ss = 100000000000000000f;
			ss = 100000000000000000f;
			ss = 100000000000000000f;
			ss = 100000000000000000f;
			ss = 100000000000000000f;
			ss = 100000000000000000f;
			ss = 100000000000000000f;
			ss = 100000000000000000f;
			ss = 100000000000000000f;
			ss = 100000000000000000f;
			ss = 100000000000000000f;
			ss = 100000000000000000f;
			ss = 100000000000000000f;
			i++;
		}
		
		long end = System.currentTimeMillis();
		System.out.println("done "+(end-start));

	}
	public static void method(){
		return;
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
//			done = true;
			while(true){}
		}
	}

}
