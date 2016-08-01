![(logo)](https://github.com/GitSmark/iOS-XMTableView/blob/master/Logo_GitSmark%40huangxy.jpg)
# AndroidStudioTemplates
Android Studio BaseTemplates &amp; ActivityTemplates &amp; Live Templates &amp; Other Res.

Plugins
-------
* Android ButterKnife Zelezny
* Android Material Design Icon Generator
* JSONOnlineViewer
* CodeGlance
* GsonFormat

File Templates
--------------
* AbstractActivity
```java
#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end

import android.view.View;

/**
 * Created by huangxy on ${DATE}.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class ${NAME} extends AbstractActivity {
    
    @Override
    protected int getLayoutResId() {
        return 0;
    }

    @Override
    protected void initView() {

    }

    @Override
    public void onClick(View v) {

    }
}
```

* AbstractFragment
```java
#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end

import android.view.View;

/**
 * Created by huangxy on ${DATE}.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class ${NAME} extends AbstractFragment {
    
    @Override
    protected int getLayoutResId() {
        return 0;
    }

    @Override
    protected void initView() {

    }

    @Override
    public void onClick(View v) {

    }
}
```

* CommonAdapter
```java
#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end

import android.support.annotation.NonNull;

import java.util.List;

/**
 * Created by huangxy on ${DATE}.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class ${NAME} extends CommonAdapter {
    
    public ${NAME}(@NonNull List data) {
        super(data);
    }

    @NonNull
    @Override
    public AdapterItem onCreateItem(Object type) {
        return null;
    }
}
```

* SerialEntity
```java
#if (${PACKAGE_NAME} && ${PACKAGE_NAME} != "")package ${PACKAGE_NAME};#end

import java.io.Serializable;

/**
 * Created by huangxy on ${DATE}.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class ${NAME} implements Serializable {

    private static final long serialVersionUID = 7725${YEAR}${MONTH}${DAY}${HOUR}${MINUTE}322L;
    
}
```
