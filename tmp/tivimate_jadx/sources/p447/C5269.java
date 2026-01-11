package p447;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.SystemClock;
import com.google.android.gms.internal.measurement.C0441;
import j$.util.Objects;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˋˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5269 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C5253 f19894;

    public C5269(C5253 c5253) {
        this.f19894 = c5253;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        m10462(C0441.m1870(activity), bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        m10461(C0441.m1870(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        m10458(C0441.m1870(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        m10459(C0441.m1870(activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        m10460(C0441.m1870(activity), bundle);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m10458(C0441 c0441) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this.f19894).ʾˋ;
        C5356 c5356 = c5322.f20209;
        C5322.m10559(c5356);
        synchronized (c5356.f20392) {
            c5356.f20390 = false;
            c5356.f20385 = true;
        }
        C5322 c53222 = (C5322) ((ᵎﹶ) c5356).ʾˋ;
        c53222.f20206.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (c53222.f20189.m10583()) {
            C5351 m10744 = c5356.m10744(c0441);
            c5356.f20384 = c5356.f20383;
            c5356.f20383 = null;
            C5215 c5215 = c53222.f20200;
            C5322.m10556(c5215);
            c5215.m10200(new RunnableC5345(c5356, m10744, elapsedRealtime));
        } else {
            c5356.f20383 = null;
            C5215 c52152 = c53222.f20200;
            C5322.m10556(c52152);
            c52152.m10200(new RunnableC5216(c5356, elapsedRealtime));
        }
        C5256 c5256 = c5322.f20192;
        C5322.m10559(c5256);
        C5322 c53223 = (C5322) ((ᵎﹶ) c5256).ʾˋ;
        c53223.f20206.getClass();
        long elapsedRealtime2 = SystemClock.elapsedRealtime();
        C5215 c52153 = c53223.f20200;
        C5322.m10556(c52153);
        c52153.m10200(new RunnableC5338(c5256, elapsedRealtime2, 1));
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m10459(C0441 c0441) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this.f19894).ʾˋ;
        C5256 c5256 = c5322.f20192;
        C5322.m10559(c5256);
        C5322 c53222 = (C5322) ((ᵎﹶ) c5256).ʾˋ;
        c53222.f20206.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        C5215 c5215 = c53222.f20200;
        C5322.m10556(c5215);
        c5215.m10200(new RunnableC5338(c5256, elapsedRealtime, 0));
        C5356 c5356 = c5322.f20209;
        C5322.m10559(c5356);
        Object obj = c5356.f20392;
        synchronized (obj) {
            c5356.f20390 = true;
            if (!Objects.equals(c0441, c5356.f20388)) {
                synchronized (obj) {
                    c5356.f20388 = c0441;
                    c5356.f20385 = false;
                    C5322 c53223 = (C5322) ((ᵎﹶ) c5356).ʾˋ;
                    if (c53223.f20189.m10583()) {
                        c5356.f20391 = null;
                        C5215 c52152 = c53223.f20200;
                        C5322.m10556(c52152);
                        c52152.m10200(new RunnableC5306(c5356, 1));
                    }
                }
            }
        }
        C5322 c53224 = (C5322) ((ᵎﹶ) c5356).ʾˋ;
        if (!c53224.f20189.m10583()) {
            c5356.f20383 = c5356.f20391;
            C5215 c52153 = c53224.f20200;
            C5322.m10556(c52153);
            c52153.m10200(new RunnableC5306(c5356, 0));
            return;
        }
        c5356.m10743(c0441.f2188, c5356.m10744(c0441), false);
        C5298 c5298 = ((C5322) ((ᵎﹶ) c5356).ʾˋ).f20210;
        C5322.m10558(c5298);
        C5322 c53225 = (C5322) ((ᵎﹶ) c5298).ʾˋ;
        c53225.f20206.getClass();
        long elapsedRealtime2 = SystemClock.elapsedRealtime();
        C5215 c52154 = c53225.f20200;
        C5322.m10556(c52154);
        c52154.m10200(new RunnableC5216(c5298, elapsedRealtime2));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m10460(C0441 c0441, Bundle bundle) {
        C5351 c5351;
        C5356 c5356 = ((C5322) ((ᵎﹶ) this.f19894).ʾˋ).f20209;
        C5322.m10559(c5356);
        if (!((C5322) ((ᵎﹶ) c5356).ʾˋ).f20189.m10583() || bundle == null || (c5351 = (C5351) c5356.f20386.get(Integer.valueOf(c0441.f2187))) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", c5351.f20367);
        bundle2.putString("name", c5351.f20371);
        bundle2.putString("referrer_name", c5351.f20370);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m10461(C0441 c0441) {
        C5356 c5356 = ((C5322) ((ᵎﹶ) this.f19894).ʾˋ).f20209;
        C5322.m10559(c5356);
        synchronized (c5356.f20392) {
            try {
                if (Objects.equals(c5356.f20388, c0441)) {
                    c5356.f20388 = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (((C5322) ((ᵎﹶ) c5356).ʾˋ).f20189.m10583()) {
            c5356.f20386.remove(Integer.valueOf(c0441.f2187));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0046 A[Catch: all -> 0x0025, RuntimeException -> 0x0028, TryCatch #0 {RuntimeException -> 0x0028, blocks: (B:3:0x0002, B:5:0x0016, B:7:0x001c, B:12:0x0046, B:15:0x004d, B:17:0x0060, B:19:0x0068, B:24:0x0078, B:28:0x0085, B:36:0x002b, B:38:0x0032, B:40:0x003e), top: B:2:0x0002, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0083  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10462(com.google.android.gms.internal.measurement.C0441 r9, android.os.Bundle r10) {
        /*
            r8 = this;
            ﹶﾞ.ˈـ r1 = r8.f19894
            java.lang.Object r0 = r1.ʾˋ     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            ﹶﾞ.ᵎʻ r0 = (p447.C5322) r0     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            ﹶﾞ.ﹳـ r2 = r0.f20193     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            p447.C5322.m10556(r2)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            ﹶﾞ.ʼˈ r2 = r2.f20350     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            java.lang.String r3 = "onActivityCreated"
            r2.m10217(r3)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            android.content.Intent r2 = r9.f2186     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            if (r2 == 0) goto L94
            android.net.Uri r3 = r2.getData()     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            if (r3 == 0) goto L2b
            boolean r4 = r3.isHierarchical()     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            if (r4 != 0) goto L23
            goto L2b
        L23:
            r5 = r3
            goto L44
        L25:
            r0 = move-exception
            goto Lb6
        L28:
            r0 = move-exception
            goto La1
        L2b:
            android.os.Bundle r3 = r2.getExtras()     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            r4 = 0
            if (r3 == 0) goto L43
            java.lang.String r5 = "com.android.vending.referral_url"
            java.lang.String r3 = r3.getString(r5)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            boolean r5 = android.text.TextUtils.isEmpty(r3)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            if (r5 != 0) goto L43
            android.net.Uri r3 = android.net.Uri.parse(r3)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            goto L23
        L43:
            r5 = r4
        L44:
            if (r5 == 0) goto L94
            boolean r3 = r5.isHierarchical()     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            if (r3 != 0) goto L4d
            goto L94
        L4d:
            ﹶﾞ.ᵢﹳ r3 = r0.f20208     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            p447.C5322.m10560(r3)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            java.lang.String r3 = "android.intent.extra.REFERRER_NAME"
            java.lang.String r2 = r2.getStringExtra(r3)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            java.lang.String r3 = "android-app://com.google.android.googlequicksearchbox/https/www.google.com"
            boolean r3 = r3.equals(r2)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            if (r3 != 0) goto L75
            java.lang.String r3 = "https://www.google.com"
            boolean r3 = r3.equals(r2)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            if (r3 != 0) goto L75
            java.lang.String r3 = "android-app://com.google.appcrawler"
            boolean r2 = r3.equals(r2)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            if (r2 == 0) goto L71
            goto L75
        L71:
            java.lang.String r2 = "auto"
        L73:
            r6 = r2
            goto L78
        L75:
            java.lang.String r2 = "gs"
            goto L73
        L78:
            java.lang.String r2 = "referrer"
            java.lang.String r7 = r5.getQueryParameter(r2)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            if (r10 != 0) goto L83
            r2 = 1
        L81:
            r4 = r2
            goto L85
        L83:
            r2 = 0
            goto L81
        L85:
            ﹶﾞ.ʻˋ r0 = r0.f20200     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            p447.C5322.m10556(r0)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            ﹶﾞ.ʻʿ r2 = new ﹶﾞ.ʻʿ     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            r3 = r8
            r2.<init>(r3, r4, r5, r6, r7)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            r0.m10200(r2)     // Catch: java.lang.Throwable -> L25 java.lang.RuntimeException -> L28
            goto Lb1
        L94:
            java.lang.Object r0 = r1.ʾˋ
            ﹶﾞ.ᵎʻ r0 = (p447.C5322) r0
        L98:
            ﹶﾞ.ﾞˏ r0 = r0.f20209
            p447.C5322.m10559(r0)
            r0.m10741(r9, r10)
            return
        La1:
            java.lang.Object r2 = r1.ʾˋ     // Catch: java.lang.Throwable -> L25
            ﹶﾞ.ᵎʻ r2 = (p447.C5322) r2     // Catch: java.lang.Throwable -> L25
            ﹶﾞ.ﹳـ r2 = r2.f20193     // Catch: java.lang.Throwable -> L25
            p447.C5322.m10556(r2)     // Catch: java.lang.Throwable -> L25
            ﹶﾞ.ʼˈ r2 = r2.f20343     // Catch: java.lang.Throwable -> L25
            java.lang.String r3 = "Throwable caught in onActivityCreated"
            r2.m10216(r0, r3)     // Catch: java.lang.Throwable -> L25
        Lb1:
            java.lang.Object r0 = r1.ʾˋ
            ﹶﾞ.ᵎʻ r0 = (p447.C5322) r0
            goto L98
        Lb6:
            java.lang.Object r1 = r1.ʾˋ
            ﹶﾞ.ᵎʻ r1 = (p447.C5322) r1
            ﹶﾞ.ﾞˏ r1 = r1.f20209
            p447.C5322.m10559(r1)
            r1.m10741(r9, r10)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5269.m10462(com.google.android.gms.internal.measurement.ᴵˑ, android.os.Bundle):void");
    }
}
