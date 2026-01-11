package com.google.android.gms.internal.measurement;

import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ˉʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0327 extends AbstractC0269 {
    private static final C0327 zzd;
    private InterfaceC0247 zzb = C0370.f2028;

    static {
        C0327 c0327 = new C0327();
        zzd = c0327;
        AbstractC0269.m1224(C0327.class, c0327);
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static C0327 m1570() {
        return zzd;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final List m1571() {
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
            return new C0423(zzd, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzb", C0387.class});
        }
        if (i2 == 3) {
            return new C0327();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzd);
        }
        if (i2 == 5) {
            return zzd;
        }
        throw null;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int m1572() {
        return this.zzb.size();
    }
}
