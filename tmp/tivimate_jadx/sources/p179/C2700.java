package p179;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.ViewGroup;

/* renamed from: ˋˋ.ˊᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2700 extends ViewGroup.MarginLayoutParams {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f10280;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f10281;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Rect f10282;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public AbstractC2673 f10283;

    public C2700(int i, int i2) {
        super(i, i2);
        this.f10282 = new Rect();
        this.f10280 = true;
        this.f10281 = false;
    }

    public C2700(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f10282 = new Rect();
        this.f10280 = true;
        this.f10281 = false;
    }

    public C2700(ViewGroup.LayoutParams layoutParams) {
        super(layoutParams);
        this.f10282 = new Rect();
        this.f10280 = true;
        this.f10281 = false;
    }

    public C2700(ViewGroup.MarginLayoutParams marginLayoutParams) {
        super(marginLayoutParams);
        this.f10282 = new Rect();
        this.f10280 = true;
        this.f10281 = false;
    }

    public C2700(C2700 c2700) {
        super((ViewGroup.LayoutParams) c2700);
        this.f10282 = new Rect();
        this.f10280 = true;
        this.f10281 = false;
    }
}
