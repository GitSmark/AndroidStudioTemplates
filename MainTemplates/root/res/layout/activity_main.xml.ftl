<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    xmlns:app="http://schemas.android.com/apk/res-auto"
    style="@style/AppActivityStyle">

    <include layout="@layout/layout_header" />

    <${packageName}.View.CustomViewPager
        style="@style/BaselayoutStyle6"
        android:id="@+id/${layoutName}_viewpager"
        android:background="@color/AppBgStyle"
        app:no_scroll="true" />

    <#if tabStyle="normal">
    <View style="@style/AppLineStyle"/>
    
    </#if>
    <include layout="@layout/layout_footer" />

</LinearLayout>