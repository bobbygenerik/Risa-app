package com.google.android.gms.internal.play_billing;

import java.io.IOException;

/* renamed from: com.google.android.gms.internal.play_billing.ᵔⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0627 extends AbstractC0529 {
    private static final C0627 zzb;
    private int zzd;
    private int zze = 0;
    private Object zzf;
    private int zzg;
    private C0570 zzh;
    private int zzi;

    static {
        C0627 c0627 = new C0627();
        zzb = c0627;
        AbstractC0529.m2042(C0627.class, c0627);
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public static void m2235(C0627 c0627, EnumC0583 enumC0583) {
        c0627.zzi = enumC0583.f2385;
        c0627.zzd |= 4;
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static C0645 m2236() {
        return (C0645) zzb.m2050();
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public static /* synthetic */ void m2237(C0627 c0627, int i) {
        c0627.zzg = i - 1;
        c0627.zzd |= 1;
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public static /* synthetic */ void m2238(C0627 c0627, C0574 c0574) {
        c0627.zzf = c0574;
        c0627.zze = 6;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.internal.play_billing.ˋˊ] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, com.google.android.gms.internal.play_billing.ʼـ] */
    /* JADX WARN: Type inference failed for: r6v0, types: [com.google.android.gms.internal.measurement.ˈʻ, java.lang.Object] */
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static C0627 m2239(byte[] bArr, AbstractC0617 abstractC0617) {
        C0627 c0627 = zzb;
        int length = bArr.length;
        if (length != 0) {
            ?? r2 = (AbstractC0529) c0627.mo2022(4);
            try {
                ?? m2245 = C0637.f2473.m2245(r2.getClass());
                ?? obj = new Object();
                abstractC0617.getClass();
                m2245.mo2148(r2, bArr, 0, length, obj);
                m2245.mo2150(r2);
                c0627 = r2;
            } catch (zzfq e) {
                throw e;
            } catch (zzhg e2) {
                throw new IOException(e2.getMessage());
            } catch (IOException e3) {
                if (e3.getCause() instanceof zzfq) {
                    throw ((zzfq) e3.getCause());
                }
                throw new IOException(e3.getMessage(), e3);
            } catch (IndexOutOfBoundsException unused) {
                throw new IOException("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
            }
        }
        if (c0627 == null || AbstractC0529.m2041(c0627, true)) {
            return c0627;
        }
        throw new IOException(new zzhg().getMessage());
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public static /* synthetic */ void m2240(C0627 c0627, C0570 c0570) {
        c0627.zzh = c0570;
        c0627.zzd |= 2;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static /* synthetic */ void m2241(C0627 c0627, C0519 c0519) {
        c0627.zzf = c0519;
        c0627.zze = 7;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractC0529
    /* renamed from: ˈ */
    public final Object mo2022(int i) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new C0535(zzb, "\u0004\u0006\u0001\u0001\u0001\u0007\u0006\u0000\u0000\u0000\u0001᠌\u0000\u0002ဉ\u0001\u0004<\u0000\u0005᠌\u0002\u0006<\u0000\u0007<\u0000", new Object[]{"zzf", "zze", "zzd", "zzg", C0568.f2358, "zzh", C0629.class, "zzi", C0568.f2360, C0574.class, C0519.class});
        }
        if (i2 == 3) {
            return new C0627();
        }
        if (i2 == 4) {
            return new AbstractC0584(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        throw null;
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final C0519 m2242() {
        return this.zze == 7 ? (C0519) this.zzf : C0519.m2020();
    }
}
