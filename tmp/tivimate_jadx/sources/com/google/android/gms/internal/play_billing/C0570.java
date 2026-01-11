package com.google.android.gms.internal.play_billing;

import android.support.v4.media.session.AbstractC0001;

/* renamed from: com.google.android.gms.internal.play_billing.ˊﾞ */
/* loaded from: classes.dex */
public final class C0570 extends AbstractC0529 {
    private static final C0570 zzb;
    private int zzd;
    private int zze;
    private int zzg;
    private int zzi;
    private String zzf = "";
    private String zzh = "";

    static {
        C0570 c0570 = new C0570();
        zzb = c0570;
        AbstractC0529.m2042(C0570.class, c0570);
    }

    /* renamed from: ʼᐧ */
    public static /* synthetic */ void m2138(C0570 c0570, int i) {
        c0570.zzd |= 16;
        c0570.zzi = i;
    }

    /* renamed from: ˉˆ */
    public static /* synthetic */ void m2139(C0570 c0570, String str) {
        str.getClass();
        c0570.zzd |= 2;
        c0570.zzf = str;
    }

    /* renamed from: יـ */
    public static C0566 m2140() {
        return (C0566) zzb.m2050();
    }

    /* renamed from: ᵔʾ */
    public static /* synthetic */ void m2141(C0570 c0570, String str) {
        c0570.zzd |= 8;
        c0570.zzh = str;
    }

    /* renamed from: ᵔﹳ */
    public static void m2142(C0570 c0570, int i) {
        c0570.zzg = AbstractC0001.m7(i);
        c0570.zzd |= 4;
    }

    /* renamed from: ﹳᐧ */
    public static /* synthetic */ void m2143(C0570 c0570, int i) {
        c0570.zzd |= 1;
        c0570.zze = i;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0529
    /* renamed from: ˈ */
    public final Object mo2022(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0535(zzb, "\u0004\u0005\u0000\u0001\u0001\u0007\u0005\u0000\u0000\u0000\u0001င\u0000\u0002ဈ\u0001\u0004᠌\u0002\u0005ဈ\u0003\u0007င\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", C0568.f2359, "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new C0570();
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
