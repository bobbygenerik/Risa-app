package androidx.leanback.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import ar.tvplayer.tv.R;

/* loaded from: classes.dex */
public class TitleView extends FrameLayout {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final SearchOrbView f788;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ImageView f789;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f790;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C0115 f791;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final TextView f792;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f793;

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.leanback.widget.ˑ, java.lang.Object] */
    public TitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, R.attr.28p);
        this.f790 = 6;
        this.f793 = false;
        this.f791 = new Object();
        View inflate = LayoutInflater.from(context).inflate(R.layout.45l, this);
        this.f789 = (ImageView) inflate.findViewById(R.id.2rp);
        this.f792 = (TextView) inflate.findViewById(R.id.5n4);
        this.f788 = (SearchOrbView) inflate.findViewById(R.id.3ou);
        setClipToPadding(false);
        setClipChildren(false);
    }

    public Drawable getBadgeDrawable() {
        return this.f789.getDrawable();
    }

    public C0116 getSearchAffordanceColors() {
        return this.f788.getOrbColors();
    }

    public View getSearchAffordanceView() {
        return this.f788;
    }

    public CharSequence getTitle() {
        return this.f792.getText();
    }

    public AbstractC0086 getTitleViewAdapter() {
        return this.f791;
    }

    public void setBadgeDrawable(Drawable drawable) {
        ImageView imageView = this.f789;
        imageView.setImageDrawable(drawable);
        Drawable drawable2 = imageView.getDrawable();
        TextView textView = this.f792;
        if (drawable2 != null) {
            imageView.setVisibility(0);
            textView.setVisibility(8);
        } else {
            imageView.setVisibility(8);
            textView.setVisibility(0);
        }
    }

    public void setOnSearchClickedListener(View.OnClickListener onClickListener) {
        this.f793 = onClickListener != null;
        SearchOrbView searchOrbView = this.f788;
        searchOrbView.setOnOrbClickedListener(onClickListener);
        searchOrbView.setVisibility((this.f793 && (this.f790 & 4) == 4) ? 0 : 4);
    }

    public void setSearchAffordanceColors(C0116 c0116) {
        this.f788.setOrbColors(c0116);
    }

    public void setTitle(CharSequence charSequence) {
        TextView textView = this.f792;
        textView.setText(charSequence);
        ImageView imageView = this.f789;
        if (imageView.getDrawable() != null) {
            imageView.setVisibility(0);
            textView.setVisibility(8);
        } else {
            imageView.setVisibility(8);
            textView.setVisibility(0);
        }
    }
}
