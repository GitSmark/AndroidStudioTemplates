package ${packageName}.Utils;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Environment;

import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * Created by huangxy on 2016/7/28.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class PhotoUtils {

    public static Boolean saveImage(Bitmap bitmap){
        String imgDir = Environment.getExternalStorageDirectory().getPath();
        String imgName = imgDir + "IMG_" + new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + ".png";
        return saveImage(imgDir, imgName, bitmap);
    }

    public static Boolean saveImage(String imgDir, String imgName, Bitmap bitmap){

        boolean compress = false;
        File fileDir = new File(imgDir);
        if (!fileDir.exists()){
            fileDir.mkdir();
        }
        //创建文件
        File imageFile = new File(fileDir, imgName);
        try {
            FileOutputStream fos = new FileOutputStream(imageFile);
            compress = bitmap.compress(Bitmap.CompressFormat.PNG, 100, fos);
            fos.flush();
            fos.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return compress;
    }

    public static String scale(String path, String fileDir){

        File outputFile = new File(path);
        long fileSize = outputFile.length();
        final long fileMaxSize = 100 * 1024; //100K
        if (fileSize >= fileMaxSize) {
            File file = new File(fileDir);
            if(!file.exists()){
                file.mkdirs();
            }
            String imageFileName = fileDir + "IMG_" + new SimpleDateFormat("yyyyMMddHHmmss").format(new Date()) + ".jpg";
            BitmapFactory.Options options = new BitmapFactory.Options();
            options.inJustDecodeBounds = true;
            BitmapFactory.decodeFile(path, options);

            int height = options.outHeight;
            int width = options.outWidth;

            double scale = Math.sqrt((float) fileSize / fileMaxSize);
            options.outHeight = (int) (height / scale);
            options.outWidth = (int) (width / scale);
            options.inSampleSize = (int) (scale + 0.5);
            options.inJustDecodeBounds = false;

            Bitmap bitmap = BitmapFactory.decodeFile(path, options);
            ByteArrayOutputStream baos = new ByteArrayOutputStream();
            int option = 100;
            bitmap.compress(Bitmap.CompressFormat.JPEG, option, baos);
            while (baos.toByteArray().length / 1024 > 100) {
                baos.reset();
                option -= 10;
                bitmap.compress(Bitmap.CompressFormat.JPEG, option, baos);
            }
            try {
                FileOutputStream fos = new FileOutputStream(imageFileName);
                fos.write(baos.toByteArray());
                fos.flush();
                fos.close();
            } catch (Exception e) {
                e.printStackTrace();
                return path;
            }
            if (!bitmap.isRecycled()) {
                bitmap.recycle();
            }
            return imageFileName;
        }
        return path;
    }
}

