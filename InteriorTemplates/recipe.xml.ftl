<?xml version="1.0"?>
<recipe>

    <#if isFirst>

	<mkdir at="${escapeXmlAttribute(srcOut)}/Activity" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Common" />
    <mkdir at="${escapeXmlAttribute(srcOut)}/Common/AbstractView" />
    
    <merge from="res/values/dimens.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />
    <merge from="res/values/colors.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/values/colors.xml" />
    <merge from="res/values/styles.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/values/styles.xml" />

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

    <instantiate from="src/Common/AbstractView/AbstractFragmentActivity.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/AbstractView/AbstractFragmentActivity.java" />
    <instantiate from="src/Common/AbstractView/AbstractActivity.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/AbstractView/AbstractActivity.java" />
    <instantiate from="src/Common/AbstractView/AbstractFragment.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/Common/AbstractView/AbstractFragment.java" />
    <instantiate from="res/layout/layout_header2.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/layout_header2.xml" />

    </#if>

    <merge from="AndroidManifest.xml.ftl"
            to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
    <instantiate from="res/layout/activity_interior.xml.ftl"
            to="${escapeXmlAttribute(resOut)}/layout/activity_${layoutName}.xml" />
    <open file="${escapeXmlAttribute(resOut)}/layout/activity_${layoutName}.xml" />
    <instantiate from="src/Activity/InteriorActivity.java.ftl"
            to="${escapeXmlAttribute(srcOut)}/${activityClass}Activity.java" />
    <open file="${escapeXmlAttribute(srcOut)}/${activityClass}Activity.java" />

</recipe>
