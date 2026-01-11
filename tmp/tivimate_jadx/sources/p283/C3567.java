package p283;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import ar.tvplayer.tv.R;
import com.google.android.material.button.MaterialButton;
import p167.C2603;
import p188.C2844;
import p188.C2861;
import p188.InterfaceC2843;
import p188.InterfaceC2869;
import p427.AbstractC5055;
import ʽٴ.ˈ;
import ˈˋ.ʾˊ;

/* renamed from: ٴˉ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3567 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public int f13932;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f13933;

    /* renamed from: ʽ, reason: contains not printable characters */
    public C2603 f13935;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public RippleDrawable f13936;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int f13937;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C3569 f13938;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public ColorStateList f13939;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public C2844 f13940;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f13942;

    /* renamed from: יـ, reason: contains not printable characters */
    public boolean f13943;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public PorterDuff.Mode f13944;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f13945;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public ColorStateList f13946;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f13947;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public InterfaceC2869 f13949;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final MaterialButton f13950;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public ColorStateList f13952;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f13953;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public boolean f13934 = false;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public boolean f13948 = false;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public boolean f13951 = false;

    /* renamed from: ˏי, reason: contains not printable characters */
    public boolean f13941 = true;

    public C3567(MaterialButton materialButton, InterfaceC2869 interfaceC2869) {
        this.f13950 = materialButton;
        this.f13949 = interfaceC2869;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7519() {
        C2844 c2844 = new C2844(this.f13949);
        C2603 c2603 = this.f13935;
        if (c2603 != null) {
            c2844.m6320(c2603);
        }
        C3569 c3569 = this.f13938;
        if (c3569 != null) {
            c2844.f10664 = c3569;
        }
        MaterialButton materialButton = this.f13950;
        c2844.m6332(materialButton.getContext());
        c2844.setTintList(this.f13952);
        PorterDuff.Mode mode = this.f13944;
        if (mode != null) {
            c2844.setTintMode(mode);
        }
        float f = this.f13937;
        ColorStateList colorStateList = this.f13939;
        c2844.f10671.f10745 = f;
        c2844.invalidateSelf();
        C2861 c2861 = c2844.f10671;
        if (c2861.f10746 != colorStateList) {
            c2861.f10746 = colorStateList;
            c2844.onStateChange(c2844.getState());
        }
        C2844 c28442 = new C2844(this.f13949);
        C2603 c26032 = this.f13935;
        if (c26032 != null) {
            c28442.m6320(c26032);
        }
        c28442.setTint(0);
        float f2 = this.f13937;
        int i = this.f13934 ? ˈ.ʼʼ(materialButton.getContext(), ʾˊ.ᴵˊ(materialButton, R.attr.6pf)) : 0;
        c28442.f10671.f10745 = f2;
        c28442.invalidateSelf();
        ColorStateList valueOf = ColorStateList.valueOf(i);
        C2861 c28612 = c28442.f10671;
        if (c28612.f10746 != valueOf) {
            c28612.f10746 = valueOf;
            c28442.onStateChange(c28442.getState());
        }
        C2844 c28443 = new C2844(this.f13949);
        this.f13940 = c28443;
        C2603 c26033 = this.f13935;
        if (c26033 != null) {
            c28443.m6320(c26033);
        }
        this.f13940.setTint(-1);
        RippleDrawable rippleDrawable = new RippleDrawable(AbstractC5055.m9959(this.f13946), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{c28442, c2844}), this.f13942, this.f13945, this.f13953, this.f13947), this.f13940);
        this.f13936 = rippleDrawable;
        materialButton.setInternalBackground(rippleDrawable);
        C2844 m7523 = m7523(false);
        if (m7523 != null) {
            m7523.m6327(this.f13932);
            m7523.setState(materialButton.getDrawableState());
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m7520() {
        C2844 m7523 = m7523(false);
        if (m7523 != null) {
            m7523.m6316(this.f13949);
            C2603 c2603 = this.f13935;
            if (c2603 != null) {
                m7523.m6320(c2603);
            }
        }
        C2844 m75232 = m7523(true);
        if (m75232 != null) {
            m75232.m6316(this.f13949);
            C2603 c26032 = this.f13935;
            if (c26032 != null) {
                m75232.m6320(c26032);
            }
        }
        RippleDrawable rippleDrawable = this.f13936;
        InterfaceC2843 interfaceC2843 = (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 1) ? null : this.f13936.getNumberOfLayers() > 2 ? (InterfaceC2843) this.f13936.getDrawable(2) : (InterfaceC2843) this.f13936.getDrawable(1);
        if (interfaceC2843 != null) {
            if (!(interfaceC2843 instanceof C2844)) {
                interfaceC2843.setShapeAppearanceModel(this.f13949.mo6347());
                return;
            }
            C2844 c2844 = (C2844) interfaceC2843;
            c2844.m6316(this.f13949);
            C2603 c26033 = this.f13935;
            if (c26033 != null) {
                c2844.m6320(c26033);
            }
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m7521() {
        int i = 0;
        C2844 m7523 = m7523(false);
        C2844 m75232 = m7523(true);
        if (m7523 != null) {
            float f = this.f13937;
            ColorStateList colorStateList = this.f13939;
            m7523.f10671.f10745 = f;
            m7523.invalidateSelf();
            C2861 c2861 = m7523.f10671;
            if (c2861.f10746 != colorStateList) {
                c2861.f10746 = colorStateList;
                m7523.onStateChange(m7523.getState());
            }
            if (m75232 != null) {
                float f2 = this.f13937;
                if (this.f13934) {
                    MaterialButton materialButton = this.f13950;
                    i = ˈ.ʼʼ(materialButton.getContext(), ʾˊ.ᴵˊ(materialButton, R.attr.6pf));
                }
                m75232.f10671.f10745 = f2;
                m75232.invalidateSelf();
                ColorStateList valueOf = ColorStateList.valueOf(i);
                C2861 c28612 = m75232.f10671;
                if (c28612.f10746 != valueOf) {
                    c28612.f10746 = valueOf;
                    m75232.onStateChange(m75232.getState());
                }
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7522(int i, int i2) {
        MaterialButton materialButton = this.f13950;
        int paddingStart = materialButton.getPaddingStart();
        int paddingTop = materialButton.getPaddingTop();
        int paddingEnd = materialButton.getPaddingEnd();
        int paddingBottom = materialButton.getPaddingBottom();
        int i3 = this.f13945;
        int i4 = this.f13947;
        this.f13947 = i2;
        this.f13945 = i;
        if (!this.f13948) {
            m7519();
        }
        materialButton.setPaddingRelative(paddingStart, (paddingTop + i) - i3, paddingEnd, (paddingBottom + i2) - i4);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2844 m7523(boolean z) {
        RippleDrawable rippleDrawable = this.f13936;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (C2844) ((LayerDrawable) ((InsetDrawable) this.f13936.getDrawable(0)).getDrawable()).getDrawable(!z ? 1 : 0);
    }
}
