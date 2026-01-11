package p004;

import p171.AbstractC2649;
import p305.C3732;

/* renamed from: ʻˆ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0811 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public int f3447;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f3448;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f3449;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f3450;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C3732 f3451;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f3452;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f3453;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f3454;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C3732 f3455;

    public C0811(C3732 c3732, C3732 c37322, boolean z) {
        this.f3451 = c3732;
        this.f3455 = c37322;
        this.f3450 = z;
        c37322.m7896(12);
        this.f3454 = c37322.m7878();
        c3732.m7896(12);
        this.f3447 = c3732.m7878();
        AbstractC2649.m5915("first_chunk must be 1", c3732.m7893() == 1);
        this.f3453 = -1;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m2951() {
        int i = this.f3453 + 1;
        this.f3453 = i;
        if (i == this.f3454) {
            return false;
        }
        boolean z = this.f3450;
        C3732 c3732 = this.f3455;
        this.f3449 = z ? c3732.m7883() : c3732.m7880();
        if (this.f3453 == this.f3452) {
            C3732 c37322 = this.f3451;
            this.f3448 = c37322.m7878();
            c37322.m7900(4);
            int i2 = this.f3447 - 1;
            this.f3447 = i2;
            this.f3452 = i2 > 0 ? c37322.m7878() - 1 : -1;
        }
        return true;
    }
}
