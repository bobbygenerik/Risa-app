package com.google.android.gms.internal.measurement;

import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ˑﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0385 extends AbstractC0269 {
    private static final C0385 zzj;
    private int zzb;
    private int zzd;
    private InterfaceC0247 zze = C0370.f2028;
    private String zzf = "";
    private String zzg = "";
    private boolean zzh;
    private double zzi;

    static {
        C0385 c0385 = new C0385();
        zzj = c0385;
        AbstractC0269.m1224(C0385.class, c0385);
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final boolean m1755() {
        return (this.zzb & 16) != 0;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final List m1756() {
        return this.zze;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final boolean m1757() {
        return this.zzh;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final int m1758() {
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

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001᠌\u0000\u0002\u001b\u0003ဈ\u0001\u0004ဈ\u0002\u0005ဇ\u0003\u0006က\u0004", new Object[]{"zzb", "zzd", C0286.f1881, "zze", C0385.class, "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new C0385();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzj);
        }
        if (i2 == 5) {
            return zzj;
        }
        throw null;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean m1759() {
        return (this.zzb & 8) != 0;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final String m1760() {
        return this.zzg;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final double m1761() {
        return this.zzi;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final String m1762() {
        return this.zzf;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final boolean m1763() {
        return (this.zzb & 4) != 0;
    }
}
