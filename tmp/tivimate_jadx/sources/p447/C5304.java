package p447;

import android.text.TextUtils;
import com.google.android.gms.internal.measurement.C0253;
import com.google.android.gms.internal.measurement.C0280;
import com.google.android.gms.internal.measurement.C0304;
import com.google.android.gms.internal.measurement.C0387;
import com.google.android.gms.internal.measurement.C0404;
import com.google.android.gms.internal.measurement.C0410;
import com.google.android.gms.internal.measurement.C0425;
import com.google.android.gms.internal.measurement.C0426;
import com.google.android.gms.internal.measurement.C0442;
import com.google.android.gms.internal.measurement.C0444;
import com.google.android.gms.internal.measurement.C0449;
import com.google.android.gms.internal.measurement.C0499;
import com.google.android.gms.internal.measurement.zzd;
import com.google.android.gms.internal.measurement.zzmr;
import j$.util.DesugarCollections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import p027.CallableC1098;
import p255.C3359;
import p255.C3368;
import p296.AbstractC3659;
import ʽⁱ.ᵎﹶ;
import ˏˆ.ﹳٴ;
import ᐧﹳ.ʽ;

/* renamed from: ﹶﾞ.ـﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5304 extends AbstractC5277 implements InterfaceC5357 {

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final C3359 f19995;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3359 f19996;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C3359 f19997;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C3359 f19998;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C5219 f19999;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C3359 f20000;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C3359 f20001;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final ʽ f20002;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C3359 f20003;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final C3359 f20004;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final C3359 f20005;

    /* JADX WARN: Type inference failed for: r2v1, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r2v2, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r2v3, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r2v4, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r2v5, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r2v6, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r2v7, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r2v8, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* JADX WARN: Type inference failed for: r2v9, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    public C5304(C5337 c5337) {
        super(c5337);
        this.f19996 = new C3368(0);
        this.f20001 = new C3368(0);
        this.f19998 = new C3368(0);
        this.f20000 = new C3368(0);
        this.f19997 = new C3368(0);
        this.f20004 = new C3368(0);
        this.f19995 = new C3368(0);
        this.f20005 = new C3368(0);
        this.f20003 = new C3368(0);
        this.f19999 = new C5219(this);
        this.f20002 = new ʽ(25, this);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    /* renamed from: ˎˉ, reason: contains not printable characters */
    public static final C3359 m10503(C0499 c0499) {
        ?? c3368 = new C3368(0);
        for (C0410 c0410 : c0499.m1965()) {
            c3368.put(c0410.m1813(), c0410.m1814());
        }
        return c3368;
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public static final EnumC5341 m10504(int i) {
        int i2 = i - 1;
        if (i2 == 1) {
            return EnumC5341.f20324;
        }
        if (i2 == 2) {
            return EnumC5341.f20321;
        }
        if (i2 == 3) {
            return EnumC5341.f20322;
        }
        if (i2 != 4) {
            return null;
        }
        return EnumC5341.f20325;
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final EnumC5232 m10505(String str, EnumC5341 enumC5341) {
        ⁱᴵ();
        m10519(str);
        C0426 m10511 = m10511(str);
        if (m10511 != null) {
            Iterator it = m10511.m1855().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                C0280 c0280 = (C0280) it.next();
                if (m10504(c0280.m1294()) == enumC5341) {
                    int m1295 = c0280.m1295() - 1;
                    if (m1295 == 1) {
                        return EnumC5232.f19674;
                    }
                    if (m1295 == 2) {
                        return EnumC5232.f19671;
                    }
                }
            }
        }
        return EnumC5232.f19673;
    }

    @Override // p447.InterfaceC5357
    /* renamed from: ʽ */
    public final String mo9044(String str, String str2) {
        ⁱᴵ();
        m10519(str);
        Map map = (Map) this.f19996.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final void m10506(String str, C0304 c0304) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        HashSet hashSet = new HashSet();
        C3368 c3368 = new C3368(0);
        C3368 c33682 = new C3368(0);
        C3368 c33683 = new C3368(0);
        Iterator it = DesugarCollections.unmodifiableList(((C0499) c0304.f2260).m1973()).iterator();
        while (it.hasNext()) {
            hashSet.add(((C0253) it.next()).m1201());
        }
        for (int i = 0; i < ((C0499) c0304.f2260).m1960(); i++) {
            C0404 c0404 = (C0404) ((C0499) c0304.f2260).m1956(i).m1227();
            if (c0404.m1797().isEmpty()) {
                C5344 c5344 = c5322.f20193;
                C5322.m10556(c5344);
                c5344.f20348.m10217("EventConfig contained null event name");
            } else {
                String m1797 = c0404.m1797();
                String m10210 = AbstractC5218.m10210(c0404.m1797(), AbstractC5218.f19635, AbstractC5218.f19627);
                if (!TextUtils.isEmpty(m10210)) {
                    c0404.m1947();
                    ((C0449) c0404.f2260).m1880(m10210);
                    c0304.m1947();
                    ((C0499) c0304.f2260).m1964(i, (C0449) c0404.m1948());
                }
                if (((C0449) c0404.f2260).m1881() && ((C0449) c0404.f2260).m1882()) {
                    c3368.put(m1797, Boolean.TRUE);
                }
                if (((C0449) c0404.f2260).m1879() && ((C0449) c0404.f2260).m1878()) {
                    c33682.put(c0404.m1797(), Boolean.TRUE);
                }
                if (((C0449) c0404.f2260).m1877()) {
                    if (((C0449) c0404.f2260).m1875() < 2 || ((C0449) c0404.f2260).m1875() > 65535) {
                        C5344 c53442 = c5322.f20193;
                        C5322.m10556(c53442);
                        c53442.f20348.m10214(c0404.m1797(), Integer.valueOf(((C0449) c0404.f2260).m1875()), "Invalid sampling rate. Event name, sample rate");
                    } else {
                        c33683.put(c0404.m1797(), Integer.valueOf(((C0449) c0404.f2260).m1875()));
                    }
                }
            }
        }
        this.f20001.put(str, hashSet);
        this.f19998.put(str, c3368);
        this.f20000.put(str, c33682);
        this.f20003.put(str, c33683);
    }

    /* renamed from: ˊˊ, reason: contains not printable characters */
    public final boolean m10507(String str) {
        ⁱᴵ();
        m10519(str);
        C3359 c3359 = this.f20001;
        if (c3359.get(str) != null) {
            return ((Set) c3359.get(str)).contains("os_version") || ((Set) c3359.get(str)).contains("device_info");
        }
        return false;
    }

    /* renamed from: ˊﾞ, reason: contains not printable characters */
    public final boolean m10508(String str) {
        ⁱᴵ();
        m10519(str);
        C3359 c3359 = this.f20001;
        return c3359.get(str) != null && ((Set) c3359.get(str)).contains("app_instance_id");
    }

    @Override // p447.AbstractC5277
    /* renamed from: ˋˊ */
    public final void mo10191() {
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public final String m10509(String str) {
        ⁱᴵ();
        m10519(str);
        return (String) this.f20004.get(str);
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final void m10510(String str, C0499 c0499) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        int m1957 = c0499.m1957();
        C5219 c5219 = this.f19999;
        if (m1957 == 0) {
            c5219.m6086(str);
            return;
        }
        C5344 c5344 = c5322.f20193;
        C5322.m10556(c5344);
        c5344.f20350.m10216(Integer.valueOf(c0499.m1957()), "EES programs found");
        C0442 c0442 = (C0442) c0499.m1962().get(0);
        try {
            C0444 c0444 = new C0444();
            ﹳٴ r4 = c0444.f2194;
            ((HashMap) ((C0425) r4.ᴵᵔ).f2169).put("internal.remoteConfig", new CallableC5265(this, str, 2));
            ((HashMap) ((C0425) r4.ᴵᵔ).f2169).put("internal.appMetadata", new CallableC5265(this, str, 0));
            ((HashMap) ((C0425) r4.ᴵᵔ).f2169).put("internal.logger", new CallableC1098(2, this));
            c0444.m1873(c0442);
            c5219.m6095(str, c0444);
            C5322.m10556(c5344);
            C5221 c5221 = c5344.f20350;
            c5221.m10214(str, Integer.valueOf(c0442.m1872().m1572()), "EES program loaded for appId, activities");
            for (C0387 c0387 : c0442.m1872().m1571()) {
                C5322.m10556(c5344);
                c5221.m10216(c0387.m1764(), "EES program activity");
            }
        } catch (zzd unused) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20343.m10216(str, "Failed to load EES program. appId");
        }
    }

    /* renamed from: ˏⁱ, reason: contains not printable characters */
    public final C0426 m10511(String str) {
        ⁱᴵ();
        m10519(str);
        C0499 m10517 = m10517(str);
        if (m10517 == null || !m10517.m1969()) {
            return null;
        }
        return m10517.m1959();
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final C0499 m10512(String str, byte[] bArr) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if (bArr == null) {
            return C0499.m1955();
        }
        try {
            C0499 c0499 = (C0499) ((C0304) C5239.m10253(C0499.m1954(), bArr)).m1948();
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20350.m10214(c0499.m1958() ? Long.valueOf(c0499.m1972()) : null, c0499.m1974() ? c0499.m1966() : null, "Parsed config. version, gmp_app_id");
            return c0499;
        } catch (zzmr e) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20348.m10214(C5344.m10722(str), e, "Unable to merge remote config. appId");
            return C0499.m1955();
        } catch (RuntimeException e2) {
            C5344 c53443 = c5322.f20193;
            C5322.m10556(c53443);
            c53443.f20348.m10214(C5344.m10722(str), e2, "Unable to merge remote config. appId");
            return C0499.m1955();
        }
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final boolean m10513(String str) {
        ⁱᴵ();
        m10519(str);
        C0426 m10511 = m10511(str);
        if (m10511 == null) {
            return false;
        }
        for (C0280 c0280 : m10511.m1854()) {
            if (c0280.m1294() == 3 && c0280.m1296() == 3) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ـʻ, reason: contains not printable characters */
    public final boolean m10514(String str, EnumC5341 enumC5341) {
        ⁱᴵ();
        m10519(str);
        C0426 m10511 = m10511(str);
        if (m10511 == null) {
            return false;
        }
        for (C0280 c0280 : m10511.m1854()) {
            if (enumC5341 == m10504(c0280.m1294())) {
                return c0280.m1295() == 2;
            }
        }
        return false;
    }

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public final boolean m10515(String str, String str2) {
        Boolean bool;
        ⁱᴵ();
        m10519(str);
        if ("ecommerce_purchase".equals(str2) || "purchase".equals(str2) || "refund".equals(str2)) {
            return true;
        }
        Map map = (Map) this.f20000.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public final boolean m10516(String str, String str2) {
        Boolean bool;
        ⁱᴵ();
        m10519(str);
        if ("1".equals(mo9044(str, "measurement.upload.blacklist_internal")) && C5339.m10669(str2)) {
            return true;
        }
        if ("1".equals(mo9044(str, "measurement.upload.blacklist_public")) && C5339.m10665(str2)) {
            return true;
        }
        Map map = (Map) this.f19998.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public final C0499 m10517(String str) {
        m10466();
        ⁱᴵ();
        AbstractC3659.m7680(str);
        m10519(str);
        return (C0499) this.f19997.get(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0485, code lost:
    
        r1 = r24;
        r3 = r25;
        r0 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x0342, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0326, code lost:
    
        r1 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x02cf, code lost:
    
        r0 = r14.f20193;
        p447.C5322.m10556(r0);
        r0 = r0.f20348;
        r3 = p447.C5344.m10722(r30);
        r4 = java.lang.Integer.valueOf(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x02e4, code lost:
    
        if (r8.m1801() == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x02e6, code lost:
    
        r5 = java.lang.Integer.valueOf(r8.m1810());
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x02f5, code lost:
    
        r0.m10215("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", r3, r4, java.lang.String.valueOf(r5));
        r27 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x02f4, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x02ef, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x0386, code lost:
    
        r27 = r6;
        r5 = r5.m1848().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0396, code lost:
    
        if (r5.hasNext() == false) goto L209;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x0398, code lost:
    
        r6 = (com.google.android.gms.internal.measurement.C0366) r5.next();
        r9.m10466();
        r9.ⁱᴵ();
        p296.AbstractC3659.m7680(r30);
        p296.AbstractC3659.m7687(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x03b2, code lost:
    
        if (r6.m1696().isEmpty() == false) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x03de, code lost:
    
        r8 = r6.m2019();
        r23 = r5;
        r5 = new android.content.ContentValues();
        r5.put(r3, r30);
        r26 = r3;
        r5.put("audience_id", java.lang.Integer.valueOf(r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x03f9, code lost:
    
        if (r6.m1690() == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x03fb, code lost:
    
        r3 = java.lang.Integer.valueOf(r6.m1695());
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0405, code lost:
    
        r5.put(r0, r3);
        r28 = r0;
        r5.put("property_name", r6.m1696());
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x0417, code lost:
    
        if (r6.m1688() == false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x0419, code lost:
    
        r3 = java.lang.Boolean.valueOf(r6.m1694());
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x0423, code lost:
    
        r5.put("session_scoped", r3);
        r5.put("data", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0435, code lost:
    
        if (r9.m10428().insertWithOnConflict("property_filters", null, r5, 5) != (-1)) goto L113;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x044a, code lost:
    
        r5 = r23;
        r3 = r26;
        r0 = r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x0437, code lost:
    
        r0 = r14.f20193;
        p447.C5322.m10556(r0);
        r0.f20343.m10216(p447.C5344.m10722(r30), "Failed to insert property filter (got -1). appId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x0448, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0452, code lost:
    
        r1 = r14.f20193;
        p447.C5322.m10556(r1);
        r1.f20343.m10214(p447.C5344.m10722(r30), r0, "Error storing property filter. appId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x0422, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x0404, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x03b4, code lost:
    
        r0 = r14.f20193;
        p447.C5322.m10556(r0);
        r0 = r0.f20348;
        r3 = p447.C5344.m10722(r30);
        r4 = java.lang.Integer.valueOf(r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x03c9, code lost:
    
        if (r6.m1690() == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x03cb, code lost:
    
        r5 = java.lang.Integer.valueOf(r6.m1695());
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x03d5, code lost:
    
        r0.m10215("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", r3, r4, java.lang.String.valueOf(r5));
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x03d4, code lost:
    
        r5 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0264, code lost:
    
        r0 = r5.m1848().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0270, code lost:
    
        if (r0.hasNext() == false) goto L192;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x027c, code lost:
    
        if (((com.google.android.gms.internal.measurement.C0366) r0.next()).m1690() != false) goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x027e, code lost:
    
        r0 = r14.f20193;
        p447.C5322.m10556(r0);
        r0.f20348.m10214(p447.C5344.m10722(r30), java.lang.Integer.valueOf(r7), "Property filter with no ID. Audience definition ignored. appId, audienceId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0293, code lost:
    
        r0 = r5.m1842().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x029b, code lost:
    
        r8 = r0.hasNext();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x029f, code lost:
    
        r23 = r0;
        r0 = "filter_id";
        r24 = r1;
        r25 = r3;
        r3 = "app_id";
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x02b1, code lost:
    
        if (r8 == false) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x02b3, code lost:
    
        r8 = (com.google.android.gms.internal.measurement.C0409) r23.next();
        r9.m10466();
        r9.ⁱᴵ();
        p296.AbstractC3659.m7680(r30);
        p296.AbstractC3659.m7687(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x02cd, code lost:
    
        if (r8.m1812().isEmpty() == false) goto L73;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0300, code lost:
    
        r26 = r5;
        r5 = r8.m2019();
        r27 = r6;
        r6 = new android.content.ContentValues();
        r6.put("app_id", r30);
        r6.put("audience_id", java.lang.Integer.valueOf(r7));
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x031b, code lost:
    
        if (r8.m1801() == false) goto L76;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x031d, code lost:
    
        r1 = java.lang.Integer.valueOf(r8.m1810());
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0327, code lost:
    
        r6.put("filter_id", r1);
        r6.put("event_name", r8.m1812());
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0337, code lost:
    
        if (r8.m1811() == false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0339, code lost:
    
        r0 = java.lang.Boolean.valueOf(r8.m1804());
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x0343, code lost:
    
        r6.put("session_scoped", r0);
        r6.put("data", r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x0355, code lost:
    
        if (r9.m10428().insertWithOnConflict("event_filters", null, r6, 5) != (-1)) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x0357, code lost:
    
        r0 = r14.f20193;
        p447.C5322.m10556(r0);
        r0.f20343.m10216(p447.C5344.m10722(r30), "Failed to insert event filter (got -1). appId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0367, code lost:
    
        r0 = r23;
        r1 = r24;
        r3 = r25;
        r5 = r26;
        r6 = r27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0373, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0374, code lost:
    
        r1 = r14.f20193;
        p447.C5322.m10556(r1);
        r1.f20343.m10214(p447.C5344.m10722(r30), r0, "Error storing event filter. appId");
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0462, code lost:
    
        r9.m10466();
        r9.ⁱᴵ();
        p296.AbstractC3659.m7680(r30);
        r0 = r9.m10428();
        r0.delete("property_filters", "app_id=? and audience_id=?", new java.lang.String[]{r30, java.lang.String.valueOf(r7)});
        r0.delete("event_filters", "app_id=? and audience_id=?", new java.lang.String[]{r30, java.lang.String.valueOf(r7)});
     */
    /* JADX WARN: Removed duplicated region for block: B:182:0x05f2 A[Catch: SQLiteException -> 0x0603, TRY_LEAVE, TryCatch #3 {SQLiteException -> 0x0603, blocks: (B:180:0x05db, B:182:0x05f2), top: B:179:0x05db }] */
    /* renamed from: ﹶʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10518(java.lang.String r30, java.lang.String r31, java.lang.String r32, byte[] r33) {
        /*
            Method dump skipped, instructions count: 1582
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5304.m10518(java.lang.String, java.lang.String, java.lang.String, byte[]):void");
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final void m10519(String str) {
        m10466();
        ⁱᴵ();
        AbstractC3659.m7680(str);
        C3359 c3359 = this.f19997;
        if (c3359.get(str) == null) {
            C5257 c5257 = this.f19910.f20275;
            C5337.m10599(c5257);
            ᵢ.ﹳٴ m10440 = c5257.m10440(str);
            C3359 c33592 = this.f20005;
            C3359 c33593 = this.f19995;
            C3359 c33594 = this.f20004;
            C3359 c33595 = this.f19996;
            if (m10440 != null) {
                C0304 c0304 = (C0304) m10512(str, (byte[]) m10440.ˈٴ).m1227();
                m10506(str, c0304);
                c33595.put(str, m10503((C0499) c0304.m1948()));
                c3359.put(str, (C0499) c0304.m1948());
                m10510(str, (C0499) c0304.m1948());
                c33594.put(str, ((C0499) c0304.f2260).m1961());
                c33593.put(str, (String) m10440.ᴵˊ);
                c33592.put(str, (String) m10440.ʽʽ);
                return;
            }
            c33595.put(str, null);
            this.f19998.put(str, null);
            this.f20001.put(str, null);
            this.f20000.put(str, null);
            c3359.put(str, null);
            c33594.put(str, null);
            c33593.put(str, null);
            c33592.put(str, null);
            this.f20003.put(str, null);
        }
    }

    /* renamed from: ﾞˏ, reason: contains not printable characters */
    public final int m10520(String str, String str2) {
        Integer num;
        ⁱᴵ();
        m10519(str);
        Map map = (Map) this.f20003.get(str);
        if (map == null || (num = (Integer) map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }
}
