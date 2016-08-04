<resources>

    <!-- Base application style. -->
    <style name="BaselayoutStyle">
        <item name="android:layout_width">match_parent</item>
        <item name="android:layout_height">match_parent</item>
    </style>

    <style name="BaselayoutStyle2">
        <item name="android:layout_width">wrap_content</item>
        <item name="android:layout_height">wrap_content</item>
    </style>

    <style name="BaselayoutStyle3">
        <item name="android:layout_width">wrap_content</item>
        <item name="android:layout_height">match_parent</item>
    </style>

    <style name="BaselayoutStyle4">
        <item name="android:layout_width">match_parent</item>
        <item name="android:layout_height">wrap_content</item>
    </style>

    <style name="BaselayoutStyle5">
        <item name="android:layout_width">0dp</item>
        <item name="android:layout_height">match_parent</item>
        <item name="android:layout_weight">1</item>
    </style>

    <style name="BaselayoutStyle6">
        <item name="android:layout_width">match_parent</item>
        <item name="android:layout_height">0dp</item>
        <item name="android:layout_weight">1</item>
    </style>

    <style name="BaselayoutStyle7" parent="BaselayoutStyle2">
        <item name="android:layout_centerVertical">true</item>
    </style>

    <style name="BaselayoutStyle8" parent="BaselayoutStyle2">
        <item name="android:layout_centerHorizontal">true</item>
    </style>

    <style name="BaselayoutStyle9" parent="BaselayoutStyle2">
        <item name="android:layout_centerInParent">true</item>
    </style>

    <style name="BaseLinearStyle" parent="BaselayoutStyle">
        <item name="android:orientation">vertical</item>
    </style>

    <style name="BaseLinearStyle2" parent="BaselayoutStyle">
        <item name="android:orientation">horizontal</item>
    </style>

    <style name="BaseLinearStyle3" parent="BaselayoutStyle4">
        <item name="android:orientation">vertical</item>
    </style>

    <style name="BaseLinearStyle4" parent="BaselayoutStyle4">
        <item name="android:orientation">horizontal</item>
    </style>

    <!-- Application style. -->
    <style name="AppActivityStyle" parent="BaseLinearStyle">
        <item name="android:background">@color/AppBgStyle</item>
    </style>

    <style name="AppHeaderStyle">
        <item name="android:layout_width">match_parent</item>
        <item name="android:layout_height">@dimen/app_header_height</item>
        <item name="android:background">@color/AppStyle</item>
    </style>

    <style name="AppHeaderItemStyle">
        <item name="android:layout_width">@dimen/app_header_item</item>
        <item name="android:layout_height">@dimen/app_header_item</item>
        <item name="android:layout_centerVertical">true</item>
    </style>

    <style name="AppFooterStyle">
        <item name="android:layout_width">match_parent</item>
        <item name="android:layout_height">@dimen/app_footer_height</item>
        <item name="android:background">@color/white</item>
    </style>

    <style name="AppFooterItemStyle">
        <item name="android:layout_width">match_parent</item>
        <item name="android:layout_height">@dimen/app_footer_item</item>
        <item name="android:layout_marginTop">@dimen/app_padding5</item>
        <item name="android:layout_centerVertical">true</item>
    </style>

    <style name="AppFooterItemStyle2" parent="BaselayoutStyle4">
        <item name="android:textSize">@dimen/app_textsize2</item>
        <item name="android:textColor">@color/black</item>
        <item name="android:gravity">center</item>
    </style>

    <style name="AppTitleStyle" parent="BaselayoutStyle2">
        <item name="android:textSize">@dimen/app_titlesize</item>
        <item name="android:textColor">@color/white</item>
        <item name="android:gravity">center</item>
    </style>

    <style name="AppLineStyle" parent="BaselayoutStyle4">
        <item name="android:layout_height">@dimen/app_linesize</item>
        <item name="android:background">@color/AppLineStyle</item>
    </style>
    
</resources>
