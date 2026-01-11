package p225;

import j$.util.Objects;
import p137.AbstractC2305;

/* renamed from: ˏﹳ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3068 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f11653;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f11654;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f11655;

    public C3068(int i, String str, String str2) {
        this.f11655 = str;
        this.f11654 = i;
        this.f11653 = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3068)) {
            return false;
        }
        C3068 c3068 = (C3068) obj;
        return m6617(obj) && this.f11654 == c3068.f11654 && Objects.equals(this.f11653, c3068.f11653);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f11654), this.f11653) + (m6615() * 31);
    }

    public final String toString() {
        String str = this.f11655;
        String m5378 = str == null ? "null" : AbstractC2305.m5378("\"", str, "\"");
        Integer valueOf = Integer.valueOf(this.f11654);
        String str2 = this.f11653;
        return String.format("NetShareInfo1{netName: %s, type: %d, remark: %s}", m5378, valueOf, str2 != null ? AbstractC2305.m5378("\"", str2, "\"") : "null");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int m6615() {
        return Objects.hash(this.f11655);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m6616(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3068)) {
            return false;
        }
        return Objects.equals(this.f11655, ((C3068) obj).f11655);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m6617(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C3068) {
            return m6616(obj);
        }
        return false;
    }
}
