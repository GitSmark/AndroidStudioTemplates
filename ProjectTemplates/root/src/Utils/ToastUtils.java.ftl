package ${packageName}.Utils;

import android.content.Context;
import android.view.Gravity;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Toast;

/**
 * Created by huangxy on 2016/7/28.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class ToastUtils {

    private static Toast toast = null;
    private static String oldMsg = null;
    private static ImageView ic = null;
    private static long oldTime = 0;

    public static void Show(Context context, String message, int time){
        ToastShow(context, 0, message, time);
    }

    public static void Show(Context context, int resId, int time){
        ToastShow(context, 0, resId2String(context, resId), time);
    }

    public static void Show(Context context, int icon, String message, int time){
        ToastShow(context, icon, message, time);
    }

    public static void Show(Context context, int icon, int resId, int time){
        ToastShow(context, icon, resId2String(context, resId), time);
    }

    private static void ToastShow(Context context, int icon, String message, int time) {

        if (message == null || message.equals("")) return;

        if (toast == null){
            if (context == null) return;
            toast = Toast.makeText(context.getApplicationContext(), message, time);
            LinearLayout toastView = (LinearLayout) toast.getView();
            toast.setGravity(Gravity.CENTER, 0, 0);
            ic = new ImageView(context);
            ic.setImageResource(icon);
            toastView.addView(ic, 0);
        }else {
            if ((message.equals(oldMsg)&&(System.currentTimeMillis()-oldTime)<2*1000)){// 防止连续弹出
                return;
            }
            ic.setImageResource(icon);
            toast.setDuration(time);
            toast.setText(message);
        }
        oldTime = System.currentTimeMillis();
        oldMsg = message;
        toast.show();
    }

    private static String resId2String(Context context, int resId){
        try {
            return context.getString(resId);
        }catch (Exception e){
            e.printStackTrace();
            return null;
        }
    }
}
