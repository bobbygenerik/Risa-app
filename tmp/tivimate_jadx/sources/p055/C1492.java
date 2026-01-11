package p055;

import android.net.Uri;
import java.util.Arrays;
import p035.AbstractC1220;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ʽⁱ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1492 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Uri[] f5889;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1480[] f5890;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int[] f5891;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String[] f5892;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f5893;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f5894;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final long[] f5895;

    static {
        AbstractC1220.m3785(0, 1, 2, 3, 4);
        AbstractC1220.m3785(5, 6, 7, 8, 9);
        AbstractC3712.m7802(10);
    }

    public C1492(int i, int i2, int[] iArr, C1480[] c1480Arr, long[] jArr, String[] strArr) {
        Uri uri;
        int i3 = 0;
        AbstractC3731.m7849(iArr.length == c1480Arr.length);
        this.f5894 = i;
        this.f5893 = i2;
        this.f5891 = iArr;
        this.f5890 = c1480Arr;
        this.f5895 = jArr;
        this.f5889 = new Uri[c1480Arr.length];
        while (true) {
            Uri[] uriArr = this.f5889;
            if (i3 >= uriArr.length) {
                this.f5892 = strArr;
                return;
            }
            C1480 c1480 = c1480Arr[i3];
            if (c1480 == null) {
                uri = null;
            } else {
                C1444 c1444 = c1480.f5781;
                c1444.getClass();
                uri = c1444.f5629;
            }
            uriArr[i3] = uri;
            i3++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C1492.class != obj.getClass()) {
            return false;
        }
        C1492 c1492 = (C1492) obj;
        return this.f5894 == c1492.f5894 && this.f5893 == c1492.f5893 && Arrays.equals(this.f5890, c1492.f5890) && Arrays.equals(this.f5891, c1492.f5891) && Arrays.equals(this.f5895, c1492.f5895) && Arrays.equals(this.f5892, c1492.f5892);
    }

    public final int hashCode() {
        int i = ((this.f5894 * 31) + this.f5893) * 31;
        int i2 = (int) 0;
        return (((((Arrays.hashCode(this.f5895) + ((Arrays.hashCode(this.f5891) + ((Arrays.hashCode(this.f5890) + ((i + i2) * 31)) * 31)) * 31)) * 31) + i2) * 961) + Arrays.hashCode(this.f5892)) * 31;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m4296(int i) {
        int i2;
        int i3 = i + 1;
        while (true) {
            int[] iArr = this.f5891;
            if (i3 >= iArr.length || (i2 = iArr[i3]) == 0 || i2 == 1) {
                break;
            }
            i3++;
        }
        return i3;
    }
}
