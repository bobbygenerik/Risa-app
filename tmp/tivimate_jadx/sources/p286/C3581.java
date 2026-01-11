package p286;

import java.util.AbstractSet;
import java.util.LinkedHashSet;
import java.util.Set;
import p152.AbstractC2444;
import p430.AbstractC5099;
import p435.AbstractC5148;

/* renamed from: ٴˑ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3581 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Set f13984;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Set f13985;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final String f13986;

    public C3581(String str, AbstractSet abstractSet, Set set) {
        this.f13986 = str;
        this.f13985 = abstractSet;
        this.f13984 = set;
    }

    public C3581(String str, LinkedHashSet linkedHashSet, String str2) {
        this(str, linkedHashSet, AbstractC3586.m7533(str2));
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C3581)) {
            return false;
        }
        C3581 c3581 = (C3581) obj;
        if (AbstractC2444.m5562(this.f13986, c3581.f13986) && AbstractC2444.m5562(this.f13985, c3581.f13985)) {
            return AbstractC2444.m5562(this.f13984, c3581.f13984);
        }
        return false;
    }

    public final int hashCode() {
        return this.f13984.hashCode() + ((this.f13985.hashCode() + (this.f13986.hashCode() * 31)) * 31);
    }

    public final String toString() {
        return AbstractC5148.m10143("\n            |FtsTableInfo {\n            |   name = '" + this.f13986 + "',\n            |   columns = {" + AbstractC3586.m7537(AbstractC5099.m10024(this.f13985)) + "\n            |   options = {" + AbstractC3586.m7537(AbstractC5099.m10024(this.f13984)) + "\n            |}\n        ");
    }
}
