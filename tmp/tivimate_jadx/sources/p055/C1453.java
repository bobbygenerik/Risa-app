package p055;

import java.util.Arrays;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ʽⁱ.ʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1453 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean f5652;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int[] f5653;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean[] f5654;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1474 f5655;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f5656;

    static {
        AbstractC3712.m7802(0);
        AbstractC3712.m7802(1);
        AbstractC3712.m7802(3);
        AbstractC3712.m7802(4);
    }

    public C1453(C1474 c1474, boolean z, int[] iArr, boolean[] zArr) {
        int i = c1474.f5770;
        this.f5656 = i;
        boolean z2 = false;
        AbstractC3731.m7849(i == iArr.length && i == zArr.length);
        this.f5655 = c1474;
        if (z && i > 1) {
            z2 = true;
        }
        this.f5652 = z2;
        this.f5653 = (int[]) iArr.clone();
        this.f5654 = (boolean[]) zArr.clone();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1453.class == obj.getClass()) {
            C1453 c1453 = (C1453) obj;
            if (this.f5652 == c1453.f5652 && this.f5655.equals(c1453.f5655) && Arrays.equals(this.f5653, c1453.f5653) && Arrays.equals(this.f5654, c1453.f5654)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f5654) + ((Arrays.hashCode(this.f5653) + (((this.f5655.hashCode() * 31) + (this.f5652 ? 1 : 0)) * 31)) * 31);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m4243(int i) {
        return this.f5653[i] == 4;
    }
}
