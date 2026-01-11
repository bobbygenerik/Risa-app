package p430;

import p152.AbstractC2444;

/* renamed from: ﹶˈ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5105 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f19207;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f19208;

    public C5105(int i, Object obj) {
        this.f19208 = i;
        this.f19207 = obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C5105)) {
            return false;
        }
        C5105 c5105 = (C5105) obj;
        return this.f19208 == c5105.f19208 && AbstractC2444.m5562(this.f19207, c5105.f19207);
    }

    public final int hashCode() {
        int i = this.f19208 * 31;
        Object obj = this.f19207;
        return i + (obj == null ? 0 : obj.hashCode());
    }

    public final String toString() {
        return "IndexedValue(index=" + this.f19208 + ", value=" + this.f19207 + ')';
    }
}
