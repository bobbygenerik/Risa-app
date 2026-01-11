package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ʻʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0245 extends AbstractC0269 {
    private static final C0245 zzi;
    private int zzb;
    private int zzd = 14;
    private int zze = 11;
    private int zzf = 60;
    private int zzg = 13;
    private int zzh = 11;

    static {
        C0245 c0245 = new C0245();
        zzi = c0245;
        AbstractC0269.m1224(C0245.class, c0245);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001င\u0000\u0002င\u0001\u0003င\u0002\u0004င\u0003\u0005င\u0004", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new C0245();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzi);
        }
        if (i2 == 5) {
            return zzi;
        }
        throw null;
    }
}
