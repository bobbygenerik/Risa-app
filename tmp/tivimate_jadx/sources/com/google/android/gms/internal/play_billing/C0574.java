package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.ˎʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0574 extends AbstractC0529 {
    private static final C0574 zzb;
    private int zzd;
    private int zze;
    private boolean zzf;
    private long zzg;
    private boolean zzh;
    private int zzi;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.play_billing.ˎʼ, com.google.android.gms.internal.play_billing.ʼـ] */
    static {
        ?? abstractC0529 = new AbstractC0529();
        zzb = abstractC0529;
        AbstractC0529.m2042(C0574.class, abstractC0529);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static /* synthetic */ void m2158(C0574 c0574, long j) {
        c0574.zzd |= 4;
        c0574.zzg = j;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static /* synthetic */ void m2159(C0574 c0574, int i) {
        c0574.zzd |= 16;
        c0574.zzi = i;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static /* synthetic */ void m2160(C0574 c0574, boolean z) {
        c0574.zzd |= 8;
        c0574.zzh = z;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static /* synthetic */ void m2161(C0574 c0574) {
        c0574.zzd |= 2;
        c0574.zzf = true;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static C0589 m2162() {
        return (C0589) zzb.m2050();
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0529
    /* renamed from: ˈ */
    public final Object mo2022(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0535(zzb, "\u0004\u0005\u0000\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001င\u0000\u0002ဇ\u0001\u0003ဂ\u0002\u0004ဇ\u0003\u0005င\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new AbstractC0529();
        }
        if (i2 == 4) {
            return new AbstractC0584(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }
}
