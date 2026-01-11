package p286;

import java.util.ArrayList;
import java.util.List;
import p013.C0907;
import p152.AbstractC2444;
import p430.AbstractC5099;
import p435.AbstractC5148;
import p435.AbstractC5152;

/* renamed from: ٴˑ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3577 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final List f13966;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final List f13967;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean f13968;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f13969;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [java.util.List, java.util.Collection] */
    /* JADX WARN: Type inference failed for: r4v1, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.util.ArrayList] */
    public C3577(String str, boolean z, List list, List list2) {
        this.f13969 = str;
        this.f13968 = z;
        this.f13966 = list;
        this.f13967 = list2;
        if (list2.isEmpty()) {
            int size = list.size();
            list2 = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                list2.add("ASC");
            }
        }
        this.f13967 = list2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C3577) {
            C3577 c3577 = (C3577) obj;
            String str = c3577.f13969;
            if (this.f13968 == c3577.f13968 && this.f13966.equals(c3577.f13966) && AbstractC2444.m5562(this.f13967, c3577.f13967)) {
                String str2 = this.f13969;
                return AbstractC5152.m10150(str2, "index_", false) ? AbstractC5152.m10150(str, "index_", false) : str2.equals(str);
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f13969;
        return this.f13967.hashCode() + ((this.f13966.hashCode() + ((((AbstractC5152.m10150(str, "index_", false) ? -1184239155 : str.hashCode()) * 31) + (this.f13968 ? 1 : 0)) * 31)) * 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("\n            |Index {\n            |   name = '");
        sb.append(this.f13969);
        sb.append("',\n            |   unique = '");
        sb.append(this.f13968);
        sb.append("',\n            |   columns = {");
        AbstractC5148.m10141(AbstractC5099.m10034(this.f13966, ",", null, null, null, 62));
        AbstractC5148.m10141("},");
        C0907 c0907 = C0907.f3832;
        sb.append(c0907);
        sb.append("\n            |   orders = {");
        AbstractC5148.m10141(AbstractC5099.m10034(this.f13967, ",", null, null, null, 62));
        AbstractC5148.m10141(" }");
        sb.append(c0907);
        sb.append("\n            |}\n        ");
        return AbstractC5148.m10141(AbstractC5148.m10143(sb.toString()));
    }
}
