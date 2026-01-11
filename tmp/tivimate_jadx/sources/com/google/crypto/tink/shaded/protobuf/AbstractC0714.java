package com.google.crypto.tink.shaded.protobuf;

import java.io.IOException;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ˉـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0714 {
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m2527(int i, C0730 c0730, Object obj) {
        int i2 = c0730.f3021;
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            c0730.m2586(0);
            ((C0704) obj).m2492(i3 << 3, Long.valueOf(c0730.f3022.mo179()));
            return true;
        }
        if (i4 == 1) {
            c0730.m2586(1);
            ((C0704) obj).m2492((i3 << 3) | 1, Long.valueOf(c0730.f3022.mo198()));
            return true;
        }
        if (i4 == 2) {
            ((C0704) obj).m2492((i3 << 3) | 2, c0730.m2596());
            return true;
        }
        if (i4 != 3) {
            if (i4 == 4) {
                return false;
            }
            if (i4 != 5) {
                throw InvalidProtocolBufferException.m2461();
            }
            c0730.m2586(5);
            ((C0704) obj).m2492(5 | (i3 << 3), Integer.valueOf(c0730.f3022.mo212()));
            return true;
        }
        C0704 m2491 = C0704.m2491();
        int i5 = i3 << 3;
        int i6 = i5 | 4;
        int i7 = i + 1;
        if (i7 >= 100) {
            throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        while (c0730.m2604() != Integer.MAX_VALUE && m2527(i7, c0730, m2491)) {
        }
        if (i6 != c0730.f3021) {
            throw new IOException("Protocol message end-group tag did not match expected tag.");
        }
        if (m2491.f2983) {
            m2491.f2983 = false;
        }
        ((C0704) obj).m2492(i5 | 3, m2491);
        return true;
    }

    /* renamed from: ﹳٴ */
    public abstract C0704 mo2496(Object obj);
}
