package p428;

import java.util.Arrays;
import p305.AbstractC3712;

/* renamed from: ﹶʽ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5071 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int[] f19080;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f19081;

    static {
        AbstractC3712.m7802(0);
        AbstractC3712.m7802(1);
        AbstractC3712.m7802(2);
    }

    public C5071(int[] iArr, int i) {
        this.f19081 = i;
        int[] copyOf = Arrays.copyOf(iArr, iArr.length);
        this.f19080 = copyOf;
        Arrays.sort(copyOf);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || C5071.class != obj.getClass()) {
            return false;
        }
        C5071 c5071 = (C5071) obj;
        return this.f19081 == c5071.f19081 && Arrays.equals(this.f19080, c5071.f19080);
    }

    public final int hashCode() {
        return (Arrays.hashCode(this.f19080) + (this.f19081 * 31)) * 31;
    }
}
