package p232;

import android.graphics.Rect;
import java.util.Arrays;
import p012.C0881;

/* renamed from: ˑˉ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3190 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f12201;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int[] f12202;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f12203;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Rect f12204;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public boolean f12206;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f12208;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int[] f12207 = new int[4];

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f12205 = -1;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f12200 = -1;

    /* renamed from: ʽ, reason: contains not printable characters */
    public static int m7011(int i, int i2) {
        return (i & 16777215) | ((i2 * 17) << 24);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static int m7012(int[] iArr, int i) {
        return (i < 0 || i >= iArr.length) ? iArr[0] : iArr[i];
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7013(C0881 c0881, boolean z, Rect rect, int[] iArr) {
        int i;
        int i2;
        int width = rect.width();
        int height = rect.height();
        int i3 = !z ? 1 : 0;
        int i4 = i3 * width;
        while (true) {
            int i5 = 0;
            do {
                int i6 = 0;
                for (int i7 = 1; i6 < i7 && i7 <= 64; i7 <<= 2) {
                    if (c0881.m3109() < 4) {
                        i = -1;
                        i2 = 0;
                        break;
                    }
                    i6 = (i6 << 4) | c0881.m3097(4);
                }
                i = i6 & 3;
                i2 = i6 < 4 ? width : i6 >> 2;
                int min = Math.min(i2, width - i5);
                if (min > 0) {
                    int i8 = i4 + min;
                    Arrays.fill(iArr, i4, i8, this.f12207[i]);
                    i5 += min;
                    i4 = i8;
                }
            } while (i5 < width);
            i3 += 2;
            if (i3 >= height) {
                return;
            }
            i4 = i3 * width;
            c0881.m3093();
        }
    }
}
