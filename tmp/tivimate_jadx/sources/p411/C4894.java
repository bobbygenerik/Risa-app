package p411;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import android.util.Base64;
import android.util.Log;
import ar.tvplayer.tv.ProtectedTvPlayerApplication;
import com.bumptech.glide.C0229;
import com.google.android.gms.internal.measurement.ᵎ;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Locale;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicMarkableReference;
import p027.C1102;
import p035.AbstractC1220;
import p052.C1408;
import p070.C1629;
import p105.C1924;
import p105.C1925;
import p105.C1927;
import p105.InterfaceC1922;
import p105.RunnableC1926;
import p122.AbstractC2114;
import p122.AbstractC2121;
import p122.C2035;
import p122.C2074;
import p122.C2086;
import p122.C2089;
import p122.C2096;
import p122.C2101;
import p122.C2119;
import p127.C2150;
import p131.AbstractC2195;
import p131.C2194;
import p137.C2282;
import p187.C2841;
import p192.InterfaceC2878;
import p220.AbstractC3033;
import p220.C3029;
import p220.C3031;
import p220.C3032;
import p229.C3125;
import p234.C3194;
import p234.C3195;
import p234.C3196;
import p252.C3309;
import p252.C3311;
import p262.C3433;
import p366.C4476;
import p404.C4799;
import ʿʿ.ʽ;

/* renamed from: ﹳˎ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4894 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C1927 f18247;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C3433 f18249;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C3311 f18250;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2282 f18251;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C4799 f18252;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2194 f18254;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final InterfaceC2878 f18255;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C3194 f18256;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public C4898 f18257;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C4906 f18258;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1102 f18260;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f18261;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C4888 f18262;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C4887 f18263;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public static final C3196 f18246 = new C3196(3);

    /* renamed from: יـ, reason: contains not printable characters */
    public static final Charset f18245 = Charset.forName("UTF-8");

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final C3032 f18253 = new C3032();

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final C3032 f18248 = new C3032();

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final C3032 f18259 = new C3032();

    public C4894(Context context, C4887 c4887, C1102 c1102, C3194 c3194, C3433 c3433, C4906 c4906, C2282 c2282, C1927 c1927, C4799 c4799, C3311 c3311, InterfaceC2878 interfaceC2878, C4888 c4888, C2194 c2194) {
        new AtomicBoolean(false);
        this.f18261 = context;
        this.f18263 = c4887;
        this.f18260 = c1102;
        this.f18256 = c3194;
        this.f18249 = c3433;
        this.f18258 = c4906;
        this.f18251 = c2282;
        this.f18247 = c1927;
        this.f18250 = c3311;
        this.f18255 = interfaceC2878;
        this.f18262 = c4888;
        this.f18252 = c4799;
        this.f18254 = c2194;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C3029 m9688(C4894 c4894) {
        C3029 c3029;
        c4894.getClass();
        ArrayList arrayList = new ArrayList();
        for (File file : C3194.m7019(((File) c4894.f18256.f12213).listFiles(f18246))) {
            try {
                long parseLong = Long.parseLong(file.getName().substring(3));
                try {
                    Class.forName("com.google.firebase.crash.FirebaseCrash");
                    c3029 = ᵎ.ᵔᵢ((Object) null);
                } catch (ClassNotFoundException unused) {
                    if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                    }
                    c3029 = ᵎ.ˑﹳ(new CallableC4908(c4894, parseLong), new ScheduledThreadPoolExecutor(1));
                }
                arrayList.add(c3029);
            } catch (NumberFormatException unused2) {
                String str = "Could not parse app exception timestamp from file " + file.getName();
            }
            file.delete();
        }
        return ᵎ.ʻٴ(arrayList);
    }

    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.Object, ˈˋ.ˆﾞ] */
    /* JADX WARN: Type inference failed for: r1v17, types: [ˈˋ.ـﹶ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v4, types: [java.lang.Object, ˈˋ.ʾˋ] */
    /* JADX WARN: Type inference failed for: r9v8, types: [ˈˋ.ᵎⁱ, java.lang.Object] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m9689(String str, Boolean bool) {
        String str2;
        String str3;
        String str4;
        String str5;
        int i;
        Integer num;
        long currentTimeMillis = System.currentTimeMillis() / 1000;
        AbstractC1220.m3771("Opening a new session with ID ", str);
        if (Log.isLoggable("FirebaseCrashlytics", 3)) {
        }
        Locale locale = Locale.US;
        C4887 c4887 = this.f18263;
        C4906 c4906 = this.f18258;
        C2035 c2035 = new C2035(c4887.f18225, c4906.f18315, c4906.f18311, c4887.m9675().f18239, AbstractC4892.m9686(c4906.f18309 != null ? 4 : 1), c4906.f18312);
        String str6 = Build.VERSION.RELEASE;
        String str7 = Build.VERSION.CODENAME;
        C2089 c2089 = new C2089(AbstractC4901.m9702());
        Context context = this.f18261;
        StatFs statFs = new StatFs(Environment.getDataDirectory().getPath());
        long blockCount = statFs.getBlockCount() * statFs.getBlockSize();
        EnumC4909 enumC4909 = EnumC4909.f18326;
        String str8 = Build.CPU_ABI;
        if (!TextUtils.isEmpty(str8)) {
            EnumC4909 enumC49092 = (EnumC4909) EnumC4909.f18327.get(str8.toLowerCase(locale));
            if (enumC49092 != null) {
                enumC4909 = enumC49092;
            }
        } else if (Log.isLoggable("FirebaseCrashlytics", 2)) {
        }
        int ordinal = enumC4909.ordinal();
        String str9 = Build.MODEL;
        int availableProcessors = Runtime.getRuntime().availableProcessors();
        long m9705 = AbstractC4901.m9705(context);
        boolean m9706 = AbstractC4901.m9706();
        int m9699 = AbstractC4901.m9699();
        String str10 = Build.MANUFACTURER;
        String str11 = Build.PRODUCT;
        this.f18250.m7128(str, currentTimeMillis, new C2119(c2035, c2089, new C2074(ordinal, availableProcessors, m9705, blockCount, m9706, m9699)));
        if (!bool.booleanValue() || str == null) {
            str2 = str7;
            str3 = str10;
            str4 = str11;
            str5 = str9;
            i = 4;
        } else {
            C2282 c2282 = this.f18251;
            synchronized (((String) c2282.f8924)) {
                c2282.f8924 = str;
                str4 = str11;
                str5 = str9;
                str2 = str7;
                str3 = str10;
                i = 4;
                ((C2194) c2282.f8928).f8650.m5193(new RunnableC1926(c2282, str, ((C1924) ((AtomicMarkableReference) ((C0229) c2282.f8925).f1646).getReference()).m4868(), ((C1408) c2282.f8930).m4148(), 0));
            }
        }
        C1927 c1927 = this.f18247;
        ((InterfaceC1922) c1927.f7668).mo4863();
        c1927.f7668 = C1927.f7666;
        if (str != null) {
            c1927.f7668 = new C1925(((C3194) c1927.f7667).m7025(str, "userlog"));
        }
        this.f18262.m9679(str);
        C4799 c4799 = this.f18252;
        C4907 c4907 = (C4907) c4799.f18050;
        Charset charset = AbstractC2121.f8298;
        ?? obj = new Object();
        obj.f8008 = "20.0.0";
        C4906 c49062 = c4907.f18318;
        String str12 = c49062.f18314;
        if (str12 == null) {
            throw new NullPointerException("Null gmpAppId");
        }
        obj.f8007 = str12;
        C4887 c48872 = c4907.f18321;
        String str13 = c48872.m9675().f18239;
        if (str13 == null) {
            throw new NullPointerException("Null installationUuid");
        }
        obj.f8001 = str13;
        obj.f8003 = c48872.m9675().f18238;
        obj.f8010 = c48872.m9675().f18237;
        String str14 = c49062.f18315;
        if (str14 == null) {
            throw new NullPointerException("Null buildVersion");
        }
        obj.f8006 = str14;
        String str15 = c49062.f18311;
        if (str15 == null) {
            throw new NullPointerException("Null displayVersion");
        }
        obj.f7998 = str15;
        obj.f7999 = i;
        obj.f8002 = (byte) (obj.f8002 | 1);
        ?? obj2 = new Object();
        obj2.f8240 = false;
        byte b = (byte) (obj2.f8232 | 2);
        obj2.f8231 = currentTimeMillis;
        obj2.f8232 = (byte) (b | 1);
        if (str == null) {
            throw new NullPointerException("Null identifier");
        }
        obj2.f8237 = str;
        String str16 = C4907.f18316;
        if (str16 == null) {
            throw new NullPointerException("Null generator");
        }
        obj2.f8238 = str16;
        String str17 = c48872.f18225;
        if (str17 == null) {
            throw new NullPointerException("Null identifier");
        }
        String str18 = c48872.m9675().f18239;
        C3125 c3125 = c49062.f18312;
        if (((C2150) c3125.f11941) == null) {
            c3125.f11941 = new C2150(c3125);
        }
        C2150 c2150 = (C2150) c3125.f11941;
        String str19 = c2150.f8367;
        if (c2150 == null) {
            c3125.f11941 = new C2150(c3125);
        }
        obj2.f8235 = new C2101(str17, str14, str15, str18, str19, ((C2150) c3125.f11941).f8366);
        ?? obj3 = new Object();
        obj3.f8159 = 3;
        obj3.f8157 = (byte) (obj3.f8157 | 1);
        if (str6 == null) {
            throw new NullPointerException("Null version");
        }
        obj3.f8158 = str6;
        if (str2 == null) {
            throw new NullPointerException("Null buildVersion");
        }
        obj3.f8155 = str2;
        obj3.f8156 = AbstractC4901.m9702();
        obj3.f8157 = (byte) (obj3.f8157 | 2);
        obj2.f8228 = obj3.m5079();
        StatFs statFs2 = new StatFs(Environment.getDataDirectory().getPath());
        int i2 = 7;
        if (!TextUtils.isEmpty(str8) && (num = (Integer) C4907.f18317.get(str8.toLowerCase(locale))) != null) {
            i2 = num.intValue();
        }
        int availableProcessors2 = Runtime.getRuntime().availableProcessors();
        long m97052 = AbstractC4901.m9705(c4907.f18322);
        long blockCount2 = statFs2.getBlockCount() * statFs2.getBlockSize();
        boolean m97062 = AbstractC4901.m9706();
        int m96992 = AbstractC4901.m9699();
        ?? obj4 = new Object();
        obj4.f8043 = i2;
        byte b2 = (byte) (obj4.f8037 | 1);
        obj4.f8037 = b2;
        if (str5 == null) {
            throw new NullPointerException("Null model");
        }
        obj4.f8042 = str5;
        obj4.f8036 = availableProcessors2;
        obj4.f8038 = m97052;
        obj4.f8039 = blockCount2;
        obj4.f8044 = m97062;
        obj4.f8040 = m96992;
        obj4.f8037 = (byte) (((byte) (((byte) (((byte) (((byte) (b2 | 2)) | 4)) | 8)) | 16)) | 32);
        String str20 = str3;
        if (str20 == null) {
            throw new NullPointerException("Null manufacturer");
        }
        obj4.f8041 = str20;
        String str21 = str4;
        if (str21 == null) {
            throw new NullPointerException("Null modelClass");
        }
        obj4.f8035 = str21;
        obj2.f8230 = obj4.m5075();
        obj2.f8239 = 3;
        obj2.f8232 = (byte) (obj2.f8232 | 4);
        obj.f8000 = obj2.m5084();
        C2096 m5073 = obj.m5073();
        C3194 c3194 = ((C3195) c4799.f18053).f12227;
        AbstractC2114 abstractC2114 = m5073.f8200;
        if (abstractC2114 == null) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
                return;
            } else {
                return;
            }
        }
        String str22 = ((C2086) abstractC2114).f8168;
        try {
            C3195.f12222.getClass();
            C3195.m7031(c3194.m7025(str22, "report"), C2841.f10646.ﾞᴵ(m5073));
            File m7025 = c3194.m7025(str22, "start-time");
            long j = ((C2086) abstractC2114).f8163;
            OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(m7025), C3195.f12221);
            try {
                outputStreamWriter.write("");
                m7025.setLastModified(j * 1000);
                outputStreamWriter.close();
            } finally {
            }
        } catch (IOException e) {
            AbstractC1220.m3771("Could not persist report for session ", str22);
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m9690(C1629 c1629) {
        C2194.m5195();
        C4898 c4898 = this.f18257;
        if (c4898 != null && c4898.f18272.get()) {
            return false;
        }
        if (Log.isLoggable("FirebaseCrashlytics", 2)) {
        }
        try {
            m9693(true, c1629, true);
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            }
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String m9691() {
        Context context = this.f18261;
        int m9700 = AbstractC4901.m9700(context, "com.google.firebase.crashlytics.version_control_info", "string");
        String string = m9700 == 0 ? null : context.getResources().getString(m9700);
        if (string != null) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            }
            return Base64.encodeToString(string.getBytes(f18245), 0);
        }
        ClassLoader classLoader = C4894.class.getClassLoader();
        InputStream kFAe = classLoader == null ? null : ProtectedTvPlayerApplication.kFAe(classLoader, "META-INF/version-control-info.textproto");
        if (kFAe == null) {
            if (kFAe != null) {
                kFAe.close();
            }
            return null;
        }
        try {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = kFAe.read(bArr);
                    if (read == -1) {
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        byteArrayOutputStream.close();
                        String encodeToString = Base64.encodeToString(byteArray, 0);
                        kFAe.close();
                        return encodeToString;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
            } finally {
            }
        } catch (Throwable th) {
            try {
                kFAe.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m9692(C3029 c3029) {
        C3029 c30292;
        C3029 m5196;
        C3032 c3032 = this.f18253;
        C3194 c3194 = ((C3195) this.f18252.f18053).f12227;
        if (C3194.m7019(((File) c3194.f12219).listFiles()).isEmpty() && C3194.m7019(((File) c3194.f12216).listFiles()).isEmpty() && C3194.m7019(((File) c3194.f12217).listFiles()).isEmpty()) {
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            }
            c3032.m6577(Boolean.FALSE);
            return;
        }
        C3309 c3309 = C3309.f12735;
        c3309.m7121("Crash reports are available to be sent.");
        C1102 c1102 = this.f18260;
        if (c1102.m3489()) {
            if (Log.isLoggable("FirebaseCrashlytics", 3)) {
            }
            c3032.m6577(Boolean.FALSE);
            m5196 = ᵎ.ᵔᵢ(Boolean.TRUE);
        } else {
            c3309.m7123("Automatic data collection is disabled.");
            c3309.m7121("Notifying that unsent reports are available.");
            c3032.m6577(Boolean.TRUE);
            synchronized (c1102.f4298) {
                c30292 = ((C3032) c1102.f4300).f11560;
            }
            C4476 c4476 = new C4476(4);
            c30292.getClass();
            ʽ r3 = AbstractC3033.f11562;
            C3029 c30293 = new C3029();
            c30292.f11553.m1588(new C3031(r3, c4476, c30293));
            c30292.m6568();
            c3309.m7123("Waiting for send/deleteUnsentReports to be called.");
            m5196 = AbstractC2195.m5196(c30293, this.f18248.f11560);
        }
        m5196.m6569(this.f18254.f8651, new C3125(this, c3029, 24, false));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:222:0x0208  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x03ef  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x013f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v24, types: [java.lang.Object, ˈˋ.ʽʽ] */
    /* JADX WARN: Type inference failed for: r11v24 */
    /* JADX WARN: Type inference failed for: r11v25, types: [int] */
    /* JADX WARN: Type inference failed for: r11v53, types: [ˈˋ.ˈʿ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v58 */
    /* JADX WARN: Type inference failed for: r12v32, types: [java.lang.Object, ˈˋ.ʿ] */
    /* JADX WARN: Type inference failed for: r32v0, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object, ˈˋ.ʽʽ] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9693(boolean r32, p070.C1629 r33, boolean r34) {
        /*
            Method dump skipped, instructions count: 1885
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p411.C4894.m9693(boolean, ʾٴ.ⁱˊ, boolean):void");
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m9694() {
        try {
            String m9691 = m9691();
            if (m9691 != null) {
                try {
                    this.f18251.m5327(m9691);
                } catch (IllegalArgumentException e) {
                    Context context = this.f18261;
                    if (context != null && (context.getApplicationInfo().flags & 2) != 0) {
                        throw e;
                    }
                }
            }
        } catch (IOException e2) {
        }
    }
}
