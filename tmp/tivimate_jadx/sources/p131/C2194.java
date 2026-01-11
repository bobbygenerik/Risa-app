package p131;

import android.util.Log;
import com.google.android.gms.internal.measurement.ᵎ;
import java.util.concurrent.ExecutorService;
import p435.AbstractC5143;

/* renamed from: ˈᵔ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2194 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ExecutorC2193 f8649;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ExecutorC2193 f8650;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ExecutorC2193 f8651;

    public C2194(ExecutorService executorService, ExecutorService executorService2) {
        this.f8651 = new ExecutorC2193(executorService);
        this.f8650 = new ExecutorC2193(executorService);
        ᵎ.ᵔᵢ((Object) null);
        this.f8649 = new ExecutorC2193(executorService2);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final void m5194() {
        if (AbstractC5143.m10116(Thread.currentThread().getName(), "Firebase Blocking Thread #", false)) {
            return;
        }
        String str = "Must be called on a blocking thread, was called on " + Thread.currentThread().getName() + '.';
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final void m5195() {
        if (AbstractC5143.m10116(Thread.currentThread().getName(), "Firebase Background Thread #", false)) {
            return;
        }
        String str = "Must be called on a background thread, was called on " + Thread.currentThread().getName() + '.';
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
        }
    }
}
