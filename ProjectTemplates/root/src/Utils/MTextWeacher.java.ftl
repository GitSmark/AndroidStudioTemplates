package ${packageName}.Utils;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

/**
 * Created by huangxy on 2016/7/28.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class MTextWeacher implements TextWatcher {

    private int count = 0;
    private int selectionEnd = 0;

    @Override
    public void beforeTextChanged(CharSequence s, int start, int before, int count) {
    }

    @Override
    public void onTextChanged(CharSequence s, int start, int before, int count) {
        count = before + count;
        String editable = s.toString();
        String str = InputFilterUtils.StringFilter(editable);
        EditText edit = null;
        if (!editable.equals(str)) {
            edit.setText(str);
            edit.setSelection(start);
        }
        count = edit.length();
    }

    @Override
    public void afterTextChanged(Editable editable) {
//        if (cou > maxLength) {
//            selectionEnd = edit_context.getSelectionEnd();
//            editable.delete(maxLength, selectionEnd);
//        }
    }
}