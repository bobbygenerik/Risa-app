package p414;

import p035.AbstractC1220;

/* renamed from: ﹳי.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4917 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f18340;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f18341;

    public C4917(String str, String str2) {
        this.f18341 = str;
        if (str2 == null) {
            throw new NullPointerException("Null version");
        }
        this.f18340 = str2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C4917) {
            C4917 c4917 = (C4917) obj;
            if (this.f18341.equals(c4917.f18341) && this.f18340.equals(c4917.f18340)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.f18341.hashCode() ^ 1000003) * 1000003) ^ this.f18340.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("LibraryVersion{libraryName=");
        sb.append(this.f18341);
        sb.append(", version=");
        return AbstractC1220.m3775(sb, this.f18340, "}");
    }
}
