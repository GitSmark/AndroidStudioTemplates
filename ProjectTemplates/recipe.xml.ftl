<?xml version="1.0"?>
<recipe>

    <mkdir at="${escapeXmlAttribute(projectOut)}/libs" />
	<mkdir at="${escapeXmlAttribute(srcOut)}/Activity" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Adapter" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Application" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Common" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Common/AbstractView" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Common/CommonAdapter" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Common/LayoutManager" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Entity" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Fragment" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Interface" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Utils" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/View" />

	<dependency mavenUrl="com.android.support:appcompat-v7:${targetApi}.+"/>
    <dependency mavenUrl="com.android.support:recyclerview-v7:${targetApi}.+"/>

    <instantiate from="proguard-rules.txt.ftl"
            to="${escapeXmlAttribute(projectOut)}/proguard-rules_progruard.pro" />
    <merge from="AndroidManifest.xml.ftl"
            to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <merge from="build.gradle.ftl"
            to="${escapeXmlAttribute(projectOut)}/build.gradle" />
    <#if ButterKnife>
        <merge from="top/build.gradle.ftl"
            to="${escapeXmlAttribute(topOut)}/build.gradle" />
    </#if>

    <merge from="res/values/attrs.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/values/attrs.xml" />
    <merge from="res/values/dimens.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />
    <merge from="res/values/colors.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/values/colors.xml" />
    <merge from="res/values/strings.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/values/strings.xml" />
    <merge from="res/values/styles.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/values/styles.xml" />

    <copy from="libs/"
            to="${escapeXmlAttribute(projectOut)}/libs" />
    <copy from="res/mipmap-hdpi"
            to="${escapeXmlAttribute(resOut)}/mipmap-hdpi" />
    <copy from="res/drawable-hdpi"
            to="${escapeXmlAttribute(resOut)}/drawable-hdpi" />
    <copy from="res/drawable-mdpi"
            to="${escapeXmlAttribute(resOut)}/drawable-mdpi" />
    <copy from="res/drawable-xhdpi"
            to="${escapeXmlAttribute(resOut)}/drawable-xhdpi" />
    <copy from="res/drawable-xxhdpi"
            to="${escapeXmlAttribute(resOut)}/drawable-xxhdpi" />
    <copy from="res/drawable-xxxhdpi"
            to="${escapeXmlAttribute(resOut)}/drawable-xxxhdpi" />
    <copy from="res/drawable"
            to="${escapeXmlAttribute(resOut)}/drawable" />

    <instantiate from="src/Adapter/MainFragmentPagerAdapter.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Adapter/MainFragmentPagerAdapter.java" />
    <instantiate from="src/Application/App.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Application/App.java" />
    <instantiate from="src/Application/Constant.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Application/Constant.java" />
    <instantiate from="src/Common/AbstractView/AbstractFragmentActivity.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/AbstractView/AbstractFragmentActivity.java" />
    <instantiate from="src/Common/AbstractView/AbstractActivity.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/AbstractView/AbstractActivity.java" />
    <instantiate from="src/Common/AbstractView/AbstractFragment.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/AbstractView/AbstractFragment.java" />
    <instantiate from="src/Common/CommonAdapter/AdapterItem.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/CommonAdapter/AdapterItem.java" />
    <instantiate from="src/Common/CommonAdapter/AdapterItemUtil.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/CommonAdapter/AdapterItemUtil.java" />
    <instantiate from="src/Common/CommonAdapter/BasePagerAdapter.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/CommonAdapter/BasePagerAdapter.java" />
    <instantiate from="src/Common/CommonAdapter/CommonAdapter.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/CommonAdapter/CommonAdapter.java" />
    <instantiate from="src/Common/CommonAdapter/CommonPagerAdapter.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/CommonAdapter/CommonPagerAdapter.java" />
    <instantiate from="src/Common/CommonAdapter/CommonRcvAdapter.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/CommonAdapter/CommonRcvAdapter.java" />
    <instantiate from="src/Common/CommonAdapter/IAdapter.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/CommonAdapter/IAdapter.java" />
    <instantiate from="src/Common/LayoutManager/FullyGridLayoutManager.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/LayoutManager/FullyGridLayoutManager.java" />
    <instantiate from="src/Common/LayoutManager/FullyLinearLayoutManager.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/LayoutManager/FullyLinearLayoutManager.java" />
    <instantiate from="src/Common/LayoutManager/FullyListViewManager.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/LayoutManager/FullyListViewManager.java" />
    <instantiate from="src/Entity/UserEntity.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Entity/UserEntity.java" />
    <instantiate from="src/Interface/ListItemCallBack.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Interface/ListItemCallBack.java" />
    <instantiate from="src/Utils/DensityUtils.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Utils/DensityUtils.java" />
    <instantiate from="src/Utils/FileUtils.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Utils/FileUtils.java" />
    <instantiate from="src/Utils/GlideRoundBitmap.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Utils/GlideRoundBitmap.java" />
    <instantiate from="src/Utils/InputFilterUtils.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Utils/InputFilterUtils.java" />
    <instantiate from="src/Utils/InputValidUtils.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Utils/InputValidUtils.java" />
    <instantiate from="src/Utils/MTextWeacher.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Utils/MTextWeacher.java" />
    <instantiate from="src/Utils/NetworkUtils.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Utils/NetworkUtils.java" />
    <instantiate from="src/Utils/PhotoUtils.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Utils/PhotoUtils.java" />
    <instantiate from="src/Utils/SoutUtils.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Utils/SoutUtils.java" />
    <instantiate from="src/Utils/StringUtils.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Utils/StringUtils.java" />
    <instantiate from="src/Utils/ToastUtils.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Utils/ToastUtils.java" />
    <instantiate from="src/View/CustomImageView.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/View/CustomImageView.java" />
    <instantiate from="src/View/CustomListView.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/View/CustomListView.java" />
    <instantiate from="src/View/CustomViewPager.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/View/CustomViewPager.java" />

    <instantiate from="src/Activity/Mainactivity.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Activity/${activityClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/Activity/${activityClass}.java" />
	<#if generateLayout>
	   <instantiate from="res/layout/activity_main.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/${simpleLayoutName}.xml" />
	   <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
	</#if>

</recipe>
