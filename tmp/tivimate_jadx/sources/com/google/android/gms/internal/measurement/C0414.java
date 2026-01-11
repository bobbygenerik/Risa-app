package com.google.android.gms.internal.measurement;

import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ٴʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0414 extends AbstractC0269 {
    private static final C0414 zzj;
    private int zzb;
    private InterfaceC0247 zzd = C0370.f2028;
    private String zze = "";
    private long zzf;
    private long zzg;
    private int zzh;
    private long zzi;

    static {
        C0414 c0414 = new C0414();
        zzj = c0414;
        AbstractC0269.m1224(C0414.class, c0414);
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static C0466 m1815() {
        return (C0466) zzj.m1233();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final boolean m1816() {
        return (this.zzb & 4) != 0;
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final int m1817() {
        return this.zzh;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final List m1818() {
        return this.zzd;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ void m1819(Iterable iterable) {
        m1829();
        AbstractC0514.m2018(iterable, this.zzd);
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final long m1820() {
        return this.zzf;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ void m1821(int i, C0348 c0348) {
        m1829();
        this.zzd.set(i, c0348);
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final boolean m1822() {
        return (this.zzb & 8) != 0;
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void m1823() {
        this.zzd = C0370.f2028;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzj, "\u0004\u0006\u0000\u0001\u0001\u0006\u0006\u0000\u0001\u0000\u0001\u001b\u0002ဈ\u0000\u0003ဂ\u0001\u0004ဂ\u0002\u0005င\u0003\u0006ဂ\u0004", new Object[]{"zzb", "zzd", C0348.class, "zze", "zzf", "zzg", "zzh", "zzi"});
        }
        if (i2 == 3) {
            return new C0414();
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
    public final /* synthetic */ void m1824(long j) {
        this.zzb |= 4;
        this.zzg = j;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ void m1825(String str) {
        str.getClass();
        this.zzb |= 1;
        this.zze = str;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean m1826() {
        return (this.zzb & 2) != 0;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final String m1827() {
        return this.zze;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final long m1828() {
        return this.zzg;
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m1829() {
        InterfaceC0247 interfaceC0247 = this.zzd;
        if (((AbstractC0265) interfaceC0247).f1765) {
            return;
        }
        int size = interfaceC0247.size();
        this.zzd = interfaceC0247.mo1195(size + size);
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ void m1830(long j) {
        this.zzb |= 2;
        this.zzf = j;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ void m1831(C0348 c0348) {
        c0348.getClass();
        m1829();
        this.zzd.add(c0348);
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ void m1832(int i) {
        m1829();
        this.zzd.remove(i);
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final /* synthetic */ void m1833(long j) {
        this.zzb |= 16;
        this.zzi = j;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int m1834() {
        return this.zzd.size();
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final C0348 m1835(int i) {
        return (C0348) this.zzd.get(i);
    }
}
