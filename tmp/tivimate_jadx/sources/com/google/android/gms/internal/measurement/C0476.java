package com.google.android.gms.internal.measurement;

import android.support.v4.media.session.AbstractC0001;

/* renamed from: com.google.android.gms.internal.measurement.ᵢᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0476 extends AbstractC0269 {
    private static final C0476 zzg;
    private int zzb;
    private int zzd;
    private int zze;
    private int zzf;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.measurement.ʼﹶ, com.google.android.gms.internal.measurement.ᵢᐧ] */
    static {
        ?? abstractC0269 = new AbstractC0269();
        zzg = abstractC0269;
        AbstractC0269.m1224(C0476.class, abstractC0269);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static C0243 m1927() {
        return (C0243) zzg.m1233();
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static C0476 m1928() {
        return zzg;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final /* synthetic */ void m1929(int i) {
        this.zzd = i - 1;
        this.zzb |= 1;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final int m1930() {
        int m19 = AbstractC0001.m19(this.zze);
        if (m19 == 0) {
            return 1;
        }
        return m19;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final int m1931() {
        int i;
        int i2 = this.zzf;
        if (i2 != 0) {
            i = 2;
            if (i2 != 1) {
                int i3 = 3;
                if (i2 != 2) {
                    i = 4;
                    if (i2 != 3) {
                        i3 = 5;
                        if (i2 != 4) {
                            i = i2 != 5 ? 0 : 6;
                        }
                    }
                }
                i = i3;
            }
        } else {
            i = 1;
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzg, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0000\u0001᠌\u0000\u0002᠌\u0001\u0003᠌\u0002", new Object[]{"zzb", "zzd", C0286.f1885, "zze", C0286.f1888, "zzf", C0286.f1880});
        }
        if (i2 == 3) {
            return new AbstractC0269();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzg);
        }
        if (i2 == 5) {
            return zzg;
        }
        throw null;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final int m1932() {
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

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m1933(int i) {
        this.zze = AbstractC0001.m11(i);
        this.zzb |= 2;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final /* synthetic */ void m1934(int i) {
        this.zzf = i - 1;
        this.zzb |= 4;
    }
}
