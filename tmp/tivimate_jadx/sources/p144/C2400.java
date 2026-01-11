package p144;

import p152.AbstractC2444;
import p411.C4888;
import p436.C5158;

/* renamed from: ˉᴵ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2400 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C4888 f9272 = null;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5158 f9273;

    public C2400(C5158 c5158) {
        this.f9273 = c5158;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C2400)) {
            return false;
        }
        C2400 c2400 = (C2400) obj;
        return this.f9273.equals(c2400.f9273) && AbstractC2444.m5562(this.f9272, c2400.f9272);
    }

    public final int hashCode() {
        int hashCode = this.f9273.hashCode() * 31;
        C4888 c4888 = this.f9272;
        return hashCode + (c4888 == null ? 0 : c4888.hashCode());
    }

    public final String toString() {
        return "Dependency(mutex=" + this.f9273 + ", subscriber=" + this.f9272 + ')';
    }
}
