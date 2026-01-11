package p266;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Set;
import p017.AbstractC1004;

/* renamed from: ـˊ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3453 implements Map {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Map f13563;

    public C3453(Map map) {
        this.f13563 = map;
    }

    @Override // java.util.Map
    public final void clear() {
        this.f13563.clear();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return obj != null && this.f13563.containsKey(obj);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x003a, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
    
        if (r0.hasNext() == false) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0036, code lost:
    
        if (r3.equals(((java.util.Map.Entry) r0.next()).getValue()) == false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:?, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:2:0x000d, code lost:
    
        if (r3 == null) goto L4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0013, code lost:
    
        if (r0.hasNext() == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001f, code lost:
    
        if (((java.util.Map.Entry) r0.next()).getValue() != null) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0038, code lost:
    
        return true;
     */
    @Override // java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean containsValue(java.lang.Object r3) {
        /*
            r2 = this;
            java.util.Set r0 = r2.entrySet()
            ʼʻ.ˈˏ r0 = (p017.C0961) r0
            java.util.Iterator r0 = r0.iterator()
            r0.getClass()
            if (r3 != 0) goto L22
        Lf:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L3a
            java.lang.Object r3 = r0.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r3 = r3.getValue()
            if (r3 != 0) goto Lf
            goto L38
        L22:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto L3a
            java.lang.Object r1 = r0.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r1 = r1.getValue()
            boolean r1 = r3.equals(r1)
            if (r1 == 0) goto L22
        L38:
            r3 = 1
            return r3
        L3a:
            r3 = 0
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p266.C3453.containsValue(java.lang.Object):boolean");
    }

    @Override // java.util.Map
    public final Set entrySet() {
        return AbstractC1004.m3291(this.f13563.entrySet(), new C3448(0));
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return obj != null && AbstractC1004.m3297(this, obj);
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        return (List) this.f13563.get(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return AbstractC1004.m3288(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        Map map = this.f13563;
        return map.isEmpty() || (map.size() == 1 && map.containsKey(null));
    }

    @Override // java.util.Map
    public final Set keySet() {
        return AbstractC1004.m3291(this.f13563.keySet(), new C3448(1));
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        return this.f13563.put(obj, obj2);
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        this.f13563.putAll(map);
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        return this.f13563.remove(obj);
    }

    @Override // java.util.Map
    public final int size() {
        Map map = this.f13563;
        return map.size() - (map.containsKey(null) ? 1 : 0);
    }

    public final String toString() {
        return this.f13563.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        return this.f13563.values();
    }
}
