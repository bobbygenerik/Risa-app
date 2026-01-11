package p038;

import android.util.Base64;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.UUID;

/* renamed from: ʽʼ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1282 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final byte f4960 = Byte.parseByte("01110000", 2);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final byte f4959 = Byte.parseByte("00001111", 2);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String m3885() {
        UUID randomUUID = UUID.randomUUID();
        ByteBuffer wrap = ByteBuffer.wrap(new byte[17]);
        wrap.putLong(randomUUID.getMostSignificantBits());
        wrap.putLong(randomUUID.getLeastSignificantBits());
        byte[] array = wrap.array();
        byte b = array[0];
        array[16] = b;
        array[0] = (byte) ((b & f4959) | f4960);
        return new String(Base64.encode(array, 11), Charset.defaultCharset()).substring(0, 22);
    }
}
