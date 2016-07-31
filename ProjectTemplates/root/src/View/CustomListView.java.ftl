package ${packageName}.View;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ListView;

/**
 * Created by huangxy on 2016/7/28.
 * https://github.com/GitSmark/AndroidStudioTemplates
 * 重写onMeasure方法，使ListView高度自适应ScrollView
 */
public class CustomListView extends ListView {

    public CustomListView(Context context) {
        this(context, null);
    }
    public CustomListView(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }
    public CustomListView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    @Override
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int expandSpec = MeasureSpec.makeMeasureSpec(Integer.MAX_VALUE >> 2, MeasureSpec.AT_MOST);
        super.onMeasure(widthMeasureSpec, expandSpec);
    }
}

