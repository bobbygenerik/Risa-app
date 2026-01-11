package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ˎـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0365 extends AbstractC0269 {
    private static final C0365 zzf;
    private int zzb;
    private int zzd = 1;
    private InterfaceC0247 zze = C0370.f2028;

    static {
        C0365 c0365 = new C0365();
        zzf = c0365;
        AbstractC0269.m1224(C0365.class, c0365);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b", new Object[]{"zzb", "zzd", C0286.f1883, "zze", C0513.class});
        }
        if (i2 == 3) {
            return new C0365();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzf);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }
}
