package ${packageName}.Entity;

import java.io.Serializable;

/**
 * Created by huangxy on 2016/7/28.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class UserEntity implements Serializable {

    //private static final long serialVersionUID = 6377251607281314322L;
    //UserEntity ue = (UserEntity)getIntent().getSerializableExtra("UserEntity");
    //Intent.putExtra("UserEntity", ue);

    //@Id(column="id")
    private String id;
    private String name;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
