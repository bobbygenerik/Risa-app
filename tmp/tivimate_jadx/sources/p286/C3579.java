package p286;

import java.util.AbstractSet;
import java.util.Map;
import java.util.Set;
import p152.AbstractC2444;
import p430.AbstractC5099;
import p430.C5097;
import p435.AbstractC5148;
import ʻٴ.ˑﹳ;

/* renamed from: ٴˑ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3579 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Set f13976;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Set f13977;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Map f13978;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f13979;

    public C3579(String str, Map map, AbstractSet abstractSet, AbstractSet abstractSet2) {
        this.f13979 = str;
        this.f13978 = map;
        this.f13976 = abstractSet;
        this.f13977 = abstractSet2;
    }

    public final boolean equals(Object obj) {
        Set set;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3579)) {
            return false;
        }
        C3579 c3579 = (C3579) obj;
        if (!AbstractC2444.m5562(this.f13979, c3579.f13979) || !AbstractC2444.m5562(this.f13978, c3579.f13978) || !AbstractC2444.m5562(this.f13976, c3579.f13976)) {
            return false;
        }
        Set set2 = this.f13977;
        if (set2 == null || (set = c3579.f13977) == null) {
            return true;
        }
        return AbstractC2444.m5562(set2, set);
    }

    public final int hashCode() {
        return this.f13976.hashCode() + ((this.f13978.hashCode() + (this.f13979.hashCode() * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n            |TableInfo {\n            |    name = '");
        sb.append(this.f13979);
        sb.append("',\n            |    columns = {");
        sb.append(AbstractC3586.m7537(AbstractC5099.m10016(this.f13978.values(), new ˑﹳ(13))));
        sb.append("\n            |    foreignKeys = {");
        sb.append(AbstractC3586.m7537(this.f13976));
        sb.append("\n            |    indices = {");
        Set set = this.f13977;
        sb.append(AbstractC3586.m7537(set != null ? AbstractC5099.m10016(set, new ˑﹳ(14)) : C5097.f19202));
        sb.append("\n            |}\n        ");
        return AbstractC5148.m10143(sb.toString());
    }
}
