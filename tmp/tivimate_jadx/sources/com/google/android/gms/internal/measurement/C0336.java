package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import j$.util.Objects;
import p088.BinderC1753;
import p296.AbstractC3659;

/* renamed from: com.google.android.gms.internal.measurement.ˉـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0336 extends AbstractRunnableC0411 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ C0248 f1989;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ Object f1990;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f1991;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0336(C0248 c0248, Boolean bool) {
        super(c0248, true);
        this.f1991 = 1;
        this.f1990 = bool;
        Objects.requireNonNull(c0248);
        this.f1989 = c0248;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0336(C0248 c0248, Exception exc) {
        super(c0248, false);
        this.f1991 = 3;
        this.f1990 = exc;
        this.f1989 = c0248;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0336(C0248 c0248, Object obj, int i) {
        super(c0248, true);
        this.f1991 = i;
        this.f1990 = obj;
        this.f1989 = c0248;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC0411
    /* renamed from: ﹳٴ */
    public final void mo1203() {
        switch (this.f1991) {
            case 0:
                InterfaceC0460 interfaceC0460 = this.f1989.f1738;
                AbstractC3659.m7687(interfaceC0460);
                interfaceC0460.setConditionalUserProperty((Bundle) this.f1990, this.f2148);
                return;
            case 1:
                InterfaceC0460 interfaceC04602 = this.f1989.f1738;
                AbstractC3659.m7687(interfaceC04602);
                interfaceC04602.setMeasurementEnabled(((Boolean) this.f1990).booleanValue(), this.f2148);
                return;
            case 2:
                InterfaceC0460 interfaceC04603 = this.f1989.f1738;
                AbstractC3659.m7687(interfaceC04603);
                interfaceC04603.retrieveAndUploadBatches(new BinderC0430(this, (ﹶﾞ.ﹶˎ) this.f1990));
                return;
            case 3:
                InterfaceC0460 interfaceC04604 = this.f1989.f1738;
                AbstractC3659.m7687(interfaceC04604);
                interfaceC04604.logHealthData(5, "Error with data collection. Data lost.", new BinderC1753((Exception) this.f1990), new BinderC1753(null), new BinderC1753(null));
                return;
            default:
                InterfaceC0460 interfaceC04605 = this.f1989.f1738;
                AbstractC3659.m7687(interfaceC04605);
                interfaceC04605.registerOnMeasurementEventListener((BinderC0321) this.f1990);
                return;
        }
    }
}
