package com.google.android.gms.internal.measurement;

import p296.AbstractC3659;

/* renamed from: com.google.android.gms.internal.measurement.ᐧﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0434 extends AbstractRunnableC0411 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ String f2177;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C0248 f2178;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f2179;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0434(C0248 c0248, String str, int i) {
        super(c0248, true);
        this.f2179 = i;
        this.f2177 = str;
        this.f2178 = c0248;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC0411
    /* renamed from: ﹳٴ */
    public final void mo1203() {
        switch (this.f2179) {
            case 0:
                InterfaceC0460 interfaceC0460 = this.f2178.f1738;
                AbstractC3659.m7687(interfaceC0460);
                interfaceC0460.beginAdUnitExposure(this.f2177, this.f2150);
                return;
            default:
                InterfaceC0460 interfaceC04602 = this.f2178.f1738;
                AbstractC3659.m7687(interfaceC04602);
                interfaceC04602.endAdUnitExposure(this.f2177, this.f2150);
                return;
        }
    }
}
