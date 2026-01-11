package p122;

import java.util.List;
import p411.AbstractC4892;

/* renamed from: ˈˋ.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2103 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public AbstractC2084 f8228;

    /* renamed from: ʽ, reason: contains not printable characters */
    public String f8229;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public AbstractC2042 f8230;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f8231;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public byte f8232;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Long f8233;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public List f8234;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public AbstractC2073 f8235;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public AbstractC2087 f8236;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public String f8237;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public String f8238;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f8239;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public boolean f8240;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2086 m5084() {
        String str;
        String str2;
        AbstractC2073 abstractC2073;
        if (this.f8232 == 7 && (str = this.f8238) != null && (str2 = this.f8237) != null && (abstractC2073 = this.f8235) != null) {
            return new C2086(str, str2, this.f8229, this.f8231, this.f8233, this.f8240, abstractC2073, this.f8236, this.f8228, this.f8230, this.f8234, this.f8239);
        }
        StringBuilder sb = new StringBuilder();
        if (this.f8238 == null) {
            sb.append(" generator");
        }
        if (this.f8237 == null) {
            sb.append(" identifier");
        }
        if ((this.f8232 & 1) == 0) {
            sb.append(" startedAt");
        }
        if ((this.f8232 & 2) == 0) {
            sb.append(" crashed");
        }
        if (this.f8235 == null) {
            sb.append(" app");
        }
        if ((this.f8232 & 4) == 0) {
            sb.append(" generatorType");
        }
        throw new IllegalStateException(AbstractC4892.m9682("Missing required properties:", sb));
    }
}
