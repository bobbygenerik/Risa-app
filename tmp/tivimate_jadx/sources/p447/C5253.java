package p447;

import android.app.Application;
import android.content.SharedPreferences;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.text.TextUtils;
import android.util.SparseArray;
import com.google.android.gms.internal.measurement.C0334;
import com.google.android.gms.internal.measurement.EnumC0349;
import com.google.android.gms.internal.measurement.EnumC0477;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import j$.util.Comparator;
import j$.util.Objects;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.PriorityQueue;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p017.AbstractC0983;
import p017.AbstractC0997;
import p017.AbstractC1004;
import p017.C0943;
import p017.C0956;
import p017.C0987;
import p121.InterfaceFutureC2031;
import p121.RunnableC2028;
import p137.AbstractC2305;
import p229.C3125;
import p296.AbstractC3659;
import p347.C4279;
import p366.C4486;
import p384.C4603;
import p458.C5411;
import ʻٴ.ˑﹳ;
import ʽⁱ.ᵎﹶ;
import ʿʿ.ʽ;

/* renamed from: ﹶﾞ.ˈـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5253 extends AbstractC5308 {

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public boolean f19799;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C5269 f19800;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public PriorityQueue f19801;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public C5311 f19802;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C3125 f19803;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public C5348 f19804;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final Object f19805;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f19806;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final C5309 f19807;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public long f19808;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final AtomicLong f19809;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public C5348 f19810;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public int f19811;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final AtomicReference f19812;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final C4603 f19813;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final CopyOnWriteArraySet f19814;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public C5348 f19815;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f19816;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public C5348 f19817;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f19818;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public SharedPreferencesOnSharedPreferenceChangeListenerC5355 f19819;

    public C5253(C5322 c5322) {
        super(c5322);
        this.f19814 = new CopyOnWriteArraySet();
        this.f19805 = new Object();
        this.f19816 = false;
        this.f19811 = 1;
        this.f19799 = true;
        this.f19813 = new C4603(this);
        this.f19812 = new AtomicReference();
        this.f19802 = C5311.f20017;
        this.f19808 = -1L;
        this.f19809 = new AtomicLong(0L);
        this.f19807 = new C5309(c5322);
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final void m10366(C5311 c5311) {
        m10252();
        boolean z = (c5311.m10537(EnumC5341.f20321) && c5311.m10537(EnumC5341.f20324)) || ((C5322) ((ᵎﹶ) this).ʾˋ).m10569().m10300();
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C5215 c5215 = c5322.f20200;
        C5322.m10556(c5215);
        c5215.m10203();
        if (z != c5322.f20186) {
            C5215 c52152 = c5322.f20200;
            C5322.m10556(c52152);
            c52152.m10203();
            c5322.f20186 = z;
            C5313 c5313 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20205;
            C5322.m10560(c5313);
            c5313.ⁱᴵ();
            Boolean valueOf = c5313.m10545().contains("measurement_enabled_from_api") ? Boolean.valueOf(c5313.m10545().getBoolean("measurement_enabled_from_api", true)) : null;
            if (!z || valueOf == null || valueOf.booleanValue()) {
                m10387(Boolean.valueOf(z), false);
            }
        }
    }

    /* renamed from: ʽʾ, reason: contains not printable characters */
    public final void m10367() {
        C0334.m1580();
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C5327 c5327 = c5322.f20189;
        C5215 c5215 = c5322.f20200;
        C5344 c5344 = c5322.f20193;
        if (c5327.m10577(null, AbstractC5321.f20125)) {
            C5322.m10556(c5215);
            if (c5215.m10206()) {
                C5322.m10556(c5344);
                c5344.f20343.m10217("Cannot get trigger URIs from analytics worker thread");
                return;
            }
            if (C4486.m9046()) {
                C5322.m10556(c5344);
                c5344.f20343.m10217("Cannot get trigger URIs from main thread");
                return;
            }
            m10526();
            C5322.m10556(c5344);
            c5344.f20350.m10217("Getting trigger URIs (FE)");
            AtomicReference atomicReference = new AtomicReference();
            C5322.m10556(c5215);
            c5215.m10199(atomicReference, 10000L, "get trigger URIs", new RunnableC5307(this, atomicReference, 5, false));
            final List list = (List) atomicReference.get();
            if (list == null) {
                C5322.m10556(c5344);
                c5344.f20342.m10217("Timed out waiting for get trigger URIs");
            } else {
                C5322.m10556(c5215);
                c5215.m10200(new Runnable() { // from class: ﹶﾞ.ʼᵢ
                    @Override // java.lang.Runnable
                    public final void run() {
                        C5253 c5253 = C5253.this;
                        c5253.m10252();
                        if (Build.VERSION.SDK_INT < 30) {
                            return;
                        }
                        C5313 c5313 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20205;
                        C5322.m10560(c5313);
                        SparseArray m10551 = c5313.m10551();
                        for (C5272 c5272 : list) {
                            int i = c5272.f19903;
                            if (!m10551.contains(i) || ((Long) m10551.get(i)).longValue() < c5272.f19905) {
                                c5253.m10368().add(c5272);
                            }
                        }
                        c5253.m10376();
                    }
                });
            }
        }
    }

    /* renamed from: ˆˑ, reason: contains not printable characters */
    public final PriorityQueue m10368() {
        if (this.f19801 == null) {
            this.f19801 = new PriorityQueue(Comparator.CC.comparing(C5291.f19962, ˑﹳ.ᴵˊ));
        }
        return this.f19801;
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final void m10369(String str, String str2, Bundle bundle) {
        m10252();
        ((C5322) ((ᵎﹶ) this).ʾˋ).f20206.getClass();
        m10374(System.currentTimeMillis(), bundle, str, str2);
    }

    /* renamed from: ˊˊ, reason: contains not printable characters */
    public final void m10370() {
        m10252();
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C5313 c5313 = c5322.f20205;
        C5344 c5344 = c5322.f20193;
        C4279 c4279 = c5322.f20206;
        C5322.m10560(c5313);
        String m1132 = c5313.f20024.m1132();
        if (m1132 != null) {
            if ("unset".equals(m1132)) {
                c4279.getClass();
                m10384(System.currentTimeMillis(), null, "app", "_npa");
            } else {
                Long valueOf = Long.valueOf(true != "true".equals(m1132) ? 0L : 1L);
                c4279.getClass();
                m10384(System.currentTimeMillis(), valueOf, "app", "_npa");
            }
        }
        if (!c5322.m10568() || !this.f19799) {
            C5322.m10556(c5344);
            c5344.f20340.m10217("Updating Scion state (FE)");
            C5240 m10569 = c5322.m10569();
            m10569.m10252();
            m10569.m10526();
            m10569.m10306(new RunnableC5266(m10569, m10569.m10302(true), 3));
            return;
        }
        C5322.m10556(c5344);
        c5344.f20340.m10217("Recording app launch after enabling measurement for the first time (FE)");
        m10383();
        C5256 c5256 = c5322.f20192;
        C5322.m10559(c5256);
        c5256.f19835.m9151();
        C5215 c5215 = c5322.f20200;
        C5322.m10556(c5215);
        c5215.m10200(new RunnableC5242(this, 1));
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:75:0x0116
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    /* renamed from: ˊﹳ, reason: contains not printable characters */
    public final void m10371(p447.C5311 r14, boolean r15) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5253.m10371(ﹶﾞ.ᐧˎ, boolean):void");
    }

    /* renamed from: ˊﾞ, reason: contains not printable characters */
    public final void m10372() {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if (!(c5322.f20184.getApplicationContext() instanceof Application) || this.f19800 == null) {
            return;
        }
        ((Application) c5322.f20184.getApplicationContext()).unregisterActivityLifecycleCallbacks(this.f19800);
    }

    @Override // p447.AbstractC5308
    /* renamed from: ˋˊ */
    public final boolean mo10296() {
        return false;
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public final void m10373(Bundle bundle, long j) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        AbstractC3659.m7687(bundle);
        Bundle bundle2 = new Bundle(bundle);
        if (!TextUtils.isEmpty(bundle2.getString("app_id"))) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10217("Package name should be null when calling setConditionalUserProperty");
        }
        bundle2.remove("app_id");
        AbstractC5218.m10209(bundle2, "app_id", String.class, null);
        AbstractC5218.m10209(bundle2, "origin", String.class, null);
        AbstractC5218.m10209(bundle2, "name", String.class, null);
        AbstractC5218.m10209(bundle2, "value", Object.class, null);
        AbstractC5218.m10209(bundle2, "trigger_event_name", String.class, null);
        AbstractC5218.m10209(bundle2, "trigger_timeout", Long.class, 0L);
        AbstractC5218.m10209(bundle2, "timed_out_event_name", String.class, null);
        AbstractC5218.m10209(bundle2, "timed_out_event_params", Bundle.class, null);
        AbstractC5218.m10209(bundle2, "triggered_event_name", String.class, null);
        AbstractC5218.m10209(bundle2, "triggered_event_params", Bundle.class, null);
        AbstractC5218.m10209(bundle2, "time_to_live", Long.class, 0L);
        AbstractC5218.m10209(bundle2, "expired_event_name", String.class, null);
        AbstractC5218.m10209(bundle2, "expired_event_params", Bundle.class, null);
        AbstractC3659.m7680(bundle2.getString("name"));
        AbstractC3659.m7680(bundle2.getString("origin"));
        AbstractC3659.m7687(bundle2.get("value"));
        bundle2.putLong("creation_timestamp", j);
        String string = bundle2.getString("name");
        Object obj = bundle2.get("value");
        C5339 c5339 = c5322.f20208;
        C5286 c5286 = c5322.f20199;
        C5344 c53442 = c5322.f20193;
        C5322.m10560(c5339);
        if (c5339.m10716(string) != 0) {
            C5322.m10556(c53442);
            c53442.f20343.m10216(c5286.m10469(string), "Invalid conditional user property name");
            return;
        }
        C5322.m10560(c5339);
        if (c5339.m10691(obj, string) != 0) {
            C5322.m10556(c53442);
            c53442.f20343.m10214(c5286.m10469(string), obj, "Invalid conditional user property value");
            return;
        }
        Object m10714 = c5339.m10714(obj, string);
        if (m10714 == null) {
            C5322.m10556(c53442);
            c53442.f20343.m10214(c5286.m10469(string), obj, "Unable to normalize conditional user property value");
            return;
        }
        AbstractC5218.m10207(bundle2, m10714);
        long j2 = bundle2.getLong("trigger_timeout");
        if (!TextUtils.isEmpty(bundle2.getString("trigger_event_name")) && (j2 > 15552000000L || j2 < 1)) {
            C5322.m10556(c53442);
            c53442.f20343.m10214(c5286.m10469(string), Long.valueOf(j2), "Invalid conditional user property timeout");
            return;
        }
        long j3 = bundle2.getLong("time_to_live");
        if (j3 > 15552000000L || j3 < 1) {
            C5322.m10556(c53442);
            c53442.f20343.m10214(c5286.m10469(string), Long.valueOf(j3), "Invalid conditional user property time to live");
        } else {
            C5215 c5215 = c5322.f20200;
            C5322.m10556(c5215);
            c5215.m10200(new RunnableC5343(this, bundle2, 0));
        }
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final void m10374(long j, Bundle bundle, String str, String str2) {
        m10252();
        boolean z = true;
        if (this.f19803 != null && !C5339.m10669(str2)) {
            z = false;
        }
        m10378(str, str2, j, bundle, true, z, true);
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public final void m10375(String str, String str2, Object obj, boolean z, long j) {
        int i;
        int length;
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if (z) {
            C5339 c5339 = c5322.f20208;
            C5322.m10560(c5339);
            i = c5339.m10716(str2);
        } else {
            C5339 c53392 = c5322.f20208;
            C5322.m10560(c53392);
            if (c53392.m10712("user property", str2)) {
                if (c53392.m10676("user property", AbstractC5218.f19626, null, str2)) {
                    ((C5322) ((ᵎﹶ) c53392).ʾˋ).getClass();
                    if (c53392.m10689(24, "user property", str2)) {
                        i = 0;
                    }
                } else {
                    i = 15;
                }
            }
            i = 6;
        }
        C4603 c4603 = this.f19813;
        if (i != 0) {
            C5322.m10560(c5322.f20208);
            String m10664 = C5339.m10664(24, str2, true);
            length = str2 != null ? str2.length() : 0;
            C5322.m10560(c5322.f20208);
            C5339.m10668(c4603, null, i, "_ev", m10664, length);
            return;
        }
        String str3 = str == null ? "app" : str;
        if (obj == null) {
            C5215 c5215 = c5322.f20200;
            C5322.m10556(c5215);
            c5215.m10200(new RunnableC5315(this, str3, str2, null, j, 1));
            return;
        }
        C5339 c53393 = c5322.f20208;
        C5322.m10560(c53393);
        int m10691 = c53393.m10691(obj, str2);
        if (m10691 != 0) {
            C5322.m10560(c53393);
            String m106642 = C5339.m10664(24, str2, true);
            length = ((obj instanceof String) || (obj instanceof CharSequence)) ? obj.toString().length() : 0;
            C5322.m10560(c5322.f20208);
            C5339.m10668(c4603, null, m10691, "_ev", m106642, length);
            return;
        }
        C5322.m10560(c53393);
        Object m10714 = c53393.m10714(obj, str2);
        if (m10714 != null) {
            C5215 c52152 = c5322.f20200;
            C5322.m10556(c52152);
            c52152.m10200(new RunnableC5315(this, str3, str2, m10714, j, 1));
        }
    }

    /* renamed from: ˎـ, reason: contains not printable characters */
    public final void m10376() {
        C5272 c5272;
        m10252();
        this.f19818 = false;
        if (m10368().isEmpty() || this.f19816 || (c5272 = (C5272) m10368().poll()) == null) {
            return;
        }
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C5339 c5339 = c5322.f20208;
        C5322.m10560(c5339);
        C5411 m10697 = c5339.m10697();
        if (m10697 != null) {
            this.f19816 = true;
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            C5221 c5221 = c5344.f20350;
            String str = c5272.f19904;
            c5221.m10216(str, "Registering trigger URI");
            InterfaceFutureC2031 m10842 = m10697.m10842(Uri.parse(str));
            if (m10842 != null) {
                m10842.mo4312(new RunnableC2028(m10842, 0, new ⁱי(this, 0, c5272)), new ʽ(4, this));
            } else {
                this.f19816 = false;
                m10368().add(c5272);
            }
        }
    }

    /* renamed from: ˏⁱ, reason: contains not printable characters */
    public final void m10377(C5258 c5258, boolean z) {
        Runnable runnable = new ﹶˎ(this, 2, c5258);
        if (z) {
            m10252();
            runnable.run();
        } else {
            C5215 c5215 = ((C5322) ((ᵎﹶ) this).ʾˋ).f20200;
            C5322.m10556(c5215);
            c5215.m10200(runnable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:178:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0140  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0121  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x01a0  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x0200  */
    /* JADX WARN: Unreachable blocks removed: 2, instructions: 2 */
    /* renamed from: ˑˆ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10378(java.lang.String r30, java.lang.String r31, long r32, android.os.Bundle r34, boolean r35, boolean r36, boolean r37) {
        /*
            Method dump skipped, instructions count: 1285
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5253.m10378(java.lang.String, java.lang.String, long, android.os.Bundle, boolean, boolean, boolean):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
    
        if (r4 > 500) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x008c, code lost:
    
        if (r6 > 500) goto L31;
     */
    /* renamed from: יˉ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m10379(java.lang.String r13, java.lang.String r14, android.os.Bundle r15, boolean r16, boolean r17, long r18) {
        /*
            Method dump skipped, instructions count: 477
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5253.m10379(java.lang.String, java.lang.String, android.os.Bundle, boolean, boolean, long):void");
    }

    /* renamed from: ـʻ, reason: contains not printable characters */
    public final void m10380(Bundle bundle, int i, long j) {
        Boolean bool;
        String str;
        EnumC5232 enumC5232;
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        m10526();
        C5311 c5311 = C5311.f20017;
        EnumC5341[] enumC5341Arr = EnumC5238.STORAGE.f19690;
        int length = enumC5341Arr.length;
        int i2 = 0;
        while (true) {
            bool = null;
            if (i2 >= length) {
                str = null;
                break;
            }
            String str2 = enumC5341Arr[i2].f20326;
            if (bundle.containsKey(str2) && (str = bundle.getString(str2)) != null) {
                if ((str.equals("granted") ? Boolean.TRUE : str.equals("denied") ? Boolean.FALSE : null) == null) {
                    break;
                }
            }
            i2++;
        }
        if (str != null) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20347.m10216(str, "Ignoring invalid consent setting");
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20347.m10217("Valid consent values are 'granted', 'denied'");
        }
        C5215 c5215 = c5322.f20200;
        C5322.m10556(c5215);
        boolean m10206 = c5215.m10206();
        C5311 m10534 = C5311.m10534(i, bundle);
        Iterator it = m10534.f20019.values().iterator();
        while (true) {
            boolean hasNext = it.hasNext();
            enumC5232 = EnumC5232.f19673;
            if (!hasNext) {
                break;
            } else if (((EnumC5232) it.next()) != enumC5232) {
                m10371(m10534, m10206);
                break;
            }
        }
        C5258 m10449 = C5258.m10449(i, bundle);
        Iterator it2 = m10449.f19852.values().iterator();
        while (true) {
            if (!it2.hasNext()) {
                break;
            } else if (((EnumC5232) it2.next()) != enumC5232) {
                m10377(m10449, m10206);
                break;
            }
        }
        if (bundle != null) {
            int ordinal = C5311.m10531(bundle.getString("ad_personalization")).ordinal();
            if (ordinal == 2) {
                bool = Boolean.FALSE;
            } else if (ordinal == 3) {
                bool = Boolean.TRUE;
            }
        }
        if (bool != null) {
            String str3 = i == -30 ? "tcf" : "app";
            if (m10206) {
                m10384(j, bool.toString(), str3, "allow_personalized_ads");
            } else {
                m10375(str3, "allow_personalized_ads", bool.toString(), false, j);
            }
        }
    }

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public final void m10381(C5311 c5311, long j, boolean z) {
        int i = c5311.f20018;
        m10252();
        m10526();
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C5313 c5313 = c5322.f20205;
        C5344 c5344 = c5322.f20193;
        C5322.m10560(c5313);
        C5311 m10546 = c5313.m10546();
        if (j <= this.f19808 && C5311.m10536(m10546.f20018, i)) {
            C5322.m10556(c5344);
            c5344.f20349.m10216(c5311, "Dropped out-of-date consent setting, proposed settings");
            return;
        }
        C5313 c53132 = c5322.f20205;
        C5322.m10560(c53132);
        c53132.ⁱᴵ();
        if (!C5311.m10536(i, c53132.m10545().getInt("consent_source", 100))) {
            C5322.m10556(c5344);
            c5344.f20349.m10216(Integer.valueOf(i), "Lower precedence consent source ignored, proposed source");
            return;
        }
        SharedPreferences.Editor edit = c53132.m10545().edit();
        edit.putString("consent_settings", c5311.m10540());
        edit.putInt("consent_source", i);
        edit.apply();
        C5322.m10556(c5344);
        c5344.f20350.m10216(c5311, "Setting storage consent(FE)");
        this.f19808 = j;
        if (c5322.m10569().m10299()) {
            C5240 m10569 = c5322.m10569();
            m10569.m10252();
            m10569.m10526();
            m10569.m10306(new RunnableC5275(m10569, 2));
        } else {
            C5240 m105692 = c5322.m10569();
            m105692.m10252();
            m105692.m10526();
            if (m105692.m10300()) {
                m105692.m10306(new RunnableC5266(m105692, m105692.m10302(false)));
            }
        }
        if (z) {
            c5322.m10569().m10292(new AtomicReference());
        }
    }

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public final String m10382() {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        try {
            return AbstractC5218.m10211(c5322.f20184, c5322.f20197);
        } catch (IllegalStateException e) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10216(e, "getGoogleAppId failed with exception");
            return null;
        }
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public final void m10383() {
        m10252();
        m10526();
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        if (c5322.m10561()) {
            C5327 c5327 = c5322.f20189;
            ((C5322) ((ᵎﹶ) c5327).ʾˋ).getClass();
            Boolean m10581 = c5327.m10581("google_analytics_deferred_deep_link_enabled");
            if (m10581 != null && m10581.booleanValue()) {
                C5344 c5344 = c5322.f20193;
                C5322.m10556(c5344);
                c5344.f20340.m10217("Deferred Deep Link feature enabled.");
                C5215 c5215 = c5322.f20200;
                C5322.m10556(c5215);
                c5215.m10200(new RunnableC5242(this, 2));
            }
            C5240 m10569 = c5322.m10569();
            m10569.m10252();
            m10569.m10526();
            C5217 m10302 = m10569.m10302(true);
            m10569.m10304();
            C5322 c53222 = (C5322) ((ᵎﹶ) m10569).ʾˋ;
            c53222.f20189.m10577(null, AbstractC5321.f20136);
            c53222.m10565().m10363(3, new byte[0]);
            m10569.m10306(new RunnableC5266(m10569, m10302, 1));
            this.f19799 = false;
            C5313 c5313 = c5322.f20205;
            C5322.m10560(c5313);
            c5313.ⁱᴵ();
            String string = c5313.m10545().getString("previous_os_version", null);
            ((C5322) ((ᵎﹶ) c5313).ʾˋ).m10564().m10463();
            String str = Build.VERSION.RELEASE;
            if (!TextUtils.isEmpty(str) && !str.equals(string)) {
                SharedPreferences.Editor edit = c5313.m10545().edit();
                edit.putString("previous_os_version", str);
                edit.apply();
            }
            if (TextUtils.isEmpty(string)) {
                return;
            }
            c5322.m10564().m10463();
            if (string.equals(str)) {
                return;
            }
            Bundle bundle = new Bundle();
            bundle.putString("_po", string);
            m10369("auto", "_ou", bundle);
        }
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public final void m10384(long j, Object obj, String str, String str2) {
        String str3;
        boolean m10363;
        Object obj2 = obj;
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        AbstractC3659.m7680(str);
        AbstractC3659.m7680(str2);
        m10252();
        m10526();
        if ("allow_personalized_ads".equals(str2)) {
            String str4 = "_npa";
            if (obj2 instanceof String) {
                String str5 = (String) obj2;
                if (!TextUtils.isEmpty(str5)) {
                    long j2 = true != "false".equals(str5.toLowerCase(Locale.ENGLISH)) ? 0L : 1L;
                    obj2 = Long.valueOf(j2);
                    C5313 c5313 = c5322.f20205;
                    C5322.m10560(c5313);
                    c5313.f20024.m1136(j2 == 1 ? "true" : "false");
                    C5344 c5344 = c5322.f20193;
                    C5322.m10556(c5344);
                    c5344.f20350.m10214("non_personalized_ads(_npa)", obj2, "Setting user property(FE)");
                    str3 = str4;
                }
            }
            if (obj2 == null) {
                C5313 c53132 = c5322.f20205;
                C5322.m10560(c53132);
                c53132.f20024.m1136("unset");
            } else {
                str4 = str2;
            }
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20350.m10214("non_personalized_ads(_npa)", obj2, "Setting user property(FE)");
            str3 = str4;
        } else {
            str3 = str2;
        }
        Object obj3 = obj2;
        if (!c5322.m10568()) {
            C5344 c53443 = c5322.f20193;
            C5322.m10556(c53443);
            c53443.f20350.m10217("User property not set since app measurement is disabled");
            return;
        }
        if (c5322.m10561()) {
            C5241 c5241 = new C5241(j, obj3, str3, str);
            C5240 m10569 = c5322.m10569();
            m10569.m10252();
            m10569.m10526();
            m10569.m10304();
            C5251 m10565 = ((C5322) ((ᵎﹶ) m10569).ʾˋ).m10565();
            m10565.getClass();
            Parcel obtain = Parcel.obtain();
            ﹳـ.ᵎﹶ.ⁱˊ(c5241, obtain);
            byte[] marshall = obtain.marshall();
            obtain.recycle();
            if (marshall.length > 131072) {
                C5344 c53444 = ((C5322) ((ᵎﹶ) m10565).ʾˋ).f20193;
                C5322.m10556(c53444);
                c53444.f20345.m10217("User property too long for local database. Sending directly to service");
                m10363 = false;
            } else {
                m10363 = m10565.m10363(1, marshall);
            }
            m10569.m10306(new RunnableC5281(m10569, m10569.m10302(true), m10363, c5241, 0));
        }
    }

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public final void m10385(String str, String str2, Bundle bundle) {
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        c5322.f20206.getClass();
        long currentTimeMillis = System.currentTimeMillis();
        AbstractC3659.m7680(str);
        Bundle bundle2 = new Bundle();
        bundle2.putString("name", str);
        bundle2.putLong("creation_timestamp", currentTimeMillis);
        if (str2 != null) {
            bundle2.putString("expired_event_name", str2);
            bundle2.putBundle("expired_event_params", bundle);
        }
        C5215 c5215 = c5322.f20200;
        C5322.m10556(c5215);
        c5215.m10200(new RunnableC5343(this, bundle2, 1));
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final void m10386() {
        C5344 c5344;
        String str;
        int i;
        int i2;
        int i3;
        int i4;
        C5290 c5290;
        C5290 c52902;
        C5253 c5253;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        EnumC0477 enumC0477;
        C0987 c0987;
        EnumC0477 enumC04772;
        m10252();
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C5344 c53442 = c5322.f20193;
        C4279 c4279 = c5322.f20206;
        C5322.m10556(c53442);
        c53442.f20340.m10217("Handle tcf update.");
        C5313 c5313 = c5322.f20205;
        C5322.m10560(c5313);
        SharedPreferences m10550 = c5313.m10550();
        HashMap hashMap = new HashMap();
        C5254 c5254 = AbstractC5321.f20174;
        int i10 = 2;
        int i11 = 1;
        if (((Boolean) c5254.m10388(null)).booleanValue()) {
            C0956 c0956 = AbstractC5288.f19955;
            EnumC0349 enumC0349 = EnumC0349.f2008;
            c5344 = c53442;
            EnumC5320 enumC5320 = EnumC5320.f20063;
            AbstractMap.SimpleImmutableEntry simpleImmutableEntry = new AbstractMap.SimpleImmutableEntry(enumC0349, enumC5320);
            EnumC0349 enumC03492 = EnumC0349.f2002;
            EnumC5320 enumC53202 = EnumC5320.f20064;
            AbstractMap.SimpleImmutableEntry simpleImmutableEntry2 = new AbstractMap.SimpleImmutableEntry(enumC03492, enumC53202);
            EnumC0349 enumC03493 = EnumC0349.f2003;
            AbstractMap.SimpleImmutableEntry simpleImmutableEntry3 = new AbstractMap.SimpleImmutableEntry(enumC03493, enumC5320);
            EnumC0349 enumC03494 = EnumC0349.f2009;
            AbstractMap.SimpleImmutableEntry simpleImmutableEntry4 = new AbstractMap.SimpleImmutableEntry(enumC03494, enumC5320);
            EnumC0349 enumC03495 = EnumC0349.f2005;
            List asList = Arrays.asList(simpleImmutableEntry, simpleImmutableEntry2, simpleImmutableEntry3, simpleImmutableEntry4, new AbstractMap.SimpleImmutableEntry(enumC03495, enumC53202), new AbstractMap.SimpleImmutableEntry(EnumC0349.f2007, enumC53202), new AbstractMap.SimpleImmutableEntry(EnumC0349.f2004, enumC53202));
            ʽﹳ r2 = new ʽﹳ(AbstractC2305.m5366(asList) ? asList.size() : 4);
            r2.ᵢˏ(asList);
            C0987 c09872 = r2.ˑﹳ();
            int i12 = AbstractC0997.f3984;
            C0943 c0943 = new C0943("CH");
            char[] cArr = new char[5];
            boolean contains = m10550.contains("IABTCF_TCString");
            try {
                i5 = m10550.getInt("IABTCF_CmpSdkID", -1);
            } catch (ClassCastException unused) {
                i5 = -1;
            }
            try {
                i6 = m10550.getInt("IABTCF_PolicyVersion", -1);
            } catch (ClassCastException unused2) {
                i6 = -1;
            }
            try {
                i7 = m10550.getInt("IABTCF_gdprApplies", -1);
            } catch (ClassCastException unused3) {
                i7 = -1;
            }
            int i13 = i6;
            try {
                i8 = m10550.getInt("IABTCF_PurposeOneTreatment", -1);
            } catch (ClassCastException unused4) {
                i8 = -1;
            }
            try {
                i9 = m10550.getInt("IABTCF_EnableAdvertiserConsentMode", -1);
            } catch (ClassCastException unused5) {
                i9 = -1;
            }
            String m10480 = AbstractC5288.m10480(m10550, "IABTCF_PublisherCC");
            int i14 = i5;
            ʽﹳ r4 = new ʽﹳ(4);
            AbstractC0983 it = c09872.keySet().iterator();
            while (true) {
                boolean hasNext = it.hasNext();
                AbstractC0983 abstractC0983 = it;
                enumC0477 = EnumC0477.f2236;
                if (!hasNext) {
                    break;
                }
                EnumC0349 enumC03496 = (EnumC0349) abstractC0983.next();
                char[] cArr2 = cArr;
                int mo1636 = enumC03496.mo1636();
                String str2 = m10480;
                int i15 = i8;
                StringBuilder sb = new StringBuilder(String.valueOf(mo1636).length() + 28);
                sb.append("IABTCF_PublisherRestrictions");
                sb.append(mo1636);
                String m104802 = AbstractC5288.m10480(m10550, sb.toString());
                if (!TextUtils.isEmpty(m104802) && m104802.length() >= 755) {
                    int digit = Character.digit(m104802.charAt(754), 10);
                    enumC04772 = EnumC0477.f2235;
                    if (digit >= 0 && digit <= EnumC0477.values().length && digit != 0) {
                        if (digit == i11) {
                            enumC0477 = EnumC0477.f2231;
                        } else if (digit == i10) {
                            enumC0477 = EnumC0477.f2232;
                        }
                    }
                    r4.ʼʼ(enumC03496, enumC04772);
                    it = abstractC0983;
                    cArr = cArr2;
                    i8 = i15;
                    m10480 = str2;
                    i10 = 2;
                    i11 = 1;
                }
                enumC04772 = enumC0477;
                r4.ʼʼ(enumC03496, enumC04772);
                it = abstractC0983;
                cArr = cArr2;
                i8 = i15;
                m10480 = str2;
                i10 = 2;
                i11 = 1;
            }
            int i16 = i8;
            String str3 = m10480;
            char[] cArr3 = cArr;
            C0987 c09873 = r4.ˑﹳ();
            String m104803 = AbstractC5288.m10480(m10550, "IABTCF_PurposeConsents");
            String m104804 = AbstractC5288.m10480(m10550, "IABTCF_VendorConsents");
            boolean z = !TextUtils.isEmpty(m104804) && m104804.length() >= 755 && m104804.charAt(754) == '1';
            String m104805 = AbstractC5288.m10480(m10550, "IABTCF_PurposeLegitimateInterests");
            String m104806 = AbstractC5288.m10480(m10550, "IABTCF_VendorLegitimateInterests");
            boolean z2 = !TextUtils.isEmpty(m104806) && m104806.length() >= 755 && m104806.charAt(754) == '1';
            cArr3[0] = '2';
            if (contains) {
                EnumC0477 enumC04773 = (EnumC0477) c09873.get(enumC0349);
                EnumC0477 enumC04774 = (EnumC0477) c09873.get(enumC03493);
                EnumC0477 enumC04775 = (EnumC0477) c09873.get(enumC03494);
                EnumC0477 enumC04776 = (EnumC0477) c09873.get(enumC03495);
                ʽﹳ r0 = new ʽﹳ(4);
                r0.ʼʼ("Version", "2");
                boolean z3 = z;
                r0.ʼʼ("VendorConsent", true != z ? "0" : "1");
                boolean z4 = z2;
                r0.ʼʼ("VendorLegitimateInterest", true != z2 ? "0" : "1");
                r0.ʼʼ("gdprApplies", i7 != 1 ? "0" : "1");
                r0.ʼʼ("EnableAdvertiserConsentMode", i9 != 1 ? "0" : "1");
                r0.ʼʼ("PolicyVersion", String.valueOf(i13));
                r0.ʼʼ("CmpSdkID", String.valueOf(i14));
                r0.ʼʼ("PurposeOneTreatment", i16 != 1 ? "0" : "1");
                r0.ʼʼ("PublisherCC", str3);
                r0.ʼʼ("PublisherRestrictions1", String.valueOf(enumC04773 != null ? enumC04773.mo1636() : enumC0477.mo1636()));
                r0.ʼʼ("PublisherRestrictions3", String.valueOf(enumC04774 != null ? enumC04774.mo1636() : enumC0477.mo1636()));
                r0.ʼʼ("PublisherRestrictions4", String.valueOf(enumC04775 != null ? enumC04775.mo1636() : enumC0477.mo1636()));
                r0.ʼʼ("PublisherRestrictions7", String.valueOf(enumC04776 != null ? enumC04776.mo1636() : enumC0477.mo1636()));
                String m10476 = AbstractC5288.m10476(enumC0349, m104803, m104805);
                String m104762 = AbstractC5288.m10476(enumC03493, m104803, m104805);
                String m104763 = AbstractC5288.m10476(enumC03494, m104803, m104805);
                String m104764 = AbstractC5288.m10476(enumC03495, m104803, m104805);
                int i17 = i9;
                AbstractC1004.m3279("Purpose1", m10476);
                AbstractC1004.m3279("Purpose3", m104762);
                AbstractC1004.m3279("Purpose4", m104763);
                AbstractC1004.m3279("Purpose7", m104764);
                r0.ᵢˏ(C0987.m3255(4, new Object[]{"Purpose1", m10476, "Purpose3", m104762, "Purpose4", m104763, "Purpose7", m104764}, null).entrySet());
                int i18 = i7;
                r0.ᵢˏ(C0987.m3255(5, new Object[]{"AuthorizePurpose1", true != AbstractC5288.m10479(enumC0349, c09872, c09873, c0943, cArr3, i17, i18, i16, str3, m104803, m104805, z3, z4) ? "0" : "1", "AuthorizePurpose3", true != AbstractC5288.m10479(enumC03493, c09872, c09873, c0943, cArr3, i17, i18, i16, str3, m104803, m104805, z3, z4) ? "0" : "1", "AuthorizePurpose4", true != AbstractC5288.m10479(enumC03494, c09872, c09873, c0943, cArr3, i17, i18, i16, str3, m104803, m104805, z3, z4) ? "0" : "1", "AuthorizePurpose7", true != AbstractC5288.m10479(enumC03495, c09872, c09873, c0943, cArr3, i17, i18, i16, str3, m104803, m104805, z3, z4) ? "0" : "1", "PurposeDiagnostics", new String(cArr3)}, null).entrySet());
                c0987 = r0.ˑﹳ();
            } else {
                c0987 = C0987.f3963;
            }
            c5290 = new C5290(c0987);
            str = "";
        } else {
            c5344 = c53442;
            String m104807 = AbstractC5288.m10480(m10550, "IABTCF_VendorConsents");
            str = "";
            if (!str.equals(m104807) && m104807.length() > 754) {
                hashMap.put("GoogleConsent", String.valueOf(m104807.charAt(754)));
            }
            try {
                i = m10550.getInt("IABTCF_gdprApplies", -1);
            } catch (ClassCastException unused6) {
                i = -1;
            }
            if (i != -1) {
                hashMap.put("gdprApplies", String.valueOf(i));
            }
            try {
                i2 = m10550.getInt("IABTCF_EnableAdvertiserConsentMode", -1);
            } catch (ClassCastException unused7) {
                i2 = -1;
            }
            if (i2 != -1) {
                hashMap.put("EnableAdvertiserConsentMode", String.valueOf(i2));
            }
            try {
                i3 = m10550.getInt("IABTCF_PolicyVersion", -1);
            } catch (ClassCastException unused8) {
                i3 = -1;
            }
            if (i3 != -1) {
                hashMap.put("PolicyVersion", String.valueOf(i3));
            }
            String m104808 = AbstractC5288.m10480(m10550, "IABTCF_PurposeConsents");
            if (!str.equals(m104808)) {
                hashMap.put("PurposeConsents", m104808);
            }
            try {
                i4 = m10550.getInt("IABTCF_CmpSdkID", -1);
            } catch (ClassCastException unused9) {
                i4 = -1;
            }
            if (i4 != -1) {
                hashMap.put("CmpSdkID", String.valueOf(i4));
            }
            c5290 = new C5290(hashMap);
        }
        C5322.m10556(c5344);
        C5344 c53443 = c5344;
        C5221 c5221 = c53443.f20350;
        c5221.m10216(c5290, "Tcf preferences read");
        if (!c5322.f20189.m10577(null, c5254)) {
            if (c5313.m10547(c5290)) {
                Bundle m10485 = c5290.m10485();
                C5322.m10556(c53443);
                c5221.m10216(m10485, "Consent generated from Tcf");
                if (m10485 != Bundle.EMPTY) {
                    c4279.getClass();
                    m10380(m10485, -30, System.currentTimeMillis());
                }
                Bundle bundle = new Bundle();
                bundle.putString("_tcfd", c5290.m10482());
                m10369("auto", "_tcf", bundle);
                return;
            }
            return;
        }
        c5313.ⁱᴵ();
        String string = c5313.m10545().getString("stored_tcf_param", str);
        HashMap hashMap2 = new HashMap();
        if (TextUtils.isEmpty(string)) {
            c52902 = new C5290(hashMap2);
        } else {
            for (String str4 : string.split(";")) {
                String[] split = str4.split("=");
                if (split.length >= 2 && AbstractC5288.f19955.contains(split[0])) {
                    hashMap2.put(split[0], split[1]);
                }
            }
            c52902 = new C5290(hashMap2);
        }
        if (c5313.m10547(c5290)) {
            Bundle m104852 = c5290.m10485();
            C5322.m10556(c53443);
            c5221.m10216(m104852, "Consent generated from Tcf");
            if (m104852 != Bundle.EMPTY) {
                c4279.getClass();
                c5253 = this;
                c5253.m10380(m104852, -30, System.currentTimeMillis());
            } else {
                c5253 = this;
            }
            Bundle bundle2 = new Bundle();
            HashMap hashMap3 = c52902.f19961;
            String str5 = (hashMap3.isEmpty() || ((String) hashMap3.get("Version")) != null) ? "0" : "1";
            Bundle m104853 = c5290.m10485();
            Bundle m104854 = c52902.m10485();
            bundle2.putString("_tcfm", str5.concat((m104853.size() == m104854.size() && Objects.equals(m104853.getString("ad_storage"), m104854.getString("ad_storage")) && Objects.equals(m104853.getString("ad_personalization"), m104854.getString("ad_personalization")) && Objects.equals(m104853.getString("ad_user_data"), m104854.getString("ad_user_data"))) ? "0" : "1"));
            String str6 = (String) c5290.f19961.get("PurposeDiagnostics");
            if (TextUtils.isEmpty(str6)) {
                str6 = "200000";
            }
            bundle2.putString("_tcfd2", str6);
            bundle2.putString("_tcfd", c5290.m10482());
            c5253.m10369("auto", "_tcf", bundle2);
        }
    }

    /* renamed from: ﾞˏ, reason: contains not printable characters */
    public final void m10387(Boolean bool, boolean z) {
        m10252();
        m10526();
        C5322 c5322 = (C5322) ((ᵎﹶ) this).ʾˋ;
        C5344 c5344 = c5322.f20193;
        C5322.m10556(c5344);
        c5344.f20340.m10216(bool, "Setting app measurement enabled (FE)");
        C5313 c5313 = c5322.f20205;
        C5322.m10560(c5313);
        c5313.ⁱᴵ();
        SharedPreferences.Editor edit = c5313.m10545().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
        if (z) {
            c5313.ⁱᴵ();
            SharedPreferences.Editor edit2 = c5313.m10545().edit();
            if (bool != null) {
                edit2.putBoolean("measurement_enabled_from_api", bool.booleanValue());
            } else {
                edit2.remove("measurement_enabled_from_api");
            }
            edit2.apply();
        }
        C5215 c5215 = c5322.f20200;
        C5322.m10556(c5215);
        c5215.m10203();
        if (c5322.f20186 || !(bool == null || bool.booleanValue())) {
            m10370();
        }
    }
}
