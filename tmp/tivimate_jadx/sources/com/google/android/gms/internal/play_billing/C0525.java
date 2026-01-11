package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.ʻᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0525 extends AbstractC0529 {
    private static final C0525 zzb;
    private int zzd;
    private String zze = "";

    static {
        C0525 c0525 = new C0525();
        zzb = c0525;
        AbstractC0529.m2042(C0525.class, c0525);
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0529
    /* renamed from: ˈ */
    public final Object mo2022(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0535(zzb, "\u0004\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001ဈ\u0000", new Object[]{"zzd", "zze"});
        }
        if (i2 == 3) {
            return new C0525();
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
