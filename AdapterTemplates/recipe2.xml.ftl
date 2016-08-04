<?xml version="1.0"?>
<recipe>

    <#if isFirst>
    <mkdir at="${escapeXmlAttribute(srcOut)}/Adapter" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Common" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Common/CommonAdapter" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Interface" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/View" />

	<dependency mavenUrl="com.android.support:appcompat-v7:${targetApi}.+"/>
    <dependency mavenUrl="com.android.support:recyclerview-v7:${targetApi}.+"/>

    <merge from="build.gradle.ftl"
            to="${escapeXmlAttribute(projectOut)}/build.gradle" />
    <merge from="res/values/styles.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/values/styles.xml" />

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
    <instantiate from="src/Interface/ListItemCallBack.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Interface/ListItemCallBack.java" />
    </#if>

    <instantiate from="src/Adapter/MainAdapter.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Adapter/${activityClass}Adapter.java" />
    <open file="${escapeXmlAttribute(srcOut)}/Adapter/${activityClass}Adapter.java" />
    <instantiate from="src/View/MainListItem.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/View/${adapterItemClass}_ListItem.java" />
    <open file="${escapeXmlAttribute(srcOut)}/View/${adapterItemClass}_ListItem.java" />
    <instantiate from="res/layout/main_listitem.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/${layoutName}_listitem.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/${layoutName}_listitem.xml" />

</recipe>
