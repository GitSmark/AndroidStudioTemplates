package ${packageName}.Utils;

import java.security.MessageDigest;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 * Created by huangxy on 2016/7/28.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class StringUtils {
    
     // 生成随机字符串，length表示生成字符串的长度
    public static String getRandomString(int length) {
        String base = "0123456789";
        Random random = new Random();   
        StringBuffer sb = new StringBuffer();   
        for (int i = 0; i < length; i++) {   
            int number = random.nextInt(base.length());   
            sb.append(base.charAt(number));   
        }   
        return sb.toString(); 
     }
    
    
     // 将字符串转成MD5值
    public static String stringToMD5(String string) {
        char hexDigits[] = { '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F' };
        try {
            byte[] hash = MessageDigest.getInstance("MD5").digest(string.getBytes("UTF-8"));
            char str[] = new char[hash.length * 2];
            int k = 0;
            for (byte b : hash) {
                str[k++] = hexDigits[b >>> 4 & 0xf];
                str[k++] = hexDigits[b & 0xf];
            }
            return new String(str);
        } catch (Exception e) {
            return null;
        }
    }

    // 日期字符串处理
    public static String dealDateString(String DateStr){
        if (DateStr != null){
            try {
                Date date2 = new Date(System.currentTimeMillis());
                Date date1 = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss").parse(DateStr);
                if (date2.getTime() > date1.getTime()){
                    if (date2.getYear()-date1.getYear() > 0){
                        return (date2.getYear()-date1.getYear())+"年前";
                    }else if (date2.getMonth()-date1.getMonth() > 0){
                        return (date2.getMonth()-date1.getMonth())+"个月前";
                    }else if (date2.getDate()-date1.getDate() > 0){
                        return (date2.getDate()-date1.getDate())+"天前";
                    }else if (date2.getHours()-date1.getHours() > 0){
                        return (date2.getHours()-date1.getHours())+"个小时前";
                    }else if (date2.getMinutes()-date1.getMinutes() > 0){
                        return (date2.getMinutes()-date1.getMinutes())+"分钟前";
                    }else{
                        return "1分钟前";
                    }
                }
            } catch (ParseException e) {
                e.printStackTrace();
            }
        }
        return DateStr;
    }
}

