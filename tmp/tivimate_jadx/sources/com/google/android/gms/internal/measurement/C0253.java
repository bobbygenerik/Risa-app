package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ʻᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0253 extends AbstractC0269 {
    private static final C0253 zzg;
    private int zzb;
    private String zzd = "";
    private InterfaceC0247 zze = C0370.f2028;
    private boolean zzf;

    static {
        C0253 c0253 = new C0253();
        zzg = c0253;
        AbstractC0269.m1224(C0253.class, c0253);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final String m1201() {
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
            return new C0423(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b\u0003ဇ\u0001", new Object[]{"zzb", "zzd", "zze", C0502.class, "zzf"});
        }
        if (i2 == 3) {
            return new C0253();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzg);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }
}
