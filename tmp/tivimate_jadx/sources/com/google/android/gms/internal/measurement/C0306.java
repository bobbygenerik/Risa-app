package com.google.android.gms.internal.measurement;

import j$.util.Objects;
import p296.AbstractC3659;

/* renamed from: com.google.android.gms.internal.measurement.ʿᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0306 extends AbstractRunnableC0411 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final /* synthetic */ C0248 f1929;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ String f1930;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ String f1931;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f1932 = 1;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final /* synthetic */ Object f1933;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0306(C0248 c0248, C0441 c0441, String str, String str2) {
        super(c0248, true);
        this.f1933 = c0441;
        this.f1930 = str;
        this.f1931 = str2;
        Objects.requireNonNull(c0248);
        this.f1929 = c0248;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0306(C0248 c0248, String str, String str2, BinderC0452 binderC0452) {
        super(c0248, true);
        this.f1930 = str;
        this.f1931 = str2;
        this.f1933 = binderC0452;
        this.f1929 = c0248;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC0411
    /* renamed from: ⁱˊ */
    public void mo1202() {
        switch (this.f1932) {
            case 0:
                ((BinderC0452) this.f1933).mo1551(null);
                return;
            default:
                return;
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractRunnableC0411
    /* renamed from: ﹳٴ */
    public final void mo1203() {
        switch (this.f1932) {
            case 0:
                InterfaceC0460 interfaceC0460 = this.f1929.f1738;
                AbstractC3659.m7687(interfaceC0460);
                interfaceC0460.getConditionalUserProperties(this.f1930, this.f1931, (BinderC0452) this.f1933);
                return;
            default:
                InterfaceC0460 interfaceC04602 = this.f1929.f1738;
                AbstractC3659.m7687(interfaceC04602);
                interfaceC04602.setCurrentScreenByScionActivityInfo((C0441) this.f1933, this.f1930, this.f1931, this.f2148);
                return;
        }
    }
}
