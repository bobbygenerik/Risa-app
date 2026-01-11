package com.google.android.gms.internal.play_billing;

import java.util.logging.Level;
import java.util.logging.Logger;

/* renamed from: com.google.android.gms.internal.play_billing.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0555 extends AbstractC0620 implements InterfaceFutureC0614 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final boolean f2336;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final ʽٴ.ˈ f2337;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public volatile C0625 f2339;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public volatile Object f2340;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public volatile C0621 f2341;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final Object f2335 = new Object();

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C0559 f2338 = new C0559(C0547.class);

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [ʽٴ.ˈ] */
    /* JADX WARN: Type inference failed for: r0v24 */
    /* JADX WARN: Type inference failed for: r0v25 */
    static {
        boolean z;
        Object obj;
        Throwable th;
        Throwable th2;
        ?? r0;
        Object obj2;
        try {
            z = Boolean.parseBoolean(System.getProperty("guava.concurrent.generate_cancellation_cause", "false"));
        } catch (SecurityException unused) {
            z = false;
        }
        f2336 = z;
        String property = System.getProperty("java.runtime.name", "");
        Throwable th3 = null;
        if (property == null || property.contains("Android")) {
            try {
                obj2 = new Object();
            } catch (Error | Exception e) {
                try {
                    obj = new Object();
                } catch (Error | Exception e2) {
                    th3 = e2;
                    obj = new Object();
                }
                th = th3;
                th2 = e;
                r0 = obj;
            }
        } else {
            try {
                obj2 = new Object();
            } catch (NoClassDefFoundError unused2) {
                obj2 = new Object();
            }
        }
        th = null;
        th2 = null;
        r0 = obj2;
        f2337 = r0;
        if (th != null) {
            C0559 c0559 = f2338;
            Logger m2135 = c0559.m2135();
            Level level = Level.SEVERE;
            m2135.logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "UnsafeAtomicHelper is broken!", th2);
            c0559.m2135().logp(level, "com.google.common.util.concurrent.AbstractFutureState", "<clinit>", "AtomicReferenceFieldUpdaterAtomicHelper is broken!", th);
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m2132(C0625 c0625) {
        c0625.f2464 = null;
        while (true) {
            C0625 c06252 = this.f2339;
            if (c06252 != C0625.f2462) {
                C0625 c06253 = null;
                while (c06252 != null) {
                    C0625 c06254 = c06252.f2463;
                    if (c06252.f2464 != null) {
                        c06253 = c06252;
                    } else if (c06253 != null) {
                        c06253.f2463 = c06254;
                        if (c06253.f2464 == null) {
                            break;
                        }
                    } else if (!f2337.ˉٴ(this, c06252, c06254)) {
                        break;
                    }
                    c06252 = c06254;
                }
                return;
            }
            return;
        }
    }
}
