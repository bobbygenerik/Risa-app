package p315;

import j$.util.DesugarCollections;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import p013.C0913;
import p141.C2378;
import p430.AbstractC5099;
import p430.AbstractC5103;
import p430.AbstractC5114;

/* renamed from: ᴵʼ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3899 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2378 f15162;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final LinkedHashMap f15163;

    public C3899(LinkedHashMap linkedHashMap, boolean z) {
        this.f15163 = linkedHashMap;
        this.f15162 = new C2378(z);
    }

    public /* synthetic */ C3899(boolean z) {
        this(new LinkedHashMap(), z);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0060 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[LOOP:0: B:10:0x002a->B:24:?, LOOP_END, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            boolean r0 = r7 instanceof p315.C3899
            r1 = 0
            if (r0 != 0) goto L6
            goto L60
        L6:
            ᴵʼ.ⁱˊ r7 = (p315.C3899) r7
            java.util.LinkedHashMap r7 = r7.f15163
            java.util.LinkedHashMap r0 = r6.f15163
            r2 = 1
            if (r7 != r0) goto L10
            goto L61
        L10:
            int r3 = r7.size()
            int r4 = r0.size()
            if (r3 == r4) goto L1b
            goto L60
        L1b:
            boolean r3 = r7.isEmpty()
            if (r3 == 0) goto L22
            goto L61
        L22:
            java.util.Set r7 = r7.entrySet()
            java.util.Iterator r7 = r7.iterator()
        L2a:
            boolean r3 = r7.hasNext()
            if (r3 == 0) goto L61
            java.lang.Object r3 = r7.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r3.getKey()
            java.lang.Object r4 = r0.get(r4)
            if (r4 == 0) goto L5d
            java.lang.Object r3 = r3.getValue()
            boolean r5 = r3 instanceof byte[]
            if (r5 == 0) goto L58
            boolean r5 = r4 instanceof byte[]
            if (r5 == 0) goto L5d
            byte[] r3 = (byte[]) r3
            byte[] r4 = (byte[]) r4
            boolean r3 = java.util.Arrays.equals(r3, r4)
            if (r3 == 0) goto L5d
            r3 = r2
            goto L5e
        L58:
            boolean r3 = p152.AbstractC2444.m5562(r3, r4)
            goto L5e
        L5d:
            r3 = r1
        L5e:
            if (r3 != 0) goto L2a
        L60:
            return r1
        L61:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p315.C3899.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        Iterator it = this.f15163.entrySet().iterator();
        int i = 0;
        while (it.hasNext()) {
            Object value = ((Map.Entry) it.next()).getValue();
            i += value instanceof byte[] ? Arrays.hashCode((byte[]) value) : value.hashCode();
        }
        return i;
    }

    public final String toString() {
        return AbstractC5099.m10034(this.f15163.entrySet(), ",\n", "{\n", "\n}", C3900.f15164, 24);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8078(C3896 c3896, Object obj) {
        m8079();
        LinkedHashMap linkedHashMap = this.f15163;
        if (obj == null) {
            m8079();
            linkedHashMap.remove(c3896);
        } else if (obj instanceof Set) {
            linkedHashMap.put(c3896, DesugarCollections.unmodifiableSet(AbstractC5099.m10031((Set) obj)));
        } else if (!(obj instanceof byte[])) {
            linkedHashMap.put(c3896, obj);
        } else {
            byte[] bArr = (byte[]) obj;
            linkedHashMap.put(c3896, Arrays.copyOf(bArr, bArr.length));
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8079() {
        if (this.f15162.f9171.get()) {
            throw new IllegalStateException("Do mutate preferences once returned to DataStore.");
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Map m8080() {
        C0913 c0913;
        Set<Map.Entry> entrySet = this.f15163.entrySet();
        int m10040 = AbstractC5103.m10040(AbstractC5114.m10060(entrySet, 10));
        if (m10040 < 16) {
            m10040 = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(m10040);
        for (Map.Entry entry : entrySet) {
            Object value = entry.getValue();
            if (value instanceof byte[]) {
                byte[] bArr = (byte[]) value;
                c0913 = new C0913(entry.getKey(), Arrays.copyOf(bArr, bArr.length));
            } else {
                c0913 = new C0913(entry.getKey(), entry.getValue());
            }
            linkedHashMap.put(c0913.f3836, c0913.f3837);
        }
        return DesugarCollections.unmodifiableMap(linkedHashMap);
    }
}
