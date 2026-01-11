package p122;

import p411.AbstractC4892;

/* renamed from: ˈˋ.ˆﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2056 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public String f8035;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f8036;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public byte f8037;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f8038;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f8039;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public int f8040;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public String f8041;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public String f8042;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f8043;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f8044;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2107 m5075() {
        String str;
        String str2;
        String str3;
        if (this.f8037 == 63 && (str = this.f8042) != null && (str2 = this.f8041) != null && (str3 = this.f8035) != null) {
            return new C2107(this.f8043, str, this.f8036, this.f8038, this.f8039, this.f8044, this.f8040, str2, str3);
        }
        StringBuilder sb = new StringBuilder();
        if ((this.f8037 & 1) == 0) {
            sb.append(" arch");
        }
        if (this.f8042 == null) {
            sb.append(" model");
        }
        if ((this.f8037 & 2) == 0) {
            sb.append(" cores");
        }
        if ((this.f8037 & 4) == 0) {
            sb.append(" ram");
        }
        if ((this.f8037 & 8) == 0) {
            sb.append(" diskSpace");
        }
        if ((this.f8037 & 16) == 0) {
            sb.append(" simulator");
        }
        if ((this.f8037 & 32) == 0) {
            sb.append(" state");
        }
        if (this.f8041 == null) {
            sb.append(" manufacturer");
        }
        if (this.f8035 == null) {
            sb.append(" modelClass");
        }
        throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb));
    }
}
