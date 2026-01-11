package p122;

import p411.AbstractC4892;

/* renamed from: ˈˋ.ـﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2085 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public String f8155;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f8156;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public byte f8157;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public String f8158;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f8159;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2059 m5079() {
        String str;
        String str2;
        if (this.f8157 == 3 && (str = this.f8158) != null && (str2 = this.f8155) != null) {
            return new C2059(this.f8159, str, str2, this.f8156);
        }
        StringBuilder sb = new StringBuilder();
        if ((this.f8157 & 1) == 0) {
            sb.append(" platform");
        }
        if (this.f8158 == null) {
            sb.append(" version");
        }
        if (this.f8155 == null) {
            sb.append(" buildVersion");
        }
        if ((this.f8157 & 2) == 0) {
            sb.append(" jailbroken");
        }
        throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb));
    }
}
