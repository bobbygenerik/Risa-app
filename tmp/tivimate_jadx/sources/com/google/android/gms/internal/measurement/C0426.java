package com.google.android.gms.internal.measurement;

import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ᐧˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0426 extends AbstractC0269 {
    private static final C0426 zzi;
    private int zzb;
    private InterfaceC0247 zzd;
    private InterfaceC0247 zze;
    private InterfaceC0247 zzf;
    private boolean zzg;
    private InterfaceC0247 zzh;

    static {
        C0426 c0426 = new C0426();
        zzi = c0426;
        AbstractC0269.m1224(C0426.class, c0426);
    }

    public C0426() {
        C0370 c0370 = C0370.f2028;
        this.zzd = c0370;
        this.zze = c0370;
        this.zzf = c0370;
        this.zzh = c0370;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static C0426 m1853() {
        return zzi;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final List m1854() {
        return this.zzd;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final InterfaceC0247 m1855() {
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
            return new C0423(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0004\u0000\u0001\u001b\u0002\u001b\u0003\u001b\u0004ဇ\u0000\u0005\u001b", new Object[]{"zzb", "zzd", C0280.class, "zze", C0296.class, "zzf", C0483.class, "zzg", "zzh", C0280.class});
        }
        if (i2 == 3) {
            return new C0426();
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
    public final boolean m1856() {
        return this.zzg;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final boolean m1857() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final List m1858() {
        return this.zze;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final List m1859() {
        return this.zzf;
    }
}
