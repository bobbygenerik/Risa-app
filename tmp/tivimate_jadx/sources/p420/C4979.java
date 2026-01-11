package p420;

import java.util.Arrays;
import java.util.Random;

/* renamed from: ﹳᵢ.ᵎᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4979 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int[] f18579;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int[] f18580;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Random f18581;

    public C4979() {
        this(new Random());
    }

    public C4979(Random random) {
        this(new int[0], random);
    }

    public C4979(int[] iArr, Random random) {
        this.f18580 = iArr;
        this.f18581 = random;
        this.f18579 = new int[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            this.f18579[iArr[i]] = i;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4979 m9833(int i) {
        int[] iArr;
        Random random;
        int[] iArr2 = new int[i];
        int[] iArr3 = new int[i];
        int i2 = 0;
        while (true) {
            iArr = this.f18580;
            random = this.f18581;
            if (i2 >= i) {
                break;
            }
            iArr2[i2] = random.nextInt(iArr.length + 1);
            int i3 = i2 + 1;
            int nextInt = random.nextInt(i3);
            iArr3[i2] = iArr3[nextInt];
            iArr3[nextInt] = i2;
            i2 = i3;
        }
        Arrays.sort(iArr2);
        int[] iArr4 = new int[iArr.length + i];
        int i4 = 0;
        int i5 = 0;
        for (int i6 = 0; i6 < iArr.length + i; i6++) {
            if (i4 >= i || i5 != iArr2[i4]) {
                int i7 = i5 + 1;
                int i8 = iArr[i5];
                iArr4[i6] = i8;
                if (i8 >= 0) {
                    iArr4[i6] = i8 + i;
                }
                i5 = i7;
            } else {
                iArr4[i6] = iArr3[i4];
                i4++;
            }
        }
        return new C4979(iArr4, new Random(random.nextLong()));
    }
}
