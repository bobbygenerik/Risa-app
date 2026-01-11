package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import j$.util.Objects;
import p296.AbstractC3659;

/* renamed from: com.google.android.gms.internal.measurement.ʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0297 extends AbstractRunnableC0411 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final /* synthetic */ Bundle f1916;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ String f1917;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ String f1918;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f1919;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final /* synthetic */ C0248 f1920;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0297(C0248 c0248, String str, String str2, Bundle bundle, int i) {
        super(c0248, true);
        this.f1919 = i;
        switch (i) {
            case 1:
                this.f1917 = str;
                this.f1918 = str2;
                this.f1916 = bundle;
                Objects.requireNonNull(c0248);
                this.f1920 = c0248;
                super(c0248, true);
                return;
            default:
                this.f1917 = str;
                this.f1918 = str2;
                this.f1916 = bundle;
                this.f1920 = c0248;
                return;
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC0411
    /* renamed from: ﹳٴ */
    public final void mo1203() {
        switch (this.f1919) {
            case 0:
                InterfaceC0460 interfaceC0460 = this.f1920.f1738;
                AbstractC3659.m7687(interfaceC0460);
                interfaceC0460.clearConditionalUserProperty(this.f1917, this.f1918, this.f1916);
                return;
            default:
                long j = this.f2148;
                InterfaceC0460 interfaceC04602 = this.f1920.f1738;
                AbstractC3659.m7687(interfaceC04602);
                interfaceC04602.logEvent(this.f1917, this.f1918, this.f1916, true, true, j);
                return;
        }
    }
}
