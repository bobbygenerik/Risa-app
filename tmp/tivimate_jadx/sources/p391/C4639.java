package p391;

import android.support.v4.media.session.AbstractC0001;
import java.io.Serializable;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import p152.AbstractC2444;
import p430.AbstractC5096;
import p430.AbstractC5104;
import ʽٴ.ˈ;
import ˈˆ.ﾞᴵ;

/* renamed from: ⁱˏ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4639 extends AbstractC5104 implements RandomAccess, Serializable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f17320;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Object[] f17321;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C4639 f17322;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f17323;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C4634 f17324;

    public C4639(Object[] objArr, int i, int i2, C4639 c4639, C4634 c4634) {
        int i3;
        this.f17321 = objArr;
        this.f17323 = i;
        this.f17320 = i2;
        this.f17322 = c4639;
        this.f17324 = c4634;
        i3 = ((AbstractList) c4634).modCount;
        ((AbstractList) this).modCount = i3;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        m9202();
        m9201();
        int i2 = this.f17320;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        m9203(this.f17323 + i, obj);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        m9202();
        m9201();
        m9203(this.f17323 + this.f17320, obj);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        m9202();
        m9201();
        int i2 = this.f17320;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        int size = collection.size();
        m9199(this.f17323 + i, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        m9202();
        m9201();
        int size = collection.size();
        m9199(this.f17323 + this.f17320, collection, size);
        return size > 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        m9202();
        m9201();
        m9198(this.f17323, this.f17320);
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        m9201();
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            Object[] objArr = this.f17321;
            int i = this.f17320;
            if (i == list.size()) {
                for (int i2 = 0; i2 < i; i2++) {
                    if (AbstractC2444.m5562(objArr[this.f17323 + i2], list.get(i2))) {
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        m9201();
        int i2 = this.f17320;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        return this.f17321[this.f17323 + i];
    }

    @Override // java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        m9201();
        Object[] objArr = this.f17321;
        int i = this.f17320;
        int i2 = 1;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[this.f17323 + i3];
            i2 = (i2 * 31) + (obj != null ? obj.hashCode() : 0);
        }
        return i2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        m9201();
        for (int i = 0; i < this.f17320; i++) {
            if (AbstractC2444.m5562(this.f17321[this.f17323 + i], obj)) {
                return i;
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        m9201();
        return this.f17320 == 0;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        m9201();
        for (int i = this.f17320 - 1; i >= 0; i--) {
            if (AbstractC2444.m5562(this.f17321[this.f17323 + i], obj)) {
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
        m9201();
        int i2 = this.f17320;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        return new C4640(this, i);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        m9202();
        m9201();
        int indexOf = indexOf(obj);
        if (indexOf >= 0) {
            mo9192(indexOf);
        }
        return indexOf >= 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        m9202();
        m9201();
        return m9200(this.f17323, this.f17320, collection, false) > 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        m9202();
        m9201();
        return m9200(this.f17323, this.f17320, collection, true) > 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        m9202();
        m9201();
        int i2 = this.f17320;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        Object[] objArr = this.f17321;
        int i3 = this.f17323;
        Object obj2 = objArr[i3 + i];
        objArr[i3 + i] = obj;
        return obj2;
    }

    @Override // java.util.AbstractList, java.util.List
    public final List subList(int i, int i2) {
        ˈ.ˈ(i, i2, this.f17320);
        return new C4639(this.f17321, this.f17323 + i, i2 - i, this, this.f17324);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        m9201();
        Object[] objArr = this.f17321;
        int i = this.f17320;
        int i2 = this.f17323;
        int i3 = i + i2;
        ﾞᴵ.ᵎﹶ(i3, objArr.length);
        return Arrays.copyOfRange(objArr, i2, i3);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        m9201();
        int length = objArr.length;
        int i = this.f17320;
        int i2 = this.f17323;
        if (length < i) {
            return Arrays.copyOfRange(this.f17321, i2, i + i2, objArr.getClass());
        }
        AbstractC5096.m10002(0, i2, i + i2, this.f17321, objArr);
        int i3 = this.f17320;
        if (i3 < objArr.length) {
            objArr[i3] = null;
        }
        return objArr;
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        m9201();
        return ˈ.ﹳٴ(this.f17321, this.f17323, this.f17320, this);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final Object m9197(int i) {
        Object m9186;
        ((AbstractList) this).modCount++;
        C4639 c4639 = this.f17322;
        if (c4639 != null) {
            m9186 = c4639.m9197(i);
        } else {
            C4634 c4634 = C4634.f17309;
            m9186 = this.f17324.m9186(i);
        }
        this.f17320--;
        return m9186;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m9198(int i, int i2) {
        if (i2 > 0) {
            ((AbstractList) this).modCount++;
        }
        C4639 c4639 = this.f17322;
        if (c4639 != null) {
            c4639.m9198(i, i2);
        } else {
            C4634 c4634 = C4634.f17309;
            this.f17324.m9187(i, i2);
        }
        this.f17320 -= i2;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m9199(int i, Collection collection, int i2) {
        ((AbstractList) this).modCount++;
        C4634 c4634 = this.f17324;
        C4639 c4639 = this.f17322;
        if (c4639 != null) {
            c4639.m9199(i, collection, i2);
        } else {
            C4634 c46342 = C4634.f17309;
            c4634.m9188(i, collection, i2);
        }
        this.f17321 = c4634.f17311;
        this.f17320 += i2;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final int m9200(int i, int i2, Collection collection, boolean z) {
        int m9189;
        C4639 c4639 = this.f17322;
        if (c4639 != null) {
            m9189 = c4639.m9200(i, i2, collection, z);
        } else {
            C4634 c4634 = C4634.f17309;
            m9189 = this.f17324.m9189(i, i2, collection, z);
        }
        if (m9189 > 0) {
            ((AbstractList) this).modCount++;
        }
        this.f17320 -= m9189;
        return m9189;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m9201() {
        int i;
        i = ((AbstractList) this.f17324).modCount;
        if (i != ((AbstractList) this).modCount) {
            throw new ConcurrentModificationException();
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m9202() {
        if (this.f17324.f17310) {
            throw new UnsupportedOperationException();
        }
    }

    @Override // p430.AbstractC5104
    /* renamed from: ⁱˊ */
    public final Object mo9192(int i) {
        m9202();
        m9201();
        int i2 = this.f17320;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        return m9197(this.f17323 + i);
    }

    @Override // p430.AbstractC5104
    /* renamed from: ﹳٴ */
    public final int mo9193() {
        m9201();
        return this.f17320;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m9203(int i, Object obj) {
        ((AbstractList) this).modCount++;
        C4634 c4634 = this.f17324;
        C4639 c4639 = this.f17322;
        if (c4639 != null) {
            c4639.m9203(i, obj);
        } else {
            C4634 c46342 = C4634.f17309;
            c4634.m9194(i, obj);
        }
        this.f17321 = c4634.f17311;
        this.f17320++;
    }
}
