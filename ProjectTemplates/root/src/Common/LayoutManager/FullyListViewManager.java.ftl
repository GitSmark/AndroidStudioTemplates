package ${packageName}.Common.LayoutManager;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ListAdapter;
import android.widget.ListView;

public class FullyListViewManager {

    /**
    * 动态设置ListView的高度,在ListView设置了Adapter之后使用
    * Adapter中getView方法返回的View的必须由LinearLayout组成
    * 因为只有LinearLayout才有 measure()方法，如果使用其他的布局
    * 如RelativeLayout，在调用measure()方法时就会抛异常
    * @author GitSmark@huangxy
    * @param listView
    */
    public static void setListViewHeightBasedOnChildren(ListView listView) {
        setListView(listView, 0, 0, 0, 0);
    }

    public static void setListViewHeightBasedOnChildren(ListView listView, int left, int top, int right, int bottom) {
        setListView(listView, left, top, right, bottom);
    }

    private static void setListView(ListView listView, int left, int top, int right, int bottom){
        if(listView == null) return;
        ListAdapter listAdapter = listView.getAdapter();
        if (listAdapter == null) {
            return;
        }
        int totalHeight = 0;
        for (int i = 0; i < listAdapter.getCount(); i++) {
            View listItem = listAdapter.getView(i, null, listView);
            listItem.measure(0, 0);
            totalHeight += listItem.getMeasuredHeight();
        }
        ViewGroup.LayoutParams params = listView.getLayoutParams();
        params.height = totalHeight + (listView.getDividerHeight() * (listAdapter.getCount() - 1)) + top + bottom;
        listView.setPadding(left, top, right, bottom);
        listView.setLayoutParams(params);
    }
}
