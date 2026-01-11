package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ﹶʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0503 extends AbstractC0269 {
    private static final C0503 zzf;
    private int zzb;
    private int zzd;
    private long zze;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.measurement.ﹶʽ, com.google.android.gms.internal.measurement.ʼﹶ] */
    static {
        ?? abstractC0269 = new AbstractC0269();
        zzf = abstractC0269;
        AbstractC0269.m1224(C0503.class, abstractC0269);
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static C0352 m1979() {
        return (C0352) zzf.m1233();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final /* synthetic */ void m1980(long j) {
        this.zzb |= 2;
        this.zze = j;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m1981() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final /* synthetic */ void m1982(int i) {
        this.zzb |= 1;
        this.zzd = i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001င\u0000\u0002ဂ\u0001", new Object[]{"zzb", "zzd", "zze"});
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

    /* renamed from: יـ, reason: contains not printable characters */
    public final long m1983() {
        return this.zze;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int m1984() {
        return this.zzd;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final boolean m1985() {
        return (this.zzb & 2) != 0;
    }
}
