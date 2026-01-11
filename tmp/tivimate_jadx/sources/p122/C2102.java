package p122;

import p411.AbstractC4892;

/* renamed from: ˈˋ.ᵎᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2102 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public boolean f8221;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f8222;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f8223;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public byte f8224;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f8225;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Double f8226;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f8227;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2094 m5083() {
        if (this.f8224 == 31) {
            return new C2094(this.f8226, this.f8225, this.f8221, this.f8222, this.f8223, this.f8227);
        }
        StringBuilder sb = new StringBuilder();
        if ((this.f8224 & 1) == 0) {
            sb.append(" batteryVelocity");
        }
        if ((this.f8224 & 2) == 0) {
            sb.append(" proximityOn");
        }
        if ((this.f8224 & 4) == 0) {
            sb.append(" orientation");
        }
        if ((this.f8224 & 8) == 0) {
            sb.append(" ramUsed");
        }
        if ((this.f8224 & 16) == 0) {
            sb.append(" diskUsed");
        }
        throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb));
    }
}
