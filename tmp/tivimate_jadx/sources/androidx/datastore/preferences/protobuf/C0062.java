package androidx.datastore.preferences.protobuf;

import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* renamed from: androidx.datastore.preferences.protobuf.ﹳـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0062 extends AbstractMap {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final /* synthetic */ int f502 = 0;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f503;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public List f504;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public volatile C0025 f505;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Map f506;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Map f507;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractMap, androidx.datastore.preferences.protobuf.ﹳـ] */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static C0062 m371() {
        ?? abstractMap = new AbstractMap();
        abstractMap.f504 = Collections.EMPTY_LIST;
        Map map = Collections.EMPTY_MAP;
        abstractMap.f506 = map;
        abstractMap.f507 = map;
        return abstractMap;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        m377();
        if (!this.f504.isEmpty()) {
            this.f504.clear();
        }
        if (this.f506.isEmpty()) {
            return;
        }
        this.f506.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return m378(comparable) >= 0 || this.f506.containsKey(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.f505 == null) {
            this.f505 = new C0025(this, 0);
        }
        return this.f505;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0062)) {
            return super.equals(obj);
        }
        C0062 c0062 = (C0062) obj;
        int size = size();
        if (size == c0062.size()) {
            int size2 = this.f504.size();
            if (size2 != c0062.f504.size()) {
                return ((AbstractSet) entrySet()).equals(c0062.entrySet());
            }
            for (int i = 0; i < size2; i++) {
                if (m372(i).equals(c0062.m372(i))) {
                }
            }
            if (size2 != size) {
                return this.f506.equals(c0062.f506);
            }
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int m378 = m378(comparable);
        return m378 >= 0 ? ((C0022) this.f504.get(m378)).f408 : this.f506.get(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int size = this.f504.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ((C0022) this.f504.get(i2)).hashCode();
        }
        return this.f506.size() > 0 ? this.f506.hashCode() + i : i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        m377();
        Comparable comparable = (Comparable) obj;
        int m378 = m378(comparable);
        if (m378 >= 0) {
            return m376(m378);
        }
        if (this.f506.isEmpty()) {
            return null;
        }
        return this.f506.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f506.size() + this.f504.size();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Map.Entry m372(int i) {
        return (Map.Entry) this.f504.get(i);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Set m373() {
        return this.f506.isEmpty() ? Collections.EMPTY_SET : this.f506.entrySet();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final SortedMap m374() {
        m377();
        if (this.f506.isEmpty() && !(this.f506 instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.f506 = treeMap;
            this.f507 = treeMap.descendingMap();
        }
        return (SortedMap) this.f506;
    }

    @Override // java.util.AbstractMap, java.util.Map
    /* renamed from: ᵎﹶ, reason: contains not printable characters and merged with bridge method [inline-methods] */
    public final Object put(Comparable comparable, Object obj) {
        m377();
        int m378 = m378(comparable);
        if (m378 >= 0) {
            return ((C0022) this.f504.get(m378)).setValue(obj);
        }
        m377();
        if (this.f504.isEmpty() && !(this.f504 instanceof ArrayList)) {
            this.f504 = new ArrayList(16);
        }
        int i = -(m378 + 1);
        if (i >= 16) {
            return m374().put(comparable, obj);
        }
        if (this.f504.size() == 16) {
            C0022 c0022 = (C0022) this.f504.remove(15);
            m374().put(c0022.f407, c0022.f408);
        }
        this.f504.add(i, new C0022(this, comparable, obj));
        return null;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final Object m376(int i) {
        m377();
        Object obj = ((C0022) this.f504.remove(i)).f408;
        if (!this.f506.isEmpty()) {
            Iterator it = m374().entrySet().iterator();
            List list = this.f504;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new C0022(this, (Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m377() {
        if (this.f503) {
            throw new UnsupportedOperationException();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int m378(Comparable comparable) {
        int i;
        int size = this.f504.size();
        int i2 = size - 1;
        if (i2 >= 0) {
            int compareTo = comparable.compareTo(((C0022) this.f504.get(i2)).f407);
            if (compareTo > 0) {
                i = size + 1;
                return -i;
            }
            if (compareTo == 0) {
                return i2;
            }
        }
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            int compareTo2 = comparable.compareTo(((C0022) this.f504.get(i4)).f407);
            if (compareTo2 < 0) {
                i2 = i4 - 1;
            } else {
                if (compareTo2 <= 0) {
                    return i4;
                }
                i3 = i4 + 1;
            }
        }
        i = i3 + 1;
        return -i;
    }
}
