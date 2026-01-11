package p052;

import java.util.AbstractSet;
import java.util.Iterator;

/* renamed from: ʽᴵ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1406 extends AbstractSet {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f5508;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C1418 f5509;

    public /* synthetic */ C1406(C1418 c1418, int i) {
        this.f5508 = i;
        this.f5509 = c1418;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final void clear() {
        switch (this.f5508) {
            case 0:
                this.f5509.clear();
                return;
            default:
                this.f5509.clear();
                return;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0037 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean contains(java.lang.Object r5) {
        /*
            r4 = this;
            int r0 = r4.f5508
            switch(r0) {
                case 0: goto Lc;
                default: goto L5;
            }
        L5:
            ʽᴵ.ـˆ r0 = r4.f5509
            boolean r5 = r0.containsKey(r5)
            return r5
        Lc:
            boolean r0 = r5 instanceof java.util.Map.Entry
            r1 = 0
            if (r0 == 0) goto L38
            ʽᴵ.ـˆ r0 = r4.f5509
            java.util.Map$Entry r5 = (java.util.Map.Entry) r5
            java.lang.Object r2 = r5.getKey()
            r3 = 0
            if (r2 == 0) goto L21
            ʽᴵ.ʻٴ r0 = r0.m4172(r2, r1)     // Catch: java.lang.ClassCastException -> L21
            goto L22
        L21:
            r0 = r3
        L22:
            if (r0 == 0) goto L35
            java.lang.Object r2 = r0.f5483
            java.lang.Object r5 = r5.getValue()
            if (r2 == r5) goto L34
            if (r2 == 0) goto L35
            boolean r5 = r2.equals(r5)
            if (r5 == 0) goto L35
        L34:
            r3 = r0
        L35:
            if (r3 == 0) goto L38
            r1 = 1
        L38:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p052.C1406.contains(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
    public final Iterator iterator() {
        switch (this.f5508) {
            case 0:
                return new C1415(this.f5509, 0);
            default:
                return new C1415(this.f5509, 1);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:32:? A[RETURN, SYNTHETIC] */
    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean remove(java.lang.Object r6) {
        /*
            r5 = this;
            int r0 = r5.f5508
            switch(r0) {
                case 0: goto L19;
                default: goto L5;
            }
        L5:
            r0 = 0
            ʽᴵ.ـˆ r1 = r5.f5509
            r2 = 0
            if (r6 == 0) goto Lf
            ʽᴵ.ʻٴ r2 = r1.m4172(r6, r0)     // Catch: java.lang.ClassCastException -> Lf
        Lf:
            r6 = 1
            if (r2 == 0) goto L15
            r1.m4168(r2, r6)
        L15:
            if (r2 == 0) goto L18
            r0 = r6
        L18:
            return r0
        L19:
            boolean r0 = r6 instanceof java.util.Map.Entry
            r1 = 0
            if (r0 != 0) goto L1f
            goto L4a
        L1f:
            java.util.Map$Entry r6 = (java.util.Map.Entry) r6
            java.lang.Object r0 = r6.getKey()
            ʽᴵ.ـˆ r2 = r5.f5509
            r3 = 0
            if (r0 == 0) goto L2f
            ʽᴵ.ʻٴ r0 = r2.m4172(r0, r1)     // Catch: java.lang.ClassCastException -> L2f
            goto L30
        L2f:
            r0 = r3
        L30:
            if (r0 == 0) goto L43
            java.lang.Object r4 = r0.f5483
            java.lang.Object r6 = r6.getValue()
            if (r4 == r6) goto L42
            if (r4 == 0) goto L43
            boolean r6 = r4.equals(r6)
            if (r6 == 0) goto L43
        L42:
            r3 = r0
        L43:
            if (r3 != 0) goto L46
            goto L4a
        L46:
            r1 = 1
            r2.m4168(r3, r1)
        L4a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p052.C1406.remove(java.lang.Object):boolean");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        switch (this.f5508) {
            case 0:
                return this.f5509.f5553;
            default:
                return this.f5509.f5553;
        }
    }
}
