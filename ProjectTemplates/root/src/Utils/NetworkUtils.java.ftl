package ${packageName}.Utils;

import android.content.Context;
import android.location.LocationManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.wifi.WifiInfo;
import android.net.wifi.WifiManager;
import android.telephony.TelephonyManager;
import android.widget.Toast;

import ${packageName}.R;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;

/**
 * Created by huangxy on 2016/7/28.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class NetworkUtils {
    
    public static boolean NetworkTips(Context context) {
        
        if(context != null){
            if(isNetworkAvailable(context)){
                return true;
            }
            Toast.makeText(context, R.string.error_network, Toast.LENGTH_LONG).show();
            //ToastUtils.Show(context, R.drawable.ic_network, R.string.error_network, Toast.LENGTH_SHORT);
        }
        return false;
    }
      
    /** 
     * 网络是否可用 
     * @param context
     * @return 
     */  
    public static boolean isNetworkAvailable(Context context) {
        if(context != null){
            ConnectivityManager connectivity = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
            if (connectivity != null) {  
                NetworkInfo[] info = connectivity.getAllNetworkInfo();
                if (info != null) {  
                    for (int i = 0; i < info.length; i++) {  
                        if (info[i].getState() == NetworkInfo.State.CONNECTED) {
                            return true;  
                        }  
                    }  
                }  
            }
        }
        return false;
    }  

    /** 
     * Gps是否打开 
     *  
     * @param context 
     * @return 
     */  
    public static boolean isGpsEnabled(Context context) {
        LocationManager locationManager = ((LocationManager) context.getSystemService(Context.LOCATION_SERVICE));
        List<String> accessibleProviders = locationManager.getProviders(true);
        return accessibleProviders != null && accessibleProviders.size() > 0;  
    }  
  
    /** 
     * wifi是否打开 
     */  
    public static boolean isWifiEnabled(Context context) {
        ConnectivityManager mgrConn = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        TelephonyManager mgrTel = (TelephonyManager) context.getSystemService(Context.TELEPHONY_SERVICE);
        return ((mgrConn.getActiveNetworkInfo() != null && mgrConn  
                .getActiveNetworkInfo().getState() == NetworkInfo.State.CONNECTED) || mgrTel
                .getNetworkType() == TelephonyManager.NETWORK_TYPE_UMTS);
    }  
  
    /** 
     * 判断当前网络是否是wifi网络 
     * if(activeNetInfo.getType()==ConnectivityManager.TYPE_MOBILE) {  
     * @param context
     * @return boolean 
     */  
    public static boolean isWifi(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo activeNetInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetInfo != null && activeNetInfo.getType() == ConnectivityManager.TYPE_WIFI) {
            return true;  
        }  
        return false;  
    }  
  
    /** 
     * 判断当前网络是否3G网络 
     * @param context
     * @return boolean 
     */  
    public static boolean is3G(Context context) {
        ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService(Context.CONNECTIVITY_SERVICE);
        NetworkInfo activeNetInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetInfo != null && activeNetInfo.getType() == ConnectivityManager.TYPE_MOBILE) {
            return true;  
        }  
        return false;  
    }
    
    //通过访问网页获取外网IP
    public static String getNetWorkIp(){
        
        InputStream inStream = null;
        try {  
            URL infoUrl = new URL("http://city.ip138.com/ip2city.asp");
            URLConnection connection = infoUrl.openConnection();
            HttpURLConnection httpConnection = (HttpURLConnection)connection;
            int responseCode = httpConnection.getResponseCode();  
            if(responseCode == HttpURLConnection.HTTP_OK)
              {      
               inStream = httpConnection.getInputStream();     
               BufferedReader reader = new BufferedReader(new InputStreamReader(inStream,"gb2312"));
               StringBuilder strber = new StringBuilder();
               String line = null;
               while ((line = reader.readLine()) != null)   
                   strber.append(line + "\n");  
               inStream.close(); 
               String result = strber.toString();
               int start = strber.indexOf("[");
               int end = strber.indexOf("]");
               String ip = result.substring(start+1, end);
               return ip;
             }  
        } catch (MalformedURLException e) {
            e.printStackTrace();
        } catch (IOException e) {
            e.printStackTrace();
        }  
       return "127.0.0.1";
    }
    
    private static String int2ip(int ipInt) {
        StringBuilder sb = new StringBuilder();
        sb.append(ipInt & 0xFF).append(".");  
        sb.append((ipInt >> 8) & 0xFF).append(".");  
        sb.append((ipInt >> 16) & 0xFF).append(".");  
        sb.append((ipInt >> 24) & 0xFF);  
        return sb.toString();  
    }

    //获取本机Mac地址
    public static String getLocalMac(Context context)
    {
        String mac = "";
        WifiManager wifiMng = (WifiManager) context.getSystemService(Context.WIFI_SERVICE);
        WifiInfo wifiInfor = wifiMng.getConnectionInfo();
        return wifiInfor.getMacAddress();
    }
    
} 
