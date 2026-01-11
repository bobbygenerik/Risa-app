package p017;

import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;
import p035.AbstractC1220;

/* renamed from: ʼʻ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0953 extends AbstractC0955 implements Serializable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Comparator[] f3900;

    public C0953(C0999 c0999, C0999 c09992) {
        this.f3900 = new Comparator[]{c0999, c09992};
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = 0;
        while (true) {
            Comparator[] comparatorArr = this.f3900;
            if (i >= comparatorArr.length) {
                return 0;
            }
            int compare = comparatorArr[i].compare(obj, obj2);
            if (compare != 0) {
                return compare;
            }
            i++;
        }
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof C0953) {
            return Arrays.equals(this.f3900, ((C0953) obj).f3900);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f3900);
    }

    public final String toString() {
        return AbstractC1220.m3775(new StringBuilder("Ordering.compound("), Arrays.toString(this.f3900), ")");
    }
}
