<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
	<#if ImmersiveBar == "true">
	style="@style/AppImmersiveBarStyle">
	<#else>
    style="@style/AppActivityStyle">
    </#if>

    <TextView
        style="@style/BaselayoutStyle"
        android:background="@color/AppBgStyle"
        android:text="Hello World!" />

</RelativeLayout>