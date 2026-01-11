package p391;

import android.support.v4.media.session.AbstractC0001;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p152.AbstractC2444;
import p430.AbstractC5096;
import p430.AbstractC5104;
import ʽٴ.ˈ;
import ˈˆ.ﾞᴵ;

/* renamed from: ⁱˏ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4634 extends AbstractC5104 implements RandomAccess, Serializable {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final C4634 f17309;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f17310;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Object[] f17311;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f17312;

    static {
        C4634 c4634 = new C4634(0);
        c4634.f17310 = true;
        f17309 = c4634;
    }

    public C4634(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("capacity must be non-negative.");
        }
        this.f17311 = new Object[i];
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        m9190();
        int i2 = this.f17312;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        ((AbstractList) this).modCount++;
        m9191(i, 1);
        this.f17311[i] = obj;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        m9190();
        int i = this.f17312;
        ((AbstractList) this).modCount++;
        m9191(i, 1);
        this.f17311[i] = obj;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        m9190();
        int i2 = this.f17312;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        int size = collection.size();
        m9188(i, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        m9190();
        int size = collection.size();
        m9188(this.f17312, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m9190();
        m9187(0, this.f17312);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            Object[] objArr = this.f17311;
            int i = this.f17312;
            if (i == list.size()) {
                for (int i2 = 0; i2 < i; i2++) {
                    if (AbstractC2444.m5562(objArr[i2], list.get(i2))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        int i2 = this.f17312;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        return this.f17311[i];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        Object[] objArr = this.f17311;
        int i = this.f17312;
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            i2 = (i2 * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        for (int i = 0; i < this.f17312; i++) {
            if (AbstractC2444.m5562(this.f17311[i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return this.f17312 == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        for (int i = this.f17312 - 1; i >= 0; i--) {
            if (AbstractC2444.m5562(this.f17311[i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        int i2 = this.f17312;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        return new C4640(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m9190();
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            mo9192(indexOf);
        }
        return indexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        m9190();
        return m9189(0, this.f17312, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        m9190();
        return m9189(0, this.f17312, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        m9190();
        int i2 = this.f17312;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        Object[] objArr = this.f17311;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        ˈ.ˈ(i, i2, this.f17312);
        return new C4639(this.f17311, i, i2 - i, null, this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        Object[] objArr = this.f17311;
        int i = this.f17312;
        ﾞᴵ.ᵎﹶ(i, objArr.length);
        return Arrays.copyOfRange(objArr, 0, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        int length = objArr.length;
        int i = this.f17312;
        if (length < i) {
            return Arrays.copyOfRange(this.f17311, 0, i, objArr.getClass());
        }
        AbstractC5096.m10002(0, 0, i, this.f17311, objArr);
        int i2 = this.f17312;
        if (i2 < objArr.length) {
            objArr[i2] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        return ˈ.ﹳٴ(this.f17311, 0, this.f17312, this);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final Object m9186(int i) {
        ((AbstractList) this).modCount++;
        Object[] objArr = this.f17311;
        Object obj = objArr[i];
        AbstractC5096.m10002(i, i + 1, this.f17312, objArr, objArr);
        Object[] objArr2 = this.f17311;
        int i2 = this.f17312;
        objArr2[i2 - 1] = null;
        this.f17312 = i2 - 1;
        return obj;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m9187(int i, int i2) {
        if (i2 > 0) {
            ((AbstractList) this).modCount++;
        }
        Object[] objArr = this.f17311;
        AbstractC5096.m10002(i, i + i2, this.f17312, objArr, objArr);
        Object[] objArr2 = this.f17311;
        int i3 = this.f17312;
        ˈ.ʾᵎ(objArr2, i3 - i2, i3);
        this.f17312 -= i2;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m9188(int i, Collection collection, int i2) {
        ((AbstractList) this).modCount++;
        m9191(i, i2);
        Iterator it = collection.iterator();
        for (int i3 = 0; i3 < i2; i3++) {
            this.f17311[i + i3] = it.next();
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int m9189(int i, int i2, Collection collection, boolean z) {
        int i3 = 0;
        int i4 = 0;
        while (i3 < i2) {
            int i5 = i + i3;
            if (collection.contains(this.f17311[i5]) == z) {
                Object[] objArr = this.f17311;
                i3++;
                objArr[i4 + i] = objArr[i5];
                i4++;
            } else {
                i3++;
            }
        }
        int i6 = i2 - i4;
        Object[] objArr2 = this.f17311;
        AbstractC5096.m10002(i + i4, i2 + i, this.f17312, objArr2, objArr2);
        Object[] objArr3 = this.f17311;
        int i7 = this.f17312;
        ˈ.ʾᵎ(objArr3, i7 - i6, i7);
        if (i6 > 0) {
            ((AbstractList) this).modCount++;
        }
        this.f17312 -= i6;
        return i6;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m9190() {
        if (this.f17310) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m9191(int i, int i2) {
        int i3 = this.f17312 + i2;
        if (i3 < 0) {
            throw new OutOfMemoryError();
        }
        Object[] objArr = this.f17311;
        if (i3 > objArr.length) {
            int length = objArr.length;
            int i4 = length + (length >> 1);
            if (i4 - i3 < 0) {
                i4 = i3;
            }
            if (i4 - 2147483639 > 0) {
                i4 = i3 > 2147483639 ? Integer.MAX_VALUE : 2147483639;
            }
            this.f17311 = Arrays.copyOf(objArr, i4);
        }
        Object[] objArr2 = this.f17311;
        AbstractC5096.m10002(i + i2, i, this.f17312, objArr2, objArr2);
        this.f17312 += i2;
    }

    @Override // p430.AbstractC5104
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object mo9192(int i) {
        m9190();
        int i2 = this.f17312;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        return m9186(i);
    }

    @Override // p430.AbstractC5104
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int mo9193() {
        return this.f17312;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m9194(int i, Object obj) {
        ((AbstractList) this).modCount++;
        m9191(i, 1);
        this.f17311[i] = obj;
    }
}
