package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.יʿ */
/* loaded from: classes.dex */
public final class C0590 extends AbstractC0529 {
    private static final C0590 zzb;
    private int zzd;
    private C0570 zze;
    private long zzf;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.play_billing.ʼـ, com.google.android.gms.internal.play_billing.יʿ] */
    static {
        ?? abstractC0529 = new AbstractC0529();
        zzb = abstractC0529;
        AbstractC0529.m2042(C0590.class, abstractC0529);
    }

    /* renamed from: ʼᐧ */
    public static C0560 m2183() {
        return (C0560) zzb.m2050();
    }

    /* renamed from: ˉˆ */
    public static /* synthetic */ void m2184(C0590 c0590, long j) {
        c0590.zzd |= 2;
        c0590.zzf = j;
    }

    /* renamed from: ᵔʾ */
    public static /* synthetic */ void m2185(C0590 c0590, C0570 c0570) {
        c0590.zze = c0570;
        c0590.zzd |= 1;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0529
    /* renamed from: ˈ */
    public final Object mo2022(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0535(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဉ\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", "zzf"});
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
