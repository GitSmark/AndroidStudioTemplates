<resources>

    <!-- Application theme. -->
    <style name="BaseTheme" parent="Theme.AppCompat.Light.NoActionBar">
        <!--<item name="android:background">@color/AppBgStyle</item>-->
        <item name="colorPrimary">@color/colorGray</item>
    </style>

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
    <style name="AppImmersiveBarStyle" parent="BaseLinearStyle">
        <item name="android:background">@color/AppStyle</item>
        <item name="android:fitsSystemWindows">true</item>
    </style>

    <style name="AppActivityStyle" parent="BaseLinearStyle">
        <item name="android:background">@color/AppBgStyle</item>
    </style>

    <style name="AppActivityStyle2" parent="BaseLinearStyle">
        <item name="android:background">@color/AppBgStyle2</item>
    </style>

    <style name="AppActivityStyle3" parent="BaseLinearStyle3">
        <item name="android:background">@color/AppBgStyle</item>
    </style>

    <style name="AppActivityStyle4" parent="BaseLinearStyle3">
        <item name="android:background">@color/AppBgStyle2</item>
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

    <style name="AppTextStyle" parent="BaselayoutStyle2">
        <item name="android:textSize">@dimen/app_textsize1</item>
        <item name="android:textColor">@color/AppTextStyle</item>
        <item name="android:singleLine">true</item>
    </style>

    <style name="AppTextStyle2" parent="BaselayoutStyle2">
        <item name="android:textSize">@dimen/app_textsize2</item>
        <item name="android:textColor">@color/AppTextStyle</item>
        <item name="android:singleLine">true</item>
    </style>

    <style name="AppTextStyle3" parent="BaselayoutStyle2">
        <item name="android:textSize">@dimen/app_textsize1</item>
        <item name="android:textColor">@color/AppTextStyle2</item>
        <item name="android:singleLine">true</item>
    </style>

    <style name="AppTextStyle4" parent="BaselayoutStyle2">
        <item name="android:textSize">@dimen/app_textsize2</item>
        <item name="android:textColor">@color/AppTextStyle2</item>
        <item name="android:singleLine">true</item>
    </style>

    <style name="AppTextStyle5" parent="BaselayoutStyle2">
        <item name="android:textSize">@dimen/app_textsize1</item>
        <item name="android:textColor">@color/AppTextStyle3</item>
        <item name="android:singleLine">true</item>
    </style>

    <style name="AppTextStyle6" parent="BaselayoutStyle2">
        <item name="android:textSize">@dimen/app_textsize2</item>
        <item name="android:textColor">@color/AppTextStyle3</item>
        <item name="android:singleLine">true</item>
    </style>

    <style name="AppTextStyle7" parent="BaselayoutStyle2">
        <item name="android:textSize">@dimen/app_textsize1</item>
        <item name="android:textColor">@color/AppTextStyle4</item>
        <item name="android:singleLine">true</item>
    </style>

    <style name="AppTextStyle8" parent="BaselayoutStyle2">
        <item name="android:textSize">@dimen/app_textsize2</item>
        <item name="android:textColor">@color/AppTextStyle4</item>
        <item name="android:singleLine">true</item>
    </style>

    <style name="AppImageStyle" parent="BaselayoutStyle">
        <item name="android:background">@mipmap/ic_error_image</item>
    </style>

    <style name="AppImageStyle2" parent="BaselayoutStyle2">
        <item name="android:src">@mipmap/ic_error_image</item>
    </style>

    <style name="AppImageStyle100" parent="AppImageStyle2">
        <item name="android:layout_width">100dp</item>
        <item name="android:layout_height">100dp</item>
    </style>

    <style name="AppImageStyle75" parent="AppImageStyle2">
        <item name="android:layout_width">75dp</item>
        <item name="android:layout_height">75dp</item>
    </style>

    <style name="AppImageStyle64" parent="AppImageStyle2">
        <item name="android:layout_width">64dp</item>
        <item name="android:layout_height">64dp</item>
    </style>

    <style name="AppImageStyle50" parent="AppImageStyle2">
        <item name="android:layout_width">50dp</item>
        <item name="android:layout_height">50dp</item>
    </style>

    <style name="AppImageStyle30" parent="AppImageStyle2">
        <item name="android:layout_width">30dp</item>
        <item name="android:layout_height">30dp</item>
    </style>

    <style name="AppImageStyle15" parent="AppImageStyle2">
        <item name="android:layout_width">15dp</item>
        <item name="android:layout_height">15dp</item>
    </style>

    <style name="AppBtnStyle" parent="BaselayoutStyle4">
        <item name="android:background">@drawable/common_btn_design</item>
        <item name="android:layout_marginRight">@dimen/app_padding15</item>
        <item name="android:layout_marginLeft">@dimen/app_padding15</item>
        <item name="android:paddingBottom">@dimen/app_padding10</item>
        <item name="android:paddingTop">@dimen/app_padding10</item>
        <item name="android:textColor">@color/AppTextStyle2</item>
        <item name="android:textSize">@dimen/app_textsize1</item>
        <item name="android:clickable">true</item>
    </style>

    <style name="AppBtnStyle2" parent="AppBtnStyle">
        <item name="android:paddingRight">@dimen/app_padding15</item>
        <item name="android:paddingLeft">@dimen/app_padding15</item>
        <item name="android:layout_width">wrap_content</item>
    </style>

    <style name="AppBtnStyle3" parent="AppBtnStyle">
        <item name="android:background">@drawable/common_btn_design2</item>
    </style>

    <style name="AppBtnStyle4" parent="AppBtnStyle2">
        <item name="android:background">@drawable/common_btn_design2</item>
    </style>

    <style name="AppBtnStyle5" parent="AppBtnStyle">
        <item name="android:background">@drawable/common_btn_design3</item>
    </style>

    <style name="AppBtnStyle6" parent="AppBtnStyle2">
        <item name="android:background">@drawable/common_btn_design3</item>
    </style>

    <style name="AppEditStyle" parent="BaselayoutStyle4">
        <item name="android:background">@drawable/common_btn_design2</item>
        <item name="android:layout_marginRight">@dimen/app_padding15</item>
        <item name="android:layout_marginLeft">@dimen/app_padding15</item>
        <item name="android:textColorHint">@color/AppTextStyle2</item>
        <item name="android:paddingBottom">@dimen/app_padding15</item>
        <item name="android:paddingTop">@dimen/app_padding15</item>
        <item name="android:textColor">@color/AppTextStyle2</item>
        <item name="android:textSize">@dimen/app_textsize1</item>
    </style>

    <style name="AppEditStyle2" parent="BaselayoutStyle4">
        <item name="android:background">@color/AppBgStyle</item>
        <item name="android:textSize">@dimen/app_textsize1</item>
        <item name="android:padding">@dimen/app_padding10</item>
        <item name="android:gravity">left|fill_vertical</item>
        <item name="android:textColorHint">@color/gray</item>
        <item name="android:textColor">@color/black</item>
        <item name="android:singleLine">true</item>
    </style>

    <style name="AppEditPhoneStyle" parent="AppEditStyle">
        <item name="android:digits">0123456789</item>
        <item name="android:maxLength">11</item>
    </style>

    <style name="AppEditPasswordStyle" parent="AppEditStyle">
        <item name="android:digits">0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz_</item>
        <item name="android:password">true</item>
        <item name="android:maxLength">15</item>
    </style>

    <style name="AppEditCaptchaStyle" parent="AppEditStyle">
        <item name="android:digits">0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz</item>
        <item name="android:maxLength">4</item>
    </style>

    <style name="AppLineStyle" parent="BaselayoutStyle4">
        <item name="android:layout_height">@dimen/app_linesize</item>
        <item name="android:background">@color/AppLineStyle</item>
    </style>

    <style name="AppLineStyle2" parent="BaselayoutStyle3">
        <item name="android:layout_width">@dimen/app_linesize</item>
        <item name="android:background">@color/AppLineStyle</item>
    </style>

    <style name="AppScrollStyle" parent="BaselayoutStyle">
        <item name="android:background">@color/AppBgStyle</item>
        <item name="android:scrollbars">none</item>
    </style>

    <style name="AppScrollStyle2" parent="AppScrollStyle">
        <item name="android:overScrollMode">never</item>
    </style>

    <style name="AppListStyle" parent="AppScrollStyle">
        <item name="android:cacheColorHint">@color/transparent</item>
        <item name="android:listSelector">@color/transparent</item>
    </style>

    <style name="AppListStyle2" parent="AppListStyle">
        <item name="android:divider">@color/transparent</item>
        <item name="android:dividerHeight">0dp</item>
    </style>

    <style name="AppListStyle3" parent="AppListStyle">
        <item name="android:dividerHeight">@dimen/app_linesize</item>
        <item name="android:background">@color/AppBgStyle</item>
        <item name="android:divider">@color/AppLineStyle</item>
        <item name="android:headerDividersEnabled">false</item>
        <item name="android:footerDividersEnabled">false</item>
    </style>

    <style name="AppListStyle4" parent="AppScrollStyle2">
        <item name="android:cacheColorHint">@color/transparent</item>
        <item name="android:layout_height">wrap_content</item>
        <item name="android:layout_weight">1</item>
        <item name="android:width">0dp</item>
    </style>

    <style name="AppGridStyle" parent="AppListStyle2">
        <item name="android:horizontalSpacing">@dimen/app_padding10</item>
        <item name="android:verticalSpacing">@dimen/app_padding10</item>
        <item name="android:overScrollMode">never</item>
        <item name="android:numColumns">3</item>
    </style>

    <style name="AppAnimationStyle" parent="android:Animation">
        <!--<item name="@android:windowEnterAnimation">@anim/slide_bottom_to_top</item>-->
        <!--<item name="@android:windowExitAnimation">@anim/slide_top_to_bottom</item>-->
    </style>

    <style name="AppDialogFullscreenStyle">
        <item name="android:windowBackground">@android:color/transparent</item>
        <item name="android:windowAnimationStyle">@android:style/Animation.Translucent</item>
        <item name="android:colorBackgroundCacheHint">@null</item>
        <item name="android:windowContentOverlay">@null</item>
        <item name="android:windowIsTranslucent">true</item>
        <item name="android:windowNoTitle">true</item>
    </style>

</resources>
