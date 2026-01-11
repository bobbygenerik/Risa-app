package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.ﾞˏ */
/* loaded from: classes.dex */
public final class C0651 extends AbstractC0529 {
    private static final C0651 zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;
    private int zzh;

    static {
        C0651 c0651 = new C0651();
        zzb = c0651;
        AbstractC0529.m2042(C0651.class, c0651);
    }

    /* renamed from: ʼᐧ */
    public static /* synthetic */ void m2306(C0651 c0651, C0519 c0519) {
        c0651.zzf = c0519;
        c0651.zze = 4;
    }

    /* renamed from: ˉˆ */
    public static void m2307(C0651 c0651, EnumC0583 enumC0583) {
        c0651.zzh = enumC0583.f2385;
        c0651.zzd |= 2;
    }

    /* renamed from: יـ */
    public static C0603 m2308() {
        return (C0603) zzb.m2050();
    }

    /* renamed from: ᵔﹳ */
    public static /* synthetic */ void m2309(C0651 c0651, C0574 c0574) {
        c0651.zzf = c0574;
        c0651.zze = 3;
    }

    /* renamed from: ﹳᐧ */
    public static /* synthetic */ void m2310(C0651 c0651, int i) {
        c0651.zzg = i - 1;
        c0651.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0529
    /* renamed from: ˈ */
    public final Object mo2022(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0535(zzb, "\u0004\u0005\u0001\u0001\u0001\u0005\u0005\u0000\u0000\u0000\u0001᠌\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005᠌\u0001", new Object[]{"zzf", "zze", "zzd", "zzg", C0568.f2358, C0629.class, C0574.class, C0519.class, "zzh", C0568.f2360});
        }
        if (i2 == 3) {
            return new C0651();
        }
        if (i2 == 4) {
            return new AbstractC0584(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }

    /* renamed from: ᵔʾ */
    public final C0519 m2311() {
        return this.zze == 4 ? (C0519) this.zzf : C0519.m2020();
    }
}
