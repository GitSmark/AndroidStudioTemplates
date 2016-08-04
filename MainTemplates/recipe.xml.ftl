<?xml version="1.0"?>
<recipe>

    <#if isFirst>
	<mkdir at="${escapeXmlAttribute(srcOut)}/Activity" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Adapter" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Common" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Common/AbstractView" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Fragment" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Utils" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/View" />

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

    <copy from="res/mipmap-hdpi"
            to="${escapeXmlAttribute(resOut)}/mipmap-hdpi" />

    <instantiate from="src/View/CustomFootItem.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/View/CustomFootItem.java" />

    <instantiate from="res/layout/layout_footitem.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/layout_footitem.xml" />
    <instantiate from="res/layout/layout_footer.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/layout_footer.xml" />
    <instantiate from="res/layout/layout_header.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/layout_header.xml" />
    </#if>

    <merge from="AndroidManifest.xml.ftl"
            to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <#switch tabCount>
    <#case "5">
        <instantiate from="src/Fragment/Page_Fragment5.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Fragment/${fragmentClass}5.java" />
        <instantiate from="res/layout/fragment_page.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/${fragmentName}5.xml" />
    <#case "4">
        <instantiate from="src/Fragment/Page_Fragment4.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Fragment/${fragmentClass}4.java" />
        <instantiate from="res/layout/fragment_page.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/${fragmentName}4.xml" />
    <#default>
        <instantiate from="src/Fragment/Page_Fragment3.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Fragment/${fragmentClass}3.java" />
        <instantiate from="src/Fragment/Page_Fragment2.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Fragment/${fragmentClass}2.java" />
        <instantiate from="src/Fragment/Page_Fragment1.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Fragment/${fragmentClass}1.java" />
        <instantiate from="res/layout/fragment_page.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/${fragmentName}3.xml" />
        <instantiate from="res/layout/fragment_page.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/${fragmentName}2.xml" />
        <instantiate from="res/layout/fragment_page.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/${fragmentName}1.xml" />
    </#switch>
    <instantiate from="res/layout/activity_main.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/${layoutName}.xml" />
    <instantiate from="src/Activity/MainActivity.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Activity/${activityClass}.java" />
    <open file="${escapeXmlAttribute(srcOut)}/Activity/${activityClass}.java" />

</recipe>
