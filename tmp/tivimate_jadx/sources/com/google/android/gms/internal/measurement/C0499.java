package com.google.android.gms.internal.measurement;

import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ﹳⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0499 extends AbstractC0269 {
    private static final C0499 zzu;
    private int zzb;
    private long zzd;
    private String zze = "";
    private int zzf;
    private InterfaceC0247 zzg;
    private InterfaceC0247 zzh;
    private InterfaceC0247 zzi;
    private String zzj;
    private boolean zzk;
    private InterfaceC0247 zzl;
    private InterfaceC0247 zzm;
    private String zzn;
    private String zzo;
    private C0426 zzp;
    private C0245 zzq;
    private C0419 zzr;
    private C0502 zzs;
    private C0485 zzt;

    static {
        C0499 c0499 = new C0499();
        zzu = c0499;
        AbstractC0269.m1224(C0499.class, c0499);
    }

    public C0499() {
        C0370 c0370 = C0370.f2028;
        this.zzg = c0370;
        this.zzh = c0370;
        this.zzi = c0370;
        this.zzj = "";
        this.zzl = c0370;
        this.zzm = c0370;
        this.zzn = "";
        this.zzo = "";
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static C0304 m1954() {
        return (C0304) zzu.m1233();
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static C0499 m1955() {
        return zzu;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final C0449 m1956(int i) {
        return (C0449) this.zzh.get(i);
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final int m1957() {
        return this.zzl.size();
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m1958() {
        return (this.zzb & 1) != 0;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C0426 m1959() {
        C0426 c0426 = this.zzp;
        return c0426 == null ? C0426.m1853() : c0426;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final int m1960() {
        return this.zzh.size();
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String m1961() {
        return this.zzn;
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final InterfaceC0247 m1962() {
        return this.zzl;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final boolean m1963() {
        return (this.zzb & 512) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzu, "\u0004\u0011\u0000\u0001\u0001\u0013\u0011\u0000\u0005\u0000\u0001ဂ\u0000\u0002ဈ\u0001\u0003င\u0002\u0004\u001b\u0005\u001b\u0006\u001b\u0007ဈ\u0003\bဇ\u0004\t\u001b\n\u001b\u000bဈ\u0005\u000eဈ\u0006\u000fဉ\u0007\u0010ဉ\b\u0011ဉ\t\u0012ဉ\n\u0013ဉ\u000b", new Object[]{"zzb", "zzd", "zze", "zzf", "zzg", C0410.class, "zzh", C0449.class, "zzi", C0421.class, "zzj", "zzk", "zzl", C0442.class, "zzm", C0253.class, "zzn", "zzo", "zzp", "zzq", "zzr", "zzs", "zzt"});
        }
        if (i2 == 3) {
            return new C0499();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzu);
        }
        if (i2 == 5) {
            return zzu;
        }
        throw null;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m1964(int i, C0449 c0449) {
        InterfaceC0247 interfaceC0247 = this.zzh;
        if (!((AbstractC0265) interfaceC0247).f1765) {
            int size = interfaceC0247.size();
            this.zzh = interfaceC0247.mo1195(size + size);
        }
        this.zzh.set(i, c0449);
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final InterfaceC0247 m1965() {
        return this.zzg;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final String m1966() {
        return this.zze;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final InterfaceC0247 m1967() {
        return this.zzi;
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m1968() {
        this.zzl = C0370.f2028;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean m1969() {
        return (this.zzb & 128) != 0;
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C0419 m1970() {
        C0419 c0419 = this.zzr;
        return c0419 == null ? C0419.m1836() : c0419;
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m1971() {
        this.zzi = C0370.f2028;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final long m1972() {
        return this.zzd;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final List m1973() {
        return this.zzm;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final boolean m1974() {
        return (this.zzb & 2) != 0;
    }
}
