package ${packageName}.Utils;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/**
 * Created by huangxy on 2016/7/28.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class InputFilterUtils {

    // 过滤默认字符
    public static String StringFilter(String str){
        return StringFilter(str, 0);
    }

    // 过滤特殊字符
    public static String StringFilter(String str, int filtertype) throws PatternSyntaxException {

        if (str == null || str.isEmpty()) return "";

        String regEx = null;
        switch (filtertype) {
            case 0:
                // 默认过滤注入字符
                regEx = "[\'\"\\“”<>‘’*]";
                break;
            case 1:
                // 只允许字母数字和@._
                regEx  =  "[^a-zA-Z0-9@._]";
                break;
            case 2:
                // 只允许字母数字和中文和:：@._
                regEx = "[^0-9a-zA-Z\u4e00-\u9fa5:：@._]";
                break;
            case 3:
                // 过滤指定特殊字符
                regEx = "[`~!@#$%^&*()+=|{}':;',\\[\\].<>/?~！@#￥%……&*（）——+|{}【】‘；：”“’。，、？《》()＠→_←\"\']";
                break;
            default:
                return null;
        }

        Pattern p = Pattern.compile(regEx);
        Matcher m = p.matcher(str);
        return m.replaceAll("").trim();
    }

    /**
    *基本原理是将字符串中所有的非标准字符（双字节字符）
    * 替换成两个标准字符（**，或其他的也可以）。这样
    * 就可以直接例用length方法获得字符串的字节长度
    */
    public static int getWordCountRegex(String s){  
        s = s.replaceAll("[^\\x00-\\xff]", "**");
        int length = s.length();  
        return length;
    }

}
