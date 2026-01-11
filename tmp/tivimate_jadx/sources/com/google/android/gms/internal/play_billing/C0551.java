package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.ˆˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0551 extends AbstractC0529 {
    private static final C0551 zzb;
    private int zzd;
    private String zze = "";
    private String zzf = "";
    private String zzg = "";
    private int zzh;
    private long zzi;
    private long zzj;
    private boolean zzk;
    private int zzl;
    private int zzm;
    private long zzn;

    static {
        C0551 c0551 = new C0551();
        zzb = c0551;
        AbstractC0529.m2042(C0551.class, c0551);
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public static /* synthetic */ void m2113(C0551 c0551) {
        c0551.zzd |= 1;
        c0551.zze = "8.0.0";
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static /* synthetic */ void m2114(C0551 c0551, int i) {
        c0551.zzd |= 8;
        c0551.zzh = i;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static /* synthetic */ void m2115(C0551 c0551, boolean z) {
        c0551.zzd |= 64;
        c0551.zzk = z;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public static C0534 m2116() {
        return (C0534) zzb.m2050();
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static /* synthetic */ void m2117(C0551 c0551, int i) {
        c0551.zzd |= 256;
        c0551.zzm = i;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static /* synthetic */ void m2118(C0551 c0551, String str) {
        str.getClass();
        c0551.zzd |= 4;
        c0551.zzg = str;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static /* synthetic */ void m2119(C0551 c0551) {
        c0551.zzd |= 512;
        c0551.zzn = 772604006L;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static /* synthetic */ void m2120(C0551 c0551, String str) {
        c0551.zzd |= 2;
        c0551.zzf = str;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static /* synthetic */ void m2121(C0551 c0551, int i) {
        c0551.zzd |= 128;
        c0551.zzl = i;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static /* synthetic */ void m2122(C0551 c0551, long j) {
        c0551.zzd |= 16;
        c0551.zzi = j;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static /* synthetic */ void m2123(C0551 c0551, long j) {
        c0551.zzd |= 32;
        c0551.zzj = j;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0529
    /* renamed from: ˈ */
    public final Object mo2022(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0535(zzb, "\u0004\n\u0000\u0001\u0001\n\n\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0002\u0003င\u0003\u0004ဂ\u0004\u0005ဈ\u0001\u0006ဂ\u0005\u0007ဇ\u0006\bင\u0007\tင\b\nဂ\t", new Object[]{"zzd", "zze", "zzg", "zzh", "zzi", "zzf", "zzj", "zzk", "zzl", "zzm", "zzn"});
        }
        if (i2 == 3) {
            return new C0551();
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
