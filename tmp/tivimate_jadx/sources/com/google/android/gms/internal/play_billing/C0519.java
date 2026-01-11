package com.google.android.gms.internal.play_billing;

/* renamed from: com.google.android.gms.internal.play_billing.ʻʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0519 extends AbstractC0529 {
    private static final C0519 zzb;
    private int zzd;
    private InterfaceC0543 zze = C0646.f2504;
    private String zzf = "";
    private boolean zzg;

    static {
        C0519 c0519 = new C0519();
        zzb = c0519;
        AbstractC0529.m2042(C0519.class, c0519);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static C0519 m2020() {
        return zzb;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static /* synthetic */ void m2021(C0519 c0519, boolean z) {
        c0519.zzd |= 2;
        c0519.zzg = z;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0529
    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object mo2022(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0535(zzb, "\u0004\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဇ\u0001", new Object[]{"zzd", "zze", C0550.class, "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new C0519();
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
