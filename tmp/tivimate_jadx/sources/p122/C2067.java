package p122;

import java.util.List;

/* renamed from: ˈˋ.ˊˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2067 extends AbstractC2091 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AbstractC2083 f8100;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2115 f8101;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final List f8102;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC2079 f8103;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final List f8104;

    public C2067(List list, C2082 c2082, AbstractC2083 abstractC2083, C2115 c2115, List list2) {
        this.f8104 = list;
        this.f8103 = c2082;
        this.f8100 = abstractC2083;
        this.f8101 = c2115;
        this.f8102 = list2;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2091)) {
            return false;
        }
        AbstractC2091 abstractC2091 = (AbstractC2091) obj;
        List list = this.f8104;
        if (list == null) {
            if (((C2067) abstractC2091).f8104 != null) {
                return false;
            }
        } else if (!list.equals(((C2067) abstractC2091).f8104)) {
            return false;
        }
        AbstractC2079 abstractC2079 = this.f8103;
        if (abstractC2079 == null) {
            if (((C2067) abstractC2091).f8103 != null) {
                return false;
            }
        } else if (!abstractC2079.equals(((C2067) abstractC2091).f8103)) {
            return false;
        }
        AbstractC2083 abstractC2083 = this.f8100;
        if (abstractC2083 == null) {
            if (((C2067) abstractC2091).f8100 != null) {
                return false;
            }
        } else if (!abstractC2083.equals(((C2067) abstractC2091).f8100)) {
            return false;
        }
        C2067 c2067 = (C2067) abstractC2091;
        return this.f8101.equals(c2067.f8101) && this.f8102.equals(c2067.f8102);
    }

    public final int hashCode() {
        List list = this.f8104;
        int hashCode = ((list == null ? 0 : list.hashCode()) ^ 1000003) * 1000003;
        AbstractC2079 abstractC2079 = this.f8103;
        int hashCode2 = (hashCode ^ (abstractC2079 == null ? 0 : abstractC2079.hashCode())) * 1000003;
        AbstractC2083 abstractC2083 = this.f8100;
        return (((((abstractC2083 != null ? abstractC2083.hashCode() : 0) ^ hashCode2) * 1000003) ^ this.f8101.hashCode()) * 1000003) ^ this.f8102.hashCode();
    }

    public final String toString() {
        return "Execution{threads=" + this.f8104 + ", exception=" + this.f8103 + ", appExitInfo=" + this.f8100 + ", signal=" + this.f8101 + ", binaries=" + this.f8102 + "}";
    }
}
