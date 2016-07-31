package ${packageName}.Utils;

/**
 * Created by huangxy on 2016/7/28.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class SoutUtils {

    private final static String Debug = "ssssssss";

    public static void println(Object message){
        println(null, message);
    }

    public static void println(String info, Object message){
        if (info == null){
            System.out.println(Debug + ":" + message);
        }else{
            System.out.println(Debug + info + ":" + message);
        }
    }
}
