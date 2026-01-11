package p210;

import com.google.android.gms.internal.play_billing.י;
import java.io.EOFException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Arrays;
import p035.AbstractC1220;
import p411.AbstractC4892;
import ˈˊ.ˉˆ;

/* renamed from: ˎﹶ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2976 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final /* synthetic */ int f11377 = 0;

    static {
        new OutputStream();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static byte[] m6502(InputStream inputStream) {
        inputStream.getClass();
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int min = Math.min(8192, Math.max(128, Integer.highestOneBit(0) * 2));
        int i = 0;
        while (i < 2147483639) {
            int min2 = Math.min(min, 2147483639 - i);
            byte[] bArr = new byte[min2];
            arrayDeque.add(bArr);
            int i2 = 0;
            while (i2 < min2) {
                int read = inputStream.read(bArr, i2, min2 - i2);
                if (read == -1) {
                    return m6504(arrayDeque, i);
                }
                i2 += read;
                i += read;
            }
            min = ˉˆ.ᴵˊ(min * (min < 4096 ? 4 : 2));
        }
        if (inputStream.read() == -1) {
            return m6504(arrayDeque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m6503(C2975 c2975, byte[] bArr, int i, int i2) {
        bArr.getClass();
        if (i2 < 0) {
            throw new IndexOutOfBoundsException(AbstractC1220.m3773(i2, "len (", ") cannot be negative"));
        }
        י.ˆʾ(i, i + i2, bArr.length);
        int i3 = 0;
        while (i3 < i2) {
            int read = c2975.read(bArr, i + i3, i2 - i3);
            if (read == -1) {
                break;
            } else {
                i3 += read;
            }
        }
        if (i3 != i2) {
            throw new EOFException(AbstractC4892.m9681("reached end of stream after reading ", i3, " bytes; ", i2, " bytes expected"));
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static byte[] m6504(ArrayDeque arrayDeque, int i) {
        if (arrayDeque.isEmpty()) {
            return new byte[0];
        }
        byte[] bArr = (byte[]) arrayDeque.remove();
        if (bArr.length == i) {
            return bArr;
        }
        int length = i - bArr.length;
        byte[] copyOf = Arrays.copyOf(bArr, i);
        while (length > 0) {
            byte[] bArr2 = (byte[]) arrayDeque.remove();
            int min = Math.min(length, bArr2.length);
            System.arraycopy(bArr2, 0, copyOf, i - length, min);
            length -= min;
        }
        return copyOf;
    }
}
