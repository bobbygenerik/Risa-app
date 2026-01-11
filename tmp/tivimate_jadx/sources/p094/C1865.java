package p094;

import java.util.Arrays;

/* renamed from: ˆʻ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1865 extends AbstractC1863 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f7487;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f7488;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int[] f7489;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f7490;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int[] f7491;

    public C1865(int i, int i2, int i3, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f7490 = i;
        this.f7487 = i2;
        this.f7488 = i3;
        this.f7489 = iArr;
        this.f7491 = iArr2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C1865.class == obj.getClass()) {
            C1865 c1865 = (C1865) obj;
            if (this.f7490 == c1865.f7490 && this.f7487 == c1865.f7487 && this.f7488 == c1865.f7488 && Arrays.equals(this.f7489, c1865.f7489) && Arrays.equals(this.f7491, c1865.f7491)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f7491) + ((Arrays.hashCode(this.f7489) + ((((((527 + this.f7490) * 31) + this.f7487) * 31) + this.f7488) * 31)) * 31);
    }
}
