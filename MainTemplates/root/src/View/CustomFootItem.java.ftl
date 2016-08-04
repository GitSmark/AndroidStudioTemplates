package ${packageName}.View;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.annotation.ColorInt;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;

import ${packageName}.R;
import ${packageName}.Utils.DrawableUtils;

/**
 * Created by huangxy on 2016/8/4.
 * https://github.com/GitSmark/AndroidStudioTemplates
 */
public class CustomFootItem extends FrameLayout {

    private FootItemSelectedListener mListener = null;
    private Context context = null;
    private LinearLayout mLayout;
    private ImageView mImageView;
    private TextView mTextView;

    private Drawable drawable = null;
    private String  text = null;
    private float weight = 1.0f;
    private int position = -1;

    public CustomFootItem(Context context, int DrawableResId, int StringResId, int position, float weight, FootItemSelectedListener listener) {
        this(context, DrawableResId, StringResId, position, weight);
        setItemSelectedListener(listener);
    }

    public CustomFootItem(Context context, Drawable drawable, String text, int position, float weight, FootItemSelectedListener listener) {
        this(context, drawable, text, position, weight);
        setItemSelectedListener(listener);
    }

    public CustomFootItem(Context context, int DrawableResId, int StringResId, int position, FootItemSelectedListener listener) {
        this(context, DrawableResId, StringResId, position);
        setItemSelectedListener(listener);
    }

    public CustomFootItem(Context context, Drawable drawable, String text, int position, FootItemSelectedListener listener) {
        this(context, drawable, text, position);
        setItemSelectedListener(listener);
    }

    public CustomFootItem(Context context, int DrawableResId, int StringResId, int position, float weight) {
        this(context, DrawableResId, StringResId, position);
        setWeight(weight);
    }

    public CustomFootItem(Context context, Drawable drawable, String text, int position, float weight) {
        this(context, drawable, text, position);
        setWeight(weight);
    }

    public CustomFootItem(Context context, int DrawableResId, int StringResId, int position) {
        this(context, DrawableResId, StringResId);
        setPosition(position);
    }

    public CustomFootItem(Context context, Drawable drawable, String text, int position) {
        this(context, drawable, text);
        setPosition(position);
    }

    public CustomFootItem(Context context, int DrawableResId, int StringResId) {
        this(context, null);
        setItemIv(DrawableResId);
        setItemTv(StringResId);
    }

    public CustomFootItem(Context context, Drawable drawable, String text) {
        this(context, null);
        setItemIv(drawable);
        setItemTv(text);
    }

    //=====================================//
    public CustomFootItem(Context context) {
        this(context, null);
    }

    public CustomFootItem(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public CustomFootItem(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        if (attrs != null){
            TypedArray typedArray = context.obtainStyledAttributes(attrs, R.styleable.CustomFootItem);
            drawable = typedArray.getDrawable(R.styleable.CustomFootItem_footitem_iv);
            position = typedArray.getInteger(R.styleable.CustomFootItem_footitem, -1);
            text = typedArray.getString(R.styleable.CustomFootItem_footitem_tv);
            typedArray.recycle();
        }
        if (drawable == null){
            //drawable = getResources().getDrawable(R.mipmap.ic_launcher);
        }
        this.context = context;
        initView();
    }

    private void initView() {

        LayoutInflater.from(context).inflate(R.layout.layout_footitem, this, true);
        mImageView = (ImageView) findViewById(R.id.layout_footitem_iv);
        mTextView = (TextView) findViewById(R.id.layout_footitem_tv);
        mLayout = (LinearLayout) findViewById(R.id.layout_footitem);
        setWeight(this.weight);
        setItemIv(drawable);
        setItemTv(text);
    }

    //==================================//
    public void setWeight(float weight){
        setLayoutParams(new LinearLayout.LayoutParams(ViewGroup.LayoutParams.WRAP_CONTENT, ViewGroup.LayoutParams.MATCH_PARENT, weight));
        this.weight = weight;
    }

    public void setItemIvWithItemTv(Drawable drawable, String text){
        setItemIv(drawable);
        setItemTv(text);
    }

    public void setItemIvWithItemTv(Drawable drawable, int ResId){
        setItemIv(drawable);
        setItemTv(ResId);
    }

    public void setItemIvWithItemTv(int ResId, String text){
        setItemIv(ResId);
        setItemTv(text);
    }

    public void setItemIvWithItemTv(int DrawableResId, int StringResId){
        setItemIv(DrawableResId);
        setItemTv(StringResId);
    }

    public void setItemIv(int ResId){
        try {
            setItemIv(getResources().getDrawable(ResId));
        }catch (Exception e){
            e.printStackTrace();
        }
    }

    public void setItemIv(Drawable drawable){
        mImageView.setImageDrawable(drawable);
        this.drawable = drawable;
    }

    public void setItemTv(int ResId){
        setItemTv(getResources().getString(ResId));
    }

    public void setItemTv(String text){
        mTextView.setText(text);
        this.text = text;
    }

    public void setPosition(int position){
        this.position = position;
    }

    //=================================================//
    @TargetApi(Build.VERSION_CODES.JELLY_BEAN)
    public void setItemBackgroundDrawable(Drawable drawable){
        mLayout.setBackground(drawable);
    }

    public void setItemBackgroundResId(int ResId){
        mLayout.setBackgroundResource(ResId);
    }

    public void setItemBackgroundColor(@ColorInt int color){
        mLayout.setBackgroundColor(color);
    }

    public void setItemIvTintColorResId(int colorResId){
        setItemIv(DrawableUtils.TintWithDrawable(context, drawable, colorResId));
    }

    public void setItemIvTintColor(@ColorInt int color){
        setItemIv(DrawableUtils.TintWithDrawable(drawable, color));
    }

    public void setItemTvTextColorResId(int colorResId){
        mTextView.setTextColor(getResources().getColor(colorResId));
    }

    public void setItemTvTextColor(@ColorInt int color){
        mTextView.setTextColor(color);
    }

    //=======================//
    public float getWeight(){
        return weight;
    }

    public Drawable getItemIv(){
        return drawable;
    }

    public String getItemTv(){
        return text;
    }

    public int getPosition(){
        return position;
    }

    //====================================================================//
    public void setItemSelectedListener(FootItemSelectedListener listener){
        mListener = listener;
        mLayout.setOnClickListener(new OnClickListener() {
            @Override
            public void onClick(View v) {
                if (mListener != null) {
                    mListener.onFootItemSelected(position);
                }
            }
        });
    }

    public interface FootItemSelectedListener{
        void onFootItemSelected(int position);
    }
}
