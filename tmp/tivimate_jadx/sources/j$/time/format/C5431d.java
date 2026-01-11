package j$.time.format;

import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: j$.time.format.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C5431d implements InterfaceC5432e {
    public final InterfaceC5432e[] a;
    public final boolean b;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C5431d(java.util.List r2, boolean r3) {
        /*
            r1 = this;
            java.util.ArrayList r2 = (java.util.ArrayList) r2
            int r0 = r2.size()
            j$.time.format.e[] r0 = new j$.time.format.InterfaceC5432e[r0]
            java.lang.Object[] r2 = r2.toArray(r0)
            j$.time.format.e[] r2 = (j$.time.format.InterfaceC5432e[]) r2
            r1.<init>(r2, r3)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.C5431d.<init>(java.util.List, boolean):void");
    }

    public C5431d(InterfaceC5432e[] interfaceC5432eArr, boolean z) {
        this.a = interfaceC5432eArr;
        this.b = z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0026, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x002f, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002c, code lost:
    
        if (r2 != false) goto L11;
     */
    @Override // j$.time.format.InterfaceC5432e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean k(j$.time.format.y r8, java.lang.StringBuilder r9) {
        /*
            r7 = this;
            int r0 = r9.length()
            r1 = 1
            boolean r2 = r7.b
            if (r2 == 0) goto Le
            int r3 = r8.c
            int r3 = r3 + r1
            r8.c = r3
        Le:
            j$.time.format.e[] r3 = r7.a     // Catch: java.lang.Throwable -> L27
            int r4 = r3.length     // Catch: java.lang.Throwable -> L27
            r5 = 0
        L12:
            if (r5 >= r4) goto L2c
            r6 = r3[r5]     // Catch: java.lang.Throwable -> L27
            boolean r6 = r6.k(r8, r9)     // Catch: java.lang.Throwable -> L27
            if (r6 != 0) goto L29
            r9.setLength(r0)     // Catch: java.lang.Throwable -> L27
            if (r2 == 0) goto L2f
        L21:
            int r9 = r8.c
            int r9 = r9 - r1
            r8.c = r9
            return r1
        L27:
            r9 = move-exception
            goto L30
        L29:
            int r5 = r5 + 1
            goto L12
        L2c:
            if (r2 == 0) goto L2f
            goto L21
        L2f:
            return r1
        L30:
            if (r2 == 0) goto L37
            int r0 = r8.c
            int r0 = r0 - r1
            r8.c = r0
        L37:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: j$.time.format.C5431d.k(j$.time.format.y, java.lang.StringBuilder):boolean");
    }

    @Override // j$.time.format.InterfaceC5432e
    public final int l(v vVar, CharSequence charSequence, int i) {
        boolean z = this.b;
        InterfaceC5432e[] interfaceC5432eArr = this.a;
        int i2 = 0;
        if (!z) {
            int length = interfaceC5432eArr.length;
            while (i2 < length) {
                i = interfaceC5432eArr[i2].l(vVar, charSequence, i);
                if (i < 0) {
                    return i;
                }
                i2++;
            }
            return i;
        }
        ArrayList arrayList = vVar.d;
        D c = vVar.c();
        c.getClass();
        D d = new D();
        ((HashMap) d.a).putAll(c.a);
        d.b = c.b;
        d.c = c.c;
        d.d = c.d;
        arrayList.add(d);
        int length2 = interfaceC5432eArr.length;
        int i3 = i;
        while (i2 < length2) {
            i3 = interfaceC5432eArr[i2].l(vVar, charSequence, i3);
            if (i3 < 0) {
                vVar.d.remove(r8.size() - 1);
                return i;
            }
            i2++;
        }
        vVar.d.remove(r8.size() - 2);
        return i3;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        InterfaceC5432e[] interfaceC5432eArr = this.a;
        if (interfaceC5432eArr != null) {
            boolean z = this.b;
            sb.append(z ? "[" : "(");
            for (InterfaceC5432e interfaceC5432e : interfaceC5432eArr) {
                sb.append(interfaceC5432e);
            }
            sb.append(z ? "]" : ")");
        }
        return sb.toString();
    }
}
