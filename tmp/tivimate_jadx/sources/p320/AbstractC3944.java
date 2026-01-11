package p320;

/* renamed from: ᴵˉ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3944 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final byte[] f15241;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String[] f15242;

    static {
        String[] strArr = new String[93];
        for (int i = 0; i < 32; i++) {
            strArr[i] = "\\u" + m8122(i >> 12) + m8122(i >> 8) + m8122(i >> 4) + m8122(i);
        }
        strArr[34] = "\\\"";
        strArr[92] = "\\\\";
        strArr[9] = "\\t";
        strArr[8] = "\\b";
        strArr[10] = "\\n";
        strArr[13] = "\\r";
        strArr[12] = "\\f";
        f15242 = strArr;
        byte[] bArr = new byte[93];
        for (int i2 = 0; i2 < 32; i2++) {
            bArr[i2] = 1;
        }
        bArr[34] = 34;
        bArr[92] = 92;
        bArr[9] = 116;
        bArr[8] = 98;
        bArr[10] = 110;
        bArr[13] = 114;
        bArr[12] = 102;
        f15241 = bArr;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final char m8122(int i) {
        int i2 = i & 15;
        return (char) (i2 < 10 ? i2 + 48 : i2 + 87);
    }
}
