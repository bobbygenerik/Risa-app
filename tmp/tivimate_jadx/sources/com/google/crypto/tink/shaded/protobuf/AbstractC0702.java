package com.google.crypto.tink.shaded.protobuf;

import androidx.datastore.preferences.protobuf.AbstractC0016;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* renamed from: com.google.crypto.tink.shaded.protobuf.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0702 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final byte[] f2978;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Charset f2979;

    static {
        Charset.forName("US-ASCII");
        f2979 = Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        byte[] bArr = new byte[0];
        f2978 = bArr;
        ByteBuffer.wrap(bArr);
        AbstractC0016.m227(bArr, 0, 0, false);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static int m2487(long j) {
        return (int) (j ^ (j >>> 32));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m2488(Object obj, String str) {
        if (obj == null) {
            throw new NullPointerException(str);
        }
    }
}
