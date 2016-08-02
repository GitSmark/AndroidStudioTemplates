<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:id="@+id/layout_header2"
    style="@style/AppHeaderStyle">

    <RelativeLayout
        style="@style/BaselayoutStyle3"
        android:id="@+id/layout_header2_left"
        android:layout_alignParentLeft="true"
        android:paddingLeft="@dimen/app_padding10"
        android:paddingRight="@dimen/app_padding20">

        <ImageView
            style="@style/AppHeaderItemStyle"
            android:id="@+id/layout_header2_left_image"
            android:src="@drawable/ic_arrow_left"/>

    </RelativeLayout>

    <TextView
        style="@style/AppTitleStyle"
        android:id="@+id/layout_header2_center_text"
        android:layout_centerInParent="true"
        android:text="@string/app_name" />

    <RelativeLayout
        style="@style/BaselayoutStyle3"
        android:id="@+id/layout_header2_right"
        android:layout_alignParentRight="true"
        android:paddingRight="@dimen/app_padding10"
        android:paddingLeft="@dimen/app_padding20">

        <ImageView
            style="@style/AppHeaderItemStyle"
            android:id="@+id/layout_header2_right_image"/>

    </RelativeLayout>

</RelativeLayout>
