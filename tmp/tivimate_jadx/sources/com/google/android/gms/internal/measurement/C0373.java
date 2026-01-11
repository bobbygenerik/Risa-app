package com.google.android.gms.internal.measurement;

import p296.AbstractC3659;

/* renamed from: com.google.android.gms.internal.measurement.ˏᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0373 extends AbstractRunnableC0411 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ BinderC0452 f2034;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C0248 f2035;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f2036;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0373(C0248 c0248, BinderC0452 binderC0452, int i) {
        super(c0248, true);
        this.f2036 = i;
        this.f2034 = binderC0452;
        this.f2035 = c0248;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC0411
    /* renamed from: ⁱˊ */
    public final void mo1202() {
        switch (this.f2036) {
            case 0:
                this.f2034.mo1551(null);
                return;
            case 1:
                this.f2034.mo1551(null);
                return;
            case 2:
                this.f2034.mo1551(null);
                return;
            case 3:
                this.f2034.mo1551(null);
                return;
            default:
                this.f2034.mo1551(null);
                return;
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC0411
    /* renamed from: ﹳٴ */
    public final void mo1203() {
        switch (this.f2036) {
            case 0:
                InterfaceC0460 interfaceC0460 = this.f2035.f1738;
                AbstractC3659.m7687(interfaceC0460);
                interfaceC0460.getGmpAppId(this.f2034);
                return;
            case 1:
                InterfaceC0460 interfaceC04602 = this.f2035.f1738;
                AbstractC3659.m7687(interfaceC04602);
                interfaceC04602.getCachedAppInstanceId(this.f2034);
                return;
            case 2:
                InterfaceC0460 interfaceC04603 = this.f2035.f1738;
                AbstractC3659.m7687(interfaceC04603);
                interfaceC04603.generateEventId(this.f2034);
                return;
            case 3:
                InterfaceC0460 interfaceC04604 = this.f2035.f1738;
                AbstractC3659.m7687(interfaceC04604);
                interfaceC04604.getCurrentScreenName(this.f2034);
                return;
            default:
                InterfaceC0460 interfaceC04605 = this.f2035.f1738;
                AbstractC3659.m7687(interfaceC04605);
                interfaceC04605.getCurrentScreenClass(this.f2034);
                return;
        }
    }
}
