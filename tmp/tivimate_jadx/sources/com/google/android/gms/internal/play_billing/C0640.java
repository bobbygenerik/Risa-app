package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0640 extends AbstractC0592 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final transient int f2478;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final transient int f2479;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0592 f2480;

    public C0640(AbstractC0592 abstractC0592, int i, int i2) {
        this.f2480 = abstractC0592;
        this.f2478 = i;
        this.f2479 = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        com.bumptech.glide.ˈ.ᵔי(i, this.f2479);
        return this.f2480.get(i + this.f2478);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f2479;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ˈ */
    public final int mo2034() {
        return this.f2480.mo2034() + this.f2478;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ᵎﹶ */
    public final Object[] mo2035() {
        return this.f2480.mo2035();
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0592, java.util.List
    /* renamed from: ᵔᵢ, reason: merged with bridge method [inline-methods] */
    public final AbstractC0592 subList(int i, int i2) {
        com.bumptech.glide.ˈ.ᵔٴ(i, i2, this.f2479);
        int i3 = this.f2478;
        return this.f2480.subList(i + i3, i2 + i3);
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ⁱˊ */
    public final int mo2036() {
        return this.f2480.mo2034() + this.f2478 + this.f2479;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0530
    /* renamed from: ﾞᴵ */
    public final boolean mo2038() {
        return true;
    }
}
