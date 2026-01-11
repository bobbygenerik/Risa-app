package p038;

import android.net.TrafficStats;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.ᵎ;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import com.google.firebase.installations.FirebaseInstallationsException;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.regex.Pattern;
import org.json.JSONException;
import org.json.JSONObject;
import p010.AbstractC0844;
import p074.InterfaceC1650;
import p145.C2405;
import p211.C2979;
import p211.C2980;
import p211.C2981;
import p212.C2990;
import p220.C3029;
import p220.C3032;
import p221.ExecutorC3040;
import p296.AbstractC3659;
import p307.C3739;
import p307.C3741;
import p307.C3742;
import p307.C3743;
import p366.C4472;
import p404.C4790;
import ﹶﾞ.ⁱי;

/* renamed from: ʽʼ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1279 implements InterfaceC1280 {

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static final Object f4945 = new Object();

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final ExecutorC3040 f4946;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4790 f4947;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public String f4948;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1278 f4949;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2990 f4950;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final HashSet f4951;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Object f4952;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final ExecutorService f4953;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3739 f4954;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2405 f4955;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final ArrayList f4956;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C1282 f4957;

    static {
        new AtomicInteger(1);
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [ʽʼ.ᵔᵢ, java.lang.Object] */
    public C1279(C2405 c2405, InterfaceC1650 interfaceC1650, ExecutorService executorService, ExecutorC3040 executorC3040) {
        c2405.m5512();
        C3739 c3739 = new C3739(c2405.f9296, interfaceC1650);
        C4790 c4790 = new C4790(24, c2405);
        if (C4472.f16738 == null) {
            C4472.f16738 = new C4472(2);
        }
        C4472 c4472 = C4472.f16738;
        if (C1278.f4942 == null) {
            C1278.f4942 = new C1278(c4472);
        }
        C1278 c1278 = C1278.f4942;
        C2990 c2990 = new C2990(new C1283(0, c2405));
        ?? obj = new Object();
        this.f4952 = new Object();
        this.f4951 = new HashSet();
        this.f4956 = new ArrayList();
        this.f4955 = c2405;
        this.f4954 = c3739;
        this.f4947 = c4790;
        this.f4949 = c1278;
        this.f4950 = c2990;
        this.f4957 = obj;
        this.f4953 = executorService;
        this.f4946 = executorC3040;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v2, types: [ᐧـ.ʽ] */
    /* JADX WARN: Type inference failed for: r2v22 */
    /* JADX WARN: Type inference failed for: r2v23 */
    /* JADX WARN: Type inference failed for: r2v24 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [ᐧـ.ﹳٴ] */
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C2980 m3872(C2980 c2980) {
        int responseCode;
        String str = c2980.f11386;
        String str2 = null;
        if (str != null && str.length() == 11) {
            C2979 c2979 = (C2979) this.f4950.get();
            synchronized (c2979.f11380) {
                try {
                    String[] strArr = C2979.f11378;
                    int i = 0;
                    while (true) {
                        if (i < 4) {
                            String str3 = strArr[i];
                            String string = c2979.f11380.getString("|T|" + c2979.f11379 + "|" + str3, null);
                            if (string == null || string.isEmpty()) {
                                i++;
                            } else if (string.startsWith("{")) {
                                try {
                                    str2 = new JSONObject(string).getString("token");
                                } catch (JSONException unused) {
                                }
                            } else {
                                str2 = string;
                            }
                        }
                    }
                } finally {
                }
            }
        }
        C3739 c3739 = this.f4954;
        C2405 c2405 = this.f4955;
        c2405.m5512();
        String str4 = c2405.f9289.f9279;
        String str5 = c2980.f11386;
        C2405 c24052 = this.f4955;
        c24052.m5512();
        String str6 = c24052.f9289.f9277;
        C2405 c24053 = this.f4955;
        c24053.m5512();
        String str7 = c24053.f9289.f9278;
        C3741 c3741 = c3739.f14573;
        if (!c3741.m7949()) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL m7921 = C3739.m7921("projects/" + str6 + "/installations");
        int i2 = 0;
        C3743 c3743 = c3739;
        while (i2 <= 1) {
            TrafficStats.setThreadStatsTag(32769);
            HttpURLConnection m7923 = c3743.m7923(m7921, str4);
            try {
                try {
                    m7923.setRequestMethod("POST");
                    m7923.setDoOutput(true);
                    if (str2 != null) {
                        m7923.addRequestProperty("x-goog-fis-android-iid-migration-auth", str2);
                    }
                    C3739.m7918(m7923, str5, str7);
                    responseCode = m7923.getResponseCode();
                    c3741.m7948(responseCode);
                } finally {
                    m7923.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
            } catch (IOException | AssertionError unused2) {
            }
            if (!(responseCode >= 200 && responseCode < 300)) {
                try {
                    C3739.m7920(m7923, str7, str4, str6);
                } catch (IOException | AssertionError unused3) {
                    m7923.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    i2++;
                    c3743 = c3743;
                }
                if (responseCode == 429) {
                    throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                    break;
                }
                if (responseCode < 500 || responseCode >= 600) {
                    C3743 c37432 = new C3743(null, null, null, null, 2);
                    m7923.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    c3743 = c37432;
                } else {
                    m7923.disconnect();
                    TrafficStats.clearThreadStatsTag();
                    i2++;
                    c3743 = c3743;
                }
            } else {
                C3743 m7917 = C3739.m7917(m7923);
                m7923.disconnect();
                TrafficStats.clearThreadStatsTag();
                c3743 = m7917;
            }
            int m3018 = AbstractC0844.m3018(c3743.f14586);
            if (m3018 != 0) {
                if (m3018 != 1) {
                    throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.");
                }
                C2981 m6507 = c2980.m6507();
                m6507.f11391 = "BAD CONFIG";
                m6507.f11392 = 5;
                return m6507.m6508();
            }
            String str8 = c3743.f14587;
            String str9 = c3743.f14584;
            C1278 c1278 = this.f4949;
            c1278.getClass();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            c1278.f4944.getClass();
            long seconds = timeUnit.toSeconds(System.currentTimeMillis());
            C3742 c3742 = c3743.f14585;
            String str10 = c3742.f14583;
            long j = c3742.f14582;
            C2981 m65072 = c2980.m6507();
            m65072.f11393 = str8;
            m65072.f11392 = 4;
            m65072.f11388 = str10;
            m65072.f11389 = str9;
            m65072.f11390 = Long.valueOf(j);
            m65072.f11394 = Long.valueOf(seconds);
            return m65072.m6508();
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.");
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2980 m3873(C2980 c2980) {
        int responseCode;
        C3742 m7922;
        C2405 c2405 = this.f4955;
        c2405.m5512();
        String str = c2405.f9289.f9279;
        String str2 = c2980.f11386;
        c2405.m5512();
        String str3 = c2405.f9289.f9277;
        String str4 = c2980.f11382;
        C3739 c3739 = this.f4954;
        C3741 c3741 = c3739.f14573;
        if (!c3741.m7949()) {
            throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.");
        }
        URL m7921 = C3739.m7921("projects/" + str3 + "/installations/" + str2 + "/authTokens:generate");
        for (int i = 0; i <= 1; i++) {
            TrafficStats.setThreadStatsTag(32771);
            HttpURLConnection m7923 = c3739.m7923(m7921, str);
            try {
                try {
                    m7923.setRequestMethod("POST");
                    m7923.addRequestProperty("Authorization", "FIS_v2 " + str4);
                    m7923.setDoOutput(true);
                    C3739.m7919(m7923);
                    responseCode = m7923.getResponseCode();
                    c3741.m7948(responseCode);
                } finally {
                    m7923.disconnect();
                    TrafficStats.clearThreadStatsTag();
                }
            } catch (IOException | AssertionError unused) {
            }
            if (responseCode >= 200 && responseCode < 300) {
                m7922 = C3739.m7922(m7923);
            } else {
                C3739.m7920(m7923, null, str, str3);
                if (responseCode == 401 || responseCode == 404) {
                    ʽﹳ m7951 = C3742.m7951();
                    m7951.ᴵˊ = 3;
                    m7922 = m7951.ˈ();
                } else {
                    if (responseCode == 429) {
                        throw new FirebaseInstallationsException("Firebase servers have received too many requests from this client in a short period of time. Please try again later.");
                    }
                    if (responseCode < 500 || responseCode >= 600) {
                        ʽﹳ m79512 = C3742.m7951();
                        m79512.ᴵˊ = 2;
                        m7922 = m79512.ˈ();
                    }
                }
            }
            int m3018 = AbstractC0844.m3018(m7922.f14581);
            if (m3018 != 0) {
                if (m3018 == 1) {
                    C2981 m6507 = c2980.m6507();
                    m6507.f11391 = "BAD CONFIG";
                    m6507.f11392 = 5;
                    return m6507.m6508();
                }
                if (m3018 != 2) {
                    throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.");
                }
                m3883(null);
                C2981 m65072 = c2980.m6507();
                m65072.f11392 = 2;
                return m65072.m6508();
            }
            String str5 = m7922.f14583;
            long j = m7922.f14582;
            C1278 c1278 = this.f4949;
            c1278.getClass();
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            c1278.f4944.getClass();
            long seconds = timeUnit.toSeconds(System.currentTimeMillis());
            C2981 m65073 = c2980.m6507();
            m65073.f11388 = str5;
            m65073.f11390 = Long.valueOf(j);
            m65073.f11394 = Long.valueOf(seconds);
            return m65073.m6508();
        }
        throw new FirebaseInstallationsException("Firebase Installations Service is unavailable. Please try again later.");
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m3874(Exception exc) {
        synchronized (this.f4952) {
            try {
                Iterator it = this.f4956.iterator();
                while (it.hasNext()) {
                    if (((InterfaceC1276) it.next()).mo3869(exc)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3029 m3875() {
        String str;
        m3879();
        synchronized (this) {
            str = this.f4948;
        }
        if (str != null) {
            return ᵎ.ᵔᵢ(str);
        }
        C3032 c3032 = new C3032();
        m3882(new C1281(c3032));
        C3029 c3029 = c3032.f11560;
        this.f4953.execute(new RunnableC1277(this, 0));
        return c3029;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final synchronized void m3876(C2980 c2980, C2980 c29802) {
        try {
            if (this.f4951.size() != 0 && !TextUtils.equals(c2980.f11386, c29802.f11386)) {
                Iterator it = this.f4951.iterator();
                if (it.hasNext()) {
                    if (it.next() != null) {
                        throw new ClassCastException();
                    }
                    throw null;
                }
            }
        } finally {
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3029 m3877() {
        m3879();
        C3032 c3032 = new C3032();
        m3882(new C1285(this.f4949, c3032));
        this.f4953.execute(new RunnableC1277(this, 1));
        return c3032.f11560;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m3878(C2980 c2980) {
        synchronized (this.f4952) {
            try {
                Iterator it = this.f4956.iterator();
                while (it.hasNext()) {
                    if (((InterfaceC1276) it.next()).mo3870(c2980)) {
                        it.remove();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m3879() {
        C2405 c2405 = this.f4955;
        c2405.m5512();
        AbstractC3659.m7681(c2405.f9289.f9278, "Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        c2405.m5512();
        AbstractC3659.m7681(c2405.f9289.f9277, "Please set your Project ID. A valid Firebase Project ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        c2405.m5512();
        AbstractC3659.m7681(c2405.f9289.f9279, "Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        c2405.m5512();
        String str = c2405.f9289.f9278;
        Pattern pattern = C1278.f4941;
        if (!str.contains(":")) {
            throw new IllegalArgumentException("Please set your Application ID. A valid Firebase App ID is required to communicate with Firebase server APIs: It identifies your application with Firebase.Please refer to https://firebase.google.com/support/privacy/init-options.");
        }
        c2405.m5512();
        if (!C1278.f4941.matcher(c2405.f9289.f9279).matches()) {
            throw new IllegalArgumentException("Please set a valid API key. A Firebase API key is required to communicate with Firebase server APIs: It authenticates your project with Google.Please refer to https://firebase.google.com/support/privacy/init-options.");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x001c, code lost:
    
        if ("[DEFAULT]".equals(r0.f9295) != false) goto L6;
     */
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String m3880(p211.C2980 r3) {
        /*
            r2 = this;
            ˉᵎ.ᵎﹶ r0 = r2.f4955
            r0.m5512()
            java.lang.String r0 = r0.f9295
            java.lang.String r1 = "CHIME_ANDROID_SDK"
            boolean r0 = r0.equals(r1)
            if (r0 != 0) goto L1e
            ˉᵎ.ᵎﹶ r0 = r2.f4955
            java.lang.String r1 = "[DEFAULT]"
            r0.m5512()
            java.lang.String r0 = r0.f9295
            boolean r0 = r1.equals(r0)
            if (r0 == 0) goto L50
        L1e:
            int r3 = r3.f11385
            r0 = 1
            if (r3 != r0) goto L50
            ˏ.ٴﹶ r3 = r2.f4950
            java.lang.Object r3 = r3.get()
            ˎﾞ.ʽ r3 = (p211.C2979) r3
            android.content.SharedPreferences r0 = r3.f11380
            monitor-enter(r0)
            java.lang.String r1 = r3.m6506()     // Catch: java.lang.Throwable -> L36
            if (r1 == 0) goto L38
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L36
            goto L3d
        L36:
            r3 = move-exception
            goto L4e
        L38:
            java.lang.String r1 = r3.m6505()     // Catch: java.lang.Throwable -> L36
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L36
        L3d:
            boolean r3 = android.text.TextUtils.isEmpty(r1)
            if (r3 == 0) goto L4d
            ʽʼ.ᵔᵢ r3 = r2.f4957
            r3.getClass()
            java.lang.String r3 = p038.C1282.m3885()
            return r3
        L4d:
            return r1
        L4e:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L36
            throw r3
        L50:
            ʽʼ.ᵔᵢ r3 = r2.f4957
            r3.getClass()
            java.lang.String r3 = p038.C1282.m3885()
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p038.C1279.m3880(ˎﾞ.ⁱˊ):java.lang.String");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0020, code lost:
    
        r3 = m3880(r2);
        r4 = r6.f4947;
        r2 = r2.m6507();
        r2.f11393 = r3;
        r2.f11392 = 3;
        r2 = r2.m6508();
        r4.m9555(r2);
     */
    /* JADX WARN: Finally extract failed */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m3881() {
        /*
            r6 = this;
            java.lang.Object r0 = p038.C1279.f4945
            monitor-enter(r0)
            ˉᵎ.ᵎﹶ r1 = r6.f4955     // Catch: java.lang.Throwable -> L3f
            r1.m5512()     // Catch: java.lang.Throwable -> L3f
            android.content.Context r1 = r1.f9296     // Catch: java.lang.Throwable -> L3f
            ﹶﾞ.ⁱי r1 = ﹶﾞ.ⁱי.ﹳٴ(r1)     // Catch: java.lang.Throwable -> L3f
            ﹳʽ.ˊʻ r2 = r6.f4947     // Catch: java.lang.Throwable -> L37
            ˎﾞ.ⁱˊ r2 = r2.m9559()     // Catch: java.lang.Throwable -> L37
            int r3 = r2.f11385     // Catch: java.lang.Throwable -> L37
            r4 = 2
            r5 = 1
            if (r3 == r4) goto L1e
            if (r3 != r5) goto L1d
            goto L1e
        L1d:
            r5 = 0
        L1e:
            if (r5 == 0) goto L39
            java.lang.String r3 = r6.m3880(r2)     // Catch: java.lang.Throwable -> L37
            ﹳʽ.ˊʻ r4 = r6.f4947     // Catch: java.lang.Throwable -> L37
            ˎﾞ.ﹳٴ r2 = r2.m6507()     // Catch: java.lang.Throwable -> L37
            r2.f11393 = r3     // Catch: java.lang.Throwable -> L37
            r3 = 3
            r2.f11392 = r3     // Catch: java.lang.Throwable -> L37
            ˎﾞ.ⁱˊ r2 = r2.m6508()     // Catch: java.lang.Throwable -> L37
            r4.m9555(r2)     // Catch: java.lang.Throwable -> L37
            goto L39
        L37:
            r2 = move-exception
            goto L51
        L39:
            if (r1 == 0) goto L41
            r1.ˈٴ()     // Catch: java.lang.Throwable -> L3f
            goto L41
        L3f:
            r1 = move-exception
            goto L57
        L41:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3f
            r6.m3878(r2)
            ˏᐧ.ˆʾ r0 = r6.f4946
            ʽʼ.ʽ r1 = new ʽʼ.ʽ
            r2 = 2
            r1.<init>(r6, r2)
            r0.execute(r1)
            return
        L51:
            if (r1 == 0) goto L56
            r1.ˈٴ()     // Catch: java.lang.Throwable -> L3f
        L56:
            throw r2     // Catch: java.lang.Throwable -> L3f
        L57:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L3f
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p038.C1279.m3881():void");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3882(InterfaceC1276 interfaceC1276) {
        synchronized (this.f4952) {
            this.f4956.add(interfaceC1276);
        }
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final synchronized void m3883(String str) {
        this.f4948 = str;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m3884(C2980 c2980) {
        synchronized (f4945) {
            try {
                C2405 c2405 = this.f4955;
                c2405.m5512();
                ⁱי r1 = ⁱי.ﹳٴ(c2405.f9296);
                try {
                    this.f4947.m9555(c2980);
                    if (r1 != null) {
                        r1.ˈٴ();
                    }
                } catch (Throwable th) {
                    if (r1 != null) {
                        r1.ˈٴ();
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
