package p248;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
import p208.C2940;
import p394.AbstractC4712;

/* renamed from: יʾ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3293 extends AbstractC3298 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f12676;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C3296 f12677;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public long f12678;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3293(C3296 c3296, C2940 c2940) {
        super(c3296, c2940);
        this.f12677 = c3296;
        this.f12678 = -1L;
        this.f12676 = true;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        boolean z;
        if (this.f12694) {
            return;
        }
        if (this.f12676) {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            try {
                z = AbstractC4712.m9447(this, 100);
            } catch (IOException unused) {
                z = false;
            }
            if (!z) {
                this.f12677.f12688.mo4053();
                m7108(C3296.f12684);
            }
        }
        this.f12694 = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0065, code lost:
    
        if (r11.f12676 == false) goto L30;
     */
    @Override // p248.AbstractC3298, p164.InterfaceC2588
    /* renamed from: ٴﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo5763(p164.C2599 r12, long r13) {
        /*
            r11 = this;
            יʾ.ᵎﹶ r0 = r11.f12677
            ˊᐧ.ᵔᵢ r1 = r0.f12685
            r2 = 0
            int r4 = (r13 > r2 ? 1 : (r13 == r2 ? 0 : -1))
            if (r4 < 0) goto Lbc
            boolean r4 = r11.f12694
            if (r4 != 0) goto Lb4
            boolean r4 = r11.f12676
            r5 = -1
            if (r4 != 0) goto L15
            goto L67
        L15:
            long r7 = r11.f12678
            int r4 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r4 == 0) goto L1f
            int r4 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r4 != 0) goto L68
        L1f:
            java.lang.String r4 = "expected chunk size and optional extensions but was \""
            int r7 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r7 == 0) goto L28
            r1.mo5803()
        L28:
            long r7 = r1.mo5810()     // Catch: java.lang.NumberFormatException -> L50
            r11.f12678 = r7     // Catch: java.lang.NumberFormatException -> L50
            java.lang.String r1 = r1.mo5803()     // Catch: java.lang.NumberFormatException -> L50
            java.lang.CharSequence r1 = p435.AbstractC5143.m10114(r1)     // Catch: java.lang.NumberFormatException -> L50
            java.lang.String r1 = r1.toString()     // Catch: java.lang.NumberFormatException -> L50
            long r7 = r11.f12678     // Catch: java.lang.NumberFormatException -> L50
            int r7 = (r7 > r2 ? 1 : (r7 == r2 ? 0 : -1))
            if (r7 < 0) goto L8e
            int r7 = r1.length()     // Catch: java.lang.NumberFormatException -> L50
            r8 = 0
            if (r7 <= 0) goto L52
            java.lang.String r7 = ";"
            boolean r7 = p435.AbstractC5152.m10150(r1, r7, r8)     // Catch: java.lang.NumberFormatException -> L50
            if (r7 == 0) goto L8e
            goto L52
        L50:
            r12 = move-exception
            goto Laa
        L52:
            long r9 = r11.f12678
            int r1 = (r9 > r2 ? 1 : (r9 == r2 ? 0 : -1))
            if (r1 != 0) goto L63
            r11.f12676 = r8
            ʿʽ.ʽ r1 = r0.f12690
            ˎᵢ.ˉˆ r1 = r1.m4596()
            r11.m7108(r1)
        L63:
            boolean r1 = r11.f12676
            if (r1 != 0) goto L68
        L67:
            return r5
        L68:
            long r1 = r11.f12678
            long r13 = java.lang.Math.min(r13, r1)
            long r12 = super.mo5763(r12, r13)
            int r14 = (r12 > r5 ? 1 : (r12 == r5 ? 0 : -1))
            if (r14 == 0) goto L7c
            long r0 = r11.f12678
            long r0 = r0 - r12
            r11.f12678 = r0
            return r12
        L7c:
            ʽי.ˈ r12 = r0.f12688
            r12.mo4053()
            java.net.ProtocolException r12 = new java.net.ProtocolException
            java.lang.String r13 = "unexpected end of stream"
            r12.<init>(r13)
            ˎᵢ.ˉˆ r13 = p248.C3296.f12684
            r11.m7108(r13)
            throw r12
        L8e:
            java.net.ProtocolException r12 = new java.net.ProtocolException     // Catch: java.lang.NumberFormatException -> L50
            java.lang.StringBuilder r13 = new java.lang.StringBuilder     // Catch: java.lang.NumberFormatException -> L50
            r13.<init>(r4)     // Catch: java.lang.NumberFormatException -> L50
            long r2 = r11.f12678     // Catch: java.lang.NumberFormatException -> L50
            r13.append(r2)     // Catch: java.lang.NumberFormatException -> L50
            r13.append(r1)     // Catch: java.lang.NumberFormatException -> L50
            r14 = 34
            r13.append(r14)     // Catch: java.lang.NumberFormatException -> L50
            java.lang.String r13 = r13.toString()     // Catch: java.lang.NumberFormatException -> L50
            r12.<init>(r13)     // Catch: java.lang.NumberFormatException -> L50
            throw r12     // Catch: java.lang.NumberFormatException -> L50
        Laa:
            java.net.ProtocolException r13 = new java.net.ProtocolException
            java.lang.String r12 = r12.getMessage()
            r13.<init>(r12)
            throw r13
        Lb4:
            java.lang.IllegalStateException r12 = new java.lang.IllegalStateException
            java.lang.String r13 = "closed"
            r12.<init>(r13)
            throw r12
        Lbc:
            java.lang.String r12 = "byteCount < 0: "
            java.lang.String r12 = p307.AbstractC3740.m7926(r12, r13)
            java.lang.IllegalArgumentException r13 = new java.lang.IllegalArgumentException
            java.lang.String r12 = r12.toString()
            r13.<init>(r12)
            throw r13
        */
        throw new UnsupportedOperationException("Method not decompiled: p248.C3293.mo5763(ˊᐧ.ﾞᴵ, long):long");
    }
}
