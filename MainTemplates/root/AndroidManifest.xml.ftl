<manifest xmlns:android="http://schemas.android.com/apk/res/android">

    <application>
    <#if isFirst>
        <activity android:name="${relativePackage}.Activity.${activityClass}">
        	<intent-filter>
                <action android:name="android.intent.action.MAIN" />
                <category android:name="android.intent.category.LAUNCHER" />
            </intent-filter>
        </activity>
    <#else>
    	<activity android:name="${relativePackage}.Activity.${activityClass}"></activity>
    </#if>
    </application>

</manifest>
