package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ˎʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0358 extends AbstractC0269 {
    private static final C0358 zzh;
    private int zzb;
    private int zzd;
    private C0299 zze;
    private C0299 zzf;
    private boolean zzg;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.measurement.ˎʾ, com.google.android.gms.internal.measurement.ʼﹶ] */
    static {
        ?? abstractC0269 = new AbstractC0269();
        zzh = abstractC0269;
        AbstractC0269.m1224(C0358.class, abstractC0269);
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static C0322 m1671() {
        return (C0322) zzh.m1233();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final boolean m1672() {
        return this.zzg;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final /* synthetic */ void m1673(C0299 c0299) {
        this.zze = c0299;
        this.zzb |= 2;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m1674() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final boolean m1675() {
        return (this.zzb & 8) != 0;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ void m1676(boolean z) {
        this.zzb |= 8;
        this.zzg = z;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final /* synthetic */ void m1677(int i) {
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
            return new C0423(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0000\u0000\u0001င\u0000\u0002ဉ\u0001\u0003ဉ\u0002\u0004ဇ\u0003", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new AbstractC0269();
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
    public final C0299 m1678() {
        C0299 c0299 = this.zzf;
        return c0299 == null ? C0299.m1313() : c0299;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final boolean m1679() {
        return (this.zzb & 4) != 0;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int m1680() {
        return this.zzd;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final /* synthetic */ void m1681(C0299 c0299) {
        this.zzf = c0299;
        this.zzb |= 4;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final C0299 m1682() {
        C0299 c0299 = this.zze;
        return c0299 == null ? C0299.m1313() : c0299;
    }
}
