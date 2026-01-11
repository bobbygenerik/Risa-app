package p291;

import j$.util.Objects;

/* renamed from: ٴᴵ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3624 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f14179;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int f14180;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f14181;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f14182;

    public C3624(int i, int i2, String str, String str2) {
        this.f14182 = str;
        this.f14181 = str2;
        this.f14179 = i;
        this.f14180 = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3624)) {
            return false;
        }
        C3624 c3624 = (C3624) obj;
        return this.f14179 == c3624.f14179 && this.f14180 == c3624.f14180 && Objects.equals(this.f14182, c3624.f14182) && Objects.equals(this.f14181, c3624.f14181);
    }

    public final int hashCode() {
        return Objects.hash(this.f14182, this.f14181, Integer.valueOf(this.f14179), Integer.valueOf(this.f14180));
    }
}
