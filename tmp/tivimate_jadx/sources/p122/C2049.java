package p122;

import p411.AbstractC4892;

/* renamed from: ˈˋ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2049 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public String f7998;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f7999;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public AbstractC2114 f8000;

    /* renamed from: ˈ, reason: contains not printable characters */
    public String f8001;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public byte f8002;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public String f8003;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public AbstractC2077 f8004;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public String f8005;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public String f8006;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public String f8007;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public String f8008;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public AbstractC2083 f8009;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public String f8010;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2096 m5073() {
        if (this.f8002 == 1 && this.f8008 != null && this.f8007 != null && this.f8001 != null && this.f8006 != null && this.f7998 != null) {
            return new C2096(this.f8008, this.f8007, this.f7999, this.f8001, this.f8003, this.f8010, this.f8005, this.f8006, this.f7998, this.f8000, this.f8004, this.f8009);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f8008 == null) {
            sb.append(" sdkVersion");
        }
        if (this.f8007 == null) {
            sb.append(" gmpAppId");
        }
        if ((1 & this.f8002) == 0) {
            sb.append(" platform");
        }
        if (this.f8001 == null) {
            sb.append(" installationUuid");
        }
        if (this.f8006 == null) {
            sb.append(" buildVersion");
        }
        if (this.f7998 == null) {
            sb.append(" displayVersion");
        }
        throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb));
    }
}
