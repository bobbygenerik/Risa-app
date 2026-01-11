package p027;

import android.content.Context;
import android.util.Log;
import p145.C2405;
import p179.RunnableC2689;
import p296.AbstractC3659;
import p296.InterfaceC3668;
import p319.C3936;
import p369.InterfaceC4507;
import p409.C4840;
import p409.C4844;
import p409.C4855;
import ﹶﾞ.ⁱי;

/* renamed from: ʼٴ.ٴᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1102 implements InterfaceC3668 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Object f4298;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f4299;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Object f4300;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Object f4301;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f4302;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Object f4303;

    public C1102(Context context, InterfaceC1107 interfaceC1107, ⁱי r3) {
        this.f4302 = context;
        this.f4298 = interfaceC1107;
        this.f4300 = r3;
        this.f4303 = new C1097(this, true);
        this.f4301 = new C1097(this, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C1102(p145.C2405 r7) {
        /*
            r6 = this;
            r6.<init>()
            java.lang.Object r0 = new java.lang.Object
            r0.<init>()
            r6.f4298 = r0
            ˏـ.ᵎﹶ r0 = new ˏـ.ᵎﹶ
            r0.<init>()
            r6.f4300 = r0
            r0 = 0
            r6.f4299 = r0
            ˏـ.ᵎﹶ r1 = new ˏـ.ᵎﹶ
            r1.<init>()
            r6.f4301 = r1
            r7.m5512()
            android.content.Context r1 = r7.f9296
            r6.f4302 = r7
            java.lang.String r7 = "com.google.firebase.crashlytics"
            android.content.SharedPreferences r7 = r1.getSharedPreferences(r7, r0)
            java.lang.String r2 = "firebase_crashlytics_collection_enabled"
            boolean r3 = r7.contains(r2)
            r4 = 1
            r5 = 0
            if (r3 == 0) goto L3d
            r6.f4299 = r0
            boolean r7 = r7.getBoolean(r2, r4)
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)
            goto L3e
        L3d:
            r7 = r5
        L3e:
            if (r7 != 0) goto L82
            java.lang.String r7 = "firebase_crashlytics_collection_enabled"
            android.content.pm.PackageManager r2 = r1.getPackageManager()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            if (r2 == 0) goto L6f
            java.lang.String r1 = r1.getPackageName()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            r3 = 128(0x80, float:1.8E-43)
            android.content.pm.ApplicationInfo r1 = r2.getApplicationInfo(r1, r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            if (r1 == 0) goto L6f
            android.os.Bundle r2 = r1.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            if (r2 == 0) goto L6f
            boolean r2 = r2.containsKey(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            if (r2 == 0) goto L6f
            android.os.Bundle r1 = r1.metaData     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            boolean r7 = r1.getBoolean(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L69
            goto L70
        L69:
            r7 = move-exception
            java.lang.String r1 = "Could not read data collection permission from manifest"
            java.lang.String r2 = "FirebaseCrashlytics"
        L6f:
            r7 = r5
        L70:
            if (r7 != 0) goto L76
            r6.f4299 = r0
            r7 = r5
            goto L82
        L76:
            r6.f4299 = r4
            java.lang.Boolean r0 = java.lang.Boolean.TRUE
            boolean r7 = r0.equals(r7)
            java.lang.Boolean r7 = java.lang.Boolean.valueOf(r7)
        L82:
            r6.f4303 = r7
            java.lang.Object r7 = r6.f4298
            monitor-enter(r7)
            boolean r0 = r6.m3489()     // Catch: java.lang.Throwable -> L95
            if (r0 == 0) goto L97
            java.lang.Object r0 = r6.f4300     // Catch: java.lang.Throwable -> L95
            ˏـ.ᵎﹶ r0 = (p220.C3032) r0     // Catch: java.lang.Throwable -> L95
            r0.m6577(r5)     // Catch: java.lang.Throwable -> L95
            goto L97
        L95:
            r0 = move-exception
            goto L99
        L97:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L95
            return
        L99:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L95
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p027.C1102.<init>(ˉᵎ.ᵎﹶ):void");
    }

    public C1102(C4844 c4844, InterfaceC4507 interfaceC4507, C4855 c4855) {
        this.f4301 = c4844;
        this.f4300 = null;
        this.f4303 = null;
        this.f4299 = false;
        this.f4302 = interfaceC4507;
        this.f4298 = c4855;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public void m3486(C3936 c3936) {
        C4840 c4840 = (C4840) ((C4844) this.f4301).f18178.get((C4855) this.f4298);
        if (c4840 != null) {
            AbstractC3659.m7685(c4840.f18156.f18174);
            InterfaceC4507 interfaceC4507 = c4840.f18153;
            interfaceC4507.m9074("onSignInFailed for " + interfaceC4507.getClass().getName() + " with " + String.valueOf(c3936));
            c4840.m9640(c3936, null);
        }
    }

    @Override // p296.InterfaceC3668
    /* renamed from: ˉٴ, reason: contains not printable characters */
    public void mo3487(C3936 c3936) {
        ((C4844) this.f4301).f18174.post(new RunnableC2689(this, 25, c3936));
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m3488(boolean z) {
        String str = "Crashlytics automatic data collection " + (z ? "ENABLED" : "DISABLED") + " by " + (((Boolean) this.f4303) == null ? "global Firebase setting" : this.f4299 ? "firebase_crashlytics_collection_enabled manifest flag" : "API") + ".";
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public synchronized boolean m3489() {
        boolean z;
        Boolean bool = (Boolean) this.f4303;
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            try {
                z = ((C2405) this.f4302).m5511();
            } catch (IllegalStateException unused) {
                z = false;
            }
        }
        m3488(z);
        return z;
    }
}
