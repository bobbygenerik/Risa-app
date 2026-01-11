package p122;

import p411.AbstractC4892;

/* renamed from: ˈˋ.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2097 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public String f8206;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f8207;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f8208;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public String f8209;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long f8210;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public byte f8211;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2064 m5082() {
        String str;
        if (this.f8211 == 7 && (str = this.f8209) != null) {
            return new C2064(this.f8210, str, this.f8206, this.f8207, this.f8208);
        }
        StringBuilder sb = new StringBuilder();
        if ((this.f8211 & 1) == 0) {
            sb.append(" pc");
        }
        if (this.f8209 == null) {
            sb.append(" symbol");
        }
        if ((this.f8211 & 2) == 0) {
            sb.append(" offset");
        }
        if ((this.f8211 & 4) == 0) {
            sb.append(" importance");
        }
        throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb));
    }
}
