package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.RandomAccess;

/* renamed from: com.google.android.gms.internal.measurement.ˆˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0310 extends AbstractC0269 {
    private static final C0310 zzf;
    private int zzb;
    private int zzd;
    private InterfaceC0378 zze = C0403.f2131;

    static {
        C0310 c0310 = new C0310();
        zzf = c0310;
        AbstractC0269.m1224(C0310.class, c0310);
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static C0313 m1356() {
        return (C0313) zzf.m1233();
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final /* synthetic */ void m1357(int i) {
        this.zzb |= 1;
        this.zzd = i;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m1358() {
        return (this.zzb & 1) != 0;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001င\u0000\u0002\u0014", new Object[]{"zzb", "zzd", "zze"});
        }
        if (i2 == 3) {
            return new C0310();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzf);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final long m1359(int i) {
        return ((C0403) this.zze).m1795(i);
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final int m1360() {
        return ((C0403) this.zze).size();
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m1361(List list) {
        RandomAccess randomAccess = this.zze;
        if (!((AbstractC0265) randomAccess).f1765) {
            C0403 c0403 = (C0403) randomAccess;
            int i = c0403.f2132;
            this.zze = c0403.mo1195(i + i);
        }
        AbstractC0514.m2018(list, this.zze);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int m1362() {
        return this.zzd;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final List m1363() {
        return this.zze;
    }
}
