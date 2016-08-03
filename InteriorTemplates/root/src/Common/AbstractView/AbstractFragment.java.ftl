package ${packageName}.Common.AbstractView;

import android.app.Activity;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;

/**
 * Created by huangxy on 2016/3/3.
 * https://github.com/GitSmark/AbstractView
 */
public abstract class AbstractFragment extends Fragment implements OnClickListener {

    protected abstract int  getLayoutResId();
    protected abstract void initView();
    protected View view = null;
    
    @Override
    @Deprecated
    public void onAttach(Activity activity) {
        // TODO Auto-generated method stub
        super.onAttach(activity);
    }
    
    @Override
    @Nullable
    public View onCreateView(LayoutInflater inflater, @Nullable ViewGroup container, @Nullable Bundle savedInstanceState) {
        // TODO Auto-generated method stub
        view = inflater.inflate(getLayoutResId(), container, false);
        beforeInitView();
        initView();
        getData();
        Other();
        return view;
    }

    @SuppressWarnings("uncheckedz")
    protected <T extends View> T $find(int Resid) {
        return (T) view.findViewById(Resid);
    }

    @SuppressWarnings("uncheckedz")
    protected <T extends View> T $find(View v, int Resid) {
        return (T) v.findViewById(Resid);
    }

    @SuppressWarnings("uncheckedz")
    protected <T extends View> T $click(int Resid) {
        T t = (T) view.findViewById(Resid);
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
        T t = (T) view.findViewById(Resid);
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

    public void beforeInitView() {}
    public void getData() {}
    public void Other() {}

}
