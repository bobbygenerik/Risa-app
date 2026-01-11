package p164;

import java.io.IOException;
import java.io.InputStream;
import p393.C4709;

/* renamed from: ˊᐧ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2573 implements InterfaceC2588 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f9773;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f9774;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f9775;

    public /* synthetic */ C2573(Object obj, int i, Object obj2) {
        this.f9774 = i;
        this.f9775 = obj;
        this.f9773 = obj2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        switch (this.f9774) {
            case 0:
                C4709 c4709 = (C4709) this.f9775;
                C2573 c2573 = (C2573) this.f9773;
                c4709.m5779();
                try {
                    c2573.close();
                    if (c4709.m5777()) {
                        throw c4709.m9426(null);
                    }
                    return;
                } catch (IOException e) {
                    if (!c4709.m5777()) {
                        throw e;
                    }
                    throw c4709.m9426(e);
                } finally {
                    c4709.m5777();
                }
            default:
                ((InputStream) this.f9775).close();
                return;
        }
    }

    public final String toString() {
        switch (this.f9774) {
            case 0:
                return "AsyncTimeout.source(" + ((C2573) this.f9773) + ')';
            default:
                return "source(" + ((InputStream) this.f9775) + ')';
        }
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ˑﹳ */
    public final C2580 mo5762() {
        switch (this.f9774) {
            case 0:
                return (C4709) this.f9775;
            default:
                return (C2580) this.f9773;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x006b, code lost:
    
        if (r7 != false) goto L28;
     */
    @Override // p164.InterfaceC2588
    /* renamed from: ٴﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo5763(p164.C2599 r6, long r7) {
        /*
            r5 = this;
            int r0 = r5.f9774
            java.lang.Object r1 = r5.f9775
            java.lang.Object r2 = r5.f9773
            switch(r0) {
                case 0: goto L88;
                default: goto L9;
            }
        L9:
            r3 = 0
            int r0 = (r7 > r3 ? 1 : (r7 == r3 ? 0 : -1))
            if (r0 != 0) goto L10
            goto L53
        L10:
            if (r0 < 0) goto L78
            r0 = 1
            ˊᐧ.ˈٴ r2 = (p164.C2580) r2     // Catch: java.lang.AssertionError -> L43
            r2.mo5766()     // Catch: java.lang.AssertionError -> L43
            ˊᐧ.ʾᵎ r2 = r6.m5823(r0)     // Catch: java.lang.AssertionError -> L43
            int r3 = r2.f9778     // Catch: java.lang.AssertionError -> L43
            int r3 = 8192 - r3
            long r3 = (long) r3     // Catch: java.lang.AssertionError -> L43
            long r7 = java.lang.Math.min(r7, r3)     // Catch: java.lang.AssertionError -> L43
            int r7 = (int) r7     // Catch: java.lang.AssertionError -> L43
            java.io.InputStream r1 = (java.io.InputStream) r1     // Catch: java.lang.AssertionError -> L43
            byte[] r8 = r2.f9783     // Catch: java.lang.AssertionError -> L43
            int r3 = r2.f9778     // Catch: java.lang.AssertionError -> L43
            int r7 = r1.read(r8, r3, r7)     // Catch: java.lang.AssertionError -> L43
            r8 = -1
            if (r7 != r8) goto L48
            int r7 = r2.f9782     // Catch: java.lang.AssertionError -> L43
            int r8 = r2.f9778     // Catch: java.lang.AssertionError -> L43
            if (r7 != r8) goto L45
            ˊᐧ.ʾᵎ r7 = r2.m5776()     // Catch: java.lang.AssertionError -> L43
            r6.f9834 = r7     // Catch: java.lang.AssertionError -> L43
            p164.AbstractC2570.m5744(r2)     // Catch: java.lang.AssertionError -> L43
            goto L45
        L43:
            r6 = move-exception
            goto L54
        L45:
            r3 = -1
            goto L53
        L48:
            int r8 = r2.f9778     // Catch: java.lang.AssertionError -> L43
            int r8 = r8 + r7
            r2.f9778 = r8     // Catch: java.lang.AssertionError -> L43
            long r1 = r6.f9835     // Catch: java.lang.AssertionError -> L43
            long r3 = (long) r7     // Catch: java.lang.AssertionError -> L43
            long r1 = r1 + r3
            r6.f9835 = r1     // Catch: java.lang.AssertionError -> L43
        L53:
            return r3
        L54:
            java.util.logging.Logger r7 = p393.AbstractC4702.f17765
            java.lang.Throwable r7 = r6.getCause()
            r8 = 0
            if (r7 == 0) goto L6e
            java.lang.String r7 = r6.getMessage()
            if (r7 == 0) goto L6a
            java.lang.String r1 = "getsockname failed"
            boolean r7 = p435.AbstractC5143.m10116(r7, r1, r8)
            goto L6b
        L6a:
            r7 = r8
        L6b:
            if (r7 == 0) goto L6e
            goto L6f
        L6e:
            r0 = r8
        L6f:
            if (r0 == 0) goto L77
            java.io.IOException r7 = new java.io.IOException
            r7.<init>(r6)
            throw r7
        L77:
            throw r6
        L78:
            java.lang.String r6 = "byteCount < 0: "
            java.lang.String r6 = p307.AbstractC3740.m7926(r6, r7)
            java.lang.IllegalArgumentException r7 = new java.lang.IllegalArgumentException
            java.lang.String r6 = r6.toString()
            r7.<init>(r6)
            throw r7
        L88:
            ⁱٴ.ﾞᴵ r1 = (p393.C4709) r1
            ˊᐧ.ʽ r2 = (p164.C2573) r2
            r1.m5779()
            long r6 = r2.mo5763(r6, r7)     // Catch: java.lang.Throwable -> La0 java.io.IOException -> La2
            boolean r8 = r1.m5777()
            if (r8 != 0) goto L9a
            return r6
        L9a:
            r6 = 0
            java.io.IOException r6 = r1.m9426(r6)
            throw r6
        La0:
            r6 = move-exception
            goto Laf
        La2:
            r6 = move-exception
            boolean r7 = r1.m5777()     // Catch: java.lang.Throwable -> La0
            if (r7 != 0) goto Laa
            goto Lae
        Laa:
            java.io.IOException r6 = r1.m9426(r6)     // Catch: java.lang.Throwable -> La0
        Lae:
            throw r6     // Catch: java.lang.Throwable -> La0
        Laf:
            r1.m5777()
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: p164.C2573.mo5763(ˊᐧ.ﾞᴵ, long):long");
    }
}
