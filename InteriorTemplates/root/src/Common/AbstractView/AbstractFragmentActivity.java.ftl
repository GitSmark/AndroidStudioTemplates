package ${packageName}.Common.AbstractView;

import android.support.v4.app.FragmentActivity;
import android.os.Bundle;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.TextView;

/**
 * Created by huangxy on 2016/3/3.
 * https://github.com/GitSmark/AbstractView
 */
public abstract class AbstractFragmentActivity extends FragmentActivity implements OnClickListener {

    protected abstract int  getLayoutResId();
    protected abstract void initView();

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        // TODO Auto-generated method stub
        super.onCreate(savedInstanceState);
        setContentView(getLayoutResId());
        beforeInitView();
        initView();
        getData();
        Other();
    }

    @SuppressWarnings("uncheckedz")
    protected <T extends View> T $find(int Resid) {
        return (T) findViewById(Resid);
    }

    @SuppressWarnings("uncheckedz")
    protected <T extends View> T $find(View v, int Resid) {
        return (T) v.findViewById(Resid);
    }

    @SuppressWarnings("uncheckedz")
    protected <T extends View> T $click(int Resid) {
        T t = (T) findViewById(Resid);
        try {t.setOnClickListener(this);
        }catch (Exception e){}
        return t;
    }

    @SuppressWarnings("uncheckedz")
    protected <T extends View> T $click(View v, int Resid) {
        T t = (T) v.findViewById(Resid);
        try {t.setOnClickListener(this);
        }catch (Exception e){}
        return t;
    }

    @SuppressWarnings("uncheckedz")
    protected <T extends View> T $onClick(int Resid, OnClickListener listener) {
        T t = (T) findViewById(Resid);
        try {t.setOnClickListener(listener);
        }catch (Exception e){}
        return t;
    }

    @SuppressWarnings("uncheckedz")
    protected <T extends View> T $onClick(View v, int Resid, OnClickListener listener) {
        T t = (T) v.findViewById(Resid);
        try {t.setOnClickListener(listener);
        }catch (Exception e){}
        return t;
    }

    protected void $Title(int id, String text){
        try {
            TextView tv = (TextView) findViewById(id);
            tv.setText(text);
        }catch (Exception e){

        }
    }

    protected void $Finish(int id){
        try {
            findViewById(id).setOnClickListener(new OnClickListener() {
                @Override
                public void onClick(View v) {
                    beforeFinish();
                    finish();
                }
            });
        }catch (Exception e){

        }
    }

    public void beforeInitView() {}
    public void beforeFinish() {}
    public void getData() {}
    public void Other() {}

}