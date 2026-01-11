package p209;

import j$.util.concurrent.ConcurrentHashMap;
import java.io.Closeable;
import p289.C3602;
import p344.C4269;
import p449.AbstractC5359;
import p449.InterfaceC5360;
import ˉˆ.ʿ;

/* renamed from: ˎﹳ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2972 implements Closeable {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final InterfaceC5360 f11370 = AbstractC5359.m10750(C2972.class);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C4269 f11371;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public ConcurrentHashMap f11372;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public ʿ f11373;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C2971 f11374;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        InterfaceC5360 interfaceC5360 = f11370;
        interfaceC5360.mo4091();
        for (C3602 c3602 : this.f11372.values()) {
            try {
                c3602.close();
            } catch (Exception e) {
                interfaceC5360.mo4098(c3602.f14084, "Error closing connection to host {}");
                interfaceC5360.mo4092(e);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0030, code lost:
    
        if (r1.f14090.m5877() != false) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0034, code lost:
    
        return r1;
     */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p289.C3602 m6500(java.lang.String r5) {
        /*
            r4 = this;
            java.lang.String r0 = ":445"
            monitor-enter(r4)
            java.lang.StringBuilder r1 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L35
            r1.<init>()     // Catch: java.lang.Throwable -> L35
            r1.append(r5)     // Catch: java.lang.Throwable -> L35
            r1.append(r0)     // Catch: java.lang.Throwable -> L35
            java.lang.String r0 = r1.toString()     // Catch: java.lang.Throwable -> L35
            j$.util.concurrent.ConcurrentHashMap r1 = r4.f11372     // Catch: java.lang.Throwable -> L35
            java.lang.Object r1 = r1.get(r0)     // Catch: java.lang.Throwable -> L35
            ٴٴ.ⁱˊ r1 = (p289.C3602) r1     // Catch: java.lang.Throwable -> L35
            if (r1 == 0) goto L28
            java.lang.Object r2 = r1.ʾˋ     // Catch: java.lang.Throwable -> L35
            java.util.concurrent.atomic.AtomicInteger r2 = (java.util.concurrent.atomic.AtomicInteger) r2     // Catch: java.lang.Throwable -> L35
            int r2 = r2.getAndIncrement()     // Catch: java.lang.Throwable -> L35
            if (r2 <= 0) goto L27
            goto L28
        L27:
            r1 = 0
        L28:
            if (r1 == 0) goto L37
            ˊﹶ.ⁱˊ r2 = r1.f14090     // Catch: java.lang.Throwable -> L35
            boolean r2 = r2.m5877()     // Catch: java.lang.Throwable -> L35
            if (r2 != 0) goto L33
            goto L37
        L33:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L35
            return r1
        L35:
            r5 = move-exception
            goto L5b
        L37:
            ٴٴ.ⁱˊ r1 = new ٴٴ.ⁱˊ     // Catch: java.lang.Throwable -> L35
            ˎﹳ.ⁱˊ r2 = r4.f11374     // Catch: java.lang.Throwable -> L35
            ᵎˑ.ⁱˊ r3 = r4.f11371     // Catch: java.lang.Throwable -> L35
            r1.<init>(r2, r4, r3)     // Catch: java.lang.Throwable -> L35
            r1.m7561(r5)     // Catch: java.lang.Throwable -> L35 java.io.IOException -> L4a
            j$.util.concurrent.ConcurrentHashMap r5 = r4.f11372     // Catch: java.lang.Throwable -> L35
            r5.put(r0, r1)     // Catch: java.lang.Throwable -> L35
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L35
            return r1
        L4a:
            r5 = move-exception
            r0 = 1
            java.lang.AutoCloseable[] r0 = new java.lang.AutoCloseable[r0]     // Catch: java.lang.Throwable -> L35
            r2 = 0
            r0[r2] = r1     // Catch: java.lang.Throwable -> L35
            int r1 = p317.AbstractC3915.f15177     // Catch: java.lang.Throwable -> L35
            r0 = r0[r2]     // Catch: java.lang.Throwable -> L35
            if (r0 == 0) goto L5a
            p137.AbstractC2305.m5364(r0)     // Catch: java.lang.Throwable -> L35 java.lang.Exception -> L5a
        L5a:
            throw r5     // Catch: java.lang.Throwable -> L35
        L5b:
            monitor-exit(r4)     // Catch: java.lang.Throwable -> L35
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: p209.C2972.m6500(java.lang.String):ٴٴ.ⁱˊ");
    }
}
