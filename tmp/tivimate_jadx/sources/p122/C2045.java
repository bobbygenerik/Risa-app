package p122;

import java.util.List;
import p411.AbstractC4892;

/* renamed from: ˈˋ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2045 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public List f7986;

    /* renamed from: ʽ, reason: contains not printable characters */
    public int f7987;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public byte f7988;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f7989;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f7990;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f7991;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public String f7992;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public String f7993;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f7994;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f7995;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2060 m5072() {
        String str;
        if (this.f7988 == 63 && (str = this.f7993) != null) {
            return new C2060(this.f7994, str, this.f7987, this.f7989, this.f7990, this.f7995, this.f7991, this.f7992, this.f7986);
        }
        StringBuilder sb = new StringBuilder();
        if ((this.f7988 & 1) == 0) {
            sb.append(" pid");
        }
        if (this.f7993 == null) {
            sb.append(" processName");
        }
        if ((this.f7988 & 2) == 0) {
            sb.append(" reasonCode");
        }
        if ((this.f7988 & 4) == 0) {
            sb.append(" importance");
        }
        if ((this.f7988 & 8) == 0) {
            sb.append(" pss");
        }
        if ((this.f7988 & 16) == 0) {
            sb.append(" rss");
        }
        if ((this.f7988 & 32) == 0) {
            sb.append(" timestamp");
        }
        throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb));
    }
}
