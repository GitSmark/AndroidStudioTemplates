package ${packageName};

import android.view.View;

/**
 * Created by huangxy on 2016/8/1.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class ${activityClass} extends AbstractActivity {

    @Override
    protected int getLayoutResId() {
        return R.layout.${layoutName};
    }

    @Override
    protected void initView() {
        $Title(R.id.layout_header2_center_text, getString(R.string.app_name));
        $Finish(R.id.layout_header2_left);
    }

    @Override
    public void onClick(View v) {

    }
}
