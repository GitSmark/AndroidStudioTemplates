package ${packageName}.Utils;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;

/**
 * Created by huangxy on 2016/7/28.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class FileUtils {

    //读取文件
    public static String readFile(String fileName) {

        File files = new File(fileName);
        if(files.exists()){
            try{
                InputStream instream = new FileInputStream(fileName);
                InputStreamReader inputreader = new InputStreamReader(instream, "UTF-8");
                BufferedReader buffreader = new BufferedReader(inputreader);
                String line;
                String str = null;
                while (( line = buffreader.readLine()) != null) {
                    str += line + "\n";
                }
                instream.close();
                return str;
            }catch(Exception e){
                e.printStackTrace();
            }
        }
        return null;
    }

    //写入文件
    public static void writeFile(String fileName, String message){

        try{
            //FileOutputStream fout = openFileOutput(fileName, MODE_PRIVATE);
            FileOutputStream fout = new FileOutputStream(fileName);
            byte [] bytes = message.getBytes();
            fout.write(bytes);
            fout.close();
        }catch(Exception e){
            e.printStackTrace();
        }
    }

    public static void deleteAllFiles(String dir){
        File root = new File(dir);
        deleteAllFiles(root);
    }

    //递归删除指定文件目录下所有文件(清除图片缓存)
    public static void deleteAllFiles(File root) {
        File files[] = root.listFiles();
        if (files != null) {
            for (File f : files) {
                if (f.isDirectory()) { // 判断是否为文件夹
                    deleteAllFiles(f);
                    try {
                        f.delete();
                    } catch (Exception e) {
                    }
                } else {
                    if (f.exists()) { // 判断是否存在
                        deleteAllFiles(f);
                        try {
                            f.delete();
                        } catch (Exception e) {
                        }
                    }
                }
            }
        }
    }
}
