package p122;

import java.util.List;
import p035.AbstractC1220;

/* renamed from: ˈˋ.ˋᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2069 extends AbstractC2081 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final List f8106;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Boolean f8107;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AbstractC2037 f8108;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int f8109;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final List f8110;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2067 f8111;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final List f8112;

    public C2069(C2067 c2067, List list, List list2, Boolean bool, AbstractC2037 abstractC2037, List list3, int i) {
        this.f8111 = c2067;
        this.f8110 = list;
        this.f8106 = list2;
        this.f8107 = bool;
        this.f8108 = abstractC2037;
        this.f8112 = list3;
        this.f8109 = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof AbstractC2081)) {
            return false;
        }
        C2069 c2069 = (C2069) ((AbstractC2081) obj);
        List list = c2069.f8112;
        AbstractC2037 abstractC2037 = c2069.f8108;
        Boolean bool = c2069.f8107;
        List list2 = c2069.f8106;
        List list3 = c2069.f8110;
        if (!this.f8111.equals(c2069.f8111)) {
            return false;
        }
        List list4 = this.f8110;
        if (list4 == null) {
            if (list3 != null) {
                return false;
            }
        } else if (!list4.equals(list3)) {
            return false;
        }
        List list5 = this.f8106;
        if (list5 == null) {
            if (list2 != null) {
                return false;
            }
        } else if (!list5.equals(list2)) {
            return false;
        }
        Boolean bool2 = this.f8107;
        if (bool2 == null) {
            if (bool != null) {
                return false;
            }
        } else if (!bool2.equals(bool)) {
            return false;
        }
        AbstractC2037 abstractC20372 = this.f8108;
        if (abstractC20372 == null) {
            if (abstractC2037 != null) {
                return false;
            }
        } else if (!abstractC20372.equals(abstractC2037)) {
            return false;
        }
        List list6 = this.f8112;
        if (list6 == null) {
            if (list != null) {
                return false;
            }
        } else if (!list6.equals(list)) {
            return false;
        }
        return this.f8109 == c2069.f8109;
    }

    public final int hashCode() {
        int hashCode = (this.f8111.hashCode() ^ 1000003) * 1000003;
        List list = this.f8110;
        int hashCode2 = (hashCode ^ (list == null ? 0 : list.hashCode())) * 1000003;
        List list2 = this.f8106;
        int hashCode3 = (hashCode2 ^ (list2 == null ? 0 : list2.hashCode())) * 1000003;
        Boolean bool = this.f8107;
        int hashCode4 = (hashCode3 ^ (bool == null ? 0 : bool.hashCode())) * 1000003;
        AbstractC2037 abstractC2037 = this.f8108;
        int hashCode5 = (hashCode4 ^ (abstractC2037 == null ? 0 : abstractC2037.hashCode())) * 1000003;
        List list3 = this.f8112;
        return ((hashCode5 ^ (list3 != null ? list3.hashCode() : 0)) * 1000003) ^ this.f8109;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Application{execution=");
        sb.append(this.f8111);
        sb.append(", customAttributes=");
        sb.append(this.f8110);
        sb.append(", internalKeys=");
        sb.append(this.f8106);
        sb.append(", background=");
        sb.append(this.f8107);
        sb.append(", currentProcessDetails=");
        sb.append(this.f8108);
        sb.append(", appProcessDetails=");
        sb.append(this.f8112);
        sb.append(", uiOrientation=");
        return AbstractC1220.m3782(sb, this.f8109, "}");
    }
}
