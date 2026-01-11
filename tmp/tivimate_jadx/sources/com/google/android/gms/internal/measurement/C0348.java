package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ˊﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0348 extends AbstractC0269 {
    private static final C0348 zzj;
    private int zzb;
    private long zzf;
    private float zzg;
    private double zzh;
    private String zzd = "";
    private String zze = "";
    private InterfaceC0247 zzi = C0370.f2028;

    static {
        C0348 c0348 = new C0348();
        zzj = c0348;
        AbstractC0269.m1224(C0348.class, c0348);
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static C0341 m1613() {
        return (C0341) zzj.m1233();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final boolean m1614() {
        return (this.zzb & 8) != 0;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final double m1615() {
        return this.zzh;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m1616() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ void m1617(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zzd = str;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final long m1618() {
        return this.zzf;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int m1619() {
        return this.zzi.size();
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final boolean m1620() {
        return (this.zzb & 16) != 0;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ void m1621(String str) {
        str.getClass();
        this.zzb |= 2;
        this.zze = str;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဂ\u0002\u0004ခ\u0003\u0005က\u0004\u0006\u001b", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", "zzh", "zzi", C0348.class});
        }
        if (i2 == 3) {
            return new C0348();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzj);
        }
        if (i2 == 5) {
            return zzj;
        }
        throw null;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final /* synthetic */ void m1622(double d) {
        this.zzb |= 16;
        this.zzh = d;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ void m1623(long j) {
        this.zzb |= 4;
        this.zzf = j;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean m1624() {
        return (this.zzb & 4) != 0;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final String m1625() {
        return this.zze;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final float m1626() {
        return this.zzg;
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m1627(C0348 c0348) {
        InterfaceC0247 interfaceC0247 = this.zzi;
        if (!((AbstractC0265) interfaceC0247).f1765) {
            int size = interfaceC0247.size();
            this.zzi = interfaceC0247.mo1195(size + size);
        }
        this.zzi.add(c0348);
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ void m1628() {
        this.zzb &= -5;
        this.zzf = 0L;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ void m1629() {
        this.zzb &= -3;
        this.zze = zzj.zze;
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final void m1630(ArrayList arrayList) {
        InterfaceC0247 interfaceC0247 = this.zzi;
        if (!((AbstractC0265) interfaceC0247).f1765) {
            int size = interfaceC0247.size();
            this.zzi = interfaceC0247.mo1195(size + size);
        }
        AbstractC0514.m2018(arrayList, this.zzi);
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final /* synthetic */ void m1631() {
        this.zzb &= -17;
        this.zzh = 0.0d;
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final void m1632() {
        this.zzi = C0370.f2028;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final String m1633() {
        return this.zzd;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final List m1634() {
        return this.zzi;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final boolean m1635() {
        return (this.zzb & 2) != 0;
    }
}
