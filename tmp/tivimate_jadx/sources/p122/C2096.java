package p122;

/* renamed from: ˈˋ.ᴵˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2096 extends AbstractC2121 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final String f8194;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f8195;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final String f8196;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f8197;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final AbstractC2083 f8198;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f8199;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final AbstractC2114 f8200;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final String f8201;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final String f8202;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8203;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final AbstractC2077 f8204;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String f8205;

    public C2096(String str, String str2, int i, String str3, String str4, String str5, String str6, String str7, String str8, AbstractC2114 abstractC2114, AbstractC2077 abstractC2077, AbstractC2083 abstractC2083) {
        this.f8203 = str;
        this.f8195 = str2;
        this.f8197 = i;
        this.f8199 = str3;
        this.f8205 = str4;
        this.f8201 = str5;
        this.f8202 = str6;
        this.f8194 = str7;
        this.f8196 = str8;
        this.f8200 = abstractC2114;
        this.f8204 = abstractC2077;
        this.f8198 = abstractC2083;
    }

    public final boolean equals(Object obj) {
        String str;
        String str2;
        String str3;
        AbstractC2114 abstractC2114;
        AbstractC2077 abstractC2077;
        AbstractC2083 abstractC2083;
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2121) {
            C2096 c2096 = (C2096) ((AbstractC2121) obj);
            AbstractC2083 abstractC20832 = c2096.f8198;
            AbstractC2077 abstractC20772 = c2096.f8204;
            AbstractC2114 abstractC21142 = c2096.f8200;
            String str4 = c2096.f8202;
            String str5 = c2096.f8201;
            String str6 = c2096.f8205;
            if (this.f8203.equals(c2096.f8203) && this.f8195.equals(c2096.f8195) && this.f8197 == c2096.f8197 && this.f8199.equals(c2096.f8199) && ((str = this.f8205) != null ? str.equals(str6) : str6 == null) && ((str2 = this.f8201) != null ? str2.equals(str5) : str5 == null) && ((str3 = this.f8202) != null ? str3.equals(str4) : str4 == null) && this.f8194.equals(c2096.f8194) && this.f8196.equals(c2096.f8196) && ((abstractC2114 = this.f8200) != null ? abstractC2114.equals(abstractC21142) : abstractC21142 == null) && ((abstractC2077 = this.f8204) != null ? abstractC2077.equals(abstractC20772) : abstractC20772 == null) && ((abstractC2083 = this.f8198) != null ? abstractC2083.equals(abstractC20832) : abstractC20832 == null)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (((((((this.f8203.hashCode() ^ 1000003) * 1000003) ^ this.f8195.hashCode()) * 1000003) ^ this.f8197) * 1000003) ^ this.f8199.hashCode()) * 1000003;
        String str = this.f8205;
        int hashCode2 = (hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003;
        String str2 = this.f8201;
        int hashCode3 = (hashCode2 ^ (str2 == null ? 0 : str2.hashCode())) * 1000003;
        String str3 = this.f8202;
        int hashCode4 = (((((hashCode3 ^ (str3 == null ? 0 : str3.hashCode())) * 1000003) ^ this.f8194.hashCode()) * 1000003) ^ this.f8196.hashCode()) * 1000003;
        AbstractC2114 abstractC2114 = this.f8200;
        int hashCode5 = (hashCode4 ^ (abstractC2114 == null ? 0 : abstractC2114.hashCode())) * 1000003;
        AbstractC2077 abstractC2077 = this.f8204;
        int hashCode6 = (hashCode5 ^ (abstractC2077 == null ? 0 : abstractC2077.hashCode())) * 1000003;
        AbstractC2083 abstractC2083 = this.f8198;
        return hashCode6 ^ (abstractC2083 != null ? abstractC2083.hashCode() : 0);
    }

    public final String toString() {
        return "CrashlyticsReport{sdkVersion=" + this.f8203 + ", gmpAppId=" + this.f8195 + ", platform=" + this.f8197 + ", installationUuid=" + this.f8199 + ", firebaseInstallationId=" + this.f8205 + ", firebaseAuthenticationToken=" + this.f8201 + ", appQualitySessionId=" + this.f8202 + ", buildVersion=" + this.f8194 + ", displayVersion=" + this.f8196 + ", session=" + this.f8200 + ", ndkPayload=" + this.f8204 + ", appExitInfo=" + this.f8198 + "}";
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ˈˋ.ʾˋ] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2049 m5081() {
        ?? obj = new Object();
        obj.f8008 = this.f8203;
        obj.f8007 = this.f8195;
        obj.f7999 = this.f8197;
        obj.f8001 = this.f8199;
        obj.f8003 = this.f8205;
        obj.f8010 = this.f8201;
        obj.f8005 = this.f8202;
        obj.f8006 = this.f8194;
        obj.f7998 = this.f8196;
        obj.f8000 = this.f8200;
        obj.f8004 = this.f8204;
        obj.f8009 = this.f8198;
        obj.f8002 = (byte) 1;
        return obj;
    }
}
