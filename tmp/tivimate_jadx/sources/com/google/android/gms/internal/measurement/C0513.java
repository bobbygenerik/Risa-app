package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ﾞˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0513 extends AbstractC0269 {
    private static final C0513 zzf;
    private int zzb;
    private String zzd = "";
    private long zze;

    static {
        C0513 c0513 = new C0513();
        zzf = c0513;
        AbstractC0269.m1224(C0513.class, c0513);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဂ\u0001", new Object[]{"zzb", "zzd", "zze"});
        }
        if (i2 == 3) {
            return new C0513();
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
