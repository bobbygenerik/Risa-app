package p411;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import j$.util.Objects;
import java.util.Locale;
import java.util.UUID;
import java.util.regex.Pattern;
import p012.C0902;
import p027.C1102;
import p038.InterfaceC1280;
import p252.C3309;

/* renamed from: ﹳˎ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4887 {

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public static final Pattern f18223 = Pattern.compile("[^\\p{Alnum}]");

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final String f18224 = Pattern.quote("/");

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String f18225;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final InterfaceC1280 f18226;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C1102 f18227;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Context f18228;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C0902 f18229;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public C4890 f18230;

    public C4887(Context context, String str, InterfaceC1280 interfaceC1280, C1102 c1102) {
        if (context == null) {
            throw new IllegalArgumentException("appContext must not be null");
        }
        if (str == null) {
            throw new IllegalArgumentException("appIdentifier must not be null");
        }
        this.f18228 = context;
        this.f18225 = str;
        this.f18226 = interfaceC1280;
        this.f18227 = c1102;
        this.f18229 = new C0902();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final synchronized C4890 m9675() {
        String str;
        C4890 c4890 = this.f18230;
        if (c4890 != null && (c4890.f18238 != null || !this.f18227.m3489())) {
            return this.f18230;
        }
        C3309 c3309 = C3309.f12735;
        c3309.m7121("Determining Crashlytics installation ID...");
        SharedPreferences sharedPreferences = this.f18228.getSharedPreferences("com.google.firebase.crashlytics", 0);
        String string = sharedPreferences.getString("firebase.installation.id", null);
        c3309.m7121("Cached Firebase Installation ID: " + string);
        if (this.f18227.m3489()) {
            C4891 m9677 = m9677(false);
            c3309.m7121("Fetched Firebase Installation ID: " + m9677.f18241);
            if (m9677.f18241 == null) {
                if (string == null) {
                    str = "SYN_" + UUID.randomUUID().toString();
                } else {
                    str = string;
                }
                m9677 = new C4891(str, null);
            }
            if (Objects.equals(m9677.f18241, string)) {
                this.f18230 = new C4890(sharedPreferences.getString("crashlytics.installation.id", null), m9677.f18241, m9677.f18240);
            } else {
                this.f18230 = new C4890(m9678(sharedPreferences, m9677.f18241), m9677.f18241, m9677.f18240);
            }
        } else if (string == null || !string.startsWith("SYN_")) {
            this.f18230 = new C4890(m9678(sharedPreferences, "SYN_" + UUID.randomUUID().toString()), null, null);
        } else {
            this.f18230 = new C4890(sharedPreferences.getString("crashlytics.installation.id", null), null, null);
        }
        c3309.m7121("Install IDs: " + this.f18230);
        return this.f18230;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String m9676() {
        String str;
        C0902 c0902 = this.f18229;
        Context context = this.f18228;
        synchronized (c0902) {
            try {
                if (c0902.f3820 == null) {
                    String installerPackageName = context.getPackageManager().getInstallerPackageName(context.getPackageName());
                    if (installerPackageName == null) {
                        installerPackageName = "";
                    }
                    c0902.f3820 = installerPackageName;
                }
                str = "".equals(c0902.f3820) ? null : c0902.f3820;
            } finally {
            }
        }
        return str;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:1|(2:3|(0))|5|(7:17|18|8|9|10|11|12)|7|8|9|10|11|12) */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p411.C4891 m9677(boolean r7) {
        /*
            r6 = this;
            android.os.Looper r0 = android.os.Looper.getMainLooper()
            boolean r0 = r0.isCurrentThread()
            r1 = 0
            java.lang.String r2 = "FirebaseCrashlytics"
            if (r0 == 0) goto L30
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r3 = "Must not be called on a main thread, was called on "
            r0.<init>(r3)
            java.lang.Thread r3 = java.lang.Thread.currentThread()
            java.lang.String r3 = r3.getName()
            r0.append(r3)
            r3 = 46
            r0.append(r3)
            java.lang.String r0 = r0.toString()
            r3 = 3
            boolean r3 = android.util.Log.isLoggable(r2, r3)
            if (r3 == 0) goto L30
        L30:
            r3 = 10000(0x2710, double:4.9407E-320)
            ʽʼ.ˑﹳ r0 = r6.f18226
            if (r7 == 0) goto L4c
            r7 = r0
            ʽʼ.ˈ r7 = (p038.C1279) r7     // Catch: java.lang.Exception -> L48
            ˏـ.ˉʿ r7 = r7.m3877()     // Catch: java.lang.Exception -> L48
            java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Exception -> L48
            java.lang.Object r7 = com.google.android.gms.internal.measurement.ᵎ.ʽ(r7, r3)     // Catch: java.lang.Exception -> L48
            ʽʼ.ﹳٴ r7 = (p038.C1284) r7     // Catch: java.lang.Exception -> L48
            java.lang.String r7 = r7.f4965     // Catch: java.lang.Exception -> L48
            goto L4d
        L48:
            r7 = move-exception
            java.lang.String r5 = "Error getting Firebase authentication token."
        L4c:
            r7 = r1
        L4d:
            ʽʼ.ˈ r0 = (p038.C1279) r0     // Catch: java.lang.Exception -> L5d
            ˏـ.ˉʿ r0 = r0.m3875()     // Catch: java.lang.Exception -> L5d
            java.util.concurrent.TimeUnit r5 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.lang.Exception -> L5d
            java.lang.Object r0 = com.google.android.gms.internal.measurement.ᵎ.ʽ(r0, r3)     // Catch: java.lang.Exception -> L5d
            java.lang.String r0 = (java.lang.String) r0     // Catch: java.lang.Exception -> L5d
            r1 = r0
            goto L61
        L5d:
            r0 = move-exception
            java.lang.String r3 = "Error getting Firebase installation id."
        L61:
            ﹳˎ.ʽﹳ r0 = new ﹳˎ.ʽﹳ
            r0.<init>(r1, r7)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p411.C4887.m9677(boolean):ﹳˎ.ʽﹳ");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final synchronized String m9678(SharedPreferences sharedPreferences, String str) {
        String lowerCase;
        lowerCase = f18223.matcher(UUID.randomUUID().toString()).replaceAll("").toLowerCase(Locale.US);
        String str2 = "Created new Crashlytics installation ID: " + lowerCase + " for FID: " + str;
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
        }
        sharedPreferences.edit().putString("crashlytics.installation.id", lowerCase).putString("firebase.installation.id", str).apply();
        return lowerCase;
    }
}
