package p311;

import androidx.leanback.widget.ʻٴ;
import java.lang.reflect.InvocationHandler;

/* renamed from: ᐧᵢ.ـˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3817 implements InvocationHandler {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ ʻٴ f14800;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Class f14801;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Object[] f14802 = new Object[0];

    public C3817(ʻٴ r1, Class cls) {
        this.f14800 = r1;
        this.f14801 = cls;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0047, code lost:
    
        r1 = p311.AbstractC3815.m7992(r10, r0, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x004b, code lost:
    
        ((j$.util.concurrent.ConcurrentHashMap) r10.ʽʽ).put(r9, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0075, code lost:
    
        r9 = (p311.AbstractC3815) r2;
     */
    @Override // java.lang.reflect.InvocationHandler
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object invoke(java.lang.Object r8, java.lang.reflect.Method r9, java.lang.Object[] r10) {
        /*
            r7 = this;
            java.lang.Class r0 = r7.f14801
            java.lang.Class r1 = r9.getDeclaringClass()
            java.lang.Class<java.lang.Object> r2 = java.lang.Object.class
            if (r1 != r2) goto Lf
            java.lang.Object r8 = r9.invoke(r7, r10)
            return r8
        Lf:
            if (r10 == 0) goto L13
        L11:
            r4 = r10
            goto L16
        L13:
            java.lang.Object[] r10 = r7.f14802
            goto L11
        L16:
            ᐧᵢ.ﹳٴ r10 = p311.AbstractC3800.f14719
            boolean r1 = r10.mo7983(r9)
            if (r1 == 0) goto L23
            java.lang.Object r8 = r10.mo7982(r9, r0, r8, r4)
            return r8
        L23:
            androidx.leanback.widget.ʻٴ r10 = r7.f14800
        L25:
            java.lang.Object r1 = r10.ʽʽ
            j$.util.concurrent.ConcurrentHashMap r1 = (j$.util.concurrent.ConcurrentHashMap) r1
            java.lang.Object r1 = r1.get(r9)
            boolean r2 = r1 instanceof p311.AbstractC3815
            if (r2 == 0) goto L35
            ᐧᵢ.יـ r1 = (p311.AbstractC3815) r1
        L33:
            r9 = r1
            goto L79
        L35:
            if (r1 != 0) goto L65
            java.lang.Object r2 = new java.lang.Object
            r2.<init>()
            monitor-enter(r2)
            java.lang.Object r1 = r10.ʽʽ     // Catch: java.lang.Throwable -> L54
            j$.util.concurrent.ConcurrentHashMap r1 = (j$.util.concurrent.ConcurrentHashMap) r1     // Catch: java.lang.Throwable -> L54
            java.lang.Object r1 = r1.putIfAbsent(r9, r2)     // Catch: java.lang.Throwable -> L54
            if (r1 != 0) goto L61
            ᐧᵢ.יـ r1 = p311.AbstractC3815.m7992(r10, r0, r9)     // Catch: java.lang.Throwable -> L57
            java.lang.Object r10 = r10.ʽʽ     // Catch: java.lang.Throwable -> L54
            j$.util.concurrent.ConcurrentHashMap r10 = (j$.util.concurrent.ConcurrentHashMap) r10     // Catch: java.lang.Throwable -> L54
            r10.put(r9, r1)     // Catch: java.lang.Throwable -> L54
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L54
            goto L33
        L54:
            r0 = move-exception
            r8 = r0
            goto L63
        L57:
            r0 = move-exception
            r8 = r0
            java.lang.Object r10 = r10.ʽʽ     // Catch: java.lang.Throwable -> L54
            j$.util.concurrent.ConcurrentHashMap r10 = (j$.util.concurrent.ConcurrentHashMap) r10     // Catch: java.lang.Throwable -> L54
            r10.remove(r9)     // Catch: java.lang.Throwable -> L54
            throw r8     // Catch: java.lang.Throwable -> L54
        L61:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L54
            goto L65
        L63:
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L54
            throw r8
        L65:
            monitor-enter(r1)
            java.lang.Object r2 = r10.ʽʽ     // Catch: java.lang.Throwable -> L72
            j$.util.concurrent.ConcurrentHashMap r2 = (j$.util.concurrent.ConcurrentHashMap) r2     // Catch: java.lang.Throwable -> L72
            java.lang.Object r2 = r2.get(r9)     // Catch: java.lang.Throwable -> L72
            if (r2 != 0) goto L75
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L72
            goto L25
        L72:
            r0 = move-exception
            r8 = r0
            goto L8a
        L75:
            r9 = r2
            ᐧᵢ.יـ r9 = (p311.AbstractC3815) r9     // Catch: java.lang.Throwable -> L72
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L72
        L79:
            ᐧᵢ.ᴵˊ r1 = new ᐧᵢ.ᴵˊ
            ᐧᵢ.ˊˋ r2 = r9.f14798
            ˎᵢ.ˈ r5 = r9.f14797
            ᐧᵢ.ﾞʻ r6 = r9.f14796
            r3 = r8
            r1.<init>(r2, r3, r4, r5, r6)
            java.lang.Object r8 = r9.mo7993(r1, r4)
            return r8
        L8a:
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L72
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: p311.C3817.invoke(java.lang.Object, java.lang.reflect.Method, java.lang.Object[]):java.lang.Object");
    }
}
