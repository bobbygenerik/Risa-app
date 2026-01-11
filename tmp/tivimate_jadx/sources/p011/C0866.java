package p011;

import androidx.recyclerview.widget.RecyclerView;
import p179.AbstractC2684;

/* renamed from: ʻᐧ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0866 extends AbstractC2684 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f3688;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final RecyclerView f3689;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0867 f3690;

    public C0866(C0867 c0867, RecyclerView recyclerView, String str) {
        this.f3690 = c0867;
        this.f3689 = recyclerView;
        this.f3688 = str;
    }

    @Override // p179.AbstractC2684
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo3070(int i, int i2) {
        m3073();
    }

    @Override // p179.AbstractC2684
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo3071(int i, int i2) {
        m3073();
    }

    @Override // p179.AbstractC2684
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo3072(int i, int i2) {
        m3073();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m3073() {
        C0867 c0867 = this.f3690;
        c0867.f10419.unregisterObserver(this);
        int m3079 = c0867.m3079(this.f3688);
        if (m3079 != -1) {
            this.f3689.mo657(m3079);
        }
    }

    @Override // p179.AbstractC2684
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo3074(int i, int i2, Object obj) {
        m3073();
    }

    @Override // p179.AbstractC2684
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo3075() {
        m3073();
    }
}
