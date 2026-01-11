package com.google.android.gms.internal.measurement;

import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ٴﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0421 extends AbstractC0269 {
    private static final C0421 zzi;
    private int zzb;
    private int zzd;
    private InterfaceC0247 zze;
    private InterfaceC0247 zzf;
    private boolean zzg;
    private boolean zzh;

    static {
        C0421 c0421 = new C0421();
        zzi = c0421;
        AbstractC0269.m1224(C0421.class, c0421);
    }

    public C0421() {
        C0370 c0370 = C0370.f2028;
        this.zze = c0370;
        this.zzf = c0370;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final int m1839() {
        return this.zzf.size();
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final void m1840(int i, C0409 c0409) {
        InterfaceC0247 interfaceC0247 = this.zzf;
        if (!((AbstractC0265) interfaceC0247).f1765) {
            int size = interfaceC0247.size();
            this.zzf = interfaceC0247.mo1195(size + size);
        }
        this.zzf.set(i, c0409);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m1841() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final InterfaceC0247 m1842() {
        return this.zzf;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void m1843(int i, C0366 c0366) {
        InterfaceC0247 interfaceC0247 = this.zze;
        if (!((AbstractC0265) interfaceC0247).f1765) {
            int size = interfaceC0247.size();
            this.zze = interfaceC0247.mo1195(size + size);
        }
        this.zze.set(i, c0366);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzi, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0002\u0000\u0001င\u0000\u0002\u001b\u0003\u001b\u0004ဇ\u0001\u0005ဇ\u0002", new Object[]{"zzb", "zzd", "zze", C0366.class, "zzf", C0409.class, "zzg", "zzh"});
        }
        if (i2 == 3) {
            return new C0421();
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
    public final C0366 m1844(int i) {
        return (C0366) this.zze.get(i);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final int m1845() {
        return this.zze.size();
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final C0409 m1846(int i) {
        return (C0409) this.zzf.get(i);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int m1847() {
        return this.zzd;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final List m1848() {
        return this.zze;
    }
}
