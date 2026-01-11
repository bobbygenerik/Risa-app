package p346;

import com.google.android.gms.internal.play_billing.י;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collections;
import java.util.List;
import java.util.RandomAccess;
import ˈˊ.ˉˆ;

/* renamed from: ᵎᐧ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4273 extends AbstractList implements RandomAccess, Serializable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f15847;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int[] f15848;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f15849;

    public C4273(int[] iArr, int i, int i2) {
        this.f15848 = iArr;
        this.f15849 = i;
        this.f15847 = i2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (obj instanceof Integer) {
            return ˉˆ.ʽﹳ(this.f15848, ((Integer) obj).intValue(), this.f15849, this.f15847) != -1;
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof C4273)) {
            return super.equals(obj);
        }
        C4273 c4273 = (C4273) obj;
        int size = size();
        if (c4273.size() != size) {
            return false;
        }
        for (int i = 0; i < size; i++) {
            if (this.f15848[this.f15849 + i] != c4273.f15848[c4273.f15849 + i]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        י.ᵎﹶ(i, size());
        return Integer.valueOf(this.f15848[this.f15849 + i]);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i = 1;
        for (int i2 = this.f15849; i2 < this.f15847; i2++) {
            i = (i * 31) + this.f15848[i2];
        }
        return i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Integer) obj).intValue();
        int i = this.f15847;
        int[] iArr = this.f15848;
        int i2 = this.f15849;
        int i3 = ˉˆ.ʽﹳ(iArr, intValue, i2, i);
        if (i3 >= 0) {
            return i3 - i2;
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int i;
        if (obj instanceof Integer) {
            int intValue = ((Integer) obj).intValue();
            int i2 = this.f15847;
            while (true) {
                i2--;
                i = this.f15849;
                if (i2 < i) {
                    i2 = -1;
                    break;
                }
                if (this.f15848[i2] == intValue) {
                    break;
                }
            }
            if (i2 >= 0) {
                return i2 - i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        Integer num = (Integer) obj;
        י.ᵎﹶ(i, size());
        int i2 = this.f15849 + i;
        int[] iArr = this.f15848;
        int i3 = iArr[i2];
        num.getClass();
        iArr[i2] = num.intValue();
        return Integer.valueOf(i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f15847 - this.f15849;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        י.ˆʾ(i, i2, size());
        if (i == i2) {
            return Collections.EMPTY_LIST;
        }
        int i3 = this.f15849;
        return new C4273(this.f15848, i + i3, i3 + i2);
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        StringBuilder sb = new StringBuilder(size() * 5);
        sb.append('[');
        int[] iArr = this.f15848;
        int i = this.f15849;
        sb.append(iArr[i]);
        while (true) {
            i++;
            if (i >= this.f15847) {
                sb.append(']');
                return sb.toString();
            }
            sb.append(", ");
            sb.append(iArr[i]);
        }
    }
}
