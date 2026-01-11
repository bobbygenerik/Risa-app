package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.ˊﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0569 extends AbstractC0529 {
    private static final C0569 zzb;
    private int zzd;
    private int zzf;
    private C0570 zzi;
    private boolean zzj;
    private boolean zzk;
    private String zze = "";
    private InterfaceC0538 zzg = C0578.f2369;
    private InterfaceC0543 zzh = C0646.f2504;

    static {
        C0569 c0569 = new C0569();
        zzb = c0569;
        AbstractC0529.m2042(C0569.class, c0569);
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0529
    /* renamed from: ˈ */
    public final Object mo2022(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0535(zzb, "\u0004\u0007\u0000\u0001\u0001\u0007\u0007\u0000\u0002\u0000\u0001ဈ\u0000\u0002᠌\u0001\u0003ࠬ\u0004\u001b\u0005ဉ\u0002\u0006ဇ\u0003\u0007ဇ\u0004", new Object[]{"zzd", "zze", "zzf", C0568.f2364, "zzg", C0568.f2360, "zzh", C0548.class, "zzi", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new C0569();
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
