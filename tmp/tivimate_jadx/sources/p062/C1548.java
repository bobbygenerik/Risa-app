package p062;

/* renamed from: ʾˈ.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1548 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1587 f6081;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C1575 f6082;

    public C1548(C1575 c1575, C1587 c1587) {
        this.f6082 = c1575;
        this.f6081 = c1587;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1548)) {
            return false;
        }
        C1548 c1548 = (C1548) obj;
        return this.f6082.equals(c1548.f6082) && this.f6081.equals(c1548.f6081);
    }

    public final int hashCode() {
        return this.f6081.hashCode() + ((this.f6082.hashCode() + (EnumC1552.f6091.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return "SessionEvent(eventType=" + EnumC1552.f6091 + ", sessionData=" + this.f6082 + ", applicationInfo=" + this.f6081 + ')';
    }
}
