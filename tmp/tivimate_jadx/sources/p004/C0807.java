package p004;

/* renamed from: ʻˆ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0807 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f3436;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f3437;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f3438;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f3439;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f3440;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean m2939() {
        int i = this.f3440;
        int i2 = 2;
        if ((i & 7) != 0) {
            int i3 = this.f3437;
            int i4 = this.f3439;
            if (((i3 > i4 ? 1 : i3 == i4 ? 2 : 4) & i) == 0) {
                return false;
            }
        }
        if ((i & 112) != 0) {
            int i5 = this.f3437;
            int i6 = this.f3436;
            if ((((i5 > i6 ? 1 : i5 == i6 ? 2 : 4) << 4) & i) == 0) {
                return false;
            }
        }
        if ((i & 1792) != 0) {
            int i7 = this.f3438;
            int i8 = this.f3439;
            if ((((i7 > i8 ? 1 : i7 == i8 ? 2 : 4) << 8) & i) == 0) {
                return false;
            }
        }
        if ((i & 28672) != 0) {
            int i9 = this.f3438;
            int i10 = this.f3436;
            if (i9 > i10) {
                i2 = 1;
            } else if (i9 != i10) {
                i2 = 4;
            }
            if ((i & (i2 << 12)) == 0) {
                return false;
            }
        }
        return true;
    }
}
