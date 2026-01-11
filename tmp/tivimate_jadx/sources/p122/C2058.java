package p122;

import p411.AbstractC4892;

/* renamed from: ˈˋ.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2058 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public AbstractC2081 f8058;

    /* renamed from: ˈ, reason: contains not printable characters */
    public AbstractC2100 f8059;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public AbstractC2053 f8060;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public byte f8061;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public String f8062;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long f8063;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public AbstractC2034 f8064;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2075 m5076() {
        String str;
        AbstractC2081 abstractC2081;
        AbstractC2100 abstractC2100;
        if (this.f8061 == 1 && (str = this.f8062) != null && (abstractC2081 = this.f8058) != null && (abstractC2100 = this.f8059) != null) {
            return new C2075(this.f8063, str, abstractC2081, abstractC2100, this.f8060, this.f8064);
        }
        StringBuilder sb = new StringBuilder();
        if ((1 & this.f8061) == 0) {
            sb.append(" timestamp");
        }
        if (this.f8062 == null) {
            sb.append(" type");
        }
        if (this.f8058 == null) {
            sb.append(" app");
        }
        if (this.f8059 == null) {
            sb.append(" device");
        }
        throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb));
    }
}
