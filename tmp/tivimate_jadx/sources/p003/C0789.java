package p003;

import j$.util.Objects;
import p055.AbstractC1445;
import p420.C4987;

/* renamed from: ʻʿ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0789 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final long f3278;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f3279;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final long f3280;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C4987 f3281;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final long f3282;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f3283;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C4987 f3284;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC1445 f3285;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final long f3286;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final AbstractC1445 f3287;

    public C0789(long j, AbstractC1445 abstractC1445, int i, C4987 c4987, long j2, AbstractC1445 abstractC14452, int i2, C4987 c49872, long j3, long j4) {
        this.f3286 = j;
        this.f3285 = abstractC1445;
        this.f3279 = i;
        this.f3281 = c4987;
        this.f3282 = j2;
        this.f3287 = abstractC14452;
        this.f3283 = i2;
        this.f3284 = c49872;
        this.f3278 = j3;
        this.f3280 = j4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && C0789.class == obj.getClass()) {
            C0789 c0789 = (C0789) obj;
            if (this.f3286 == c0789.f3286 && this.f3279 == c0789.f3279 && this.f3282 == c0789.f3282 && this.f3283 == c0789.f3283 && this.f3278 == c0789.f3278 && this.f3280 == c0789.f3280 && Objects.equals(this.f3285, c0789.f3285) && Objects.equals(this.f3281, c0789.f3281) && Objects.equals(this.f3287, c0789.f3287) && Objects.equals(this.f3284, c0789.f3284)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hash(Long.valueOf(this.f3286), this.f3285, Integer.valueOf(this.f3279), this.f3281, Long.valueOf(this.f3282), this.f3287, Integer.valueOf(this.f3283), this.f3284, Long.valueOf(this.f3278), Long.valueOf(this.f3280));
    }
}
