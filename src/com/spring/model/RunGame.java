package com.spring.model;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import com.spring.addmallcontroller.MallManager;

public class RunGame {
	public static void main(String[] arge) {
		MallManager mm = new MallManager();
		Set<String> list = new HashSet<String>();
		for (Mall m : mm.getAllMalls()) {
			list.add(m.getArea());
		}
		String[] listStore = list.toArray(new String[list.size()]);
		List<String> lists = new ArrayList<String>();
		for (String s : listStore) {
			for (Mall m : mm.getAllMalls()) {
				if (s.equals(m.getArea())) {
					lists.add(m.getArea() + ";;;" + m.getMallNameEng());
				}
			}
		}
	}

}
