package ${packageName}.Application;

/**
 * Created by huangxy on 2016/7/28.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class Constant {

    public final static int REQUEST_SUCCESS = 0;// 请求数据成功
    public final static int REQUEST_ERROR  = -1;// 获取数据失败
    public final static int PARSER_ERROR   = -2;// 数据解析失败
    public final static int UPLOAD_ERROR   = -3;// 上传图片失败

    // 应用缓存目录
    public final static String PATHCache = "/sdcard/Ticat/";
    // 内置资源目录
    public final static String PATHAsset = "file:///android_asset/..";

    // 网站域名
    public final static String DomainName = "";
    //1.注册或忘记密码验证码
    public final static String URLCaptcha = "";
    //2.注册
    public final static String URLRegister = "";
    //3.登录
    public final static String URLLogin = "";
}