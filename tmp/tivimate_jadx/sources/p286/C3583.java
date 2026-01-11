package p286;

import java.util.List;
import p013.C0907;
import p035.AbstractC1220;
import p152.AbstractC2444;
import p430.AbstractC5099;
import p435.AbstractC5148;

/* renamed from: ٴˑ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3583 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f13994;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final List f13995;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final List f13996;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final String f13997;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f13998;

    public C3583(String str, String str2, String str3, List list, List list2) {
        this.f13998 = str;
        this.f13997 = str2;
        this.f13994 = str3;
        this.f13995 = list;
        this.f13996 = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3583)) {
            return false;
        }
        C3583 c3583 = (C3583) obj;
        if (AbstractC2444.m5562(this.f13998, c3583.f13998) && AbstractC2444.m5562(this.f13997, c3583.f13997) && AbstractC2444.m5562(this.f13994, c3583.f13994) && AbstractC2444.m5562(this.f13995, c3583.f13995)) {
            return AbstractC2444.m5562(this.f13996, c3583.f13996);
        }
        return false;
    }

    public final int hashCode() {
        return this.f13996.hashCode() + ((this.f13995.hashCode() + AbstractC1220.m3780(AbstractC1220.m3780(this.f13998.hashCode() * 31, 31, this.f13997), 31, this.f13994)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n            |ForeignKey {\n            |   referenceTable = '");
        sb.append(this.f13998);
        sb.append("',\n            |   onDelete = '");
        sb.append(this.f13997);
        sb.append("',\n            |   onUpdate = '");
        sb.append(this.f13994);
        sb.append("',\n            |   columnNames = {");
        AbstractC5148.m10141(AbstractC5099.m10034(AbstractC5099.m10024(this.f13995), ",", null, null, null, 62));
        AbstractC5148.m10141("},");
        C0907 c0907 = C0907.f3832;
        sb.append(c0907);
        sb.append("\n            |   referenceColumnNames = {");
        AbstractC5148.m10141(AbstractC5099.m10034(AbstractC5099.m10024(this.f13996), ",", null, null, null, 62));
        AbstractC5148.m10141(" }");
        sb.append(c0907);
        sb.append("\n            |}\n        ");
        return AbstractC5148.m10141(AbstractC5148.m10143(sb.toString()));
    }
}
