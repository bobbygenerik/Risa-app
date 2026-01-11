package com.google.android.gms.internal.measurement;

import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ـᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0409 extends AbstractC0269 {
    private static final C0409 zzl;
    private int zzb;
    private int zzd;
    private String zze = "";
    private InterfaceC0247 zzf = C0370.f2028;
    private boolean zzg;
    private C0375 zzh;
    private boolean zzi;
    private boolean zzj;
    private boolean zzk;

    static {
        C0409 c0409 = new C0409();
        zzl = c0409;
        AbstractC0269.m1224(C0409.class, c0409);
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static C0447 m1798() {
        return (C0447) zzl.m1233();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final boolean m1799() {
        return (this.zzb & 8) != 0;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final boolean m1800() {
        return this.zzj;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m1801() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ void m1802(String str) {
        this.zzb |= 2;
        this.zze = str;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final C0433 m1803(int i) {
        return (C0433) this.zzf.get(i);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean m1804() {
        return this.zzk;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final boolean m1805() {
        return this.zzi;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m1806(int i, C0433 c0433) {
        InterfaceC0247 interfaceC0247 = this.zzf;
        if (!((AbstractC0265) interfaceC0247).f1765) {
            int size = interfaceC0247.size();
            this.zzf = interfaceC0247.mo1195(size + size);
        }
        this.zzf.set(i, c0433);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzl, "\u0004\b\u0000\u0001\u0001\b\b\u0000\u0001\u0000\u0001င\u0000\u0002ဈ\u0001\u0003\u001b\u0004ဇ\u0002\u0005ဉ\u0003\u0006ဇ\u0004\u0007ဇ\u0005\bဇ\u0006", new Object[]{"zzb", "zzd", "zze", "zzf", C0433.class, "zzg", "zzh", "zzi", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new C0409();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzl);
        }
        if (i2 == 5) {
            return zzl;
        }
        throw null;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final int m1807() {
        return this.zzf.size();
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final List m1808() {
        return this.zzf;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final C0375 m1809() {
        C0375 c0375 = this.zzh;
        return c0375 == null ? C0375.m1711() : c0375;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int m1810() {
        return this.zzd;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final boolean m1811() {
        return (this.zzb & 64) != 0;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final String m1812() {
        return this.zze;
    }
}
