package ${packageName}.View;

import android.view.View;

/**
 * Created by huangxy on 2016/8/3.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class ${adapterItemClass}_ListItem implements AdapterItem<#if adapterItemEntity != ""><${adapterItemEntity}></#if> {

    <#if itemListener>
    private ListItemCallBack listener = null;
    public ${adapterItemClass}_ListItem(Object listener){
        try {
            listener = (ListItemCallBack)listener;
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    </#if>
    @Override
    public int getLayoutResId() {
        return R.layout.${layoutName}_listitem;
    }

    @Override
    public void onBindViews(View root) {

    }

    @Override
    public void onUpdateViews(<#if adapterItemEntity != "">${adapterItemEntity}<#else>Object</#if> model, int position) {

    }

    @Override
    public void onItemAction(int position) {

    }
}