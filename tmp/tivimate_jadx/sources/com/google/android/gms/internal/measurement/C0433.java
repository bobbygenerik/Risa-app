package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ᐧﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0433 extends AbstractC0269 {
    private static final C0433 zzh;
    private int zzb;
    private C0397 zzd;
    private C0375 zze;
    private boolean zzf;
    private String zzg = "";

    static {
        C0433 c0433 = new C0433();
        zzh = c0433;
        AbstractC0269.m1224(C0433.class, c0433);
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static C0433 m1860() {
        return zzh;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final boolean m1861() {
        return (this.zzb & 8) != 0;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final /* synthetic */ void m1862(String str) {
        this.zzb |= 8;
        this.zzg = str;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m1863() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final boolean m1864() {
        return this.zzf;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဉ\u0001\u0003ဇ\u0002\u0004ဈ\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new C0433();
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
    public final boolean m1865() {
        return (this.zzb & 4) != 0;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final C0375 m1866() {
        C0375 c0375 = this.zze;
        return c0375 == null ? C0375.m1711() : c0375;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final String m1867() {
        return this.zzg;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final C0397 m1868() {
        C0397 c0397 = this.zzd;
        return c0397 == null ? C0397.m1784() : c0397;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final boolean m1869() {
        return (this.zzb & 2) != 0;
    }
}
