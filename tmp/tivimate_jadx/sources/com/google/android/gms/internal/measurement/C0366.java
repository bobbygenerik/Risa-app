package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ˎᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0366 extends AbstractC0269 {
    private static final C0366 zzj;
    private int zzb;
    private int zzd;
    private String zze = "";
    private C0433 zzf;
    private boolean zzg;
    private boolean zzh;
    private boolean zzi;

    static {
        C0366 c0366 = new C0366();
        zzj = c0366;
        AbstractC0269.m1224(C0366.class, c0366);
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static C0262 m1687() {
        return (C0262) zzj.m1233();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final boolean m1688() {
        return (this.zzb & 32) != 0;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final /* synthetic */ void m1689(String str) {
        this.zzb |= 2;
        this.zze = str;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m1690() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final boolean m1691() {
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
            return new C0423(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဇ\u0003\u0005ဇ\u0004\u0006ဇ\u0005", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new C0366();
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
    public final boolean m1692() {
        return this.zzg;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final C0433 m1693() {
        C0433 c0433 = this.zzf;
        return c0433 == null ? C0433.m1860() : c0433;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final boolean m1694() {
        return this.zzi;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int m1695() {
        return this.zzd;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final String m1696() {
        return this.zze;
    }
}
