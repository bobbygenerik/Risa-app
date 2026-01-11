package p361;

import java.io.IOException;
import java.util.ArrayDeque;
import java.util.TimeZone;
import okhttp3.internal.http2.StreamResetException;
import p165.C2600;
import p208.C2950;
import p394.AbstractC4712;

/* renamed from: ᵔᐧ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4373 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C4386 f16232;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2600 f16233;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C4378 f16234;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f16235;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public IOException f16236;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f16237;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C4378 f16238;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f16239;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C4384 f16240;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4390 f16241;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f16242;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public int f16243;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ArrayDeque f16244;

    public C4373(int i, C4390 c4390, boolean z, boolean z2, C2950 c2950) {
        this.f16242 = i;
        this.f16241 = c4390;
        this.f16233 = new C2600(i);
        this.f16237 = c4390.f16315.m8889();
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f16244 = arrayDeque;
        this.f16240 = new C4384(this, c4390.f16316.m8889(), z2);
        this.f16232 = new C4386(this, z);
        this.f16234 = new C4378(this);
        this.f16238 = new C4378(this);
        if (c2950 == null) {
            if (!m8849()) {
                throw new IllegalStateException("remotely-initiated streams should have headers");
            }
        } else {
            if (m8849()) {
                throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
            }
            arrayDeque.add(c2950);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x002a A[Catch: all -> 0x001f, TryCatch #0 {all -> 0x001f, blocks: (B:4:0x0003, B:6:0x0008, B:8:0x0010, B:11:0x0019, B:13:0x002a, B:14:0x002e, B:22:0x0021), top: B:3:0x0003 }] */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8844(p208.C2950 r3, boolean r4) {
        /*
            r2 = this;
            java.util.TimeZone r0 = p394.AbstractC4712.f17804
            monitor-enter(r2)
            boolean r0 = r2.f16239     // Catch: java.lang.Throwable -> L1f
            r1 = 1
            if (r0 == 0) goto L21
            java.lang.String r0 = ":status"
            java.lang.String r0 = r3.m6485(r0)     // Catch: java.lang.Throwable -> L1f
            if (r0 != 0) goto L21
            java.lang.String r0 = ":method"
            java.lang.String r0 = r3.m6485(r0)     // Catch: java.lang.Throwable -> L1f
            if (r0 == 0) goto L19
            goto L21
        L19:
            ᵔᐧ.ˏי r3 = r2.f16240     // Catch: java.lang.Throwable -> L1f
            r3.getClass()     // Catch: java.lang.Throwable -> L1f
            goto L28
        L1f:
            r3 = move-exception
            goto L40
        L21:
            r2.f16239 = r1     // Catch: java.lang.Throwable -> L1f
            java.util.ArrayDeque r0 = r2.f16244     // Catch: java.lang.Throwable -> L1f
            r0.add(r3)     // Catch: java.lang.Throwable -> L1f
        L28:
            if (r4 == 0) goto L2e
            ᵔᐧ.ˏי r3 = r2.f16240     // Catch: java.lang.Throwable -> L1f
            r3.f16286 = r1     // Catch: java.lang.Throwable -> L1f
        L2e:
            boolean r3 = r2.m8850()     // Catch: java.lang.Throwable -> L1f
            r2.notifyAll()     // Catch: java.lang.Throwable -> L1f
            monitor-exit(r2)
            if (r3 != 0) goto L3f
            ᵔᐧ.ᵔʾ r3 = r2.f16241
            int r4 = r2.f16242
            r3.m8887(r4)
        L3f:
            return
        L40:
            monitor-exit(r2)
            throw r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p361.C4373.m8844(ˎᵢ.ˉˆ, boolean):void");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8845(int i, IOException iOException) {
        if (m8847(i, iOException)) {
            this.f16241.f16322.m8873(this.f16242, i);
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m8846(int i) {
        synchronized (this) {
            if (m8853() == 0) {
                this.f16243 = i;
                notifyAll();
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m8847(int i, IOException iOException) {
        TimeZone timeZone = AbstractC4712.f17804;
        synchronized (this) {
            if (m8853() != 0) {
                return false;
            }
            this.f16243 = i;
            this.f16236 = iOException;
            notifyAll();
            if (this.f16240.f16286) {
                if (this.f16232.f16291) {
                    return false;
                }
            }
            this.f16241.m8887(this.f16242);
            return true;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m8848(int i) {
        if (m8847(i, null)) {
            this.f16241.m8885(this.f16242, i);
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean m8849() {
        boolean z = (this.f16242 & 1) == 1;
        this.f16241.getClass();
        return true == z;
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final boolean m8850() {
        synchronized (this) {
            try {
                if (m8853() != 0) {
                    return false;
                }
                C4384 c4384 = this.f16240;
                if (!c4384.f16286) {
                    if (c4384.f16287) {
                    }
                    return true;
                }
                C4386 c4386 = this.f16232;
                if (c4386.f16291 || c4386.f16290) {
                    if (this.f16239) {
                        return false;
                    }
                }
                return true;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m8851() {
        C4386 c4386 = this.f16232;
        if (c4386.f16290) {
            throw new IOException("stream closed");
        }
        if (c4386.f16291) {
            throw new IOException("stream finished");
        }
        if (m8853() != 0) {
            IOException iOException = this.f16236;
            if (iOException == null) {
                throw new StreamResetException(m8853());
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8852() {
        boolean z;
        boolean m8850;
        TimeZone timeZone = AbstractC4712.f17804;
        synchronized (this) {
            try {
                C4384 c4384 = this.f16240;
                if (!c4384.f16286 && c4384.f16287) {
                    C4386 c4386 = this.f16232;
                    if (!c4386.f16291) {
                        if (c4386.f16290) {
                        }
                    }
                    z = true;
                    m8850 = m8850();
                }
                z = false;
                m8850 = m8850();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (z) {
            m8845(9, null);
        } else {
            if (m8850) {
                return;
            }
            this.f16241.m8887(this.f16242);
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int m8853() {
        int i;
        synchronized (this) {
            i = this.f16243;
        }
        return i;
    }
}
