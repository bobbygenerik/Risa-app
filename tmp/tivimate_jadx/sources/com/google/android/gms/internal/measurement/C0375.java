package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0375 extends AbstractC0269 {
    private static final C0375 zzi;
    private int zzb;
    private int zzd;
    private boolean zze;
    private String zzf = "";
    private String zzg = "";
    private String zzh = "";

    static {
        C0375 c0375 = new C0375();
        zzi = c0375;
        AbstractC0269.m1224(C0375.class, c0375);
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public static C0375 m1711() {
        return zzi;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final String m1712() {
        return this.zzg;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m1713() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final boolean m1714() {
        return (this.zzb & 8) != 0;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final String m1715() {
        return this.zzh;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002ဇ\u0001\u0003ဈ\u0002\u0004ဈ\u0003\u0005ဈ\u0004", new Object[]{"zzb", "zzd", C0286.f1887, "zze", "zzf", "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new C0375();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzi);
        }
        if (i2 == 5) {
            return zzi;
        }
        throw null;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final String m1716() {
        return this.zzf;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final boolean m1717() {
        return (this.zzb & 4) != 0;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final boolean m1718() {
        return (this.zzb & 16) != 0;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final boolean m1719() {
        return (this.zzb & 2) != 0;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final int m1720() {
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
    public final boolean m1721() {
        return this.zze;
    }
}
