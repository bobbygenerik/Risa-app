package p318;

import p035.AbstractC1220;

/* renamed from: ᴵˆ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3919 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f15182;

    public C3919(String str) {
        if (str == null) {
            throw new NullPointerException("name is null");
        }
        this.f15182 = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3919)) {
            return false;
        }
        return this.f15182.equals(((C3919) obj).f15182);
    }

    public final int hashCode() {
        return this.f15182.hashCode() ^ 1000003;
    }

    public final String toString() {
        return AbstractC1220.m3775(new StringBuilder("Encoding{name=\""), this.f15182, "\"}");
    }
}
