package p346;

import com.google.android.gms.internal.play_billing.י;
import java.io.Serializable;

/* renamed from: ᵎᐧ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4274 implements Serializable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final /* synthetic */ int f15850 = 0;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int[] f15851;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f15852;

    static {
        new C4274(new int[0]);
    }

    public C4274(int[] iArr) {
        int length = iArr.length;
        this.f15851 = iArr;
        this.f15852 = length;
    }

    public final boolean equals(Object obj) {
        C4274 c4274;
        int i;
        int i2;
        if (obj == this) {
            return true;
        }
        if ((obj instanceof C4274) && (i2 = this.f15852) == (i = (c4274 = (C4274) obj).f15852)) {
            for (int i3 = 0; i3 < i2; i3++) {
                י.ᵎﹶ(i3, i2);
                int i4 = this.f15851[i3];
                י.ᵎﹶ(i3, i);
                if (i4 == c4274.f15851[i3]) {
                }
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        int i = 1;
        for (int i2 = 0; i2 < this.f15852; i2++) {
            i = (i * 31) + this.f15851[i2];
        }
        return i;
    }

    public final String toString() {
        int i = this.f15852;
        if (i == 0) {
            return "[]";
        }
        StringBuilder sb = new StringBuilder(i * 5);
        sb.append('[');
        int[] iArr = this.f15851;
        sb.append(iArr[0]);
        for (int i2 = 1; i2 < i; i2++) {
            sb.append(", ");
            sb.append(iArr[i2]);
        }
        sb.append(']');
        return sb.toString();
    }
}
