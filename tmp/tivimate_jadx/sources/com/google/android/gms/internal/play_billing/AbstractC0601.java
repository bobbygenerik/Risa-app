package com.google.android.gms.internal.play_billing;

import java.io.IOException;
import p137.AbstractC2305;

/* renamed from: com.google.android.gms.internal.play_billing.ـﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0601 {
    protected int zza;

    /* renamed from: ⁱˊ */
    public abstract int mo2048(InterfaceC0571 interfaceC0571);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final byte[] m2197() {
        try {
            AbstractC0529 abstractC0529 = (AbstractC0529) this;
            int m2046 = abstractC0529.m2046();
            byte[] bArr = new byte[m2046];
            C0606 c0606 = new C0606(m2046, bArr);
            InterfaceC0571 m2245 = C0637.f2473.m2245(abstractC0529.getClass());
            C0618 c0618 = c0606.f2415;
            if (c0618 == null) {
                c0618 = new C0618(c0606);
            }
            m2245.mo2147(abstractC0529, c0618);
            if (m2046 - c0606.f2418 == 0) {
                return bArr;
            }
            throw new IllegalStateException("Did not write as much data as expected.");
        } catch (IOException e) {
            throw new RuntimeException(AbstractC2305.m5378("Serializing ", getClass().getName(), " to a byte array threw an IOException (should never happen)."), e);
        }
    }
}
