package p208;

import p303.C3709;
import p303.EnumC3707;
import p307.AbstractC3740;
import ﹳٴ.ﹳٴ;

/* renamed from: ˎᵢ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2941 {

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public static final /* synthetic */ int f11168 = 0;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int f11169;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f11170;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean f11171;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f11172;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public String f11173;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f11174;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean f11175;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean f11176;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final int f11177;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f11178;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean f11179;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final boolean f11180;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean f11181;

    static {
        int i = C3709.f14467;
        EnumC3707 enumC3707 = EnumC3707.SECONDS;
        long m7745 = C3709.m7745(ﹳٴ.ﹳـ(Integer.MAX_VALUE, enumC3707), enumC3707);
        if (m7745 < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7926("maxStale < 0: ", m7745).toString());
        }
    }

    public C2941(boolean z, boolean z2, int i, int i2, boolean z3, boolean z4, boolean z5, int i3, int i4, boolean z6, boolean z7, boolean z8, String str) {
        this.f11179 = z;
        this.f11178 = z2;
        this.f11170 = i;
        this.f11172 = i2;
        this.f11174 = z3;
        this.f11181 = z4;
        this.f11176 = z5;
        this.f11177 = i3;
        this.f11169 = i4;
        this.f11171 = z6;
        this.f11175 = z7;
        this.f11180 = z8;
        this.f11173 = str;
    }

    public final String toString() {
        String str = this.f11173;
        if (str != null) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        if (this.f11179) {
            sb.append("no-cache, ");
        }
        if (this.f11178) {
            sb.append("no-store, ");
        }
        int i = this.f11170;
        if (i != -1) {
            sb.append("max-age=");
            sb.append(i);
            sb.append(", ");
        }
        int i2 = this.f11172;
        if (i2 != -1) {
            sb.append("s-maxage=");
            sb.append(i2);
            sb.append(", ");
        }
        if (this.f11174) {
            sb.append("private, ");
        }
        if (this.f11181) {
            sb.append("public, ");
        }
        if (this.f11176) {
            sb.append("must-revalidate, ");
        }
        int i3 = this.f11177;
        if (i3 != -1) {
            sb.append("max-stale=");
            sb.append(i3);
            sb.append(", ");
        }
        int i4 = this.f11169;
        if (i4 != -1) {
            sb.append("min-fresh=");
            sb.append(i4);
            sb.append(", ");
        }
        if (this.f11171) {
            sb.append("only-if-cached, ");
        }
        if (this.f11175) {
            sb.append("no-transform, ");
        }
        if (this.f11180) {
            sb.append("immutable, ");
        }
        if (sb.length() == 0) {
            return "";
        }
        sb.delete(sb.length() - 2, sb.length());
        String sb2 = sb.toString();
        this.f11173 = sb2;
        return sb2;
    }
}
