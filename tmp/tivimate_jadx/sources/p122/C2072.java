package p122;

import p411.AbstractC4892;

/* renamed from: ˈˋ.ˏᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2072 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public String f8120;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f8121;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public byte f8122;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public String f8123;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public C2038 f8124;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2095 m5077() {
        C2038 c2038;
        String str;
        String str2;
        if (this.f8122 == 1 && (c2038 = this.f8124) != null && (str = this.f8123) != null && (str2 = this.f8120) != null) {
            return new C2095(c2038, str, str2, this.f8121);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f8124 == null) {
            sb.append(" rolloutVariant");
        }
        if (this.f8123 == null) {
            sb.append(" parameterKey");
        }
        if (this.f8120 == null) {
            sb.append(" parameterValue");
        }
        if ((1 & this.f8122) == 0) {
            sb.append(" templateVersion");
        }
        throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb));
    }
}
