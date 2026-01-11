package androidx.datastore.preferences.protobuf;

import com.google.android.gms.internal.measurement.ˏʻ;

/* renamed from: androidx.datastore.preferences.protobuf.ˈˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0020 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ˏʻ f402;

    static {
        f402 = (AbstractC0004.f356 && AbstractC0004.f355 && !AbstractC0009.m215()) ? new C0029(1) : new C0029(0);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m234(String str) {
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
                                throw new C0039(i2, length2);
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
}
