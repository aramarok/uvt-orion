/**
 * 
 */
package com.uvt.team08.orion.meta;

import java.util.Arrays;
import java.util.Comparator;
import java.util.Hashtable;
import java.util.Set;

/**
 * @author Docleanu Ioan-Dan
 * 
 */
public class Tables {
	public static final Hashtable<String, String> names = new Hashtable<String, String>();

	static {
		names.put("lista1", "Lista 1. Articole stiintifice publicate în reviste de specialitate din strainatate");
		names.put("lista2", "Lista 2. Articole stiintifice publicate in revistele de specialitate ale Academiei Romane");
		names.put("lista3", "Lista 3. Articole stiintifice publicate in reviste ale universitatilor");
		names.put("lista4", "Lista 4. Articole stiintifice publicate in volumele unor conferinte internationale");
		names.put("lista5", "Lista 5. Conferinte invitate la manifestari internationale");
		names.put("lista6", "Lista 6. Lista monografiilor de specialitate publicate in edituri consacrate din strainatate");
		names.put("lista7", "Lista 7. Lista cartilor si monografiilor publicate in edituri din tara si de litografii ale universitatilor");
		names.put("lista8", "Lista 8. Lista cu lucrari citate");
		names.put("lista9", "Lista 9. Lista cu lucrarile publicate in volumele unor conferinte nationale cu referenti si comitet de program");
		names.put("lista10", "Lista 10. Lista granturilor si contractelor de cercetare");
		
		names.put("lista11a", "Lista lucrarilor sub forma de preprint");
		names.put("lista11b", "Lista tezelor de doctorat finalizate");
		names.put("lista11c", "Lista materialelor didactice");
		names.put("lista11d", "Conferinte invitate / lucrari de sinteza prezentate la manifestari stiintifice recunoscute");
		names.put("lista11e", "Brevete omologate, produse aplicate in industrie");
		names.put("lista11f", "Membru in colectivele de redactie ale unor reviste stiintifice");
		names.put("lista11g", "Premii stiintifice acordate de Academia Romana");
		names.put("lista11h", "Premii acordate de MEN, CNCSIS");
		names.put("lista11i", "Premii diverse");
		names.put("lista11j", "Membru in organizatii stiintifice nationale si internationale");
		names.put("lista11k", "Referent stiintific/expert CNCSIS");
		names.put("lista11l", "Organizator de manifestari stiintifice nationale si internationale");
		names.put("lista11m", "Membru in comisii de doctorat, recenzor in tara sau strainatate");
	}

	public static Set<String> getListIDs() {
		return names.keySet();
	}

	public static String getTableNameByID(String listID) {
		return names.get(listID);
	}
	
	public static String [] getListIDsSortedByListsNames() {
		String [] result = names.keySet().toArray(new String[] {});
		
		Arrays.sort(result, new Comparator<String>() {
			public int compare(String key1, String key2) {
				return names.get(key1).compareTo(names.get(key2));
			}
		});
		
		return result;
	}
}
