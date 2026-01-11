package com.google.android.gms.internal.measurement;

import androidx.datastore.preferences.protobuf.C0025;
import java.util.AbstractMap;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* renamed from: com.google.android.gms.internal.measurement.ˉʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0328 extends AbstractMap {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Map f1972;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public Object[] f1973;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f1974;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public Map f1975;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f1976;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public volatile C0025 f1977;

    public C0328() {
        Map map = Collections.EMPTY_MAP;
        this.f1972 = map;
        this.f1975 = map;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        m1579();
        if (this.f1976 != 0) {
            this.f1973 = null;
            this.f1976 = 0;
        }
        if (this.f1972.isEmpty()) {
            return;
        }
        this.f1972.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m1575(comparable) >= 0 || this.f1972.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f1977 == null) {
            this.f1977 = new C0025(this, 1);
        }
        return this.f1977;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0328)) {
            return super.equals(obj);
        }
        C0328 c0328 = (C0328) obj;
        int size = size();
        if (size == c0328.size()) {
            int i = this.f1976;
            if (i != c0328.f1976) {
                return entrySet().equals(c0328.entrySet());
            }
            for (int i2 = 0; i2 < i; i2++) {
                if (m1578(i2).equals(c0328.m1578(i2))) {
                }
            }
            if (i != size) {
                return this.f1972.equals(c0328.f1972);
            }
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m1575 = m1575(comparable);
        return m1575 >= 0 ? ((C0285) this.f1973[m1575]).f1875 : this.f1972.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int i = this.f1976;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += this.f1973[i3].hashCode();
        }
        return this.f1972.size() > 0 ? this.f1972.hashCode() + i2 : i2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        m1579();
        Comparable comparable = (Comparable) obj;
        int m1575 = m1575(comparable);
        if (m1575 >= 0) {
            return m1574(m1575);
        }
        if (this.f1972.isEmpty()) {
            return null;
        }
        return this.f1972.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f1972.size() + this.f1976;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: ʽ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        m1579();
        int m1575 = m1575(comparable);
        if (m1575 >= 0) {
            return ((C0285) this.f1973[m1575]).setValue(obj);
        }
        m1579();
        if (this.f1973 == null) {
            this.f1973 = new Object[16];
        }
        int i = -(m1575 + 1);
        if (i >= 16) {
            return m1576().put(comparable, obj);
        }
        if (this.f1976 == 16) {
            C0285 c0285 = (C0285) this.f1973[15];
            this.f1976 = 15;
            m1576().put(c0285.f1874, c0285.f1875);
        }
        Object[] objArr = this.f1973;
        int length = objArr.length;
        System.arraycopy(objArr, i, objArr, i + 1, 15 - i);
        this.f1973[i] = new C0285(this, comparable, obj);
        this.f1976++;
        return null;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object m1574(int i) {
        m1579();
        Object[] objArr = this.f1973;
        Object obj = ((C0285) objArr[i]).f1875;
        System.arraycopy(objArr, i + 1, objArr, i, (this.f1976 - i) - 1);
        this.f1976--;
        if (!this.f1972.isEmpty()) {
            Iterator it = m1576().entrySet().iterator();
            Object[] objArr2 = this.f1973;
            int i2 = this.f1976;
            Map.Entry entry = (Map.Entry) it.next();
            objArr2[i2] = new C0285(this, (Comparable) entry.getKey(), entry.getValue());
            this.f1976++;
            it.remove();
        }
        return obj;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int m1575(Comparable comparable) {
        int i = this.f1976;
        int i2 = i - 1;
        int i3 = 0;
        if (i2 >= 0) {
            int compareTo = comparable.compareTo(((C0285) this.f1973[i2]).f1874);
            if (compareTo > 0) {
                return -(i + 1);
            }
            if (compareTo == 0) {
                return i2;
            }
        }
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            int compareTo2 = comparable.compareTo(((C0285) this.f1973[i4]).f1874);
            if (compareTo2 < 0) {
                i2 = i4 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i4;
                }
                i3 = i4 + 1;
            }
        }
        return -(i3 + 1);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final SortedMap m1576() {
        m1579();
        if (this.f1972.isEmpty() && !(this.f1972 instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f1972 = treeMap;
            this.f1975 = treeMap.descendingMap();
        }
        return (SortedMap) this.f1972;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Set m1577() {
        return this.f1972.isEmpty() ? Collections.EMPTY_SET : this.f1972.entrySet();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0285 m1578(int i) {
        if (i < this.f1976) {
            return (C0285) this.f1973[i];
        }
        throw new ArrayIndexOutOfBoundsException(i);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m1579() {
        if (this.f1974) {
            throw new UnsupportedOperationException();
        }
    }
}
