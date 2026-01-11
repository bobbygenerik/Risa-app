package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ᵎʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0449 extends AbstractC0269 {
    private static final C0449 zzh;
    private int zzb;
    private String zzd = "";
    private boolean zze;
    private boolean zzf;
    private int zzg;

    static {
        C0449 c0449 = new C0449();
        zzh = c0449;
        AbstractC0269.m1224(C0449.class, c0449);
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final int m1875() {
        return this.zzg;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final String m1876() {
        return this.zzd;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final boolean m1877() {
        return (this.zzb & 8) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဇ\u0001\u0003ဇ\u0002\u0004င\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new C0449();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzh);
        }
        if (i2 == 5) {
            return zzh;
        }
        throw null;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean m1878() {
        return this.zzf;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final boolean m1879() {
        return (this.zzb & 4) != 0;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final /* synthetic */ void m1880(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final boolean m1881() {
        return (this.zzb & 2) != 0;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final boolean m1882() {
        return this.zze;
    }
}
