package p186;

import android.view.View;
import android.view.WindowInsets;
import p349.C4292;

/* renamed from: ˋᵔ.ʻˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2767 extends C2837 {

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static final C2816 f10528;

    static {
        WindowInsets windowInsets;
        windowInsets = WindowInsets.CONSUMED;
        f10528 = C2816.m6253(null, windowInsets);
    }

    public C2767(C2816 c2816, WindowInsets windowInsets) {
        super(c2816, windowInsets);
    }

    @Override // p186.AbstractC2810, p186.C2822
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo6165(View view) {
    }

    @Override // p186.AbstractC2810, p186.C2822
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public C4292 mo6166(int i) {
        return C4292.m8692(this.f10576.getInsetsIgnoringVisibility(AbstractC2809.m6235(i)));
    }

    @Override // p186.AbstractC2810, p186.C2822
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C4292 mo6167(int i) {
        return C4292.m8692(this.f10576.getInsets(AbstractC2809.m6235(i)));
    }
}
