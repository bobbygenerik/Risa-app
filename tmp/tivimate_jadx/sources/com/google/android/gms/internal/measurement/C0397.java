package com.google.android.gms.internal.measurement;

import p223.C3056;

/* renamed from: com.google.android.gms.internal.measurement.יﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0397 extends AbstractC0269 {
    private static final C0397 zzh;
    private int zzb;
    private int zzd;
    private boolean zzf;
    private String zze = "";
    private InterfaceC0247 zzg = C0370.f2028;

    static {
        C0397 c0397 = new C0397();
        zzh = c0397;
        AbstractC0269.m1224(C0397.class, c0397);
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public static C0397 m1784() {
        return zzh;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final int m1785() {
        return this.zzg.size();
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m1786() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final InterfaceC0247 m1787() {
        return this.zzg;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final int m1788() {
        int i;
        switch (this.zzd) {
            case 0:
                i = 1;
                break;
            case 1:
                i = 2;
                break;
            case 2:
                i = 3;
                break;
            case 3:
                i = 4;
                break;
            case 4:
                i = 5;
                break;
            case 5:
                i = 6;
                break;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                i = 7;
                break;
            default:
                i = 0;
                break;
        }
        if (i == 0) {
            return 1;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzh, "\u0004\u0004\u0000\u0001\u0001\u0004\u0004\u0000\u0001\u0000\u0001᠌\u0000\u0002ဈ\u0001\u0003ဇ\u0002\u0004\u001a", new Object[]{"zzb", "zzd", C0286.f1877, "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new C0397();
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
    public final boolean m1789() {
        return this.zzf;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final boolean m1790() {
        return (this.zzb & 4) != 0;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final boolean m1791() {
        return (this.zzb & 2) != 0;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final String m1792() {
        return this.zze;
    }
}
