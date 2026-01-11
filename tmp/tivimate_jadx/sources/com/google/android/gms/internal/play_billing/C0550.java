package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.ˆˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0550 extends AbstractC0529 {
    private static final C0550 zzb;
    private int zzd;
    private int zze;
    private String zzf = "";

    static {
        C0550 c0550 = new C0550();
        zzb = c0550;
        AbstractC0529.m2042(C0550.class, c0550);
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0529
    /* renamed from: ˈ */
    public final Object mo2022(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0535(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", C0568.f2362, "zzf"});
        }
        if (i2 == 3) {
            return new C0550();
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
