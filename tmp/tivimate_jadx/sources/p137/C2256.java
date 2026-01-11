package p137;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.appcompat.widget.AppCompatImageView;
import ar.tvplayer.tv.R;
import com.google.android.gms.internal.measurement.ᵎ;

/* renamed from: ˉˆ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2256 extends AppCompatImageView implements InterfaceC2346 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C2308 f8858;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2256(C2308 c2308, Context context) {
        super(context, null, R.attr.1re);
        this.f8858 = c2308;
        setClickable(true);
        setFocusable(true);
        setVisibility(0);
        setEnabled(true);
        ᵎ.יـ(this, getContentDescription());
        setOnTouchListener(new C2238(this, this));
    }

    @Override // android.view.View
    public final boolean performClick() {
        if (super.performClick()) {
            return true;
        }
        playSoundEffect(0);
        this.f8858.m5392();
        return true;
    }

    @Override // android.widget.ImageView
    public final boolean setFrame(int i, int i2, int i3, int i4) {
        boolean frame = super.setFrame(i, i2, i3, i4);
        Drawable drawable = getDrawable();
        Drawable background = getBackground();
        if (drawable != null && background != null) {
            int width = getWidth();
            int height = getHeight();
            int max = Math.max(width, height) / 2;
            int paddingLeft = (width + (getPaddingLeft() - getPaddingRight())) / 2;
            int paddingTop = (height + (getPaddingTop() - getPaddingBottom())) / 2;
            background.setHotspotBounds(paddingLeft - max, paddingTop - max, paddingLeft + max, paddingTop + max);
        }
        return frame;
    }

    @Override // p137.InterfaceC2346
    /* renamed from: ʽ */
    public final boolean mo24() {
        return false;
    }

    @Override // p137.InterfaceC2346
    /* renamed from: ⁱˊ */
    public final boolean mo27() {
        return false;
    }
}
