package p255;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Set;
import p219.AbstractC3024;
import p386.InterfaceC4614;
import p430.AbstractC5096;
import p430.AbstractC5099;
import ˈˆ.ﾞᴵ;

/* renamed from: יـ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3370 implements Collection, Set, InterfaceC4614 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f13176;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int[] f13177;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object[] f13178;

    public C3370(int i) {
        this.f13177 = AbstractC3024.f11537;
        this.f13178 = AbstractC3024.f11536;
        if (i > 0) {
            this.f13177 = new int[i];
            this.f13178 = new Object[i];
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean add(Object obj) {
        int i;
        int m7183;
        int i2 = this.f13176;
        if (obj == null) {
            m7183 = AbstractC3355.m7183(this, null, 0);
            i = 0;
        } else {
            int hashCode = obj.hashCode();
            i = hashCode;
            m7183 = AbstractC3355.m7183(this, obj, hashCode);
        }
        if (m7183 >= 0) {
            return false;
        }
        int i3 = ~m7183;
        int[] iArr = this.f13177;
        if (i2 >= iArr.length) {
            int i4 = 8;
            if (i2 >= 8) {
                i4 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i4 = 4;
            }
            Object[] objArr = this.f13178;
            int[] iArr2 = new int[i4];
            this.f13177 = iArr2;
            this.f13178 = new Object[i4];
            if (i2 != this.f13176) {
                throw new ConcurrentModificationException();
            }
            if (iArr2.length != 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                AbstractC5096.m10007(0, objArr.length, 6, objArr, this.f13178);
            }
        }
        if (i3 < i2) {
            int[] iArr3 = this.f13177;
            int i5 = i3 + 1;
            AbstractC5096.m9998(i5, i3, i2, iArr3, iArr3);
            Object[] objArr2 = this.f13178;
            AbstractC5096.m10002(i5, i3, i2, objArr2, objArr2);
        }
        int i6 = this.f13176;
        if (i2 == i6) {
            int[] iArr4 = this.f13177;
            if (i3 < iArr4.length) {
                iArr4[i3] = i;
                this.f13178[i3] = obj;
                this.f13176 = i6 + 1;
                return true;
            }
        }
        throw new ConcurrentModificationException();
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean addAll(Collection collection) {
        int size = collection.size() + this.f13176;
        int i = this.f13176;
        int[] iArr = this.f13177;
        boolean z = false;
        if (iArr.length < size) {
            Object[] objArr = this.f13178;
            int[] iArr2 = new int[size];
            this.f13177 = iArr2;
            this.f13178 = new Object[size];
            if (i > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, i);
                AbstractC5096.m10007(0, this.f13176, 6, objArr, this.f13178);
            }
        }
        if (this.f13176 != i) {
            throw new ConcurrentModificationException();
        }
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            z |= add(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final void clear() {
        if (this.f13176 != 0) {
            this.f13177 = AbstractC3024.f11537;
            this.f13178 = AbstractC3024.f11536;
            this.f13176 = 0;
        }
        if (this.f13176 != 0) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean contains(Object obj) {
        return (obj == null ? AbstractC3355.m7183(this, null, 0) : AbstractC3355.m7183(this, obj, obj.hashCode())) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean containsAll(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Set) || this.f13176 != ((Set) obj).size()) {
            return false;
        }
        try {
            int i = this.f13176;
            for (int i2 = 0; i2 < i; i2++) {
                if (!((Set) obj).contains(this.f13178[i2])) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public final int hashCode() {
        int[] iArr = this.f13177;
        int i = this.f13176;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += iArr[i3];
        }
        return i2;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean isEmpty() {
        return this.f13176 <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        return new C3367(this);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean remove(Object obj) {
        int m7183 = obj == null ? AbstractC3355.m7183(this, null, 0) : AbstractC3355.m7183(this, obj, obj.hashCode());
        if (m7183 < 0) {
            return false;
        }
        m7231(m7183);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean removeAll(Collection collection) {
        Iterator it = collection.iterator();
        boolean z = false;
        while (it.hasNext()) {
            z |= remove(it.next());
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean retainAll(Collection collection) {
        boolean z = false;
        for (int i = this.f13176 - 1; -1 < i; i--) {
            if (!AbstractC5099.m10015(collection, this.f13178[i])) {
                m7231(i);
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.Collection, java.util.Set
    public final int size() {
        return this.f13176;
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray() {
        Object[] objArr = this.f13178;
        int i = this.f13176;
        ﾞᴵ.ᵎﹶ(i, objArr.length);
        return Arrays.copyOfRange(objArr, 0, i);
    }

    @Override // java.util.Collection, java.util.Set
    public final Object[] toArray(Object[] objArr) {
        int i = this.f13176;
        if (objArr.length < i) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
        } else if (objArr.length > i) {
            objArr[i] = null;
        }
        AbstractC5096.m10002(0, 0, this.f13176, this.f13178, objArr);
        return objArr;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f13176 * 14);
        sb.append('{');
        int i = this.f13176;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object obj = this.f13178[i2];
            if (obj != this) {
                sb.append(obj);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object m7231(int i) {
        int i2 = this.f13176;
        Object[] objArr = this.f13178;
        Object obj = objArr[i];
        if (i2 <= 1) {
            clear();
            return obj;
        }
        int i3 = i2 - 1;
        int[] iArr = this.f13177;
        if (iArr.length <= 8 || i2 >= iArr.length / 3) {
            if (i < i3) {
                int i4 = i + 1;
                AbstractC5096.m9998(i, i4, i2, iArr, iArr);
                Object[] objArr2 = this.f13178;
                AbstractC5096.m10002(i, i4, i2, objArr2, objArr2);
            }
            this.f13178[i3] = null;
        } else {
            int i5 = i2 > 8 ? i2 + (i2 >> 1) : 8;
            int[] iArr2 = new int[i5];
            this.f13177 = iArr2;
            this.f13178 = new Object[i5];
            if (i > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, i);
                AbstractC5096.m10007(0, i, 6, objArr, this.f13178);
            }
            if (i < i3) {
                int i6 = i + 1;
                AbstractC5096.m9998(i, i6, i2, iArr, this.f13177);
                AbstractC5096.m10002(i, i6, i2, objArr, this.f13178);
            }
        }
        if (i2 != this.f13176) {
            throw new ConcurrentModificationException();
        }
        this.f13176 = i3;
        return obj;
    }
}
