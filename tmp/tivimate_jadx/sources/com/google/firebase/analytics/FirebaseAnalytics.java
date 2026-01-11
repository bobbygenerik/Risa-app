package com.google.firebase.analytics;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.internal.measurement.C0248;
import com.google.android.gms.internal.measurement.C0306;
import com.google.android.gms.internal.measurement.C0441;
import com.google.android.gms.internal.measurement.ᵎ;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import p024.C1073;
import p038.C1279;
import p038.InterfaceC1280;
import p145.C2405;
import p220.C3029;
import p296.AbstractC3659;
import p447.InterfaceC5273;

/* loaded from: classes.dex */
public final class FirebaseAnalytics {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static volatile FirebaseAnalytics f3085;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0248 f3086;

    public FirebaseAnalytics(C0248 c0248) {
        AbstractC3659.m7687(c0248);
        this.f3086 = c0248;
    }

    @Keep
    public static FirebaseAnalytics getInstance(Context context) {
        if (f3085 == null) {
            synchronized (FirebaseAnalytics.class) {
                try {
                    if (f3085 == null) {
                        f3085 = new FirebaseAnalytics(C0248.m1196(context, null));
                    }
                } finally {
                }
            }
        }
        return f3085;
    }

    @Keep
    public static InterfaceC5273 getScionFrontendApiImplementation(Context context, Bundle bundle) {
        C0248 m1196 = C0248.m1196(context, bundle);
        if (m1196 == null) {
            return null;
        }
        return new C1073(m1196);
    }

    @Keep
    public String getFirebaseInstanceId() {
        try {
            Object obj = C1279.f4945;
            C2405 m5507 = C2405.m5507();
            m5507.m5512();
            C3029 m3875 = ((C1279) m5507.f9291.mo6516(InterfaceC1280.class)).m3875();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            return (String) ᵎ.ʽ(m3875, 30000L);
        } catch (InterruptedException e) {
            throw new IllegalStateException(e);
        } catch (ExecutionException e2) {
            throw new IllegalStateException(e2.getCause());
        } catch (TimeoutException unused) {
            throw new IllegalThreadStateException("Firebase Installations getId Task has timed out.");
        }
    }

    @Keep
    @Deprecated
    public void setCurrentScreen(Activity activity, String str, String str2) {
        C0441 m1870 = C0441.m1870(activity);
        C0248 c0248 = this.f3086;
        c0248.getClass();
        c0248.m1198(new C0306(c0248, m1870, str, str2));
    }
}
