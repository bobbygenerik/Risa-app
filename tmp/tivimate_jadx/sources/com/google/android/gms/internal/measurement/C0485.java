package com.google.android.gms.internal.measurement;

/* renamed from: com.google.android.gms.internal.measurement.ⁱי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0485 extends AbstractC0269 {
    private static final C0485 zzd;
    private InterfaceC0247 zzb = C0370.f2028;

    static {
        C0485 c0485 = new C0485();
        zzd = c0485;
        AbstractC0269.m1224(C0485.class, c0485);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC0269
    /* renamed from: ˉˆ */
    public final Object mo1194(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0423(zzd, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a", new Object[]{"zzb"});
        }
        if (i2 == 3) {
            return new C0485();
        }
        if (i2 == 4) {
            return new AbstractC0495(zzd);
        }
        if (i2 == 5) {
            return zzd;
        }
        throw null;
    }
}
