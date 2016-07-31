package ${packageName}.Application;

import android.app.Activity;
import android.app.Application;
import android.os.Build;
import android.view.WindowManager;

import ${packageName}.Entity.UserEntity;
import com.lidroid.xutils.DbUtils;

/**
 * Created by huangxy on 2016/7/28.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class App extends Application {

    private DbUtils db = null;
    private UserEntity ue = null;

    private static App instance;
    public static App getInstance(){
        return instance;
    }

    @Override
    public void onCreate() {
        super.onCreate();
        instance = this;
        initUserInfo();
    }

    private void initUserInfo() {
        db = DbUtils.create(this);
        db.configAllowTransaction(true);
        try {
            ue = db.findFirst(UserEntity.class);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public UserEntity getUser(){
        return (ue==null)? new UserEntity(): ue;
    }

    public boolean setUser(UserEntity ue){
        try {
            if(deleteUser()){
                this.ue = ue;
                if (ue == null) return false; db.save(ue);
                return true;
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean deleteUser(){
        try {
            db.deleteAll(UserEntity.class);
            this.ue = null;
            return true;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return false;
    }

    public boolean isUserLogin(){
        if (ue != null && ue.getId() != null){
            return true;
        }
        return false;
    }

    //设置沉浸式状态栏，当版本大于4.4时起作用
    public static void ImmersiveBar(Activity activity) {
        if (Build.VERSION.SDK_INT >= Build.VERSION_CODES.KITKAT && activity != null) {
            activity.getWindow().addFlags(WindowManager.LayoutParams.FLAG_TRANSLUCENT_STATUS);
        }
    }
}
