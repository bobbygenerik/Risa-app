package com.google.android.gms.internal.measurement;

import p296.AbstractC3659;

/* renamed from: com.google.android.gms.internal.measurement.ʻᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0254 extends AbstractRunnableC0411 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final /* synthetic */ BinderC0452 f1747;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ String f1748;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ boolean f1749;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ String f1750;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final /* synthetic */ C0248 f1751;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0254(C0248 c0248, String str, String str2, boolean z, BinderC0452 binderC0452) {
        super(c0248, true);
        this.f1750 = str;
        this.f1748 = str2;
        this.f1749 = z;
        this.f1747 = binderC0452;
        this.f1751 = c0248;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC0411
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo1202() {
        this.f1747.mo1551(null);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC0411
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo1203() {
        InterfaceC0460 interfaceC0460 = this.f1751.f1738;
        AbstractC3659.m7687(interfaceC0460);
        interfaceC0460.getUserProperties(this.f1750, this.f1748, this.f1749, this.f1747);
    }
}
