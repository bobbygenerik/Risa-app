package com.google.android.gms.internal.measurement;

import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.יʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0387 extends AbstractC0269 {
    private static final C0387 zzf;
    private int zzb;
    private String zzd = "";
    private InterfaceC0247 zze = C0370.f2028;

    static {
        C0387 c0387 = new C0387();
        zzf = c0387;
        AbstractC0269.m1224(C0387.class, c0387);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final String m1764() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b", new Object[]{"zzb", "zzd", "zze", C0385.class});
        }
        if (i2 == 3) {
            return new C0387();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzf);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final List m1765() {
        return this.zze;
    }
}
