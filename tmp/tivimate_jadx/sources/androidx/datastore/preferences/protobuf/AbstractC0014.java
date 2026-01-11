package androidx.datastore.preferences.protobuf;

import java.io.IOException;

/* renamed from: androidx.datastore.preferences.protobuf.ʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0014 {
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m219(int i, C0043 c0043, Object obj) {
        int i2 = c0043.f444;
        int i3 = i2 >>> 3;
        int i4 = i2 & 7;
        if (i4 == 0) {
            c0043.m300(0);
            ((C0015) obj).m221(i3 << 3, Long.valueOf(c0043.f445.mo179()));
            return true;
        }
        if (i4 == 1) {
            c0043.m300(1);
            ((C0015) obj).m221((i3 << 3) | 1, Long.valueOf(c0043.f445.mo198()));
            return true;
        }
        if (i4 == 2) {
            ((C0015) obj).m221((i3 << 3) | 2, c0043.m298());
            return true;
        }
        if (i4 != 3) {
            if (i4 == 4) {
                return false;
            }
            if (i4 != 5) {
                throw InvalidProtocolBufferException.m142();
            }
            c0043.m300(5);
            ((C0015) obj).m221(5 | (i3 << 3), Integer.valueOf(c0043.f445.mo212()));
            return true;
        }
        C0015 c0015 = new C0015(0, new int[8], new Object[8], true);
        int i5 = i3 << 3;
        int i6 = i5 | 4;
        int i7 = i + 1;
        if (i7 >= 100) {
            throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
        }
        while (c0043.m307() != Integer.MAX_VALUE && m219(i7, c0043, c0015)) {
        }
        if (i6 != c0043.f444) {
            throw new IOException("Protocol message end-group tag did not match expected tag.");
        }
        if (c0015.f393) {
            c0015.f393 = false;
        }
        ((C0015) obj).m221(i5 | 3, c0015);
        return true;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public abstract C0015 mo220(Object obj);
}
