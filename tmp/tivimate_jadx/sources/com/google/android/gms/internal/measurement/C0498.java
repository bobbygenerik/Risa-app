package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ﹳᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0498 extends AbstractC0269 {
    private static final C0498 zzf;
    private int zzb;
    private int zzd;
    private int zze;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.measurement.ﹳᵢ, com.google.android.gms.internal.measurement.ʼﹶ] */
    static {
        ?? abstractC0269 = new AbstractC0269();
        zzf = abstractC0269;
        AbstractC0269.m1224(C0498.class, abstractC0269);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static C0360 m1949() {
        return (C0360) zzf.m1233();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001", new Object[]{"zzb", "zzd", C0286.f1886, "zze", C0286.f1876});
        }
        if (i2 == 3) {
            return new AbstractC0269();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzf);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final /* synthetic */ void m1950(int i) {
        this.zze = i - 1;
        this.zzb |= 2;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final /* synthetic */ void m1951(int i) {
        this.zzd = i - 1;
        this.zzb |= 1;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int m1952() {
        int i;
        int i2 = this.zzd;
        if (i2 != 0) {
            i = 2;
            if (i2 != 1) {
                if (i2 != 2) {
                    i = 4;
                    if (i2 != 3) {
                        i = i2 != 4 ? 0 : 5;
                    }
                } else {
                    i = 3;
                }
            }
        } else {
            i = 1;
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final int m1953() {
        int i;
        int i2 = this.zze;
        if (i2 != 0) {
            i = 2;
            if (i2 != 1) {
                i = i2 != 2 ? 0 : 3;
            }
        } else {
            i = 1;
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }
}
