package androidx.datastore.preferences.protobuf;

import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* renamed from: androidx.datastore.preferences.protobuf.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0013 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final byte[] f388;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Charset f389;

    static {
        Charset.forName("US-ASCII");
        f389 = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f388 = bArr;
        ByteBuffer.wrap(bArr);
        try {
            new C0058(bArr, 0, 0, false).mo213(0);
        } catch (InvalidProtocolBufferException e) {
            throw new IllegalArgumentException(e);
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m217(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m218(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }
}
