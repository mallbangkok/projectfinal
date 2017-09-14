package com.spring.model;

import java.io.File;
import java.io.FileWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.spring.addmallcontroller.MallManager;

public class RunGame {
	public static void main(String[] arge) {
		String area = "WebContent/WEB-INF/assets/text/areas.txt";
		String malls = "WebContent/WEB-INF/assets/text/listmalls.txt";
		MallManager mm = new MallManager();
		Set<String> listArea = new HashSet();
		Set<String> listDepart = new HashSet();
		Set<String> listGroup = new HashSet();
		for (Mall m : mm.getAllMalls()) {
			listArea.add(m.getArea());
			listDepart.add(m.getType());
			listGroup.add(m.getMallGroup());

		}
		String[] liArea = listArea.toArray(new String[listArea.size()]);
		String[] liDepart = listDepart.toArray(new String[listDepart.size()]);
		String[] liGroup = listGroup.toArray(new String[listGroup.size()]);
		try {
			FileWriter out = new FileWriter(area);
			FileWriter outMall = new FileWriter(malls);
			for (int i = 0; i < liArea.length; i++) {
				out.write("Area:::" + liArea[i] + "\n");
			}
			for (int i = 0; i < liDepart.length; i++) {
				out.write("Depart:::" + liDepart[i] + "\n");
			}
			for (int i = 0; i < liGroup.length; i++) {
				out.write("Groups:::" + liGroup[i] + "\n");
			}
			out.close();
			for (Mall m : mm.getAllMalls()) {
				outMall.write(m.getArea() + ":::" + m.getMallNameEng() + "\n");
				outMall.write(m.getType() + ":::" + m.getMallNameEng() + "\n");
				outMall.write(m.getMallGroup() + ":::" + m.getMallNameEng() + "\n");
			}
			outMall.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
