package p383;

import p035.AbstractC1220;

/* renamed from: ⁱʼ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4583 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f17077;

    public C4583(String str) {
        this.f17077 = str;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C4583) {
            return this.f17077.equals(((C4583) obj).f17077);
        }
        return false;
    }

    public final int hashCode() {
        return this.f17077.hashCode();
    }

    public final String toString() {
        return AbstractC1220.m3775(new StringBuilder("StringHeaderFactory{value='"), this.f17077, "'}");
    }
}
