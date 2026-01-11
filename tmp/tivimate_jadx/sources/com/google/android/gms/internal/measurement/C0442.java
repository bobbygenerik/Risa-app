package com.google.android.gms.internal.measurement;

import java.util.List;

/* renamed from: com.google.android.gms.internal.measurement.ᴵٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0442 extends AbstractC0269 {
    private static final C0442 zzf;
    private int zzb;
    private InterfaceC0247 zzd = C0370.f2028;
    private C0327 zze;

    static {
        C0442 c0442 = new C0442();
        zzf = c0442;
        AbstractC0269.m1224(C0442.class, c0442);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final List m1871() {
        return this.zzd;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzf, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000", new Object[]{"zzb", "zzd", C0385.class, "zze"});
        }
        if (i2 == 3) {
            return new C0442();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzf);
        }
        if (i2 == 5) {
            return zzf;
        }
        throw null;
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final C0327 m1872() {
        C0327 c0327 = this.zze;
        return c0327 == null ? C0327.m1570() : c0327;
    }
}
