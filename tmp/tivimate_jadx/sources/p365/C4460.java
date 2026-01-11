package p365;

import java.util.Iterator;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: ᵔﹳ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4460 implements Iterable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C4455 f16686;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C4455 f16688;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final WeakHashMap f16685 = new WeakHashMap();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f16687 = 0;

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0048, code lost:
    
        if (r3.hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0050, code lost:
    
        if (((p365.C4458) r7).hasNext() != false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0052, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0053, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(java.lang.Object r7) {
        /*
            r6 = this;
            r0 = 1
            if (r7 != r6) goto L4
            return r0
        L4:
            boolean r1 = r7 instanceof p365.C4460
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            ᵔﹳ.ﾞᴵ r7 = (p365.C4460) r7
            int r1 = r6.f16687
            int r3 = r7.f16687
            if (r1 == r3) goto L13
            return r2
        L13:
            java.util.Iterator r1 = r6.iterator()
            java.util.Iterator r7 = r7.iterator()
        L1b:
            r3 = r1
            ᵔﹳ.ⁱˊ r3 = (p365.C4458) r3
            boolean r4 = r3.hasNext()
            if (r4 == 0) goto L44
            r4 = r7
            ᵔﹳ.ⁱˊ r4 = (p365.C4458) r4
            boolean r5 = r4.hasNext()
            if (r5 == 0) goto L44
            java.lang.Object r3 = r3.next()
            java.util.Map$Entry r3 = (java.util.Map.Entry) r3
            java.lang.Object r4 = r4.next()
            if (r3 != 0) goto L3b
            if (r4 != 0) goto L43
        L3b:
            if (r3 == 0) goto L1b
            boolean r3 = r3.equals(r4)
            if (r3 != 0) goto L1b
        L43:
            return r2
        L44:
            boolean r1 = r3.hasNext()
            if (r1 != 0) goto L53
            ᵔﹳ.ⁱˊ r7 = (p365.C4458) r7
            boolean r7 = r7.hasNext()
            if (r7 != 0) goto L53
            return r0
        L53:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p365.C4460.equals(java.lang.Object):boolean");
    }

    public final int hashCode() {
        Iterator it = iterator();
        int i = 0;
        while (true) {
            C4458 c4458 = (C4458) it;
            if (!c4458.hasNext()) {
                return i;
            }
            i += ((Map.Entry) c4458.next()).hashCode();
        }
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        C4458 c4458 = new C4458(this.f16686, this.f16688, 0);
        this.f16685.put(c4458, Boolean.FALSE);
        return c4458;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("[");
        Iterator it = iterator();
        while (true) {
            C4458 c4458 = (C4458) it;
            if (!c4458.hasNext()) {
                sb.append("]");
                return sb.toString();
            }
            sb.append(((Map.Entry) c4458.next()).toString());
            if (c4458.hasNext()) {
                sb.append(", ");
            }
        }
    }

    /* renamed from: ⁱˊ */
    public Object mo9007(Object obj) {
        C4455 mo9008 = mo9008(obj);
        if (mo9008 == null) {
            return null;
        }
        this.f16687--;
        WeakHashMap weakHashMap = this.f16685;
        if (!weakHashMap.isEmpty()) {
            Iterator it = weakHashMap.keySet().iterator();
            while (it.hasNext()) {
                ((AbstractC4457) it.next()).mo9005(mo9008);
            }
        }
        C4455 c4455 = mo9008.f16676;
        if (c4455 != null) {
            c4455.f16674 = mo9008.f16674;
        } else {
            this.f16686 = mo9008.f16674;
        }
        C4455 c44552 = mo9008.f16674;
        if (c44552 != null) {
            c44552.f16676 = c4455;
        } else {
            this.f16688 = c4455;
        }
        mo9008.f16674 = null;
        mo9008.f16676 = null;
        return mo9008.f16677;
    }

    /* renamed from: ﹳٴ */
    public C4455 mo9008(Object obj) {
        C4455 c4455 = this.f16686;
        while (c4455 != null && !c4455.f16675.equals(obj)) {
            c4455 = c4455.f16674;
        }
        return c4455;
    }
}
