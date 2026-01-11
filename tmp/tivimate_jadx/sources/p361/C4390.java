package p361;

import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.TimeZone;
import p013.C0907;
import p137.C2282;
import p164.InterfaceC2590;
import p164.InterfaceC2592;
import p165.C2600;
import p329.InterfaceC4104;
import p394.AbstractC4710;
import p394.AbstractC4712;
import p452.C5365;
import p452.C5366;

/* renamed from: ᵔᐧ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4390 implements Closeable {

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public static final C4393 f16303;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final C2600 f16304;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final String f16305;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC4397 f16306;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final LinkedHashSet f16307;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public long f16308;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public long f16309;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f16310;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final Socket f16311;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final C4382 f16312;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C5366 f16313;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f16314;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public C4393 f16315;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final C4393 f16316;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final C4395 f16317;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public long f16318;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C5366 f16319;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C5365 f16320;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final LinkedHashMap f16321 = new LinkedHashMap();

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final C4387 f16322;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f16323;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C4374 f16324;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C5366 f16325;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public long f16326;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public long f16327;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public long f16328;

    static {
        C4393 c4393 = new C4393();
        c4393.m8888(4, 65535);
        c4393.m8888(5, 16384);
        f16303 = c4393;
    }

    public C4390(C2282 c2282) {
        this.f16306 = (AbstractC4397) c2282.f8930;
        String str = (String) c2282.f8924;
        this.f16305 = str == null ? null : str;
        this.f16323 = 3;
        C5365 c5365 = (C5365) c2282.f8929;
        this.f16320 = c5365;
        this.f16313 = c5365.m10761();
        this.f16325 = c5365.m10761();
        this.f16319 = c5365.m10761();
        this.f16324 = C4374.f16245;
        this.f16317 = (C4395) c2282.f8927;
        C4393 c4393 = new C4393();
        c4393.m8888(4, 16777216);
        this.f16316 = c4393;
        this.f16315 = f16303;
        this.f16304 = new C2600(0);
        this.f16328 = r0.m8889();
        Socket socket = (Socket) c2282.f8928;
        this.f16311 = socket == null ? null : socket;
        InterfaceC2590 interfaceC2590 = (InterfaceC2590) c2282.f8926;
        this.f16322 = new C4387(interfaceC2590 == null ? null : interfaceC2590);
        InterfaceC2592 interfaceC2592 = (InterfaceC2592) c2282.f8925;
        this.f16312 = new C4382(this, new C4396(interfaceC2592 != null ? interfaceC2592 : null));
        this.f16307 = new LinkedHashSet();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        m8879(1, 9, null);
    }

    public final void flush() {
        this.f16322.flush();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8879(int i, int i2, IOException iOException) {
        int i3;
        Object[] objArr;
        TimeZone timeZone = AbstractC4712.f17804;
        try {
            m8884(i);
        } catch (IOException unused) {
        }
        synchronized (this) {
            if (this.f16321.isEmpty()) {
                objArr = null;
            } else {
                objArr = this.f16321.values().toArray(new C4373[0]);
                this.f16321.clear();
            }
        }
        C4373[] c4373Arr = (C4373[]) objArr;
        if (c4373Arr != null) {
            for (C4373 c4373 : c4373Arr) {
                try {
                    c4373.m8845(i2, iOException);
                } catch (IOException unused2) {
                }
            }
        }
        try {
            this.f16322.close();
        } catch (IOException unused3) {
        }
        try {
            this.f16311.close();
        } catch (IOException unused4) {
        }
        this.f16313.m10769();
        this.f16325.m10769();
        this.f16319.m10769();
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void m8880(long j) {
        synchronized (this) {
            try {
                C2600.m5844(this.f16304, j, 0L, 2);
                long m5845 = this.f16304.m5845();
                if (m5845 >= this.f16316.m8889() / 2) {
                    m8881(0, m5845);
                    C2600.m5844(this.f16304, 0L, m5845, 1);
                }
                this.f16317.getClass();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final void m8881(final int i, final long j) {
        C5366.m10764(this.f16313, this.f16305 + '[' + i + "] windowUpdate", new InterfaceC4104() { // from class: ᵔᐧ.ᵎﹶ
            @Override // p329.InterfaceC4104
            /* renamed from: ʽ */
            public final Object mo716() {
                C4390 c4390 = C4390.this;
                try {
                    c4390.f16322.m8872(i, j);
                } catch (IOException e) {
                    c4390.m8879(2, 2, e);
                }
                return C0907.f3832;
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0033, code lost:
    
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0035, code lost:
    
        r2 = java.lang.Math.min((int) java.lang.Math.min(r12, r6 - r4), r8.f16322.f16295);
        r6 = r2;
        r8.f16318 += r6;
     */
    /* renamed from: ˈٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m8882(int r9, boolean r10, p164.C2599 r11, long r12) {
        /*
            r8 = this;
            r0 = 0
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            r3 = 0
            if (r2 != 0) goto Ld
            ᵔᐧ.ـˆ r12 = r8.f16322
            r12.m8877(r10, r9, r11, r3)
            return
        Ld:
            int r2 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r2 <= 0) goto L68
            monitor-enter(r8)
        L12:
            long r4 = r8.f16318     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            long r6 = r8.f16328     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            int r2 = (r4 > r6 ? 1 : (r4 == r6 ? 0 : -1))
            if (r2 < 0) goto L34
            java.util.LinkedHashMap r2 = r8.f16321     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            boolean r2 = r2.containsKey(r4)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            if (r2 == 0) goto L2c
            r8.wait()     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            goto L12
        L2a:
            r9 = move-exception
            goto L66
        L2c:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
            throw r9     // Catch: java.lang.Throwable -> L2a java.lang.InterruptedException -> L59
        L34:
            long r6 = r6 - r4
            long r4 = java.lang.Math.min(r12, r6)     // Catch: java.lang.Throwable -> L2a
            int r2 = (int) r4     // Catch: java.lang.Throwable -> L2a
            ᵔᐧ.ـˆ r4 = r8.f16322     // Catch: java.lang.Throwable -> L2a
            int r4 = r4.f16295     // Catch: java.lang.Throwable -> L2a
            int r2 = java.lang.Math.min(r2, r4)     // Catch: java.lang.Throwable -> L2a
            long r4 = r8.f16318     // Catch: java.lang.Throwable -> L2a
            long r6 = (long) r2     // Catch: java.lang.Throwable -> L2a
            long r4 = r4 + r6
            r8.f16318 = r4     // Catch: java.lang.Throwable -> L2a
            monitor-exit(r8)
            long r12 = r12 - r6
            ᵔᐧ.ـˆ r4 = r8.f16322
            if (r10 == 0) goto L54
            int r5 = (r12 > r0 ? 1 : (r12 == r0 ? 0 : -1))
            if (r5 != 0) goto L54
            r5 = 1
            goto L55
        L54:
            r5 = r3
        L55:
            r4.m8877(r5, r9, r11, r2)
            goto Ld
        L59:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L2a
            r9.interrupt()     // Catch: java.lang.Throwable -> L2a
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L2a
            r9.<init>()     // Catch: java.lang.Throwable -> L2a
            throw r9     // Catch: java.lang.Throwable -> L2a
        L66:
            monitor-exit(r8)
            throw r9
        L68:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p361.C4390.m8882(int, boolean, ˊᐧ.ﾞᴵ, long):void");
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean m8883(long j) {
        synchronized (this) {
            if (this.f16314) {
                return false;
            }
            if (this.f16327 < this.f16308) {
                if (j >= this.f16309) {
                    return false;
                }
            }
            return true;
        }
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m8884(int i) {
        synchronized (this.f16322) {
            synchronized (this) {
                if (this.f16314) {
                    return;
                }
                this.f16314 = true;
                this.f16322.m8878(AbstractC4710.f17800, this.f16310, i);
            }
        }
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final void m8885(int i, int i2) {
        C5366.m10764(this.f16313, this.f16305 + '[' + i + "] writeSynReset", new C4391(this, i, i2, 0));
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C4373 m8886(int i) {
        C4373 c4373;
        synchronized (this) {
            c4373 = (C4373) this.f16321.get(Integer.valueOf(i));
        }
        return c4373;
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final C4373 m8887(int i) {
        C4373 c4373;
        synchronized (this) {
            c4373 = (C4373) this.f16321.remove(Integer.valueOf(i));
            notifyAll();
        }
        return c4373;
    }
}
