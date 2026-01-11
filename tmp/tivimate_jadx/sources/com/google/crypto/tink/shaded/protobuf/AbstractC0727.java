package com.google.crypto.tink.shaded.protobuf;

import com.google.android.gms.internal.measurement.ˏʻ;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ـﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0727 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ˏʻ f3014;

    static {
        f3014 = (AbstractC0733.f3026 && AbstractC0733.f3025 && !AbstractC0699.m2479()) ? new C0694(1) : new C0694(0);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m2578(int i, int i2) {
        if (i > -12 || i2 > -65) {
            return -1;
        }
        return i ^ (i2 << 8);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static int m2579(int i, int i2, int i3) {
        if (i > -12 || i2 > -65 || i3 > -65) {
            return -1;
        }
        return (i ^ (i2 << 8)) ^ (i3 << 16);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m2580(String str) {
        int length = str.length();
        int i = 0;
        int i2 = 0;
        while (i2 < length && str.charAt(i2) < 128) {
            i2++;
        }
        int i3 = length;
        while (true) {
            if (i2 >= length) {
                break;
            }
            char charAt = str.charAt(i2);
            if (charAt < 2048) {
                i3 += (127 - charAt) >>> 31;
                i2++;
            } else {
                int length2 = str.length();
                while (i2 < length2) {
                    char charAt2 = str.charAt(i2);
                    if (charAt2 < 2048) {
                        i += (127 - charAt2) >>> 31;
                    } else {
                        i += 2;
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            if (Character.codePointAt(str, i2) < 65536) {
                                throw new C0718(i2, length2);
                            }
                            i2++;
                        }
                    }
                    i2++;
                }
                i3 += i;
            }
        }
        if (i3 >= length) {
            return i3;
        }
        throw new IllegalArgumentException("UTF-8 length does not fit in int: " + (i3 + 4294967296L));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m2581(byte[] bArr, int i, int i2) {
        byte b = bArr[i - 1];
        int i3 = i2 - i;
        if (i3 == 0) {
            if (b > -12) {
                return -1;
            }
            return b;
        }
        if (i3 == 1) {
            return m2578(b, bArr[i]);
        }
        if (i3 == 2) {
            return m2579(b, bArr[i], bArr[i + 1]);
        }
        throw new AssertionError();
    }
}
