package p188;

import android.content.res.ColorStateList;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import p235.C3197;

/* renamed from: ˋⁱ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2861 extends Drawable.ConstantState {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public float f10742;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final Paint.Style f10743;

    /* renamed from: ʽ, reason: contains not printable characters */
    public ColorStateList f10744;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public float f10745;

    /* renamed from: ˈ, reason: contains not printable characters */
    public ColorStateList f10746;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public float f10747;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public int f10748;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public ColorStateList f10749;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f10750;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Rect f10751;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f10752;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final float f10753;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C3197 f10754;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public InterfaceC2869 f10755;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public float f10756;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public PorterDuff.Mode f10757;

    public C2861(C2861 c2861) {
        this.f10744 = null;
        this.f10746 = null;
        this.f10749 = null;
        this.f10757 = PorterDuff.Mode.SRC_IN;
        this.f10751 = null;
        this.f10753 = 1.0f;
        this.f10742 = 1.0f;
        this.f10750 = 255;
        this.f10756 = 0.0f;
        this.f10747 = 0.0f;
        this.f10752 = 0;
        this.f10748 = 0;
        this.f10743 = Paint.Style.FILL_AND_STROKE;
        this.f10755 = c2861.f10755;
        this.f10754 = c2861.f10754;
        this.f10745 = c2861.f10745;
        this.f10744 = c2861.f10744;
        this.f10746 = c2861.f10746;
        this.f10757 = c2861.f10757;
        this.f10749 = c2861.f10749;
        this.f10750 = c2861.f10750;
        this.f10753 = c2861.f10753;
        this.f10748 = c2861.f10748;
        this.f10742 = c2861.f10742;
        this.f10756 = c2861.f10756;
        this.f10747 = c2861.f10747;
        this.f10752 = c2861.f10752;
        this.f10743 = c2861.f10743;
        if (c2861.f10751 != null) {
            this.f10751 = new Rect(c2861.f10751);
        }
    }

    public C2861(InterfaceC2869 interfaceC2869) {
        this.f10744 = null;
        this.f10746 = null;
        this.f10749 = null;
        this.f10757 = PorterDuff.Mode.SRC_IN;
        this.f10751 = null;
        this.f10753 = 1.0f;
        this.f10742 = 1.0f;
        this.f10750 = 255;
        this.f10756 = 0.0f;
        this.f10747 = 0.0f;
        this.f10752 = 0;
        this.f10748 = 0;
        this.f10743 = Paint.Style.FILL_AND_STROKE;
        this.f10755 = interfaceC2869;
        this.f10754 = null;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public final int getChangingConfigurations() {
        return 0;
    }

    @Override // android.graphics.drawable.Drawable.ConstantState
    public Drawable newDrawable() {
        C2844 c2844 = new C2844(this);
        c2844.f10661 = true;
        c2844.f10668 = true;
        return c2844;
    }
}
