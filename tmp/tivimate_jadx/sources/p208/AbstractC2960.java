package p208;

import java.io.Closeable;
import p164.C2571;
import p164.InterfaceC2592;
import p394.AbstractC4710;

/* renamed from: ˎᵢ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2960 implements Closeable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public static final C2948 f11302;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    static {
        ?? obj = new Object();
        C2571 c2571 = C2571.f9765;
        c2571.mo5758(obj, c2571.mo5749());
        f11302 = new C2948(null, c2571.f9767.length, obj);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        AbstractC4710.m9437(mo4067());
    }

    /* renamed from: ʽ */
    public abstract long mo4066();

    /* renamed from: ˉˆ */
    public abstract InterfaceC2592 mo4067();

    /* renamed from: ᵎﹶ */
    public abstract C2968 mo4068();

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0035, code lost:
    
        if (r2 == null) goto L18;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0031 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v7 */
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m6493() {
        /*
            r8 = this;
            ˊᐧ.ᵔᵢ r0 = r8.mo4067()
            r1 = 0
            ˎᵢ.ﹳᐧ r2 = r8.mo4068()     // Catch: java.lang.Throwable -> L4a
            if (r2 == 0) goto L37
            java.lang.String r3 = "charset"
            java.lang.String[] r2 = r2.f11343     // Catch: java.lang.Throwable -> L4a
            int r4 = r2.length     // Catch: java.lang.Throwable -> L4a
            int r4 = r4 + (-1)
            r5 = 2
            r6 = 0
            int r4 = com.google.android.gms.internal.measurement.ˏʻ.ᵔﹳ(r6, r4, r5)     // Catch: java.lang.Throwable -> L4a
            if (r4 < 0) goto L2c
        L1a:
            r5 = r2[r6]     // Catch: java.lang.Throwable -> L4a
            boolean r5 = p435.AbstractC5152.m10145(r5, r3)     // Catch: java.lang.Throwable -> L4a
            if (r5 == 0) goto L27
            int r6 = r6 + 1
            r2 = r2[r6]     // Catch: java.lang.Throwable -> L4a
            goto L2d
        L27:
            if (r6 == r4) goto L2c
            int r6 = r6 + 2
            goto L1a
        L2c:
            r2 = r1
        L2d:
            if (r2 != 0) goto L31
        L2f:
            r2 = r1
            goto L35
        L31:
            java.nio.charset.Charset r2 = java.nio.charset.Charset.forName(r2)     // Catch: java.lang.IllegalArgumentException -> L2f java.lang.Throwable -> L4a
        L35:
            if (r2 != 0) goto L39
        L37:
            java.nio.charset.Charset r2 = p435.AbstractC5154.f19435     // Catch: java.lang.Throwable -> L4a
        L39:
            java.nio.charset.Charset r2 = p394.AbstractC4712.m9451(r0, r2)     // Catch: java.lang.Throwable -> L4a
            java.lang.String r2 = r0.mo5791(r2)     // Catch: java.lang.Throwable -> L4a
            r0.close()     // Catch: java.lang.Throwable -> L45
            goto L46
        L45:
            r1 = move-exception
        L46:
            r7 = r2
            r2 = r1
            r1 = r7
            goto L55
        L4a:
            r2 = move-exception
            if (r0 == 0) goto L55
            r0.close()     // Catch: java.lang.Throwable -> L51
            goto L55
        L51:
            r0 = move-exception
            ʽٴ.ˈ.ⁱˊ(r2, r0)
        L55:
            if (r2 != 0) goto L58
            return r1
        L58:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p208.AbstractC2960.m6493():java.lang.String");
    }
}
