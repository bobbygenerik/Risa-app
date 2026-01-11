package p122;

import java.util.List;
import p035.AbstractC1220;

/* renamed from: ˈˋ.ـˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2082 extends AbstractC2079 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final List f8150;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final AbstractC2079 f8151;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f8152;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f8153;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f8154;

    public C2082(String str, String str2, List list, AbstractC2079 abstractC2079, int i) {
        this.f8154 = str;
        this.f8153 = str2;
        this.f8150 = list;
        this.f8151 = abstractC2079;
        this.f8152 = i;
    }

    public final boolean equals(Object obj) {
        String str;
        AbstractC2079 abstractC2079;
        if (obj == this) {
            return true;
        }
        if (obj instanceof AbstractC2079) {
            C2082 c2082 = (C2082) ((AbstractC2079) obj);
            AbstractC2079 abstractC20792 = c2082.f8151;
            String str2 = c2082.f8153;
            if (this.f8154.equals(c2082.f8154) && ((str = this.f8153) != null ? str.equals(str2) : str2 == null) && this.f8150.equals(c2082.f8150) && ((abstractC2079 = this.f8151) != null ? abstractC2079.equals(abstractC20792) : abstractC20792 == null) && this.f8152 == c2082.f8152) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int hashCode = (this.f8154.hashCode() ^ 1000003) * 1000003;
        String str = this.f8153;
        int hashCode2 = (((hashCode ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f8150.hashCode()) * 1000003;
        AbstractC2079 abstractC2079 = this.f8151;
        return ((hashCode2 ^ (abstractC2079 != null ? abstractC2079.hashCode() : 0)) * 1000003) ^ this.f8152;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Exception{type=");
        sb.append(this.f8154);
        sb.append(", reason=");
        sb.append(this.f8153);
        sb.append(", frames=");
        sb.append(this.f8150);
        sb.append(", causedBy=");
        sb.append(this.f8151);
        sb.append(", overflowCount=");
        return AbstractC1220.m3782(sb, this.f8152, "}");
    }
}
