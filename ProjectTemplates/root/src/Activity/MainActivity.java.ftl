package ${packageName}.Activity;

import android.view.View;

import ${packageName}.Common.AbstractView.AbstractActivity;
import ${packageName}.R;

/**
 * Created by huangxy on 2016/7/28.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class MainActivity extends AbstractActivity {

    @Override
    protected int getLayoutResId() {
    	<#if generateLayout>
        return R.layout.${layoutName};
        <#else>
        return 0;
		</#if> 
    }

    @Override
    protected void initView() {

    }

    @Override
    public void onClick(View v) {

    }
}
