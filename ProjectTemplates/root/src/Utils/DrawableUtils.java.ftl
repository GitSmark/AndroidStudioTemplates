package ${packageName}.Utils;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.support.annotation.ColorInt;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;

/**
 * Created by huangxy on 2016/8/4.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class DrawableUtils {

    public static Drawable TintWithResId(Context context, int ResId, int colorResId){
        return TintWithColor(context, ResId, ContextCompat.getColor(context, colorResId));
    }

    public static Drawable TintWithColor(Context context, int ResId, @ColorInt int color){
        try {
            Drawable drawable = ContextCompat.getDrawable(context, ResId);
            return TintWithDrawable(drawable, color);
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

    public static Drawable TintWithDrawable(Context context, Drawable drawable, int colorResId){
        return TintWithDrawable(drawable, ContextCompat.getColor(context, colorResId));
    }

    public static Drawable TintWithDrawable(Drawable drawable, @ColorInt int color){
        try {
            Drawable.ConstantState state = drawable.getConstantState();
            Drawable tintDrawable = DrawableCompat.wrap(state==null? drawable: state.newDrawable()).mutate();
            tintDrawable.setBounds(0, 0, drawable.getIntrinsicWidth(), drawable.getIntrinsicHeight());
            DrawableCompat.setTint(tintDrawable, color);
            return tintDrawable;
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }
}
