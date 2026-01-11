package p430;

import android.support.v4.media.session.AbstractC0001;
import java.lang.reflect.Array;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.NoSuchElementException;
import p152.AbstractC2444;
import ʽٴ.ˈ;

/* renamed from: ﹶˈ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5109 extends AbstractC5104 {

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final Object[] f19211 = new Object[0];

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f19212;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f19213;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object[] f19214 = f19211;

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2 = this.f19212;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        if (i == i2) {
            addLast(obj);
            return;
        }
        if (i == 0) {
            addFirst(obj);
            return;
        }
        m10054();
        m10056(this.f19212 + 1);
        int m10053 = m10053(this.f19213 + i);
        int i3 = this.f19212;
        if (i < ((i3 + 1) >> 1)) {
            int length = m10053 == 0 ? this.f19214.length - 1 : m10053 - 1;
            int i4 = this.f19213;
            int length2 = i4 == 0 ? this.f19214.length - 1 : i4 - 1;
            if (length >= i4) {
                Object[] objArr = this.f19214;
                objArr[length2] = objArr[i4];
                AbstractC5096.m10002(i4, i4 + 1, length + 1, objArr, objArr);
            } else {
                Object[] objArr2 = this.f19214;
                AbstractC5096.m10002(i4 - 1, i4, objArr2.length, objArr2, objArr2);
                Object[] objArr3 = this.f19214;
                objArr3[objArr3.length - 1] = objArr3[0];
                AbstractC5096.m10002(0, 1, length + 1, objArr3, objArr3);
            }
            this.f19214[length] = obj;
            this.f19213 = length2;
        } else {
            int m100532 = m10053(i3 + this.f19213);
            if (m10053 < m100532) {
                Object[] objArr4 = this.f19214;
                AbstractC5096.m10002(m10053 + 1, m10053, m100532, objArr4, objArr4);
            } else {
                Object[] objArr5 = this.f19214;
                AbstractC5096.m10002(1, 0, m100532, objArr5, objArr5);
                Object[] objArr6 = this.f19214;
                objArr6[0] = objArr6[objArr6.length - 1];
                AbstractC5096.m10002(m10053 + 1, m10053, objArr6.length - 1, objArr6, objArr6);
            }
            this.f19214[m10053] = obj;
        }
        this.f19212++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        addLast(obj);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        int i2 = this.f19212;
        if (i < 0 || i > i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        if (collection.isEmpty()) {
            return false;
        }
        if (i == this.f19212) {
            return addAll(collection);
        }
        m10054();
        m10056(collection.size() + this.f19212);
        int m10053 = m10053(this.f19212 + this.f19213);
        int m100532 = m10053(this.f19213 + i);
        int size = collection.size();
        if (i >= ((this.f19212 + 1) >> 1)) {
            int i3 = m100532 + size;
            if (m100532 < m10053) {
                int i4 = size + m10053;
                Object[] objArr = this.f19214;
                if (i4 <= objArr.length) {
                    AbstractC5096.m10002(i3, m100532, m10053, objArr, objArr);
                } else if (i3 >= objArr.length) {
                    AbstractC5096.m10002(i3 - objArr.length, m100532, m10053, objArr, objArr);
                } else {
                    int length = m10053 - (i4 - objArr.length);
                    AbstractC5096.m10002(0, length, m10053, objArr, objArr);
                    Object[] objArr2 = this.f19214;
                    AbstractC5096.m10002(i3, m100532, length, objArr2, objArr2);
                }
            } else {
                Object[] objArr3 = this.f19214;
                AbstractC5096.m10002(size, 0, m10053, objArr3, objArr3);
                Object[] objArr4 = this.f19214;
                if (i3 >= objArr4.length) {
                    AbstractC5096.m10002(i3 - objArr4.length, m100532, objArr4.length, objArr4, objArr4);
                } else {
                    AbstractC5096.m10002(0, objArr4.length - size, objArr4.length, objArr4, objArr4);
                    Object[] objArr5 = this.f19214;
                    AbstractC5096.m10002(i3, m100532, objArr5.length - size, objArr5, objArr5);
                }
            }
            m10055(m100532, collection);
            return true;
        }
        int i5 = this.f19213;
        int i6 = i5 - size;
        if (m100532 < i5) {
            Object[] objArr6 = this.f19214;
            AbstractC5096.m10002(i6, i5, objArr6.length, objArr6, objArr6);
            if (size >= m100532) {
                Object[] objArr7 = this.f19214;
                AbstractC5096.m10002(objArr7.length - size, 0, m100532, objArr7, objArr7);
            } else {
                Object[] objArr8 = this.f19214;
                AbstractC5096.m10002(objArr8.length - size, 0, size, objArr8, objArr8);
                Object[] objArr9 = this.f19214;
                AbstractC5096.m10002(0, size, m100532, objArr9, objArr9);
            }
        } else if (i6 >= 0) {
            Object[] objArr10 = this.f19214;
            AbstractC5096.m10002(i6, i5, m100532, objArr10, objArr10);
        } else {
            Object[] objArr11 = this.f19214;
            i6 += objArr11.length;
            int i7 = m100532 - i5;
            int length2 = objArr11.length - i6;
            if (length2 >= i7) {
                AbstractC5096.m10002(i6, i5, m100532, objArr11, objArr11);
            } else {
                AbstractC5096.m10002(i6, i5, i5 + length2, objArr11, objArr11);
                Object[] objArr12 = this.f19214;
                AbstractC5096.m10002(0, this.f19213 + length2, m100532, objArr12, objArr12);
            }
        }
        this.f19213 = i6;
        m10055(m10057(m100532 - size), collection);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        m10054();
        m10056(collection.size() + mo9193());
        m10055(m10053(mo9193() + this.f19213), collection);
        return true;
    }

    public final void addFirst(Object obj) {
        m10054();
        m10056(this.f19212 + 1);
        int i = this.f19213;
        if (i == 0) {
            i = this.f19214.length;
        }
        int i2 = i - 1;
        this.f19213 = i2;
        this.f19214[i2] = obj;
        this.f19212++;
    }

    public final void addLast(Object obj) {
        m10054();
        m10056(mo9193() + 1);
        this.f19214[m10053(mo9193() + this.f19213)] = obj;
        this.f19212 = mo9193() + 1;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        if (!isEmpty()) {
            m10054();
            m10058(this.f19213, m10053(mo9193() + this.f19213));
        }
        this.f19213 = 0;
        this.f19212 = 0;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        int mo9193 = mo9193();
        if (i < 0 || i >= mo9193) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, mo9193, "index: ", ", size: "));
        }
        return this.f19214[m10053(this.f19213 + i)];
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        int i;
        int m10053 = m10053(mo9193() + this.f19213);
        int i2 = this.f19213;
        if (i2 < m10053) {
            while (i2 < m10053) {
                if (AbstractC2444.m5562(obj, this.f19214[i2])) {
                    i = this.f19213;
                } else {
                    i2++;
                }
            }
            return -1;
        }
        if (i2 < m10053) {
            return -1;
        }
        int length = this.f19214.length;
        while (true) {
            if (i2 >= length) {
                for (int i3 = 0; i3 < m10053; i3++) {
                    if (AbstractC2444.m5562(obj, this.f19214[i3])) {
                        i2 = i3 + this.f19214.length;
                        i = this.f19213;
                    }
                }
                return -1;
            }
            if (AbstractC2444.m5562(obj, this.f19214[i2])) {
                i = this.f19213;
                break;
            }
            i2++;
        }
        return i2 - i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean isEmpty() {
        return mo9193() == 0;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        int length;
        int i;
        int m10053 = m10053(mo9193() + this.f19213);
        int i2 = this.f19213;
        if (i2 < m10053) {
            length = m10053 - 1;
            if (i2 <= length) {
                while (!AbstractC2444.m5562(obj, this.f19214[length])) {
                    if (length != i2) {
                        length--;
                    }
                }
                i = this.f19213;
                return length - i;
            }
            return -1;
        }
        if (i2 > m10053) {
            int i3 = m10053 - 1;
            while (true) {
                if (-1 >= i3) {
                    length = this.f19214.length - 1;
                    int i4 = this.f19213;
                    if (i4 <= length) {
                        while (!AbstractC2444.m5562(obj, this.f19214[length])) {
                            if (length != i4) {
                                length--;
                            }
                        }
                        i = this.f19213;
                    }
                } else {
                    if (AbstractC2444.m5562(obj, this.f19214[i3])) {
                        length = i3 + this.f19214.length;
                        i = this.f19213;
                        break;
                    }
                    i3--;
                }
            }
        }
        return -1;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        int indexOf = indexOf(obj);
        if (indexOf == -1) {
            return false;
        }
        mo9192(indexOf);
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        int m10053;
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.f19214.length != 0) {
            int m100532 = m10053(mo9193() + this.f19213);
            int i = this.f19213;
            if (i < m100532) {
                m10053 = i;
                while (i < m100532) {
                    Object obj = this.f19214[i];
                    if (collection.contains(obj)) {
                        z = true;
                    } else {
                        this.f19214[m10053] = obj;
                        m10053++;
                    }
                    i++;
                }
                Arrays.fill(this.f19214, m10053, m100532, (Object) null);
            } else {
                int length = this.f19214.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr = this.f19214;
                    Object obj2 = objArr[i];
                    objArr[i] = null;
                    if (collection.contains(obj2)) {
                        z2 = true;
                    } else {
                        this.f19214[i2] = obj2;
                        i2++;
                    }
                    i++;
                }
                m10053 = m10053(i2);
                for (int i3 = 0; i3 < m100532; i3++) {
                    Object[] objArr2 = this.f19214;
                    Object obj3 = objArr2[i3];
                    objArr2[i3] = null;
                    if (collection.contains(obj3)) {
                        z2 = true;
                    } else {
                        this.f19214[m10053] = obj3;
                        m10053 = m10059(m10053);
                    }
                }
                z = z2;
            }
            if (z) {
                m10054();
                this.f19212 = m10057(m10053 - this.f19213);
            }
        }
        return z;
    }

    public final Object removeFirst() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        m10054();
        Object[] objArr = this.f19214;
        int i = this.f19213;
        Object obj = objArr[i];
        objArr[i] = null;
        this.f19213 = m10059(i);
        this.f19212 = mo9193() - 1;
        return obj;
    }

    public final Object removeLast() {
        if (isEmpty()) {
            throw new NoSuchElementException("ArrayDeque is empty.");
        }
        m10054();
        int m10053 = m10053(AbstractC5106.m10048(this) + this.f19213);
        Object[] objArr = this.f19214;
        Object obj = objArr[m10053];
        objArr[m10053] = null;
        this.f19212 = mo9193() - 1;
        return obj;
    }

    @Override // java.util.AbstractList
    public final void removeRange(int i, int i2) {
        ˈ.ˈ(i, i2, this.f19212);
        int i3 = i2 - i;
        if (i3 == 0) {
            return;
        }
        if (i3 == this.f19212) {
            clear();
            return;
        }
        if (i3 == 1) {
            mo9192(i);
            return;
        }
        m10054();
        if (i < this.f19212 - i2) {
            int m10053 = m10053(this.f19213 + (i - 1));
            int m100532 = m10053(this.f19213 + (i2 - 1));
            while (i > 0) {
                int i4 = m10053 + 1;
                int min = Math.min(i, Math.min(i4, m100532 + 1));
                Object[] objArr = this.f19214;
                int i5 = m100532 - min;
                int i6 = m10053 - min;
                AbstractC5096.m10002(i5 + 1, i6 + 1, i4, objArr, objArr);
                m10053 = m10057(i6);
                m100532 = m10057(i5);
                i -= min;
            }
            int m100533 = m10053(this.f19213 + i3);
            m10058(this.f19213, m100533);
            this.f19213 = m100533;
        } else {
            int m100534 = m10053(this.f19213 + i2);
            int m100535 = m10053(this.f19213 + i);
            int i7 = this.f19212;
            while (true) {
                i7 -= i2;
                if (i7 <= 0) {
                    break;
                }
                Object[] objArr2 = this.f19214;
                i2 = Math.min(i7, Math.min(objArr2.length - m100534, objArr2.length - m100535));
                Object[] objArr3 = this.f19214;
                int i8 = m100534 + i2;
                AbstractC5096.m10002(m100535, m100534, i8, objArr3, objArr3);
                m100534 = m10053(i8);
                m100535 = m10053(m100535 + i2);
            }
            int m100536 = m10053(this.f19212 + this.f19213);
            m10058(m10057(m100536 - i3), m100536);
        }
        this.f19212 -= i3;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean retainAll(Collection collection) {
        int m10053;
        boolean z = false;
        z = false;
        z = false;
        if (!isEmpty() && this.f19214.length != 0) {
            int m100532 = m10053(mo9193() + this.f19213);
            int i = this.f19213;
            if (i < m100532) {
                m10053 = i;
                while (i < m100532) {
                    Object obj = this.f19214[i];
                    if (collection.contains(obj)) {
                        this.f19214[m10053] = obj;
                        m10053++;
                    } else {
                        z = true;
                    }
                    i++;
                }
                Arrays.fill(this.f19214, m10053, m100532, (Object) null);
            } else {
                int length = this.f19214.length;
                boolean z2 = false;
                int i2 = i;
                while (i < length) {
                    Object[] objArr = this.f19214;
                    Object obj2 = objArr[i];
                    objArr[i] = null;
                    if (collection.contains(obj2)) {
                        this.f19214[i2] = obj2;
                        i2++;
                    } else {
                        z2 = true;
                    }
                    i++;
                }
                m10053 = m10053(i2);
                for (int i3 = 0; i3 < m100532; i3++) {
                    Object[] objArr2 = this.f19214;
                    Object obj3 = objArr2[i3];
                    objArr2[i3] = null;
                    if (collection.contains(obj3)) {
                        this.f19214[m10053] = obj3;
                        m10053 = m10059(m10053);
                    } else {
                        z2 = true;
                    }
                }
                z = z2;
            }
            if (z) {
                m10054();
                this.f19212 = m10057(m10053 - this.f19213);
            }
        }
        return z;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        int mo9193 = mo9193();
        if (i < 0 || i >= mo9193) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, mo9193, "index: ", ", size: "));
        }
        int m10053 = m10053(this.f19213 + i);
        Object[] objArr = this.f19214;
        Object obj2 = objArr[m10053];
        objArr[m10053] = obj;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return toArray(new Object[mo9193()]);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray(Object[] objArr) {
        int length = objArr.length;
        int i = this.f19212;
        if (length < i) {
            objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
        }
        int m10053 = m10053(this.f19212 + this.f19213);
        int i2 = this.f19213;
        if (i2 < m10053) {
            AbstractC5096.m10007(i2, m10053, 2, this.f19214, objArr);
        } else if (!isEmpty()) {
            Object[] objArr2 = this.f19214;
            AbstractC5096.m10002(0, this.f19213, objArr2.length, objArr2, objArr);
            Object[] objArr3 = this.f19214;
            AbstractC5096.m10002(objArr3.length - this.f19213, 0, m10053, objArr3, objArr);
        }
        int i3 = this.f19212;
        if (i3 < objArr.length) {
            objArr[i3] = null;
        }
        return objArr;
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final int m10053(int i) {
        Object[] objArr = this.f19214;
        return i >= objArr.length ? i - objArr.length : i;
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m10054() {
        ((AbstractList) this).modCount++;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m10055(int i, Collection collection) {
        Iterator it = collection.iterator();
        int length = this.f19214.length;
        while (i < length && it.hasNext()) {
            this.f19214[i] = it.next();
            i++;
        }
        int i2 = this.f19213;
        for (int i3 = 0; i3 < i2 && it.hasNext(); i3++) {
            this.f19214[i3] = it.next();
        }
        this.f19212 = collection.size() + this.f19212;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m10056(int i) {
        if (i < 0) {
            throw new IllegalStateException("Deque is too big.");
        }
        Object[] objArr = this.f19214;
        if (i <= objArr.length) {
            return;
        }
        if (objArr == f19211) {
            if (i < 10) {
                i = 10;
            }
            this.f19214 = new Object[i];
            return;
        }
        int length = objArr.length;
        int i2 = length + (length >> 1);
        if (i2 - i < 0) {
            i2 = i;
        }
        if (i2 - 2147483639 > 0) {
            i2 = i > 2147483639 ? Integer.MAX_VALUE : 2147483639;
        }
        Object[] objArr2 = new Object[i2];
        AbstractC5096.m10002(0, this.f19213, objArr.length, objArr, objArr2);
        Object[] objArr3 = this.f19214;
        int length2 = objArr3.length;
        int i3 = this.f19213;
        AbstractC5096.m10002(length2 - i3, 0, i3, objArr3, objArr2);
        this.f19213 = 0;
        this.f19214 = objArr2;
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final int m10057(int i) {
        return i < 0 ? i + this.f19214.length : i;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m10058(int i, int i2) {
        if (i < i2) {
            Arrays.fill(this.f19214, i, i2, (Object) null);
            return;
        }
        Object[] objArr = this.f19214;
        Arrays.fill(objArr, i, objArr.length, (Object) null);
        Arrays.fill(this.f19214, 0, i2, (Object) null);
    }

    @Override // p430.AbstractC5104
    /* renamed from: ⁱˊ */
    public final Object mo9192(int i) {
        int i2 = this.f19212;
        if (i < 0 || i >= i2) {
            throw new IndexOutOfBoundsException(AbstractC0001.m14(i, i2, "index: ", ", size: "));
        }
        if (i == AbstractC5106.m10048(this)) {
            return removeLast();
        }
        if (i == 0) {
            return removeFirst();
        }
        m10054();
        int m10053 = m10053(this.f19213 + i);
        Object[] objArr = this.f19214;
        Object obj = objArr[m10053];
        if (i < (this.f19212 >> 1)) {
            int i3 = this.f19213;
            if (m10053 >= i3) {
                AbstractC5096.m10002(i3 + 1, i3, m10053, objArr, objArr);
            } else {
                AbstractC5096.m10002(1, 0, m10053, objArr, objArr);
                Object[] objArr2 = this.f19214;
                objArr2[0] = objArr2[objArr2.length - 1];
                int i4 = this.f19213;
                AbstractC5096.m10002(i4 + 1, i4, objArr2.length - 1, objArr2, objArr2);
            }
            Object[] objArr3 = this.f19214;
            int i5 = this.f19213;
            objArr3[i5] = null;
            this.f19213 = m10059(i5);
        } else {
            int m100532 = m10053(AbstractC5106.m10048(this) + this.f19213);
            if (m10053 <= m100532) {
                Object[] objArr4 = this.f19214;
                AbstractC5096.m10002(m10053, m10053 + 1, m100532 + 1, objArr4, objArr4);
            } else {
                Object[] objArr5 = this.f19214;
                AbstractC5096.m10002(m10053, m10053 + 1, objArr5.length, objArr5, objArr5);
                Object[] objArr6 = this.f19214;
                objArr6[objArr6.length - 1] = objArr6[0];
                AbstractC5096.m10002(0, 1, m100532 + 1, objArr6, objArr6);
            }
            this.f19214[m100532] = null;
        }
        this.f19212--;
        return obj;
    }

    @Override // p430.AbstractC5104
    /* renamed from: ﹳٴ */
    public final int mo9193() {
        return this.f19212;
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int m10059(int i) {
        if (i == this.f19214.length - 1) {
            return 0;
        }
        return i + 1;
    }
}
