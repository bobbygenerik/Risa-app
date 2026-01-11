package p211;

import p035.AbstractC1220;

/* renamed from: ˎﾞ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2981 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public String f11388;

    /* renamed from: ˈ, reason: contains not printable characters */
    public String f11389;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Long f11390;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public String f11391;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f11392;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public String f11393;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Long f11394;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2980 m6508() {
        String str = this.f11392 == 0 ? " registrationStatus" : "";
        if (this.f11390 == null) {
            str = str.concat(" expiresInSecs");
        }
        if (this.f11394 == null) {
            str = AbstractC1220.m3791(str, " tokenCreationEpochInSecs");
        }
        if (str.isEmpty()) {
            return new C2980(this.f11393, this.f11392, this.f11388, this.f11389, this.f11390.longValue(), this.f11394.longValue(), this.f11391);
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }
}
