package ${packageName}.Adapter;

import android.support.annotation.NonNull;

import java.util.List;

import ${packageName}.Common.CommonAdapter.AdapterItem;
import ${packageName}.Common.CommonAdapter.CommonAdapter;
import ${packageName}.View.Demo_ListItem;

/**
 * Created by huangxy on 2016/8/3.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class ${activityClass}Adapter extends ${adapterType} {

    <#if itemListener>
    private Object listener = null;

    </#if>
    public ${activityClass}Adapter(@NonNull List data) {
        super(data);
    }
    <#if itemListener>
    
    public ${activityClass}Adapter(@NonNull List data, Object listener) {
        super(data);this.listener = listener;
    }
    </#if>

    @NonNull
    @Override
    public AdapterItem onCreateItem(Object type) {
        return new ${adapterItemClass}_ListItem(<#if itemListener>listener</#if>);
    }
}