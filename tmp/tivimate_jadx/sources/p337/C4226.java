package p337;

import android.R;
import android.content.res.ColorStateList;
import p137.C2314;
import ʽٴ.ˈ;
import ˈˋ.ʾˊ;

/* renamed from: ᵎʾ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4226 extends C2314 {

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final int[][] f15705 = {new int[]{R.attr.state_enabled, R.attr.state_checked}, new int[]{R.attr.state_enabled, -16842912}, new int[]{-16842910, R.attr.state_checked}, new int[]{-16842910, -16842912}};

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f15706;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public ColorStateList f15707;

    private ColorStateList getMaterialThemeColorsTintList() {
        if (this.f15707 == null) {
            int i = ˈ.ʼʼ(getContext(), ʾˊ.ᴵˊ(this, ar.tvplayer.tv.R.attr.46k));
            int i2 = ˈ.ʼʼ(getContext(), ʾˊ.ᴵˊ(this, ar.tvplayer.tv.R.attr.3nl));
            int i3 = ˈ.ʼʼ(getContext(), ʾˊ.ᴵˊ(this, ar.tvplayer.tv.R.attr.6pf));
            this.f15707 = new ColorStateList(f15705, new int[]{ˈ.ˏי(1.0f, i3, i), ˈ.ˏי(0.54f, i3, i2), ˈ.ˏי(0.38f, i3, i2), ˈ.ˏי(0.38f, i3, i2)});
        }
        return this.f15707;
    }

    @Override // android.widget.TextView, android.view.View
    public final void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f15706 && getButtonTintList() == null) {
            setUseMaterialThemeColors(true);
        }
    }

    public void setUseMaterialThemeColors(boolean z) {
        this.f15706 = z;
        if (z) {
            setButtonTintList(getMaterialThemeColorsTintList());
        } else {
            setButtonTintList(null);
        }
    }
}
