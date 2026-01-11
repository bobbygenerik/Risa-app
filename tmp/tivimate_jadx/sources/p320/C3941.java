package p320;

/* renamed from: ᴵˉ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3941 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final char[] f15239 = new char[117];

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final byte[] f15238 = new byte[126];

    static {
        for (int i = 0; i < 32; i++) {
        }
        m8114('b', 8);
        m8114('t', 9);
        m8114('n', 10);
        m8114('f', 12);
        m8114('r', 13);
        m8114('/', 47);
        m8114('\"', 34);
        m8114('\\', 92);
        byte[] bArr = f15238;
        for (int i2 = 0; i2 < 33; i2++) {
            bArr[i2] = Byte.MAX_VALUE;
        }
        bArr[9] = 3;
        bArr[10] = 3;
        bArr[13] = 3;
        bArr[32] = 3;
        bArr[44] = 4;
        bArr[58] = 5;
        bArr[123] = 6;
        bArr[125] = 7;
        bArr[91] = 8;
        bArr[93] = 9;
        bArr[34] = 1;
        bArr[92] = 2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m8114(char c, int i) {
        if (c != 'u') {
            f15239[c] = (char) i;
        }
    }
}
