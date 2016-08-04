package ${packageName}.Activity;

import android.view.View;

import ${packageName}.Common.AbstractView.AbstractActivity;
import ${packageName}.R;

/**
 * Created by huangxy on 2016/8/1.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class ${activityClass}Activity extends AbstractActivity {

    @Override
    protected int getLayoutResId() {
        return R.layout.activity_${layoutName};
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
