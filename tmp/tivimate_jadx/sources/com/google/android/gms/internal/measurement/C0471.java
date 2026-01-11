package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ᵢˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0471 extends AbstractC0269 {
    private static final C0471 zzd;
    private InterfaceC0247 zzb = C0370.f2028;

    static {
        C0471 c0471 = new C0471();
        zzd = c0471;
        AbstractC0269.m1224(C0471.class, c0471);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static C0379 m1905() {
        return (C0379) zzd.m1233();
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static C0471 m1906() {
        return zzd;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final List m1907() {
        return this.zzb;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzd, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", C0498.class});
        }
        if (i2 == 3) {
            return new C0471();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzd);
        }
        if (i2 == 5) {
            return zzd;
        }
        throw null;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m1908(ArrayList arrayList) {
        InterfaceC0247 interfaceC0247 = this.zzb;
        if (!((AbstractC0265) interfaceC0247).f1765) {
            int size = interfaceC0247.size();
            this.zzb = interfaceC0247.mo1195(size + size);
        }
        AbstractC0514.m2018(arrayList, this.zzb);
    }
}
