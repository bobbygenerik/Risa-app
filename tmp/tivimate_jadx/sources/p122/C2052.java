package p122;

import p411.AbstractC4892;

/* renamed from: ˈˋ.ʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2052 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f8013;

    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean f8014;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public byte f8015;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f8016;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public String f8017;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2054 m5074() {
        String str;
        if (this.f8015 == 7 && (str = this.f8017) != null) {
            return new C2054(this.f8016, this.f8013, str, this.f8014);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f8017 == null) {
            sb.append(" processName");
        }
        if ((this.f8015 & 1) == 0) {
            sb.append(" pid");
        }
        if ((this.f8015 & 2) == 0) {
            sb.append(" importance");
        }
        if ((this.f8015 & 4) == 0) {
            sb.append(" defaultProcess");
        }
        throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb));
    }
}
