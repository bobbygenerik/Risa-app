package p186;

import android.view.WindowInsets;
import p349.C4292;

/* renamed from: ˋᵔ.ˈˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C2788 extends AbstractC2810 {

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public C4292 f10546;

    public C2788(C2816 c2816, WindowInsets windowInsets) {
        super(c2816, windowInsets);
        this.f10546 = null;
    }

    @Override // p186.C2822
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C4292 mo6194() {
        if (this.f10546 == null) {
            WindowInsets windowInsets = this.f10576;
            this.f10546 = C4292.m8691(windowInsets.getStableInsetLeft(), windowInsets.getStableInsetTop(), windowInsets.getStableInsetRight(), windowInsets.getStableInsetBottom());
        }
        return this.f10546;
    }

    @Override // p186.C2822
    /* renamed from: ʽ, reason: contains not printable characters */
    public C2816 mo6195() {
        return C2816.m6253(null, this.f10576.consumeSystemWindowInsets());
    }

    @Override // p186.C2822
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public boolean mo6196() {
        return this.f10576.isConsumed();
    }

    @Override // p186.C2822
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C2816 mo6197() {
        return C2816.m6253(null, this.f10576.consumeStableInsets());
    }

    @Override // p186.C2822
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public void mo6198(C4292 c4292) {
        this.f10546 = c4292;
    }
}
