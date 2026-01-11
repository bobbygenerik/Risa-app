package com.google.android.gms.internal.measurement;

import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ـʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0400 extends AbstractC0465 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ int f2064;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C0400(int i, String str) {
        super(str);
        this.f2064 = i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0465
    /* renamed from: ʽ */
    public final InterfaceC0457 mo1199(ˏˆ.ﹳٴ r3, List list) {
        switch (this.f2064) {
            case 0:
                return InterfaceC0457.f2214;
            case 1:
            case 2:
                return this;
            case 3:
                return new C0453(Double.valueOf(0.0d));
            default:
                return InterfaceC0457.f2214;
        }
    }
}
