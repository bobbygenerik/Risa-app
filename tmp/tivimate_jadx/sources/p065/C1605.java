package p065;

import java.util.Arrays;

/* renamed from: ʾˋ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1605 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f6390;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f6391;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public int[] f6392;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int[] f6393;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public float[] f6394;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public boolean[] f6395;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int[] f6396;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public String[] f6397;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int[] f6398;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int[] f6399;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f6400;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f6401;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4382(int i, String str) {
        int i2 = this.f6390;
        int[] iArr = this.f6396;
        if (i2 >= iArr.length) {
            this.f6396 = Arrays.copyOf(iArr, iArr.length * 2);
            String[] strArr = this.f6397;
            this.f6397 = (String[]) Arrays.copyOf(strArr, strArr.length * 2);
        }
        int[] iArr2 = this.f6396;
        int i3 = this.f6390;
        iArr2[i3] = i;
        String[] strArr2 = this.f6397;
        this.f6390 = i3 + 1;
        strArr2[i3] = str;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m4383(int i, boolean z) {
        int i2 = this.f6400;
        int[] iArr = this.f6392;
        if (i2 >= iArr.length) {
            this.f6392 = Arrays.copyOf(iArr, iArr.length * 2);
            boolean[] zArr = this.f6395;
            this.f6395 = Arrays.copyOf(zArr, zArr.length * 2);
        }
        int[] iArr2 = this.f6392;
        int i3 = this.f6400;
        iArr2[i3] = i;
        boolean[] zArr2 = this.f6395;
        this.f6400 = i3 + 1;
        zArr2[i3] = z;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4384(int i, int i2) {
        int i3 = this.f6391;
        int[] iArr = this.f6399;
        if (i3 >= iArr.length) {
            this.f6399 = Arrays.copyOf(iArr, iArr.length * 2);
            int[] iArr2 = this.f6398;
            this.f6398 = Arrays.copyOf(iArr2, iArr2.length * 2);
        }
        int[] iArr3 = this.f6399;
        int i4 = this.f6391;
        iArr3[i4] = i;
        int[] iArr4 = this.f6398;
        this.f6391 = i4 + 1;
        iArr4[i4] = i2;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m4385(int i, float f) {
        int i2 = this.f6401;
        int[] iArr = this.f6393;
        if (i2 >= iArr.length) {
            this.f6393 = Arrays.copyOf(iArr, iArr.length * 2);
            float[] fArr = this.f6394;
            this.f6394 = Arrays.copyOf(fArr, fArr.length * 2);
        }
        int[] iArr2 = this.f6393;
        int i3 = this.f6401;
        iArr2[i3] = i;
        float[] fArr2 = this.f6394;
        this.f6401 = i3 + 1;
        fArr2[i3] = f;
    }
}
