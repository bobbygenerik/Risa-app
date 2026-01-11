package p411;

import android.util.Log;
import java.lang.Thread;
import java.util.concurrent.atomic.AtomicBoolean;
import p070.C1629;
import p252.C3309;
import p252.C3311;
import ᐧﹳ.ʽ;

/* renamed from: ﹳˎ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4898 implements Thread.UncaughtExceptionHandler {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Thread.UncaughtExceptionHandler f18270;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3311 f18271;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final AtomicBoolean f18272 = new AtomicBoolean(false);

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1629 f18273;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ʽ f18274;

    public C4898(ʽ r1, C1629 c1629, Thread.UncaughtExceptionHandler uncaughtExceptionHandler, C3311 c3311) {
        this.f18274 = r1;
        this.f18273 = c1629;
        this.f18270 = uncaughtExceptionHandler;
        this.f18271 = c3311;
    }

    @Override // java.lang.Thread.UncaughtExceptionHandler
    public final void uncaughtException(Thread thread, Throwable th) {
        Thread.UncaughtExceptionHandler uncaughtExceptionHandler = this.f18270;
        AtomicBoolean atomicBoolean = this.f18272;
        atomicBoolean.set(true);
        try {
            try {
                if (m9696(thread, th)) {
                    this.f18274.ʻٴ(this.f18273, thread, th);
                } else if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                }
                if (uncaughtExceptionHandler != null) {
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    }
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                } else {
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    }
                    System.exit(1);
                }
                atomicBoolean.set(false);
            } catch (Exception e) {
                C3309 c3309 = C3309.f12735;
                if (c3309.m7124(6)) {
                }
                if (uncaughtExceptionHandler != null) {
                    c3309.m7123("Completed exception processing. Invoking default exception handler.");
                    uncaughtExceptionHandler.uncaughtException(thread, th);
                } else {
                    c3309.m7123("Completed exception processing, but no default exception handler.");
                    System.exit(1);
                }
                atomicBoolean.set(false);
            }
        } catch (Throwable th2) {
            if (uncaughtExceptionHandler != null) {
                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                }
                uncaughtExceptionHandler.uncaughtException(thread, th);
            } else {
                if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                }
                System.exit(1);
            }
            atomicBoolean.set(false);
            throw th2;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m9696(Thread thread, Throwable th) {
        if (thread != null && th != null) {
            if (!this.f18271.m7129()) {
                return true;
            }
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            }
            return false;
        }
        return false;
    }
}
