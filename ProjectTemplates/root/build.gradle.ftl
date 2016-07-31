<#if ButterKnife>
ButterKnife {
    apply plugin: 'android-apt'
    dependencies {
        apt 'com.jakewharton:butterknife-compiler:8.1.0'
    }
}
</#if>

<#if isProGuard>
android {
    buildTypes {
        release {
            minifyEnabled true
            proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules_progruard.pro'
        }
        debug {
            minifyEnabled true
            proguardFiles getDefaultProguardFile('proguard-android.txt'), 'proguard-rules_progruard.pro'
        }
    }
}
</#if>

dependencies {
    <#if dependencyList?? >
    <#list dependencyList as dependency>
    compile '${dependency}'
    </#list>
    </#if>
    compile 'com.google.code.gson:gson:2.7'
    compile 'com.github.bumptech.glide:glide:3.6.1'
    <#if ButterKnife>
    compile 'com.jakewharton:butterknife:8.1.0'
    </#if>
    <#if okhttpUtils>
    compile 'com.squareup.okhttp3:okhttp:3.4.0'
    compile 'com.zhy:okhttputils:2.6.2'
    </#if>
}
