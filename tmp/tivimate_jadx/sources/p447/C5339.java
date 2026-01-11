package p447;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.content.pm.Signature;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.ext.SdkExtensions;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.InterfaceC0462;
import j$.util.Objects;
import java.io.ByteArrayInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.security.cert.CertificateException;
import java.security.cert.CertificateFactory;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Random;
import java.util.TreeSet;
import java.util.concurrent.atomic.AtomicLong;
import javax.security.auth.x500.X500Principal;
import p030.C1134;
import p172.C2653;
import p172.C2654;
import p233.C3191;
import p296.AbstractC3659;
import p319.AbstractC3932;
import p319.C3940;
import p458.C5411;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ᵢﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5339 extends AbstractC5276 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public SecureRandom f20314;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final AtomicLong f20315;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public Integer f20316;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C5411 f20317;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public Boolean f20318;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f20319;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static final String[] f20313 = {"firebase_", "google_", "ga_"};

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static final String[] f20312 = {"_err"};

    public C5339(C5322 c5322) {
        super(c5322);
        this.f20316 = null;
        this.f20315 = new AtomicLong(0L);
    }

    /* renamed from: ʾˏ, reason: contains not printable characters */
    public static void m10656(C5351 c5351, Bundle bundle, boolean z) {
        if (bundle != null && c5351 != null) {
            if (!bundle.containsKey("_sc") || z) {
                String str = c5351.f20371;
                if (str != null) {
                    bundle.putString("_sn", str);
                } else {
                    bundle.remove("_sn");
                }
                String str2 = c5351.f20370;
                if (str2 != null) {
                    bundle.putString("_sc", str2);
                } else {
                    bundle.remove("_sc");
                }
                bundle.putLong("_si", c5351.f20367);
                return;
            }
            z = false;
        }
        if (bundle != null && c5351 == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    /* renamed from: ʿʽ, reason: contains not printable characters */
    public static boolean m10657(String str, String[] strArr) {
        AbstractC3659.m7687(strArr);
        for (String str2 : strArr) {
            if (Objects.equals(str, str2)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ˆˑ, reason: contains not printable characters */
    public static boolean m10658(String str) {
        String str2 = (String) AbstractC5321.f20124.m10388(null);
        return str2.equals("*") || Arrays.asList(str2.split(",")).contains(str);
    }

    /* renamed from: ˈʻ, reason: contains not printable characters */
    public static boolean m10659(Object obj) {
        return (obj instanceof Parcelable[]) || (obj instanceof ArrayList) || (obj instanceof Bundle);
    }

    /* renamed from: ˊˊ, reason: contains not printable characters */
    public static long m10660(byte[] bArr) {
        AbstractC3659.m7687(bArr);
        int length = bArr.length;
        if (length <= 0) {
            throw new IllegalStateException();
        }
        int i = 0;
        long j = 0;
        for (int i2 = length - 1; i2 >= 0 && i2 >= bArr.length - 8; i2--) {
            j += (bArr[i2] & 255) << i;
            i += 8;
        }
        return j;
    }

    /* renamed from: ˊﹳ, reason: contains not printable characters */
    public static int m10661() {
        if (Build.VERSION.SDK_INT < 30 || SdkExtensions.getExtensionVersion(30) <= 3) {
            return 0;
        }
        return SdkExtensions.getExtensionVersion(1000000);
    }

    /* renamed from: ˊﾞ, reason: contains not printable characters */
    public static boolean m10662(Context context) {
        AbstractC3659.m7687(context);
        return Build.VERSION.SDK_INT >= 24 ? m10666(context, "com.google.android.gms.measurement.AppMeasurementJobService") : m10666(context, "com.google.android.gms.measurement.AppMeasurementService");
    }

    /* renamed from: ˎᵎ, reason: contains not printable characters */
    public static boolean m10663(Context context) {
        ActivityInfo receiverInfo;
        AbstractC3659.m7687(context);
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (receiverInfo = packageManager.getReceiverInfo(new ComponentName(context, "com.google.android.gms.measurement.AppMeasurementReceiver"), 0)) != null) {
                if (receiverInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public static String m10664(int i, String str, boolean z) {
        if (str == null) {
            return null;
        }
        if (str.codePointCount(0, str.length()) <= i) {
            return str;
        }
        if (z) {
            return String.valueOf(str.substring(0, str.offsetByCodePoints(0, i))).concat("...");
        }
        return null;
    }

    /* renamed from: יי, reason: contains not printable characters */
    public static boolean m10665(String str) {
        AbstractC3659.m7680(str);
        return str.charAt(0) != '_' || str.equals("_ep");
    }

    /* renamed from: ـʻ, reason: contains not printable characters */
    public static boolean m10666(Context context, String str) {
        ServiceInfo serviceInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(context, str), 0)) != null) {
                if (serviceInfo.enabled) {
                    return true;
                }
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }

    /* renamed from: ـˑ, reason: contains not printable characters */
    public static final boolean m10667(int i, Bundle bundle) {
        if (bundle == null || bundle.getLong("_err") != 0) {
            return false;
        }
        bundle.putLong("_err", i);
        return true;
    }

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public static void m10668(InterfaceC5292 interfaceC5292, String str, int i, String str2, String str3, int i2) {
        Bundle bundle = new Bundle();
        m10667(i, bundle);
        if (!TextUtils.isEmpty(str2) && !TextUtils.isEmpty(str3)) {
            bundle.putString(str2, str3);
        }
        if (i == 6 || i == 7 || i == 2) {
            bundle.putLong("_el", i2);
        }
        interfaceC5292.mo9146(str, "_err", bundle);
    }

    /* renamed from: ᵢʻ, reason: contains not printable characters */
    public static boolean m10669(String str) {
        return !TextUtils.isEmpty(str) && str.startsWith("_");
    }

    /* renamed from: ⁱʾ, reason: contains not printable characters */
    public static ArrayList m10670(List list) {
        if (list == null) {
            return new ArrayList(0);
        }
        ArrayList arrayList = new ArrayList(list.size());
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C5287 c5287 = (C5287) it.next();
            Bundle bundle = new Bundle();
            bundle.putString("app_id", c5287.f19945);
            bundle.putString("origin", c5287.f19951);
            bundle.putLong("creation_timestamp", c5287.f19946);
            bundle.putString("name", c5287.f19944.f19705);
            Object m10309 = c5287.f19944.m10309();
            AbstractC3659.m7687(m10309);
            AbstractC5218.m10207(bundle, m10309);
            bundle.putBoolean("active", c5287.f19952);
            String str = c5287.f19948;
            if (str != null) {
                bundle.putString("trigger_event_name", str);
            }
            C5279 c5279 = c5287.f19950;
            if (c5279 != null) {
                bundle.putString("timed_out_event_name", c5279.f19912);
                C5294 c5294 = c5279.f19914;
                if (c5294 != null) {
                    bundle.putBundle("timed_out_event_params", c5294.m10488());
                }
            }
            bundle.putLong("trigger_timeout", c5287.f19947);
            C5279 c52792 = c5287.f19954;
            if (c52792 != null) {
                bundle.putString("triggered_event_name", c52792.f19912);
                C5294 c52942 = c52792.f19914;
                if (c52942 != null) {
                    bundle.putBundle("triggered_event_params", c52942.m10488());
                }
            }
            bundle.putLong("triggered_timestamp", c5287.f19944.f19700);
            bundle.putLong("time_to_live", c5287.f19949);
            C5279 c52793 = c5287.f19953;
            if (c52793 != null) {
                bundle.putString("expired_event_name", c52793.f19912);
                C5294 c52943 = c52793.f19914;
                if (c52943 != null) {
                    bundle.putBundle("expired_event_params", c52943.m10488());
                }
            }
            arrayList.add(bundle);
        }
        return arrayList;
    }

    /* renamed from: ﾞˊ, reason: contains not printable characters */
    public static byte[] m10671(Parcelable parcelable) {
        if (parcelable == null) {
            return null;
        }
        Parcel obtain = Parcel.obtain();
        try {
            parcelable.writeToParcel(obtain, 0);
            return obtain.marshall();
        } finally {
            obtain.recycle();
        }
    }

    /* renamed from: ﾞˏ, reason: contains not printable characters */
    public static MessageDigest m10672() {
        MessageDigest messageDigest;
        for (int i = 0; i < 2; i++) {
            try {
                messageDigest = MessageDigest.getInstance("MD5");
            } catch (NoSuchAlgorithmException unused) {
            }
            if (messageDigest != null) {
                return messageDigest;
            }
        }
        return null;
    }

    /* renamed from: ʻʻ, reason: contains not printable characters */
    public final int m10673(String str) {
        if (!m10705("event param", str)) {
            return 3;
        }
        if (!m10676("event param", null, null, str)) {
            return 14;
        }
        ((C5322) ((ᵎﹶ) this).ʾˋ).getClass();
        return !m10689(40, "event param", str) ? 3 : 0;
    }

    /* renamed from: ʻʼ, reason: contains not printable characters */
    public final C5279 m10674(String str, Bundle bundle, String str2, long j, boolean z) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        if (m10711(str) != 0) {
            C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10216(c5322.f20199.m10469(str), "Invalid conditional property event name");
            throw new IllegalArgumentException();
        }
        Bundle bundle2 = bundle != null ? new Bundle(bundle) : new Bundle();
        bundle2.putString("_o", str2);
        Bundle m10693 = m10693(str, bundle2, Collections.singletonList("_o"), true);
        if (z) {
            m10693 = m10684(m10693);
        }
        AbstractC3659.m7687(m10693);
        return new C5279(str, new C5294(m10693), str2, j);
    }

    /* renamed from: ʻˆ, reason: contains not printable characters */
    public final void m10675(InterfaceC0462 interfaceC0462, byte[] bArr) {
        Bundle bundle = new Bundle();
        bundle.putByteArray("r", bArr);
        try {
            interfaceC0462.mo1551(bundle);
        } catch (RemoteException e) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10216(e, "Error returning byte array to wrapper");
        }
    }

    /* renamed from: ʻᐧ, reason: contains not printable characters */
    public final boolean m10676(String str, String[] strArr, String[] strArr2, String str2) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if (str2 == null) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20342.m10216(str, "Name is required and can't be null. Type");
            return false;
        }
        for (int i = 0; i < 3; i++) {
            if (str2.startsWith(f20313[i])) {
                C5344 c53442 = c5322.f20193;
                C5322.m10556(c53442);
                c53442.f20342.m10214(str, str2, "Name starts with reserved prefix. Type, name");
                return false;
            }
        }
        if (strArr == null || !m10657(str2, strArr)) {
            return true;
        }
        if (strArr2 != null && m10657(str2, strArr2)) {
            return true;
        }
        C5344 c53443 = c5322.f20193;
        C5322.m10556(c53443);
        c53443.f20342.m10214(str, str2, "Name is reserved. Type, name");
        return false;
    }

    /* renamed from: ʼᵎ, reason: contains not printable characters */
    public final int m10677(String str) {
        if (!m10712("event param", str)) {
            return 3;
        }
        if (!m10676("event param", null, null, str)) {
            return 14;
        }
        ((C5322) ((ᵎﹶ) this).ʾˋ).getClass();
        return !m10689(40, "event param", str) ? 3 : 0;
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final boolean m10678(String str) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if (TextUtils.isEmpty(str)) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20342.m10217("Missing google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI");
            return false;
        }
        AbstractC3659.m7687(str);
        if (str.matches("^1:\\d+:android:[a-f0-9]+$")) {
            return true;
        }
        C5344 c53442 = c5322.f20193;
        C5322.m10556(c53442);
        c53442.f20342.m10216(C5344.m10722(str), "Invalid google_app_id. Firebase Analytics disabled. See https://goo.gl/NAOOOI. provided id");
        return false;
    }

    /* renamed from: ʼﾞ, reason: contains not printable characters */
    public final void m10679(String str, String str2, Bundle bundle, List list, boolean z) {
        int m10677;
        String str3;
        int m10715;
        List list2 = list;
        if (bundle == null) {
            return;
        }
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C5327 c5327 = c5322.f20189;
        C5344 c5344 = c5322.f20193;
        C5286 c5286 = c5322.f20199;
        C5339 c5339 = ((C5322) ((ᵎﹶ) c5327).ʾˋ).f20208;
        C5322.m10560(c5339);
        int i = true != c5339.m10683(231100000) ? 0 : 35;
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        int i2 = 0;
        boolean z2 = false;
        while (it.hasNext()) {
            String str4 = (String) it.next();
            if (list2 == null || !list2.contains(str4)) {
                m10677 = !z ? m10677(str4) : 0;
                if (m10677 == 0) {
                    m10677 = m10673(str4);
                }
            } else {
                m10677 = 0;
            }
            if (m10677 != 0) {
                m10708(bundle, m10677, str4, m10677 == 3 ? str4 : null);
                bundle.remove(str4);
            } else {
                if (m10659(bundle.get(str4))) {
                    C5322.m10556(c5344);
                    c5344.f20347.m10215("Nested Bundle parameters are not allowed; discarded. event name, param name, child param name", str, str2, str4);
                    m10715 = 22;
                    str3 = null;
                } else {
                    str3 = null;
                    m10715 = m10715(str, str4, bundle.get(str4), bundle, list2, z, false);
                }
                if (m10715 != 0 && !"_ev".equals(str4)) {
                    m10708(bundle, m10715, str4, bundle.get(str4));
                    bundle.remove(str4);
                } else if (m10665(str4) && !m10657(str4, AbstractC5218.f19633)) {
                    int i3 = i2 + 1;
                    if (!m10683(231100000)) {
                        C5322.m10556(c5344);
                        c5344.f20342.m10214(c5286.m10473(str), c5286.m10471(bundle), "Item array not supported on client's version of Google Play Services (Android Only)");
                        m10667(23, bundle);
                        bundle.remove(str4);
                    } else if (i3 > i) {
                        if (!c5322.f20189.m10577(str3, AbstractC5321.f20108) || !z2) {
                            C5322.m10556(c5344);
                            C5221 c5221 = c5344.f20342;
                            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 55);
                            sb.append("Item can't contain more than ");
                            sb.append(i);
                            sb.append(" item-scoped custom params");
                            c5221.m10214(c5286.m10473(str), c5286.m10471(bundle), sb.toString());
                        }
                        m10667(28, bundle);
                        bundle.remove(str4);
                        list2 = list;
                        i2 = i3;
                        z2 = true;
                    }
                    list2 = list;
                    i2 = i3;
                }
            }
            list2 = list;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x00b1  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00b7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00ba A[RETURN] */
    /* renamed from: ʽʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m10680() {
        /*
            r12 = this;
            r12.ⁱᴵ()
            java.lang.Object r0 = r12.ʾˋ
            ﹶﾞ.ᵎʻ r0 = (p447.C5322) r0
            ﹶﾞ.ˆﾞ r1 = r0.m10566()
            ﹶﾞ.ﹳـ r0 = r0.f20193
            java.lang.String r1 = r1.m10361()
            boolean r1 = m10658(r1)
            r2 = 0
            if (r1 != 0) goto L1a
            return r2
        L1a:
            int r1 = android.os.Build.VERSION.SDK_INT
            r4 = 0
            r5 = 30
            if (r1 >= r5) goto L24
            r5 = 4
            goto L44
        L24:
            int r1 = android.os.ext.SdkExtensions.getExtensionVersion(r5)
            r5 = 4
            if (r1 >= r5) goto L2e
            r5 = 8
            goto L44
        L2e:
            int r1 = m10661()
            ﹶﾞ.ˈٴ r5 = p447.AbstractC5321.f20120
            java.lang.Object r5 = r5.m10388(r4)
            java.lang.Integer r5 = (java.lang.Integer) r5
            int r5 = r5.intValue()
            if (r1 >= r5) goto L43
            r5 = 16
            goto L44
        L43:
            r5 = r2
        L44:
            java.lang.String r1 = "android.permission.ACCESS_ADSERVICES_ATTRIBUTION"
            boolean r1 = r12.m10695(r1)
            if (r1 != 0) goto L4f
            r7 = 2
            long r5 = r5 | r7
        L4f:
            int r1 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r1 != 0) goto Lb3
            java.lang.Boolean r1 = r12.f20318
            if (r1 != 0) goto La9
            ﾞי.ﹳٴ r1 = r12.m10697()
            r7 = 0
            if (r1 != 0) goto L5f
            goto Laf
        L5f:
            ˈˊ.ﹳᐧ r1 = r1.m10844()
            java.util.concurrent.TimeUnit r8 = java.util.concurrent.TimeUnit.MILLISECONDS     // Catch: java.util.concurrent.TimeoutException -> L87 java.lang.InterruptedException -> L89 java.util.concurrent.ExecutionException -> L8b java.util.concurrent.CancellationException -> L8d
            r9 = 10000(0x2710, double:4.9407E-320)
            java.lang.Object r1 = r1.get(r9, r8)     // Catch: java.util.concurrent.TimeoutException -> L87 java.lang.InterruptedException -> L89 java.util.concurrent.ExecutionException -> L8b java.util.concurrent.CancellationException -> L8d
            java.lang.Integer r1 = (java.lang.Integer) r1     // Catch: java.util.concurrent.TimeoutException -> L87 java.lang.InterruptedException -> L89 java.util.concurrent.ExecutionException -> L8b java.util.concurrent.CancellationException -> L8d
            if (r1 == 0) goto L80
            int r4 = r1.intValue()     // Catch: java.util.concurrent.TimeoutException -> L78 java.lang.InterruptedException -> L7a java.util.concurrent.ExecutionException -> L7c java.util.concurrent.CancellationException -> L7e
            r8 = 1
            if (r4 != r8) goto L80
            r7 = r8
            goto L80
        L78:
            r4 = move-exception
            goto L91
        L7a:
            r4 = move-exception
            goto L91
        L7c:
            r4 = move-exception
            goto L91
        L7e:
            r4 = move-exception
            goto L91
        L80:
            java.lang.Boolean r4 = java.lang.Boolean.valueOf(r7)     // Catch: java.util.concurrent.TimeoutException -> L78 java.lang.InterruptedException -> L7a java.util.concurrent.ExecutionException -> L7c java.util.concurrent.CancellationException -> L7e
            r12.f20318 = r4     // Catch: java.util.concurrent.TimeoutException -> L78 java.lang.InterruptedException -> L7a java.util.concurrent.ExecutionException -> L7c java.util.concurrent.CancellationException -> L7e
            goto L9f
        L87:
            r1 = move-exception
            goto L8e
        L89:
            r1 = move-exception
            goto L8e
        L8b:
            r1 = move-exception
            goto L8e
        L8d:
            r1 = move-exception
        L8e:
            r11 = r4
            r4 = r1
            r1 = r11
        L91:
            p447.C5322.m10556(r0)
            ﹶﾞ.ʼˈ r7 = r0.f20348
            java.lang.String r8 = "Measurement manager api exception"
            r7.m10216(r4, r8)
            java.lang.Boolean r4 = java.lang.Boolean.FALSE
            r12.f20318 = r4
        L9f:
            p447.C5322.m10556(r0)
            ﹶﾞ.ʼˈ r0 = r0.f20350
            java.lang.String r4 = "Measurement manager api status result"
            r0.m10216(r1, r4)
        La9:
            java.lang.Boolean r0 = r12.f20318
            boolean r7 = r0.booleanValue()
        Laf:
            if (r7 != 0) goto Lb3
            r5 = 64
        Lb3:
            int r0 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r0 != 0) goto Lba
            r0 = 1
            return r0
        Lba:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5339.m10680():long");
    }

    /* renamed from: ʽᐧ, reason: contains not printable characters */
    public final void m10681(InterfaceC0462 interfaceC0462, ArrayList arrayList) {
        Bundle bundle = new Bundle();
        bundle.putParcelableArrayList("r", arrayList);
        try {
            interfaceC0462.mo1551(bundle);
        } catch (RemoteException e) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10216(e, "Error returning bundle list to wrapper");
        }
    }

    /* renamed from: ʿˎ, reason: contains not printable characters */
    public final SecureRandom m10682() {
        ⁱᴵ();
        if (this.f20314 == null) {
            this.f20314 = new SecureRandom();
        }
        return this.f20314;
    }

    /* renamed from: ˆʻ, reason: contains not printable characters */
    public final boolean m10683(int i) {
        Boolean bool = ((C5322) ((ᵎﹶ) this).ʾˋ).m10569().f19698;
        if (m10687() < i / 1000) {
            return (bool == null || bool.booleanValue()) ? false : true;
        }
        return true;
    }

    /* renamed from: ˆˎ, reason: contains not printable characters */
    public final Bundle m10684(Bundle bundle) {
        Bundle bundle2 = new Bundle();
        if (bundle != null) {
            for (String str : bundle.keySet()) {
                Object m10686 = m10686(bundle.get(str), str);
                if (m10686 == null) {
                    C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
                    C5344 c5344 = c5322.f20193;
                    C5322.m10556(c5344);
                    c5344.f20347.m10216(c5322.f20199.m10472(str), "Param value can't be null");
                } else {
                    m10707(bundle2, str, m10686);
                }
            }
        }
        return bundle2;
    }

    /* renamed from: ˆﹳ, reason: contains not printable characters */
    public final boolean m10685(String str, String str2) {
        if (!TextUtils.isEmpty(str2)) {
            return true;
        }
        if (TextUtils.isEmpty(str)) {
            return false;
        }
        return ((C5322) ((ᵎﹶ) this).ʾˋ).f20189.m10571("debug.firebase.analytics.app").equals(str);
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final Object m10686(Object obj, String str) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        int i = 500;
        if ("_ev".equals(str)) {
            c5322.f20189.getClass();
            return m10688(Math.max(500, 256), obj, true, true);
        }
        if (m10669(str)) {
            c5322.f20189.getClass();
            i = Math.max(500, 256);
        } else {
            c5322.f20189.getClass();
        }
        return m10688(i, obj, false, true);
    }

    /* renamed from: ˉʽ, reason: contains not printable characters */
    public final int m10687() {
        if (this.f20316 == null) {
            C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
            C3940 c3940 = C3940.f15236;
            Context context = c5322.f20184;
            c3940.getClass();
            int i = AbstractC3932.f15210;
            int i2 = 0;
            try {
                i2 = context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
            } catch (PackageManager.NameNotFoundException unused) {
            }
            this.f20316 = Integer.valueOf(i2 / 1000);
        }
        return this.f20316.intValue();
    }

    /* renamed from: ˊـ, reason: contains not printable characters */
    public final Object m10688(int i, Object obj, boolean z, boolean z2) {
        if (obj == null) {
            return null;
        }
        if ((obj instanceof Long) || (obj instanceof Double)) {
            return obj;
        }
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (obj instanceof Byte) {
            return Long.valueOf(((Byte) obj).byteValue());
        }
        if (obj instanceof Short) {
            return Long.valueOf(((Short) obj).shortValue());
        }
        if (obj instanceof Boolean) {
            return Long.valueOf(true != ((Boolean) obj).booleanValue() ? 0L : 1L);
        }
        if (obj instanceof Float) {
            return Double.valueOf(((Float) obj).doubleValue());
        }
        if ((obj instanceof String) || (obj instanceof Character) || (obj instanceof CharSequence)) {
            return m10664(i, obj.toString(), z);
        }
        if (!z2) {
            return null;
        }
        if (!(obj instanceof Bundle[]) && !(obj instanceof Parcelable[])) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Parcelable parcelable : (Parcelable[]) obj) {
            if (parcelable instanceof Bundle) {
                Bundle m10684 = m10684((Bundle) parcelable);
                if (!m10684.isEmpty()) {
                    arrayList.add(m10684);
                }
            }
        }
        return arrayList.toArray(new Bundle[arrayList.size()]);
    }

    /* renamed from: ˋ, reason: contains not printable characters */
    public final boolean m10689(int i, String str, String str2) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if (str2 == null) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20342.m10216(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.codePointCount(0, str2.length()) <= i) {
            return true;
        }
        C5344 c53442 = c5322.f20193;
        C5322.m10556(c53442);
        c53442.f20342.m10215("Name is too long. Type, maximum supported length, name", str, Integer.valueOf(i), str2);
        return false;
    }

    /* renamed from: ˋˋ, reason: contains not printable characters */
    public final boolean m10690(String str, String str2, int i, Object obj) {
        if (obj == null || (obj instanceof Long) || (obj instanceof Float) || (obj instanceof Integer) || (obj instanceof Byte) || (obj instanceof Short) || (obj instanceof Boolean) || (obj instanceof Double)) {
            return true;
        }
        if (!(obj instanceof String) && !(obj instanceof Character) && !(obj instanceof CharSequence)) {
            return false;
        }
        String obj2 = obj.toString();
        if (obj2.codePointCount(0, obj2.length()) > i) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20347.m10215("Value is too long; discarded. Value kind, name, value length", str, str2, Integer.valueOf(obj2.length()));
            return false;
        }
        return true;
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public final int m10691(Object obj, String str) {
        return "_ldl".equals(str) ? m10690("user property referrer", str, m10709(str), obj) : m10690("user property", str, m10709(str), obj) ? 0 : 7;
    }

    /* renamed from: ˎʼ, reason: contains not printable characters */
    public final void m10692(InterfaceC0462 interfaceC0462, int i) {
        Bundle bundle = new Bundle();
        bundle.putInt("r", i);
        try {
            interfaceC0462.mo1551(bundle);
        } catch (RemoteException e) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10216(e, "Error returning int value to wrapper");
        }
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final Bundle m10693(String str, Bundle bundle, List list, boolean z) {
        int m10677;
        String str2;
        List list2 = list;
        boolean m10657 = m10657(str, AbstractC5218.f19629);
        String str3 = null;
        if (bundle == null) {
            return null;
        }
        Bundle bundle2 = new Bundle(bundle);
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C5327 c5327 = c5322.f20189;
        C5286 c5286 = c5322.f20199;
        C5339 c5339 = ((C5322) ((ᵎﹶ) c5327).ʾˋ).f20208;
        C5322.m10560(c5339);
        int i = c5339.m10683(201500000) ? 100 : 25;
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        int i2 = 0;
        boolean z2 = false;
        while (it.hasNext()) {
            String str4 = (String) it.next();
            if (list2 == null || !list2.contains(str4)) {
                m10677 = !z ? m10677(str4) : 0;
                if (m10677 == 0) {
                    m10677 = m10673(str4);
                }
            } else {
                m10677 = 0;
            }
            if (m10677 != 0) {
                m10708(bundle2, m10677, str4, m10677 == 3 ? str4 : str3);
                bundle2.remove(str4);
            } else {
                int m10715 = m10715(str, str4, bundle.get(str4), bundle2, list2, z, m10657);
                if (m10715 == 17) {
                    m10708(bundle2, 17, str4, Boolean.FALSE);
                } else if (m10715 != 0 && !"_ev".equals(str4)) {
                    m10708(bundle2, m10715, m10715 == 21 ? str : str4, bundle.get(str4));
                    bundle2.remove(str4);
                }
                if (m10665(str4)) {
                    i2++;
                    if (i2 > i) {
                        if (c5322.f20189.m10577(str3, AbstractC5321.f20108) && z2) {
                            str2 = str3;
                        } else {
                            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 37);
                            sb.append("Event can't contain more than ");
                            sb.append(i);
                            sb.append(" params");
                            String sb2 = sb.toString();
                            C5344 c5344 = c5322.f20193;
                            C5322.m10556(c5344);
                            str2 = str3;
                            c5344.f20342.m10214(c5286.m10473(str), c5286.m10471(bundle), sb2);
                        }
                        m10667(5, bundle2);
                        bundle2.remove(str4);
                        z2 = true;
                        list2 = list;
                        str3 = str2;
                    } else {
                        list2 = list;
                    }
                }
            }
            str2 = str3;
            list2 = list;
            str3 = str2;
        }
        return bundle2;
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public final void m10694(Parcelable[] parcelableArr, int i) {
        AbstractC3659.m7687(parcelableArr);
        for (Parcelable parcelable : parcelableArr) {
            Bundle bundle = (Bundle) parcelable;
            Iterator it = new TreeSet(bundle.keySet()).iterator();
            int i2 = 0;
            boolean z = false;
            while (it.hasNext()) {
                String str = (String) it.next();
                if (m10665(str) && !m10657(str, AbstractC5218.f19633) && (i2 = i2 + 1) > i) {
                    C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
                    C5327 c5327 = c5322.f20189;
                    C5286 c5286 = c5322.f20199;
                    if (!c5327.m10577(null, AbstractC5321.f20108) || !z) {
                        C5344 c5344 = c5322.f20193;
                        C5322.m10556(c5344);
                        C5221 c5221 = c5344.f20342;
                        StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 60);
                        sb.append("Param can't contain more than ");
                        sb.append(i);
                        sb.append(" item-scoped custom parameters");
                        c5221.m10214(c5286.m10472(str), c5286.m10471(bundle), sb.toString());
                    }
                    m10667(28, bundle);
                    bundle.remove(str);
                    z = true;
                }
            }
        }
    }

    /* renamed from: ˎـ, reason: contains not printable characters */
    public final boolean m10695(String str) {
        ⁱᴵ();
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if (C3191.m7014(c5322.f20184).f12211.checkCallingOrSelfPermission(str) == 0) {
            return true;
        }
        C5344 c5344 = c5322.f20193;
        C5322.m10556(c5344);
        c5344.f20340.m10216(str, "Permission not granted");
        return false;
    }

    /* renamed from: ˏʻ, reason: contains not printable characters */
    public final void m10696(InterfaceC0462 interfaceC0462, boolean z) {
        Bundle bundle = new Bundle();
        bundle.putBoolean("r", z);
        try {
            interfaceC0462.mo1551(bundle);
        } catch (RemoteException e) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10216(e, "Error returning boolean value to wrapper");
        }
    }

    /* renamed from: ˏⁱ, reason: contains not printable characters */
    public final C5411 m10697() {
        C1134 c1134;
        if (this.f20317 == null) {
            Context context = ((C5322) ((ᵎﹶ) this).ʾˋ).f20184;
            StringBuilder sb = new StringBuilder("AdServicesInfo.version=");
            int i = Build.VERSION.SDK_INT;
            C2653 c2653 = C2653.f10082;
            sb.append(i >= 33 ? c2653.m5934() : 0);
            sb.toString();
            if ((i >= 33 ? c2653.m5934() : 0) >= 5) {
                c1134 = new C1134(context, 1);
            } else {
                C2654 c2654 = C2654.f10083;
                if (((i == 31 || i == 32) ? c2654.m5935() : 0) >= 9) {
                    try {
                        c1134 = new C1134(context, 0);
                    } catch (NoClassDefFoundError unused) {
                        StringBuilder sb2 = new StringBuilder("Unable to find adservices code, check manifest for uses-library tag, versionS=");
                        int i2 = Build.VERSION.SDK_INT;
                        sb2.append((i2 == 31 || i2 == 32) ? c2654.m5935() : 0);
                        sb2.toString();
                    }
                }
                c1134 = null;
            }
            this.f20317 = c1134 != null ? new C5411(c1134) : null;
        }
        return this.f20317;
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final void m10698(C5255 c5255, int i) {
        Bundle bundle = (Bundle) c5255.f19828;
        Iterator it = new TreeSet(bundle.keySet()).iterator();
        int i2 = 0;
        boolean z = false;
        while (it.hasNext()) {
            String str = (String) it.next();
            if (m10665(str) && (i2 = i2 + 1) > i) {
                C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
                C5327 c5327 = c5322.f20189;
                C5286 c5286 = c5322.f20199;
                if (!c5327.m10577(null, AbstractC5321.f20108) || !z) {
                    StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 37);
                    sb.append("Event can't contain more than ");
                    sb.append(i);
                    sb.append(" params");
                    String sb2 = sb.toString();
                    C5344 c5344 = c5322.f20193;
                    C5322.m10556(c5344);
                    c5344.f20342.m10214(c5286.m10473((String) c5255.f19826), c5286.m10471(bundle), sb2);
                    m10667(5, bundle);
                }
                bundle.remove(str);
                z = true;
            }
        }
    }

    /* renamed from: ˑˉ, reason: contains not printable characters */
    public final long m10699() {
        long andIncrement;
        long j;
        AtomicLong atomicLong = this.f20315;
        if (atomicLong.get() != 0) {
            AtomicLong atomicLong2 = this.f20315;
            synchronized (atomicLong2) {
                atomicLong2.compareAndSet(-1L, 1L);
                andIncrement = atomicLong2.getAndIncrement();
            }
            return andIncrement;
        }
        synchronized (atomicLong) {
            long nanoTime = System.nanoTime();
            ((C5322) ((ᵎﹶ) this).ʾˋ).f20206.getClass();
            long nextLong = new Random(nanoTime ^ System.currentTimeMillis()).nextLong();
            int i = this.f20319 + 1;
            this.f20319 = i;
            j = nextLong + i;
        }
        return j;
    }

    /* renamed from: ˑﹶ, reason: contains not printable characters */
    public final void m10700(InterfaceC0462 interfaceC0462, long j) {
        Bundle bundle = new Bundle();
        bundle.putLong("r", j);
        try {
            interfaceC0462.mo1551(bundle);
        } catch (RemoteException e) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10216(e, "Error returning long value to wrapper");
        }
    }

    /* renamed from: יʿ, reason: contains not printable characters */
    public final void m10701(Bundle bundle, long j) {
        long j2 = bundle.getLong("_et");
        if (j2 != 0) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10216(Long.valueOf(j2), "Params already contained engagement");
        } else {
            j2 = 0;
        }
        bundle.putLong("_et", j + j2);
    }

    /* renamed from: יˑ, reason: contains not printable characters */
    public final Bundle m10702(Uri uri) {
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        String str8;
        String str9;
        String str10;
        if (uri == null) {
            return null;
        }
        try {
            if (uri.isHierarchical()) {
                str = uri.getQueryParameter("utm_campaign");
                str2 = uri.getQueryParameter("utm_source");
                str3 = uri.getQueryParameter("utm_medium");
                str4 = uri.getQueryParameter("gclid");
                str5 = uri.getQueryParameter("gbraid");
                str6 = uri.getQueryParameter("utm_id");
                str7 = uri.getQueryParameter("dclid");
                str8 = uri.getQueryParameter("srsltid");
                str9 = uri.getQueryParameter("sfmc_id");
            } else {
                str = null;
                str2 = null;
                str3 = null;
                str4 = null;
                str5 = null;
                str6 = null;
                str7 = null;
                str8 = null;
                str9 = null;
            }
            if (TextUtils.isEmpty(str) && TextUtils.isEmpty(str2) && TextUtils.isEmpty(str3) && TextUtils.isEmpty(str4) && TextUtils.isEmpty(str5) && TextUtils.isEmpty(str6) && TextUtils.isEmpty(str7) && TextUtils.isEmpty(str8) && TextUtils.isEmpty(str9)) {
                return null;
            }
            Bundle bundle = new Bundle();
            if (TextUtils.isEmpty(str)) {
                str10 = "sfmc_id";
            } else {
                str10 = "sfmc_id";
                bundle.putString("campaign", str);
            }
            if (!TextUtils.isEmpty(str2)) {
                bundle.putString("source", str2);
            }
            if (!TextUtils.isEmpty(str3)) {
                bundle.putString("medium", str3);
            }
            if (!TextUtils.isEmpty(str4)) {
                bundle.putString("gclid", str4);
            }
            if (!TextUtils.isEmpty(str5)) {
                bundle.putString("gbraid", str5);
            }
            String queryParameter = uri.getQueryParameter("gad_source");
            if (!TextUtils.isEmpty(queryParameter)) {
                bundle.putString("gad_source", queryParameter);
            }
            String queryParameter2 = uri.getQueryParameter("utm_term");
            if (!TextUtils.isEmpty(queryParameter2)) {
                bundle.putString("term", queryParameter2);
            }
            String queryParameter3 = uri.getQueryParameter("utm_content");
            if (!TextUtils.isEmpty(queryParameter3)) {
                bundle.putString("content", queryParameter3);
            }
            String queryParameter4 = uri.getQueryParameter("aclid");
            if (!TextUtils.isEmpty(queryParameter4)) {
                bundle.putString("aclid", queryParameter4);
            }
            String queryParameter5 = uri.getQueryParameter("cp1");
            if (!TextUtils.isEmpty(queryParameter5)) {
                bundle.putString("cp1", queryParameter5);
            }
            String queryParameter6 = uri.getQueryParameter("anid");
            if (!TextUtils.isEmpty(queryParameter6)) {
                bundle.putString("anid", queryParameter6);
            }
            if (!TextUtils.isEmpty(str6)) {
                bundle.putString("campaign_id", str6);
            }
            if (!TextUtils.isEmpty(str7)) {
                bundle.putString("dclid", str7);
            }
            String queryParameter7 = uri.getQueryParameter("utm_source_platform");
            if (!TextUtils.isEmpty(queryParameter7)) {
                bundle.putString("source_platform", queryParameter7);
            }
            String queryParameter8 = uri.getQueryParameter("utm_creative_format");
            if (!TextUtils.isEmpty(queryParameter8)) {
                bundle.putString("creative_format", queryParameter8);
            }
            String queryParameter9 = uri.getQueryParameter("utm_marketing_tactic");
            if (!TextUtils.isEmpty(queryParameter9)) {
                bundle.putString("marketing_tactic", queryParameter9);
            }
            if (!TextUtils.isEmpty(str8)) {
                bundle.putString("srsltid", str8);
            }
            if (!TextUtils.isEmpty(str9)) {
                bundle.putString(str10, str9);
            }
            for (String str11 : uri.getQueryParameterNames()) {
                if (str11.startsWith("gad_")) {
                    String queryParameter10 = uri.getQueryParameter(str11);
                    if (!TextUtils.isEmpty(queryParameter10)) {
                        bundle.putString(str11, queryParameter10);
                    }
                }
            }
            return bundle;
        } catch (UnsupportedOperationException e) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10216(e, "Install referrer url isn't a hierarchical URI");
            return null;
        }
    }

    /* renamed from: יⁱ, reason: contains not printable characters */
    public final void m10703(InterfaceC0462 interfaceC0462, Bundle bundle) {
        try {
            interfaceC0462.mo1551(bundle);
        } catch (RemoteException e) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10216(e, "Error returning bundle value to wrapper");
        }
    }

    /* renamed from: ᐧˏ, reason: contains not printable characters */
    public final String m10704() {
        byte[] bArr = new byte[16];
        m10682().nextBytes(bArr);
        return String.format(Locale.US, "%032x", new BigInteger(1, bArr));
    }

    /* renamed from: ᐧⁱ, reason: contains not printable characters */
    public final boolean m10705(String str, String str2) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if (str2 == null) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20342.m10216(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.length() == 0) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20342.m10216(str, "Name is required and can't be empty. Type");
            return false;
        }
        int codePointAt = str2.codePointAt(0);
        if (!Character.isLetter(codePointAt)) {
            if (codePointAt != 95) {
                C5344 c53443 = c5322.f20193;
                C5322.m10556(c53443);
                c53443.f20342.m10214(str, str2, "Name must start with a letter or _ (underscore). Type, name");
                return false;
            }
            codePointAt = 95;
        }
        int length = str2.length();
        int charCount = Character.charCount(codePointAt);
        while (charCount < length) {
            int codePointAt2 = str2.codePointAt(charCount);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                C5344 c53444 = c5322.f20193;
                C5322.m10556(c53444);
                c53444.f20342.m10214(str, str2, "Name must consist of letters, digits or _ (underscores). Type, name");
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    /* renamed from: ᴵٴ, reason: contains not printable characters */
    public final void m10706(String str, InterfaceC0462 interfaceC0462) {
        Bundle bundle = new Bundle();
        bundle.putString("r", str);
        try {
            interfaceC0462.mo1551(bundle);
        } catch (RemoteException e) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10216(e, "Error returning string value to wrapper");
        }
    }

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public final void m10707(Bundle bundle, String str, Object obj) {
        if (bundle == null) {
            return;
        }
        if (obj instanceof Long) {
            bundle.putLong(str, ((Long) obj).longValue());
            return;
        }
        if (obj instanceof String) {
            bundle.putString(str, String.valueOf(obj));
            return;
        }
        if (obj instanceof Double) {
            bundle.putDouble(str, ((Double) obj).doubleValue());
            return;
        }
        if (obj instanceof Bundle[]) {
            bundle.putParcelableArray(str, (Bundle[]) obj);
            return;
        }
        if (str != null) {
            String simpleName = obj != null ? obj.getClass().getSimpleName() : null;
            C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20347.m10214(c5322.f20199.m10472(str), simpleName, "Not putting event parameter. Invalid value type. name, type");
        }
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public final void m10708(Bundle bundle, int i, String str, Object obj) {
        if (m10667(i, bundle)) {
            ((C5322) ((ᵎﹶ) this).ʾˋ).getClass();
            bundle.putString("_ev", m10664(40, str, true));
            if (obj != null) {
                if ((obj instanceof String) || (obj instanceof CharSequence)) {
                    bundle.putLong("_el", obj.toString().length());
                }
            }
        }
    }

    /* renamed from: ᵢי, reason: contains not printable characters */
    public final int m10709(String str) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if ("_ldl".equals(str)) {
            c5322.getClass();
            return 2048;
        }
        if ("_id".equals(str)) {
            c5322.getClass();
            return 256;
        }
        if ("_lgclid".equals(str)) {
            c5322.getClass();
            return 100;
        }
        c5322.getClass();
        return 36;
    }

    /* renamed from: ᵢᐧ, reason: contains not printable characters */
    public final boolean m10710(Context context, String str) {
        Signature[] signatureArr;
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        X500Principal x500Principal = new X500Principal("CN=Android Debug,O=Android,C=US");
        try {
            PackageInfo m7016 = C3191.m7014(context).m7016(64, str);
            if (m7016 == null || (signatureArr = m7016.signatures) == null || signatureArr.length <= 0) {
                return true;
            }
            return ((X509Certificate) CertificateFactory.getInstance("X.509").generateCertificate(new ByteArrayInputStream(signatureArr[0].toByteArray()))).getSubjectX500Principal().equals(x500Principal);
        } catch (PackageManager.NameNotFoundException e) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10216(e, "Package name not found");
            return true;
        } catch (CertificateException e2) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20343.m10216(e2, "Error obtaining certificate");
            return true;
        }
    }

    /* renamed from: ᵢᵎ, reason: contains not printable characters */
    public final int m10711(String str) {
        if (!m10705("event", str)) {
            return 2;
        }
        if (!m10676("event", AbstractC5218.f19635, AbstractC5218.f19634, str)) {
            return 13;
        }
        ((C5322) ((ᵎﹶ) this).ʾˋ).getClass();
        return !m10689(40, "event", str) ? 2 : 0;
    }

    /* renamed from: ᵢﹳ, reason: contains not printable characters */
    public final boolean m10712(String str, String str2) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if (str2 == null) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20342.m10216(str, "Name is required and can't be null. Type");
            return false;
        }
        if (str2.length() == 0) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20342.m10216(str, "Name is required and can't be empty. Type");
            return false;
        }
        int codePointAt = str2.codePointAt(0);
        if (!Character.isLetter(codePointAt)) {
            C5344 c53443 = c5322.f20193;
            C5322.m10556(c53443);
            c53443.f20342.m10214(str, str2, "Name must start with a letter. Type, name");
            return false;
        }
        int length = str2.length();
        int charCount = Character.charCount(codePointAt);
        while (charCount < length) {
            int codePointAt2 = str2.codePointAt(charCount);
            if (codePointAt2 != 95 && !Character.isLetterOrDigit(codePointAt2)) {
                C5344 c53444 = c5322.f20193;
                C5322.m10556(c53444);
                c53444.f20342.m10214(str, str2, "Name must consist of letters, digits or _ (underscores). Type, name");
                return false;
            }
            charCount += Character.charCount(codePointAt2);
        }
        return true;
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public final void m10713(Bundle bundle, Bundle bundle2) {
        if (bundle2 == null) {
            return;
        }
        for (String str : bundle2.keySet()) {
            if (!bundle.containsKey(str)) {
                C5339 c5339 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20208;
                C5322.m10560(c5339);
                c5339.m10707(bundle, str, bundle2.get(str));
            }
        }
    }

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public final Object m10714(Object obj, String str) {
        return "_ldl".equals(str) ? m10688(m10709(str), obj, true, false) : m10688(m10709(str), obj, false, false);
    }

    @Override // p447.AbstractC5276
    /* renamed from: ﹶˎ */
    public final boolean mo10205() {
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x00c9  */
    /* renamed from: ﾞˋ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int m10715(java.lang.String r13, java.lang.String r14, java.lang.Object r15, android.os.Bundle r16, java.util.List r17, boolean r18, boolean r19) {
        /*
            Method dump skipped, instructions count: 332
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5339.m10715(java.lang.String, java.lang.String, java.lang.Object, android.os.Bundle, java.util.List, boolean, boolean):int");
    }

    /* renamed from: ﾞי, reason: contains not printable characters */
    public final int m10716(String str) {
        if (!m10705("user property", str)) {
            return 6;
        }
        if (!m10676("user property", AbstractC5218.f19626, null, str)) {
            return 15;
        }
        ((C5322) ((ᵎﹶ) this).ʾˋ).getClass();
        return !m10689(24, "user property", str) ? 6 : 0;
    }
}
