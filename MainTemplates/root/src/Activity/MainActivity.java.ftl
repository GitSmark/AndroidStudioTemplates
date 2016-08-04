package ${packageName}.Activity;

import android.support.v4.app.Fragment;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.widget.LinearLayout;

import ${packageName}.Adapter.MainFragmentPagerAdapter;
import ${packageName}.Common.AbstractView.AbstractFragmentActivity;
import ${packageName}.Fragment.Page_Fragment1;
import ${packageName}.R;
import ${packageName}.View.CustomFootItem;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by huangxy on 2016/8/4.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class ${activityClass} extends AbstractFragmentActivity implements CustomFootItem.FootItemSelectedListener {

    private ViewPager mViewPager;
    private MainFragmentPagerAdapter mAdapter;
    private List<Fragment> mFragments = new ArrayList<>();
    private CustomFootItem[] mItem = new CustomFootItem[${tabCount}];
    private Fragment[] mPage = new Fragment[${tabCount}];

    private int LastPage = 0;
    private final int DrawableResId[] = new int[]{R.mipmap.ic_foot1, R.mipmap.ic_foot2, R.mipmap.ic_foot3, R.mipmap.ic_foot4, R.mipmap.ic_foot5};
    private final int StringResId[] = new int[]{R.string.page_footer_tv1, R.string.page_footer_tv2, R.string.page_footer_tv3, R.string.page_footer_tv4, R.string.page_footer_tv5};

    @Override
    protected int getLayoutResId() {
        return R.layout.${layoutName};
    }

    @Override
    protected void initView() {

        LinearLayout foot = $find(R.id.layout_footer);
        for (int i = 0; i < mItem.length; i++) {
            mItem[i] = new CustomFootItem(this, DrawableResId[i], StringResId[i], i, this);
            <#if tabStyle="normal">
            mItem[i].setItemTvTextColorResId(R.color.colorGray);
            mItem[i].setItemIvTintColorResId(R.color.colorGray);
            <#else>
            mItem[i].setItemIvTintColorResId(R.color.AppBgStyle);
            mItem[i].setItemTvTextColorResId(R.color.AppBgStyle);
            mItem[i].setItemBackgroundResId(R.color.colorGray);
            </#if>
            foot.addView(mItem[i]);
        }

        mPage[0] = new ${fragmentClass}1();
        mPage[1] = new ${fragmentClass}2();
        mPage[2] = new ${fragmentClass}3();
        <#if tabCount="4">
        mPage[3] = new ${fragmentClass}4();
        </#if>
        <#if tabCount="5">
        mPage[3] = new ${fragmentClass}4();
        mPage[4] = new ${fragmentClass}5();
        </#if>
        mFragments.add(mPage[0]);
        mFragments.add(mPage[1]);
        mFragments.add(mPage[2]);
        <#if tabCount="4">
        mFragments.add(mPage[3]);
        </#if>
        <#if tabCount="5">
        mFragments.add(mPage[3]);
        mFragments.add(mPage[4]);
        </#if>

        mAdapter = new MainFragmentPagerAdapter(getSupportFragmentManager(), mFragments);
        mViewPager = $find(R.id.${layoutName}_viewpager);
        mViewPager.setAdapter(mAdapter);

        mViewPager.setOffscreenPageLimit(mFragments.size());
        setHeadWithFoot(LastPage);
    }

    @Override
    public void onClick(View v) {

    }

    @Override
    public void onFootItemSelected(int position) {
        if (getCurrentItem() == -1 || getCurrentItem() == position) return;
        LastPage = getCurrentItem();setHeadWithFoot(position);
        mViewPager.setCurrentItem(position, false);
    }

    private void setHeadWithFoot(int position) {
        $Title(R.id.layout_header_center_text, getString(StringResId[position]));
        <#if tabStyle="normal">
        mItem[LastPage].setItemTvTextColorResId(R.color.colorGray);
        mItem[LastPage].setItemIvTintColorResId(R.color.colorGray);
        mItem[position].setItemTvTextColorResId(R.color.AppStyle);
        mItem[position].setItemIvTintColorResId(R.color.AppStyle);
        <#else>
        mItem[LastPage].setItemBackgroundResId(R.color.colorGray);
        mItem[position].setItemBackgroundResId(R.color.AppStyle);
        </#if>
    }

    public int getCurrentItem(){
        if (mViewPager != null){
            return mViewPager.getCurrentItem();
        }
        return -1;
    }

    public int getLastPage(){
        return LastPage;
    }
}
