package p404;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Rect;
import android.os.Looper;
import android.preference.PreferenceManager;
import android.util.Log;
import android.view.Choreographer;
import android.view.animation.Animation;
import androidx.leanback.widget.C0117;
import androidx.leanback.widget.RunnableC0142;
import ar.tvplayer.core.domain.ـˆ;
import com.google.android.gms.internal.measurement.ᵎ;
import com.google.android.gms.internal.play_billing.AbstractC0542;
import com.google.android.gms.internal.play_billing.C0536;
import com.parse.ʾᵎ;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileWriter;
import java.io.IOException;
import java.lang.reflect.Constructor;
import java.nio.channels.FileChannel;
import java.text.DateFormatSymbols;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Calendar;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
import org.json.JSONException;
import org.json.JSONObject;
import p001.C0766;
import p003.C0781;
import p010.AbstractC0844;
import p010.C0845;
import p027.AbstractC1093;
import p027.C1111;
import p027.C1115;
import p027.InterfaceC1086;
import p031.InterfaceC1141;
import p035.AbstractC1219;
import p035.AbstractC1220;
import p047.C1360;
import p047.C1371;
import p047.InterfaceC1370;
import p051.InterfaceC1390;
import p051.InterfaceC1398;
import p062.C1537;
import p070.C1628;
import p070.C1629;
import p070.C1630;
import p073.C1646;
import p075.C1652;
import p084.C1728;
import p087.AbstractC1746;
import p087.C1740;
import p087.C1750;
import p104.C1920;
import p121.AbstractC2026;
import p121.RunnableC2028;
import p126.InterfaceC2139;
import p131.C2194;
import p133.AbstractC2199;
import p137.AbstractC2305;
import p145.C2405;
import p158.C2537;
import p171.C2645;
import p171.InterfaceC2621;
import p171.InterfaceC2622;
import p171.InterfaceC2632;
import p179.AbstractC2673;
import p179.C2685;
import p179.C2721;
import p211.C2980;
import p220.C3029;
import p220.C3032;
import p220.InterfaceC3037;
import p254.C3320;
import p255.AbstractC3355;
import p255.C3352;
import p255.C3359;
import p255.C3368;
import p257.C3388;
import p257.InterfaceC3394;
import p262.C3433;
import p305.AbstractC3712;
import p305.C3724;
import p305.C3732;
import p324.AbstractC3999;
import p329.InterfaceC4104;
import p330.C4171;
import p336.C4221;
import p343.InterfaceC4267;
import p364.InterfaceC4437;
import p411.AbstractC4901;
import p462.InterfaceC5418;
import ˊⁱ.ˑﹳ;
import ٴﾞ.ˆʾ;
import ᵢ.ﹳٴ;
import ﹳˋ.ٴﹶ;
import ﹳי.ʽ;

/* renamed from: ﹳʽ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4790 implements InterfaceC4789, InterfaceC1086, InterfaceC1370, InterfaceC5418, InterfaceC3037, InterfaceC1398, InterfaceC2621 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Object f18034;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f18035;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Object f18036;

    public C4790(int i) {
        this.f18035 = i;
        switch (i) {
            case 9:
                this.f18036 = new AtomicReference();
                this.f18034 = new C3368(0);
                return;
            case 12:
                this.f18036 = new C1740(1000L);
                this.f18034 = AbstractC2199.m5199(10, new ˆʾ(9));
                return;
            case 13:
                this.f18036 = new C3732();
                this.f18034 = new C1728();
                return;
            case 18:
                this.f18036 = Choreographer.getInstance();
                this.f18034 = Looper.myLooper();
                return;
            case 22:
                this.f18036 = new C3368(0);
                this.f18034 = new C3352();
                return;
            case 29:
                this.f18036 = new C3388(null);
                this.f18034 = new HashMap();
                return;
            default:
                ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(512);
                this.f18036 = byteArrayOutputStream;
                this.f18034 = new DataOutputStream(byteArrayOutputStream);
                return;
        }
    }

    public C4790(int i, int i2) {
        this.f18035 = 16;
        this.f18036 = new int[]{i, i2};
        this.f18034 = new float[]{0.0f, 1.0f};
    }

    public C4790(int i, int i2, int i3) {
        this.f18035 = 16;
        this.f18036 = new int[]{i, i2, i3};
        this.f18034 = new float[]{0.0f, 0.5f, 1.0f};
    }

    public /* synthetic */ C4790(int i, Object obj) {
        this.f18035 = i;
        this.f18034 = obj;
    }

    public /* synthetic */ C4790(int i, boolean z) {
        this.f18035 = i;
    }

    public C4790(Animator animator) {
        this.f18035 = 26;
        this.f18036 = null;
        AnimatorSet animatorSet = new AnimatorSet();
        this.f18034 = animatorSet;
        animatorSet.play(animator);
    }

    public C4790(Context context, String str, String str2) {
        this.f18035 = 14;
        if (str == null) {
            throw new IllegalArgumentException("keysetName cannot be null");
        }
        this.f18034 = str;
        Context applicationContext = context.getApplicationContext();
        if (str2 == null) {
            this.f18036 = PreferenceManager.getDefaultSharedPreferences(applicationContext).edit();
        } else {
            this.f18036 = applicationContext.getSharedPreferences(str2, 0).edit();
        }
    }

    public C4790(Animation animation) {
        this.f18035 = 26;
        this.f18036 = animation;
        this.f18034 = null;
    }

    public C4790(C0117 c0117) {
        this.f18035 = 1;
        this.f18034 = c0117;
        this.f18036 = new Rect();
    }

    public /* synthetic */ C4790(Object obj, int i, Object obj2) {
        this.f18035 = i;
        this.f18034 = obj;
        this.f18036 = obj2;
    }

    public /* synthetic */ C4790(Object obj, Object obj2, int i, boolean z) {
        this.f18035 = i;
        this.f18036 = obj;
        this.f18034 = obj2;
    }

    public C4790(String str) {
        this.f18035 = 23;
        this.f18036 = str.concat(".lck");
    }

    public C4790(ArrayList arrayList, ArrayList arrayList2) {
        this.f18035 = 16;
        int size = arrayList.size();
        this.f18036 = new int[size];
        this.f18034 = new float[size];
        for (int i = 0; i < size; i++) {
            ((int[]) this.f18036)[i] = ((Integer) arrayList.get(i)).intValue();
            ((float[]) this.f18034)[i] = ((Float) arrayList2.get(i)).floatValue();
        }
    }

    public C4790(Locale locale) {
        this.f18035 = 27;
        this.f18036 = locale;
        this.f18034 = DateFormatSymbols.getInstance(locale).getShortMonths();
        Calendar calendar = Calendar.getInstance(locale);
        ٴﹶ.ᵔﹳ(calendar.getMinimum(5), calendar.getMaximum(5));
    }

    public C4790(AbstractC1219 abstractC1219) {
        this.f18035 = 7;
        this.f18036 = abstractC1219;
        this.f18034 = Collections.newSetFromMap(new IdentityHashMap());
    }

    public C4790(C2537 c2537) {
        this.f18035 = 19;
        this.f18036 = c2537;
        this.f18034 = new AtomicBoolean(false);
    }

    public C4790(C3724 c3724) {
        this.f18035 = 28;
        this.f18036 = c3724;
        this.f18034 = new C3732();
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public static C4790 m9554(C4171 c4171) {
        return new C4790(c4171, 0, AbstractC4804.m9601(c4171.m8519()));
    }

    @Override // p343.InterfaceC4267
    public Object get() {
        final Context context = (Context) ((C1652) this.f18036).f6699;
        InterfaceC2139 interfaceC2139 = (InterfaceC2139) ((InterfaceC4267) this.f18034).get();
        final int i = 0;
        return C1537.m4340(C4221.f15695, new ˑﹳ(22, new ـˆ(20)), AbstractC3999.m8179(interfaceC2139), new InterfaceC4104() { // from class: ʾˈ.ˉˆ
            @Override // p329.InterfaceC4104
            /* renamed from: ʽ */
            public final Object mo716() {
                switch (i) {
                    case 0:
                        return AbstractC2026.m5059(context, "aqs/sessionConfigsDataStore.data");
                    default:
                        return AbstractC2026.m5059(context, "aqs/sessionDataStore.data");
                }
            }
        });
    }

    @Override // p051.InterfaceC1398
    public /* synthetic */ void reset() {
    }

    public String toString() {
        switch (this.f18035) {
            case 3:
                String str = "[ ";
                if (((C0845) this.f18036) != null) {
                    for (int i = 0; i < 9; i++) {
                        StringBuilder m3020 = AbstractC0844.m3020(str);
                        m3020.append(((C0845) this.f18036).f3605[i]);
                        m3020.append(" ");
                        str = m3020.toString();
                    }
                }
                StringBuilder m3017 = AbstractC0844.m3017(str, "] ");
                m3017.append((C0845) this.f18036);
                return m3017.toString();
            case 29:
                StringBuilder sb = new StringBuilder("GroupedLinkedMap( ");
                C3388 c3388 = (C3388) this.f18036;
                C3388 c33882 = c3388.f13232;
                boolean z = false;
                while (!c33882.equals(c3388)) {
                    sb.append('{');
                    sb.append(c33882.f13235);
                    sb.append(':');
                    ArrayList arrayList = c33882.f13234;
                    sb.append(arrayList != null ? arrayList.size() : 0);
                    sb.append("}, ");
                    c33882 = c33882.f13232;
                    z = true;
                }
                if (z) {
                    sb.delete(sb.length() - 2, sb.length());
                }
                sb.append(" )");
                return sb.toString();
            default:
                return super.toString();
        }
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public void m9555(C2980 c2980) {
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("Fid", c2980.f11386);
            jSONObject.put("Status", AbstractC0844.m3018(c2980.f11385));
            jSONObject.put("AuthToken", c2980.f11381);
            jSONObject.put("RefreshToken", c2980.f11382);
            jSONObject.put("TokenCreationEpochInSecs", c2980.f11387);
            jSONObject.put("ExpiresInSecs", c2980.f11383);
            jSONObject.put("FisError", c2980.f11384);
            C2405 c2405 = (C2405) this.f18034;
            c2405.m5512();
            File createTempFile = File.createTempFile("PersistedInstallation", "tmp", c2405.f9296.getFilesDir());
            FileOutputStream fileOutputStream = new FileOutputStream(createTempFile);
            fileOutputStream.write(jSONObject.toString().getBytes("UTF-8"));
            fileOutputStream.close();
            if (createTempFile.renameTo(m9567())) {
            } else {
                throw new IOException("unable to rename the tmpfile to PersistedInstallation");
            }
        } catch (IOException | JSONException unused) {
        }
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public void m9556(int i, int i2) {
        int[] iArr = (int[]) this.f18036;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        m9558(i3);
        int[] iArr2 = (int[]) this.f18036;
        System.arraycopy(iArr2, i3, iArr2, i, (iArr2.length - i) - i2);
        int[] iArr3 = (int[]) this.f18036;
        Arrays.fill(iArr3, iArr3.length - i2, iArr3.length, -1);
        ArrayList arrayList = (ArrayList) this.f18034;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C2721 c2721 = (C2721) ((ArrayList) this.f18034).get(size);
            int i4 = c2721.f10358;
            if (i4 >= i) {
                if (i4 < i3) {
                    ((ArrayList) this.f18034).remove(size);
                } else {
                    c2721.f10358 = i4 - i2;
                }
            }
        }
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public void m9557(AbstractC2673 abstractC2673, C0781 c0781) {
        C3368 c3368 = (C3368) this.f18036;
        C2685 c2685 = (C2685) c3368.get(abstractC2673);
        if (c2685 == null) {
            c2685 = C2685.m6033();
            c3368.put(abstractC2673, c2685);
        }
        c2685.f10228 = c0781;
        c2685.f10230 |= 8;
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public void m9558(int i) {
        int[] iArr = (int[]) this.f18036;
        if (iArr == null) {
            int[] iArr2 = new int[Math.max(i, 10) + 1];
            this.f18036 = iArr2;
            Arrays.fill(iArr2, -1);
        } else if (i >= iArr.length) {
            int length = iArr.length;
            while (length <= i) {
                length *= 2;
            }
            int[] iArr3 = new int[length];
            this.f18036 = iArr3;
            System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            int[] iArr4 = (int[]) this.f18036;
            Arrays.fill(iArr4, iArr.length, iArr4.length, -1);
        }
    }

    @Override // p171.InterfaceC2621
    /* renamed from: ʽ */
    public C2645 mo2959(InterfaceC2622 interfaceC2622, long j) {
        long position = interfaceC2622.getPosition();
        int min = (int) Math.min(20000L, interfaceC2622.getLength() - position);
        C3732 c3732 = (C3732) this.f18034;
        c3732.m7886(min);
        interfaceC2622.mo4576(c3732.f14534, 0, min);
        int i = -1;
        int i2 = -1;
        long j2 = -9223372036854775807L;
        while (c3732.m7904() >= 4) {
            if (C1920.m4858(c3732.f14533, c3732.f14534) != 442) {
                c3732.m7900(1);
            } else {
                c3732.m7900(4);
                long m7143 = C3320.m7143(c3732);
                if (m7143 != -9223372036854775807L) {
                    long m7831 = ((C3724) this.f18036).m7831(m7143);
                    if (m7831 > j) {
                        return j2 == -9223372036854775807L ? new C2645(-1, m7831, position) : new C2645(0, -9223372036854775807L, position + i2);
                    }
                    if (m7831 + 100000 > j) {
                        return new C2645(0, -9223372036854775807L, position + c3732.f14533);
                    }
                    j2 = m7831;
                    i2 = c3732.f14533;
                }
                int i3 = c3732.f14532;
                if (c3732.m7904() >= 10) {
                    c3732.m7900(9);
                    int m7874 = c3732.m7874() & 7;
                    if (c3732.m7904() >= m7874) {
                        c3732.m7900(m7874);
                        if (c3732.m7904() >= 4) {
                            if (C1920.m4858(c3732.f14533, c3732.f14534) == 443) {
                                c3732.m7900(4);
                                int m7895 = c3732.m7895();
                                if (c3732.m7904() < m7895) {
                                    c3732.m7896(i3);
                                } else {
                                    c3732.m7900(m7895);
                                }
                            }
                            while (true) {
                                if (c3732.m7904() < 4) {
                                    break;
                                }
                                int m4858 = C1920.m4858(c3732.f14533, c3732.f14534);
                                if (m4858 == 442 || m4858 == 441 || (m4858 >>> 8) != 1) {
                                    break;
                                }
                                c3732.m7900(4);
                                if (c3732.m7904() < 2) {
                                    c3732.m7896(i3);
                                    break;
                                }
                                c3732.m7896(Math.min(c3732.f14532, c3732.f14533 + c3732.m7895()));
                            }
                        } else {
                            c3732.m7896(i3);
                        }
                    } else {
                        c3732.m7896(i3);
                    }
                } else {
                    c3732.m7896(i3);
                }
                i = c3732.f14533;
            }
        }
        return j2 != -9223372036854775807L ? new C2645(-2, j2, position + i) : C2645.f10029;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C2980 m9559() {
        JSONObject jSONObject;
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[16384];
        try {
            FileInputStream fileInputStream = new FileInputStream(m9567());
            while (true) {
                try {
                    int read = fileInputStream.read(bArr, 0, 16384);
                    if (read < 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                } finally {
                }
            }
            jSONObject = new JSONObject(byteArrayOutputStream.toString());
            fileInputStream.close();
        } catch (IOException | JSONException unused) {
            jSONObject = new JSONObject();
        }
        String optString = jSONObject.optString("Fid", null);
        int optInt = jSONObject.optInt("Status", 0);
        String optString2 = jSONObject.optString("AuthToken", null);
        String optString3 = jSONObject.optString("RefreshToken", null);
        long optLong = jSONObject.optLong("TokenCreationEpochInSecs", 0L);
        long optLong2 = jSONObject.optLong("ExpiresInSecs", 0L);
        String optString4 = jSONObject.optString("FisError", null);
        int i = AbstractC0844.m3019(5)[optInt];
        if (i == 0) {
            throw new NullPointerException("Null registrationStatus");
        }
        String str = i == 0 ? " registrationStatus" : "";
        if (str.isEmpty()) {
            return new C2980(optString, i, optString2, optString3, optLong2, optLong, optString4);
        }
        throw new IllegalStateException("Missing required properties:".concat(str));
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public String m9560(InterfaceC1141 interfaceC1141) {
        String str;
        synchronized (((C1740) this.f18036)) {
            str = (String) ((C1740) this.f18036).m4691(interfaceC1141);
        }
        if (str == null) {
            str = m9563(interfaceC1141);
        }
        synchronized (((C1740) this.f18036)) {
            ((C1740) this.f18036).m4689(interfaceC1141, str);
        }
        return str;
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public void m9561(Class cls, Class cls2, Class cls3, List list) {
        synchronized (((C3359) this.f18034)) {
            ((C3359) this.f18034).put(new C1750(cls, cls2, cls3), list);
        }
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public void m9562(int i, int i2) {
        int[] iArr = (int[]) this.f18036;
        if (iArr == null || i >= iArr.length) {
            return;
        }
        int i3 = i + i2;
        m9558(i3);
        int[] iArr2 = (int[]) this.f18036;
        System.arraycopy(iArr2, i, iArr2, i3, (iArr2.length - i) - i2);
        Arrays.fill((int[]) this.f18036, i, i3, -1);
        ArrayList arrayList = (ArrayList) this.f18034;
        if (arrayList == null) {
            return;
        }
        for (int size = arrayList.size() - 1; size >= 0; size--) {
            C2721 c2721 = (C2721) ((ArrayList) this.f18034).get(size);
            int i4 = c2721.f10358;
            if (i4 >= i) {
                c2721.f10358 = i4 + i2;
            }
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public String m9563(InterfaceC1141 interfaceC1141) {
        String str;
        C1646 c1646 = (C1646) ((ﹳٴ) this.f18034).ﾞᴵ();
        try {
            interfaceC1141.mo3574(c1646.f6693);
            byte[] digest = c1646.f6693.digest();
            char[] cArr = AbstractC1746.f7104;
            synchronized (cArr) {
                for (int i = 0; i < digest.length; i++) {
                    byte b = digest[i];
                    int i2 = i * 2;
                    char[] cArr2 = AbstractC1746.f7105;
                    cArr[i2] = cArr2[(b & 255) >>> 4];
                    cArr[i2 + 1] = cArr2[b & 15];
                }
                str = new String(cArr);
            }
            return str;
        } finally {
            ((ﹳٴ) this.f18034).ˑﹳ(c1646);
        }
    }

    @Override // p027.InterfaceC1086
    /* renamed from: ˈ */
    public void mo3442(C1115 c1115) {
        AbstractC0542.m2096("BillingClient", "Reconnection finished with result: " + c1115.f4368);
        try {
            ((C0536) this.f18036).m2080(c1115);
        } catch (Throwable th) {
            AbstractC0542.m2091("BillingClient", "Exception setting completer.", th);
        }
        C1111 c1111 = (C1111) this.f18034;
        if (c1111.f4346 != null) {
            RunnableC2028 runnableC2028 = new RunnableC2028(this, 6, c1115);
            if (Looper.myLooper() == Looper.getMainLooper()) {
                runnableC2028.run();
            } else {
                c1111.f4347.post(runnableC2028);
            }
        }
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public void m9564(AbstractC2673 abstractC2673) {
        C2685 c2685 = (C2685) ((C3368) this.f18036).get(abstractC2673);
        if (c2685 == null) {
            return;
        }
        c2685.f10230 &= -2;
    }

    @Override // p047.InterfaceC1370
    /* renamed from: ˉˆ */
    public InterfaceC4437 mo4050() {
        return new C3433(((InterfaceC1370) this.f18036).mo4050(), 23, (List) this.f18034);
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public void m9565(AbstractC2673 abstractC2673) {
        C3352 c3352 = (C3352) this.f18034;
        int m7170 = c3352.m7170() - 1;
        while (true) {
            if (m7170 < 0) {
                break;
            }
            if (abstractC2673 == c3352.m7173(m7170)) {
                Object[] objArr = c3352.f13111;
                Object obj = objArr[m7170];
                Object obj2 = AbstractC3355.f13126;
                if (obj != obj2) {
                    objArr[m7170] = obj2;
                    c3352.f13112 = true;
                }
            } else {
                m7170--;
            }
        }
        C2685 c2685 = (C2685) ((C3368) this.f18036).remove(abstractC2673);
        if (c2685 != null) {
            c2685.f10230 = 0;
            c2685.f10229 = null;
            c2685.f10228 = null;
            C2685.f10227.mo3014(c2685);
        }
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public InterfaceC2632 m9566(Object... objArr) {
        Constructor m5683;
        synchronized (((AtomicBoolean) this.f18034)) {
            if (!((AtomicBoolean) this.f18034).get()) {
                try {
                    m5683 = ((C2537) this.f18036).m5683();
                } catch (ClassNotFoundException unused) {
                    ((AtomicBoolean) this.f18034).set(true);
                } catch (Exception e) {
                    throw new RuntimeException("Error instantiating extension", e);
                }
            }
            m5683 = null;
        }
        if (m5683 == null) {
            return null;
        }
        try {
            return (InterfaceC2632) m5683.newInstance(objArr);
        } catch (Exception e2) {
            throw new IllegalStateException("Unexpected error creating extractor", e2);
        }
    }

    @Override // p027.InterfaceC1086
    /* renamed from: ˑﹳ */
    public void mo3443() {
        AbstractC0542.m2096("BillingClient", "Reconnection attempt failed.");
        try {
            ((C0536) this.f18036).m2080(AbstractC1093.f4262);
        } catch (Throwable th) {
            AbstractC0542.m2091("BillingClient", "Exception setting completer.", th);
        }
        C1111 c1111 = (C1111) this.f18034;
        if (c1111.f4346 != null) {
            RunnableC0142 runnableC0142 = new RunnableC0142(9, this);
            if (Looper.myLooper() == Looper.getMainLooper()) {
                runnableC0142.run();
            } else {
                c1111.f4347.post(runnableC0142);
            }
        }
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public File m9567() {
        if (((File) this.f18036) == null) {
            synchronized (this) {
                try {
                    if (((File) this.f18036) == null) {
                        C2405 c2405 = (C2405) this.f18034;
                        c2405.m5512();
                        this.f18036 = new File(c2405.f9296.getFilesDir(), "PersistedInstallation." + ((C2405) this.f18034).m5509() + ".json");
                    }
                } finally {
                }
            }
        }
        return (File) this.f18036;
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public void m9568() {
        String str = (String) this.f18036;
        if (((FileChannel) this.f18034) != null) {
            return;
        }
        try {
            File file = new File(str);
            File parentFile = file.getParentFile();
            if (parentFile != null) {
                parentFile.mkdirs();
            }
            FileChannel channel = new FileOutputStream(file).getChannel();
            this.f18034 = channel;
            if (channel != null) {
                channel.lock();
            }
        } catch (Throwable th) {
            FileChannel fileChannel = (FileChannel) this.f18034;
            if (fileChannel != null) {
                fileChannel.close();
            }
            this.f18034 = null;
            throw new IllegalStateException(AbstractC2305.m5378("Unable to lock file: '", str, "'."), th);
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public void m9569() {
        int[] iArr = (int[]) this.f18036;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
        this.f18034 = null;
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public void m9570(InterfaceC3394 interfaceC3394, Object obj) {
        HashMap hashMap = (HashMap) this.f18034;
        C3388 c3388 = (C3388) hashMap.get(interfaceC3394);
        if (c3388 == null) {
            c3388 = new C3388(interfaceC3394);
            c3388.f13233 = c3388;
            C3388 c33882 = (C3388) this.f18036;
            c3388.f13233 = c33882.f13233;
            c3388.f13232 = c33882;
            c33882.f13233 = c3388;
            c3388.f13233.f13232 = c3388;
            hashMap.put(interfaceC3394, c3388);
        } else {
            interfaceC3394.mo7273();
        }
        if (c3388.f13234 == null) {
            c3388.f13234 = new ArrayList();
        }
        c3388.f13234.add(obj);
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Object m9571() {
        C3388 c3388 = (C3388) this.f18036;
        C3388 c33882 = c3388.f13233;
        while (true) {
            boolean equals = c33882.equals(c3388);
            Object obj = c33882.f13235;
            if (equals) {
                return null;
            }
            ArrayList arrayList = c33882.f13234;
            int size = arrayList != null ? arrayList.size() : 0;
            Object remove = size > 0 ? c33882.f13234.remove(size - 1) : null;
            if (remove != null) {
                return remove;
            }
            C3388 c33883 = c33882.f13233;
            c33883.f13232 = c33882.f13232;
            c33882.f13232.f13233 = c33883;
            ((HashMap) this.f18034).remove(obj);
            ((InterfaceC3394) obj).mo7273();
            c33882 = c33882.f13233;
        }
    }

    @Override // p051.InterfaceC1398
    /* renamed from: ᵎﹶ */
    public int mo4116() {
        return 1;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public byte[] m9572(C0766 c0766) {
        DataOutputStream dataOutputStream = (DataOutputStream) this.f18034;
        ByteArrayOutputStream byteArrayOutputStream = (ByteArrayOutputStream) this.f18036;
        byteArrayOutputStream.reset();
        try {
            dataOutputStream.writeBytes(c0766.f3159);
            dataOutputStream.writeByte(0);
            dataOutputStream.writeBytes(c0766.f3158);
            dataOutputStream.writeByte(0);
            dataOutputStream.writeLong(c0766.f3155);
            dataOutputStream.writeLong(c0766.f3156);
            dataOutputStream.write(c0766.f3157);
            dataOutputStream.flush();
            return byteArrayOutputStream.toByteArray();
        } catch (IOException e) {
            throw new RuntimeException(e);
        }
    }

    @Override // p047.InterfaceC1370
    /* renamed from: ᵔᵢ */
    public InterfaceC4437 mo4051(C1360 c1360, C1371 c1371) {
        return new C3433(((InterfaceC1370) this.f18036).mo4051(c1360, c1371), 23, (List) this.f18034);
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public Object m9573(String str) {
        HashMap hashMap = (HashMap) this.f18034;
        if (hashMap.containsKey(str)) {
            return hashMap.get(str);
        }
        throw new RuntimeException(AbstractC2305.m5378("The property ", str, " is not available in this runtime"));
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public C0781 m9574(AbstractC2673 abstractC2673, int i) {
        C2685 c2685;
        C0781 c0781;
        C3368 c3368 = (C3368) this.f18036;
        int m7221 = c3368.m7221(abstractC2673);
        if (m7221 >= 0 && (c2685 = (C2685) c3368.m7220(m7221)) != null) {
            int i2 = c2685.f10230;
            if ((i2 & i) != 0) {
                int i3 = i2 & (~i);
                c2685.f10230 = i3;
                if (i == 4) {
                    c0781 = c2685.f10229;
                } else {
                    if (i != 8) {
                        throw new IllegalArgumentException("Must provide flag PRE or POST");
                    }
                    c0781 = c2685.f10228;
                }
                if ((i3 & 12) == 0) {
                    c3368.mo4688(m7221);
                    c2685.f10230 = 0;
                    c2685.f10229 = null;
                    c2685.f10228 = null;
                    C2685.f10227.mo3014(c2685);
                }
                return c0781;
            }
        }
        return null;
    }

    @Override // p051.InterfaceC1398
    /* renamed from: ⁱˊ */
    public /* synthetic */ InterfaceC1390 mo4117(byte[] bArr, int i, int i2) {
        return AbstractC1220.m3794(this, bArr, i2);
    }

    /* JADX WARN: Code restructure failed: missing block: B:210:0x039b, code lost:
    
        r0.addAll(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:237:0x0116, code lost:
    
        if (")".equals(p084.C1728.m4674(r11, r6)) == false) goto L37;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, ˑי.ʽ, ʽᐧ.ˈ] */
    /* JADX WARN: Type inference failed for: r10v11, types: [ʿˎ.ʽ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v6 */
    /* JADX WARN: Type inference failed for: r14v7, types: [boolean] */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Type inference failed for: r9v4 */
    /* JADX WARN: Type inference failed for: r9v6 */
    @Override // p051.InterfaceC1398
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo4118(byte[] r20, int r21, int r22, p051.C1393 r23, p305.InterfaceC3734 r24) {
        /*
            Method dump skipped, instructions count: 1120
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p404.C4790.mo4118(byte[], int, int, ʽᐧ.ٴﹶ, ᐧˎ.ﾞᴵ):void");
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public Object m9575(InterfaceC3394 interfaceC3394) {
        HashMap hashMap = (HashMap) this.f18034;
        C3388 c3388 = (C3388) hashMap.get(interfaceC3394);
        if (c3388 == null) {
            c3388 = new C3388(interfaceC3394);
            hashMap.put(interfaceC3394, c3388);
        } else {
            interfaceC3394.mo7273();
        }
        C3388 c33882 = c3388.f13233;
        c33882.f13232 = c3388.f13232;
        c3388.f13232.f13233 = c33882;
        C3388 c33883 = (C3388) this.f18036;
        c3388.f13233 = c33883;
        C3388 c33884 = c33883.f13232;
        c3388.f13232 = c33884;
        c33884.f13233 = c3388;
        c3388.f13233.f13232 = c3388;
        ArrayList arrayList = c3388.f13234;
        int size = arrayList != null ? arrayList.size() : 0;
        if (size > 0) {
            return c3388.f13234.remove(size - 1);
        }
        return null;
    }

    @Override // p220.InterfaceC3037
    /* renamed from: ﾞʻ */
    public C3029 mo6579(Object obj) {
        FileWriter fileWriter;
        C1629 c1629 = (C1629) this.f18034;
        JSONObject jSONObject = (JSONObject) ((C2194) this.f18036).f8649.f8647.submit((Callable) new ʾᵎ(4, this)).get();
        FileWriter fileWriter2 = null;
        if (jSONObject != null) {
            C1630 c1630 = ((ʽ) c1629.f6482).ʻٴ(jSONObject);
            ʽ r3 = (ʽ) c1629.f6484;
            long j = c1630.f6490;
            r3.getClass();
            if (Log.isLoggable("FirebaseCrashlytics", 2)) {
            }
            try {
                jSONObject.put("expires_at", j);
                fileWriter = new FileWriter((File) r3.ʾˋ);
                try {
                    fileWriter.write(jSONObject.toString());
                    fileWriter.flush();
                } catch (Exception e) {
                    AbstractC4901.m9704(fileWriter, "Failed to close settings writer.");
                    C1629.m4408(jSONObject, "Loaded settings: ");
                    String str = ((C1628) c1629.f6487).f6480;
                    SharedPreferences.Editor edit = ((Context) c1629.f6488).getSharedPreferences("com.google.firebase.crashlytics", 0).edit();
                    edit.putString("existing_instance_identifier", str);
                    edit.apply();
                    ((AtomicReference) c1629.f6486).set(c1630);
                    ((C3032) ((AtomicReference) c1629.f6481).get()).m6577(c1630);
                    return ᵎ.ᵔᵢ((Object) null);
                } catch (Throwable th) {
                    th = th;
                    fileWriter2 = fileWriter;
                    AbstractC4901.m9704(fileWriter2, "Failed to close settings writer.");
                    throw th;
                }
            } catch (Exception e2) {
                fileWriter = null;
            } catch (Throwable th2) {
                th = th2;
            }
            AbstractC4901.m9704(fileWriter, "Failed to close settings writer.");
            C1629.m4408(jSONObject, "Loaded settings: ");
            String str2 = ((C1628) c1629.f6487).f6480;
            SharedPreferences.Editor edit2 = ((Context) c1629.f6488).getSharedPreferences("com.google.firebase.crashlytics", 0).edit();
            edit2.putString("existing_instance_identifier", str2);
            edit2.apply();
            ((AtomicReference) c1629.f6486).set(c1630);
            ((C3032) ((AtomicReference) c1629.f6481).get()).m6577(c1630);
        }
        return ᵎ.ᵔᵢ((Object) null);
    }

    @Override // p171.InterfaceC2621
    /* renamed from: ﾞᴵ */
    public void mo2967() {
        C3732 c3732 = (C3732) this.f18034;
        byte[] bArr = AbstractC3712.f14480;
        c3732.getClass();
        c3732.m7897(bArr.length, bArr);
    }
}
