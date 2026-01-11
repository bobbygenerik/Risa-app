package p122;

import java.util.List;

/* renamed from: ˈˋ.ˈⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2061 extends AbstractC2111 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final List f8078;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f8079;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f8080;

    public C2061(int i, String str, List list) {
        this.f8080 = str;
        this.f8079 = i;
        this.f8078 = list;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2111) {
            C2061 c2061 = (C2061) ((AbstractC2111) obj);
            if (this.f8080.equals(c2061.f8080) && this.f8079 == c2061.f8079 && this.f8078.equals(c2061.f8078)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((((this.f8080.hashCode() ^ 1000003) * 1000003) ^ this.f8079) * 1000003) ^ this.f8078.hashCode();
    }

    public final String toString() {
        return "Thread{name=" + this.f8080 + ", importance=" + this.f8079 + ", frames=" + this.f8078 + "}";
    }
}
