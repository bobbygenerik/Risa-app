package p186;

import android.view.WindowInsets;
import p349.C4292;

/* renamed from: ˋᵔ.ٴﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2813 extends C2802 {

    /* renamed from: יـ, reason: contains not printable characters */
    public static final C2816 f10586;

    static {
        WindowInsets windowInsets;
        windowInsets = WindowInsets.CONSUMED;
        f10586 = C2816.m6253(null, windowInsets);
    }

    public C2813(C2816 c2816, WindowInsets windowInsets) {
        super(c2816, windowInsets);
    }

    @Override // p186.C2767, p186.AbstractC2810, p186.C2822
    /* renamed from: ᵎﹶ */
    public C4292 mo6166(int i) {
        return C4292.m8692(this.f10576.getInsetsIgnoringVisibility(AbstractC2777.m6184(i)));
    }

    @Override // p186.C2767, p186.AbstractC2810, p186.C2822
    /* renamed from: ﾞᴵ */
    public C4292 mo6167(int i) {
        return C4292.m8692(this.f10576.getInsets(AbstractC2777.m6184(i)));
    }
}
