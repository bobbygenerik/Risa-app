package p179;

/* renamed from: ˋˋ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2743 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public Object f10464;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f10465;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f10466;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f10467;

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof C2743)) {
                return false;
            }
            C2743 c2743 = (C2743) obj;
            int i = this.f10467;
            if (i != c2743.f10467) {
                return false;
            }
            if (i != 8 || Math.abs(this.f10465 - this.f10466) != 1 || this.f10465 != c2743.f10466 || this.f10466 != c2743.f10465) {
                if (this.f10465 != c2743.f10465 || this.f10466 != c2743.f10466) {
                    return false;
                }
                Object obj2 = this.f10464;
                if (obj2 != null) {
                    if (!obj2.equals(c2743.f10464)) {
                        return false;
                    }
                } else if (c2743.f10464 != null) {
                    return false;
                }
            }
        }
        return true;
    }

    public final int hashCode() {
        return (((this.f10467 * 31) + this.f10466) * 31) + this.f10465;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append("[");
        int i = this.f10467;
        sb.append(i != 1 ? i != 2 ? i != 4 ? i != 8 ? "??" : "mv" : "up" : "rm" : "add");
        sb.append(",s:");
        sb.append(this.f10466);
        sb.append("c:");
        sb.append(this.f10465);
        sb.append(",p:");
        sb.append(this.f10464);
        sb.append("]");
        return sb.toString();
    }
}
