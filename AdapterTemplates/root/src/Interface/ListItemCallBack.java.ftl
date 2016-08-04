package ${packageName}.Interface;

import android.view.View;

import java.util.Objects;

/**
 * Created by huangxy on 2016/7/28.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public interface ListItemCallBack {
    public void onItemClicked(View view, int position, Objects... params);
}