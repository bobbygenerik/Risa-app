package p447;

import android.app.Application;
import android.app.BroadcastOptions;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import com.google.android.gms.internal.measurement.AbstractC0252;
import com.google.android.gms.internal.measurement.C0289;
import com.google.android.gms.internal.measurement.C0344;
import com.google.android.gms.internal.measurement.C0390;
import com.google.android.gms.internal.measurement.C0481;
import com.google.android.gms.internal.measurement.C0492;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONException;
import org.json.JSONObject;
import p095.InterfaceC1882;
import p179.RunnableC2689;
import p296.AbstractC3659;
import p347.C4279;
import p366.C4483;
import p366.C4486;
import ʽٴ.ˈ;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ᵎʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5322 implements InterfaceC5296 {

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public static volatile C5322 f20181;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public C5224 f20182;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C4486 f20183;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Context f20184;

    /* renamed from: ʿ, reason: contains not printable characters */
    public volatile Boolean f20185;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public volatile boolean f20186;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final C5253 f20187;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final C5274 f20188;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C5327 f20189;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public long f20191;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final C5256 f20192;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C5344 f20193;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public C5240 f20194;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public C5251 f20195;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final long f20196;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final String f20197;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public C5249 f20198;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C5286 f20199;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final C5215 f20200;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public int f20202;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final boolean f20203;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public Boolean f20204;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C5313 f20205;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C4279 f20206;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public int f20207;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final C5339 f20208;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final C5356 f20209;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final C5298 f20210;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public C5347 f20211;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public boolean f20190 = false;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public final AtomicInteger f20201 = new AtomicInteger(0);

    /* JADX WARN: Type inference failed for: r3v6, types: [ﹶﾞ.ᵎﹶ, ʽⁱ.ᵎﹶ] */
    /* JADX WARN: Type inference failed for: r5v2, types: [ﹶﾞ.ˎˉ, ﹶﾞ.ˎᐧ] */
    public C5322(C5323 c5323) {
        Context context = c5323.f20217;
        C4486 c4486 = new C4486(8);
        this.f20183 = c4486;
        AbstractC5218.f19631 = c4486;
        this.f20184 = context;
        this.f20203 = c5323.f20214;
        this.f20185 = c5323.f20216;
        this.f20197 = c5323.f20215;
        this.f20186 = true;
        if (C0390.f2047 == null && context != null) {
            Object obj = C0390.f2046;
            synchronized (obj) {
                try {
                    if (C0390.f2047 == null) {
                        synchronized (obj) {
                            C0481 c0481 = C0390.f2047;
                            final Context applicationContext = context.getApplicationContext();
                            if (applicationContext == null) {
                                applicationContext = context;
                            }
                            if (c0481 != null) {
                                if (c0481.f2240 != applicationContext) {
                                }
                            }
                            if (c0481 != null) {
                                C0289.m1298();
                                AbstractC0252.m1200();
                                C0344.m1587();
                            }
                            C0390.f2047 = new C0481(applicationContext, ˈ.ʽﹳ(new InterfaceC1882() { // from class: com.google.android.gms.internal.measurement.ᐧⁱ
                                @Override // p095.InterfaceC1882
                                public final /* synthetic */ Object get() {
                                    Object obj2 = C0390.f2046;
                                    return AbstractC0473.m1921(applicationContext);
                                }
                            }));
                            C0390.f2045.incrementAndGet();
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                } finally {
                }
            }
        }
        this.f20206 = C4279.f15863;
        Long l = c5323.f20218;
        this.f20196 = l != null ? l.longValue() : System.currentTimeMillis();
        ?? r3 = new ᵎﹶ(this);
        r3.f20223 = C4483.f16798;
        this.f20189 = r3;
        C5313 c5313 = new C5313(this);
        c5313.m10464();
        this.f20205 = c5313;
        C5344 c5344 = new C5344(this);
        c5344.m10464();
        this.f20193 = c5344;
        C5339 c5339 = new C5339(this);
        c5339.m10464();
        this.f20208 = c5339;
        this.f20199 = new C5286(new C5317(c5323, this));
        this.f20210 = new C5298(this);
        C5356 c5356 = new C5356(this);
        c5356.m10525();
        this.f20209 = c5356;
        C5253 c5253 = new C5253(this);
        c5253.m10525();
        this.f20187 = c5253;
        C5256 c5256 = new C5256(this);
        c5256.m10525();
        this.f20192 = c5256;
        ?? abstractC5276 = new AbstractC5276(this);
        abstractC5276.m10464();
        this.f20188 = abstractC5276;
        C5215 c5215 = new C5215(this);
        c5215.m10464();
        this.f20200 = c5215;
        C0492 c0492 = c5323.f20213;
        boolean z = c0492 == null || c0492.f2255 == 0;
        if (context.getApplicationContext() instanceof Application) {
            m10559(c5253);
            if (((C5322) ((ᵎﹶ) c5253).ʾˋ).f20184.getApplicationContext() instanceof Application) {
                Application application = (Application) ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20184.getApplicationContext();
                if (c5253.f19800 == null) {
                    c5253.f19800 = new C5269(c5253);
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(c5253.f19800);
                    application.registerActivityLifecycleCallbacks(c5253.f19800);
                    C5344 c53442 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20193;
                    m10556(c53442);
                    c53442.f20350.m10217("Registered activity lifecycle callback");
                }
            }
        } else {
            m10556(c5344);
            c5344.f20348.m10217("Application context is not an Application");
        }
        c5215.m10200(new RunnableC2689(this, 28, c5323));
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public static final void m10556(AbstractC5276 abstractC5276) {
        if (abstractC5276 == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!abstractC5276.f19908) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(abstractC5276.getClass())));
        }
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public static C5322 m10557(Context context, C0492 c0492, Long l) {
        Bundle bundle;
        if (c0492 != null) {
            Bundle bundle2 = c0492.f2254;
            c0492 = new C0492(c0492.f2253, c0492.f2255, c0492.f2252, bundle2, null);
        }
        AbstractC3659.m7687(context);
        AbstractC3659.m7687(context.getApplicationContext());
        if (f20181 == null) {
            synchronized (C5322.class) {
                try {
                    if (f20181 == null) {
                        f20181 = new C5322(new C5323(context, c0492, l));
                    }
                } finally {
                }
            }
        } else if (c0492 != null && (bundle = c0492.f2254) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            AbstractC3659.m7687(f20181);
            f20181.f20185 = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled"));
        }
        AbstractC3659.m7687(f20181);
        return f20181;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final void m10558(AbstractC5237 abstractC5237) {
        if (abstractC5237 == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public static final void m10559(AbstractC5308 abstractC5308) {
        if (abstractC5308 == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!abstractC5308.f20011) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(abstractC5308.getClass())));
        }
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final void m10560(ᵎﹶ r1) {
        if (r1 == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0032, code lost:
    
        if (java.lang.Math.abs(android.os.SystemClock.elapsedRealtime() - r6.f20191) > 1000) goto L12;
     */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m10561() {
        /*
            r6 = this;
            boolean r0 = r6.f20190
            if (r0 == 0) goto L96
            ﹶﾞ.ʻˋ r0 = r6.f20200
            m10556(r0)
            r0.m10203()
            java.lang.Boolean r0 = r6.f20204
            ᵎᴵ.ﹳٴ r1 = r6.f20206
            if (r0 == 0) goto L34
            long r2 = r6.f20191
            r4 = 0
            int r2 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r2 == 0) goto L34
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L8f
            r1.getClass()
            long r2 = android.os.SystemClock.elapsedRealtime()
            long r4 = r6.f20191
            long r2 = r2 - r4
            long r2 = java.lang.Math.abs(r2)
            r4 = 1000(0x3e8, double:4.94E-321)
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto L8f
        L34:
            r1.getClass()
            long r0 = android.os.SystemClock.elapsedRealtime()
            r6.f20191 = r0
            ﹶﾞ.ᵢﹳ r0 = r6.f20208
            m10560(r0)
            java.lang.String r1 = "android.permission.INTERNET"
            boolean r1 = r0.m10695(r1)
            r2 = 0
            if (r1 == 0) goto L75
            java.lang.String r1 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r1 = r0.m10695(r1)
            if (r1 == 0) goto L75
            android.content.Context r1 = r6.f20184
            ˑˊ.ⁱˊ r3 = p233.C3191.m7014(r1)
            boolean r3 = r3.m7015()
            r4 = 1
            if (r3 != 0) goto L74
            ﹶﾞ.ᵎﹶ r3 = r6.f20189
            boolean r3 = r3.m10574()
            if (r3 != 0) goto L74
            boolean r3 = p447.C5339.m10663(r1)
            if (r3 == 0) goto L75
            boolean r1 = p447.C5339.m10662(r1)
            if (r1 == 0) goto L75
        L74:
            r2 = r4
        L75:
            java.lang.Boolean r1 = java.lang.Boolean.valueOf(r2)
            r6.f20204 = r1
            if (r2 == 0) goto L8f
            ﹶﾞ.ˆﾞ r1 = r6.m10566()
            java.lang.String r1 = r1.m10359()
            boolean r0 = r0.m10678(r1)
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r6.f20204 = r0
        L8f:
            java.lang.Boolean r0 = r6.f20204
            boolean r0 = r0.booleanValue()
            return r0
        L96:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "AppMeasurement is not initialized"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.C5322.m10561():boolean");
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C5286 m10562() {
        return this.f20199;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m10563(int i, Throwable th, byte[] bArr) {
        C5344 c5344;
        C5344 c53442;
        int i2 = i;
        C5344 c53443 = this.f20193;
        if (i2 != 200 && i2 != 204) {
            if (i2 == 304) {
                i2 = 304;
            }
            m10556(c53443);
            c53443.f20348.m10214(Integer.valueOf(i2), th, "Network Request for Deferred Deep Link failed. response, exception");
        }
        if (th == null) {
            C5313 c5313 = this.f20205;
            m10560(c5313);
            c5313.f20034.m10552(true);
            if (bArr == null || bArr.length == 0) {
                m10556(c53443);
                c53443.f20340.m10217("Deferred Deep Link response empty.");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(new String(bArr));
                String optString = jSONObject.optString("deeplink", "");
                if (TextUtils.isEmpty(optString)) {
                    m10556(c53443);
                    c53443.f20340.m10217("Deferred Deep Link is empty.");
                    return;
                }
                String optString2 = jSONObject.optString("gclid", "");
                String optString3 = jSONObject.optString("gbraid", "");
                String optString4 = jSONObject.optString("gad_source", "");
                double optDouble = jSONObject.optDouble("timestamp", 0.0d);
                Bundle bundle = new Bundle();
                C5339 c5339 = this.f20208;
                m10560(c5339);
                C5322 c5322 = (C5322) ((ᵎﹶ) c5339).ʾˋ;
                if (TextUtils.isEmpty(optString)) {
                    c53442 = c53443;
                } else {
                    Context context = c5322.f20184;
                    c53442 = c53443;
                    try {
                        List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0);
                        if (queryIntentActivities != null && !queryIntentActivities.isEmpty()) {
                            if (!TextUtils.isEmpty(optString3)) {
                                bundle.putString("gbraid", optString3);
                            }
                            if (!TextUtils.isEmpty(optString4)) {
                                bundle.putString("gad_source", optString4);
                            }
                            bundle.putString("gclid", optString2);
                            bundle.putString("_cis", "ddp");
                            this.f20187.m10369("auto", "_cmp", bundle);
                            if (TextUtils.isEmpty(optString)) {
                                return;
                            }
                            try {
                                SharedPreferences.Editor edit = context.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                                edit.putString("deeplink", optString);
                                edit.putLong("timestamp", Double.doubleToRawLongBits(optDouble));
                                if (edit.commit()) {
                                    Intent intent = new Intent("android.google.analytics.action.DEEPLINK_ACTION");
                                    Context context2 = c5322.f20184;
                                    if (Build.VERSION.SDK_INT < 34) {
                                        context2.sendBroadcast(intent);
                                        return;
                                    } else {
                                        context2.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
                                        return;
                                    }
                                }
                                return;
                            } catch (RuntimeException e) {
                                C5344 c53444 = ((C5322) ((ᵎﹶ) c5339).ʾˋ).f20193;
                                m10556(c53444);
                                c53444.f20343.m10216(e, "Failed to persist Deferred Deep Link. exception");
                                return;
                            }
                        }
                    } catch (JSONException e2) {
                        e = e2;
                        c5344 = c53442;
                        m10556(c5344);
                        c5344.f20343.m10216(e, "Failed to parse the Deferred Deep Link response. exception");
                        return;
                    }
                }
                m10556(c53442);
                c5344 = c53442;
                try {
                    c5344.f20348.m10215("Deferred Deep Link validation failed. gclid, gbraid, deep link", optString2, optString3, optString);
                    return;
                } catch (JSONException e3) {
                    e = e3;
                    m10556(c5344);
                    c5344.f20343.m10216(e, "Failed to parse the Deferred Deep Link response. exception");
                    return;
                }
            } catch (JSONException e4) {
                e = e4;
                c5344 = c53443;
            }
        }
        m10556(c53443);
        c53443.f20348.m10214(Integer.valueOf(i2), th, "Network Request for Deferred Deep Link failed. response, exception");
    }

    @Override // p447.InterfaceC5296
    /* renamed from: ˈʿ */
    public final C4486 mo10491() {
        return this.f20183;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C5224 m10564() {
        m10556(this.f20182);
        return this.f20182;
    }

    @Override // p447.InterfaceC5296
    /* renamed from: ـˆ */
    public final Context mo10492() {
        return this.f20184;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C5251 m10565() {
        m10559(this.f20195);
        return this.f20195;
    }

    @Override // p447.InterfaceC5296
    /* renamed from: ᵎˊ */
    public final C4279 mo10493() {
        return this.f20206;
    }

    @Override // p447.InterfaceC5296
    /* renamed from: ᵎﹶ */
    public final C5344 mo10494() {
        C5344 c5344 = this.f20193;
        m10556(c5344);
        return c5344;
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final C5249 m10566() {
        m10559(this.f20198);
        return this.f20198;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int m10567() {
        C5215 c5215 = this.f20200;
        m10556(c5215);
        c5215.m10203();
        C5327 c5327 = this.f20189;
        if (c5327.m10575()) {
            return 1;
        }
        m10556(c5215);
        c5215.m10203();
        if (!this.f20186) {
            return 8;
        }
        C5313 c5313 = this.f20205;
        m10560(c5313);
        c5313.ⁱᴵ();
        Boolean valueOf = c5313.m10545().contains("measurement_enabled") ? Boolean.valueOf(c5313.m10545().getBoolean("measurement_enabled", true)) : null;
        if (valueOf != null) {
            return valueOf.booleanValue() ? 0 : 3;
        }
        C4486 c4486 = ((C5322) ((ᵎﹶ) c5327).ʾˋ).f20183;
        Boolean m10581 = c5327.m10581("firebase_analytics_collection_enabled");
        return m10581 != null ? m10581.booleanValue() ? 0 : 4 : (this.f20185 == null || this.f20185.booleanValue()) ? 0 : 7;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m10568() {
        return m10567() == 0;
    }

    @Override // p447.InterfaceC5296
    /* renamed from: ﹳᐧ */
    public final C5215 mo10495() {
        C5215 c5215 = this.f20200;
        m10556(c5215);
        return c5215;
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C5240 m10569() {
        m10559(this.f20194);
        return this.f20194;
    }
}
