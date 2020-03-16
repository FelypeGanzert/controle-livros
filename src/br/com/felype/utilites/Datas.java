package br.com.felype.utilites;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

public class Datas {
	public static String calendarToGregorian(Calendar cal) {
		if (cal != null) {
			SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
			dateFormat.setTimeZone(cal.getTimeZone());
			return dateFormat.format(cal.getTime());
		} else {
			return null;
		}
	}

	public static Calendar gregorianToCalendar(String gregorianDate) throws ParseException {
		SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
		Date date = dateFormat.parse(gregorianDate);

		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		return calendar;
	}
	
	public static Calendar dateToCalendar(String dateString) throws ParseException {
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-mm-dd");
		Date date = dateFormat.parse(dateString);

		Calendar calendar = Calendar.getInstance();
		calendar.setTime(date);
		return calendar;
	}
}
