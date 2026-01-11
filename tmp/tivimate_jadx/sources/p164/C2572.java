package p164;

import java.util.zip.Inflater;

/* renamed from: ˊᐧ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2572 implements InterfaceC2588 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f9769;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C2586 f9770;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f9771;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Inflater f9772;

    public C2572(C2586 c2586, Inflater inflater) {
        this.f9770 = c2586;
        this.f9772 = inflater;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f9771) {
            return;
        }
        this.f9772.end();
        this.f9771 = true;
        this.f9770.close();
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2580 mo5762() {
        return this.f9770.f9812.mo5762();
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x007e A[SYNTHETIC] */
    @Override // p164.InterfaceC2588
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo5763(p164.C2599 r11, long r12) {
        /*
            r10 = this;
        L0:
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 < 0) goto Lad
            boolean r3 = r10.f9771
            if (r3 != 0) goto La5
            ˊᐧ.ـˆ r3 = r10.f9770
            java.util.zip.Inflater r4 = r10.f9772
            if (r2 != 0) goto L12
        L10:
            r8 = r0
            goto L7a
        L12:
            r2 = 1
            ˊᐧ.ʾᵎ r2 = r11.m5823(r2)     // Catch: java.util.zip.DataFormatException -> L68
            int r5 = r2.f9778     // Catch: java.util.zip.DataFormatException -> L68
            int r5 = 8192 - r5
            long r5 = (long) r5     // Catch: java.util.zip.DataFormatException -> L68
            long r5 = java.lang.Math.min(r12, r5)     // Catch: java.util.zip.DataFormatException -> L68
            int r5 = (int) r5     // Catch: java.util.zip.DataFormatException -> L68
            boolean r6 = r4.needsInput()     // Catch: java.util.zip.DataFormatException -> L68
            if (r6 != 0) goto L28
            goto L3f
        L28:
            boolean r6 = r3.mo5805()     // Catch: java.util.zip.DataFormatException -> L68
            if (r6 == 0) goto L2f
            goto L3f
        L2f:
            ˊᐧ.ﾞᴵ r6 = r3.f9813     // Catch: java.util.zip.DataFormatException -> L68
            ˊᐧ.ʾᵎ r6 = r6.f9834     // Catch: java.util.zip.DataFormatException -> L68
            int r7 = r6.f9778     // Catch: java.util.zip.DataFormatException -> L68
            int r8 = r6.f9782     // Catch: java.util.zip.DataFormatException -> L68
            int r7 = r7 - r8
            r10.f9769 = r7     // Catch: java.util.zip.DataFormatException -> L68
            byte[] r6 = r6.f9783     // Catch: java.util.zip.DataFormatException -> L68
            r4.setInput(r6, r8, r7)     // Catch: java.util.zip.DataFormatException -> L68
        L3f:
            byte[] r6 = r2.f9783     // Catch: java.util.zip.DataFormatException -> L68
            int r7 = r2.f9778     // Catch: java.util.zip.DataFormatException -> L68
            int r5 = r4.inflate(r6, r7, r5)     // Catch: java.util.zip.DataFormatException -> L68
            int r6 = r10.f9769     // Catch: java.util.zip.DataFormatException -> L68
            if (r6 != 0) goto L4c
            goto L5a
        L4c:
            int r7 = r4.getRemaining()     // Catch: java.util.zip.DataFormatException -> L68
            int r6 = r6 - r7
            int r7 = r10.f9769     // Catch: java.util.zip.DataFormatException -> L68
            int r7 = r7 - r6
            r10.f9769 = r7     // Catch: java.util.zip.DataFormatException -> L68
            long r6 = (long) r6     // Catch: java.util.zip.DataFormatException -> L68
            r3.skip(r6)     // Catch: java.util.zip.DataFormatException -> L68
        L5a:
            if (r5 <= 0) goto L6a
            int r6 = r2.f9778     // Catch: java.util.zip.DataFormatException -> L68
            int r6 = r6 + r5
            r2.f9778 = r6     // Catch: java.util.zip.DataFormatException -> L68
            long r6 = r11.f9835     // Catch: java.util.zip.DataFormatException -> L68
            long r8 = (long) r5     // Catch: java.util.zip.DataFormatException -> L68
            long r6 = r6 + r8
            r11.f9835 = r6     // Catch: java.util.zip.DataFormatException -> L68
            goto L7a
        L68:
            r11 = move-exception
            goto L9f
        L6a:
            int r5 = r2.f9782     // Catch: java.util.zip.DataFormatException -> L68
            int r6 = r2.f9778     // Catch: java.util.zip.DataFormatException -> L68
            if (r5 != r6) goto L10
            ˊᐧ.ʾᵎ r5 = r2.m5776()     // Catch: java.util.zip.DataFormatException -> L68
            r11.f9834 = r5     // Catch: java.util.zip.DataFormatException -> L68
            p164.AbstractC2570.m5744(r2)     // Catch: java.util.zip.DataFormatException -> L68
            goto L10
        L7a:
            int r0 = (r8 > r0 ? 1 : (r8 == r0 ? 0 : -1))
            if (r0 <= 0) goto L7f
            return r8
        L7f:
            boolean r0 = r4.finished()
            if (r0 != 0) goto L9c
            boolean r0 = r4.needsDictionary()
            if (r0 == 0) goto L8c
            goto L9c
        L8c:
            boolean r0 = r3.mo5805()
            if (r0 != 0) goto L94
            goto L0
        L94:
            java.io.EOFException r11 = new java.io.EOFException
            java.lang.String r12 = "source exhausted prematurely"
            r11.<init>(r12)
            throw r11
        L9c:
            r11 = -1
            return r11
        L9f:
            java.io.IOException r12 = new java.io.IOException
            r12.<init>(r11)
            throw r12
        La5:
            java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
            java.lang.String r12 = "closed"
            r11.<init>(r12)
            throw r11
        Lad:
            java.lang.String r11 = "byteCount < 0: "
            java.lang.String r11 = p307.AbstractC3740.m7926(r11, r12)
            java.lang.IllegalArgumentException r12 = new java.lang.IllegalArgumentException
            java.lang.String r11 = r11.toString()
            r12.<init>(r11)
            throw r12
        */
        throw new UnsupportedOperationException("Method not decompiled: p164.C2572.mo5763(ˊᐧ.ﾞᴵ, long):long");
    }
}
