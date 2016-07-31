package ${packageName}.Utils;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffXfermode;
import android.graphics.Rect;
import android.graphics.RectF;

import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapTransformation;

/**
 * Created by huangxy on 2016/7/28.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class GlideRoundBitmap extends BitmapTransformation{

    public GlideRoundBitmap(Context context) {
        super(context);
        // TODO Auto-generated constructor stub
    }

    @Override
    public String getId() {
        // TODO Auto-generated method stub
        return getClass().getName();
    }

    @Override
    protected Bitmap transform(BitmapPool arg0, Bitmap arg1, int arg2, int arg3) {
        // TODO Auto-generated method stub
        if(arg1 != null) {
            arg1 = getRoundedCornerBitmap(arg1);
        }
        return arg1;
    }

    //圆形头像
    public static Bitmap getRoundedCornerBitmap(Bitmap bt) {

        // 截取中间正方形
        int edgeLength = Math.min(bt.getWidth(), bt.getHeight());
        int xTopLeft = (bt.getWidth() - edgeLength) / 2;
        int yTopLeft = (bt.getHeight() - edgeLength) / 2;
        Bitmap bitmap = Bitmap.createBitmap(bt, xTopLeft, yTopLeft, edgeLength, edgeLength);

        Bitmap output = Bitmap.createBitmap(bitmap.getWidth(), bitmap.getHeight(), Config.ARGB_8888);
        Canvas canvas = new Canvas(output);

        final Paint paint = new Paint();
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int w;
        int deltaX = 0;
        int deltaY = 0;
        if (width <= height) {
            w = width;
            deltaY = height - w;
        } else {
            w = height;
            deltaX = width - w;
        }
        final Rect rect = new Rect(deltaX, deltaY, w, w);
        final RectF rectF = new RectF(rect);

        paint.setAntiAlias(true);
        canvas.drawARGB(0, 0, 0, 0);

        int radius = (int) (Math.sqrt(w * w * 2.0d) / 2);
        canvas.drawRoundRect(rectF, radius, radius, paint);

        paint.setXfermode(new PorterDuffXfermode(Mode.SRC_IN));
        canvas.drawBitmap(bitmap, rect, rect, paint);
        return output;
    }

}
