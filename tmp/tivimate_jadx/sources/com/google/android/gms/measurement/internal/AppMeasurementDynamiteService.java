package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.common.util.DynamiteApi;
import com.google.android.gms.internal.measurement.AbstractBinderC0450;
import com.google.android.gms.internal.measurement.C0441;
import com.google.android.gms.internal.measurement.C0492;
import com.google.android.gms.internal.measurement.InterfaceC0342;
import com.google.android.gms.internal.measurement.InterfaceC0381;
import com.google.android.gms.internal.measurement.InterfaceC0406;
import com.google.android.gms.internal.measurement.InterfaceC0462;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicReference;
import p088.BinderC1753;
import p088.InterfaceC1754;
import p229.C3125;
import p255.C3359;
import p255.C3368;
import p296.AbstractC3659;
import p366.C4486;
import p447.C5215;
import p447.C5221;
import p447.C5249;
import p447.C5253;
import p447.C5269;
import p447.C5274;
import p447.C5279;
import p447.C5294;
import p447.C5295;
import p447.C5298;
import p447.C5314;
import p447.C5322;
import p447.C5339;
import p447.C5340;
import p447.C5344;
import p447.C5351;
import p447.C5356;
import p447.EnumC5335;
import p447.InterfaceC5284;
import p447.InterfaceC5299;
import p447.RunnableC5213;
import p447.RunnableC5259;
import p447.RunnableC5283;
import p447.RunnableC5307;
import p447.RunnableC5343;
import p447.RunnableC5350;
import ʻـ.ⁱˊ;
import ʽⁱ.ᵎﹶ;
import ʿי.ˎᐧ;
import ˑי.ʽ;
import ﹶﾞ.ﹶˎ;

@DynamiteApi
/* loaded from: classes.dex */
public class AppMeasurementDynamiteService extends AbstractBinderC0450 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public C5322 f2521;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C3359 f2522;

    /* JADX WARN: Type inference failed for: r0v2, types: [יـ.ﹳᐧ, יـ.ˑﹳ] */
    public AppMeasurementDynamiteService() {
        super("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        this.f2521 = null;
        this.f2522 = new C3368(0);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void beginAdUnitExposure(String str, long j) {
        m2317();
        C5298 c5298 = this.f2521.f20210;
        C5322.m10558(c5298);
        c5298.m10501(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        c5253.m10385(str, str2, bundle);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void clearMeasurementEnabled(long j) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        c5253.m10526();
        C5215 c5215 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20200;
        C5322.m10556(c5215);
        c5215.m10200(new ﹶˎ(c5253, 1, (Object) null));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void endAdUnitExposure(String str, long j) {
        m2317();
        C5298 c5298 = this.f2521.f20210;
        C5322.m10558(c5298);
        c5298.m10498(str, j);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void generateEventId(InterfaceC0462 interfaceC0462) {
        m2317();
        C5339 c5339 = this.f2521.f20208;
        C5322.m10560(c5339);
        long m10699 = c5339.m10699();
        m2317();
        C5339 c53392 = this.f2521.f20208;
        C5322.m10560(c53392);
        c53392.m10700(interfaceC0462, m10699);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void getAppInstanceId(InterfaceC0462 interfaceC0462) {
        m2317();
        C5215 c5215 = this.f2521.f20200;
        C5322.m10556(c5215);
        c5215.m10200(new RunnableC5283(this, interfaceC0462, 0));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void getCachedAppInstanceId(InterfaceC0462 interfaceC0462) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        m2318((String) c5253.f19812.get(), interfaceC0462);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void getConditionalUserProperties(String str, String str2, InterfaceC0462 interfaceC0462) {
        m2317();
        C5215 c5215 = this.f2521.f20200;
        C5322.m10556(c5215);
        c5215.m10200(new ˎᐧ(this, interfaceC0462, str, str2, 8, false));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void getCurrentScreenClass(InterfaceC0462 interfaceC0462) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        C5356 c5356 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20209;
        C5322.m10559(c5356);
        C5351 c5351 = c5356.f20383;
        m2318(c5351 != null ? c5351.f20370 : null, interfaceC0462);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void getCurrentScreenName(InterfaceC0462 interfaceC0462) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        C5356 c5356 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20209;
        C5322.m10559(c5356);
        C5351 c5351 = c5356.f20383;
        m2318(c5351 != null ? c5351.f20371 : null, interfaceC0462);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void getGmpAppId(InterfaceC0462 interfaceC0462) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        m2318(c5253.m10382(), interfaceC0462);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void getMaxUserProperties(String str, InterfaceC0462 interfaceC0462) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        AbstractC3659.m7680(str);
        ((C5322) ((ᵎﹶ) c5253).ʾˋ).getClass();
        m2317();
        C5339 c5339 = this.f2521.f20208;
        C5322.m10560(c5339);
        c5339.m10692(interfaceC0462, 25);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void getSessionId(InterfaceC0462 interfaceC0462) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        C5215 c5215 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20200;
        C5322.m10556(c5215);
        c5215.m10200(new ﹶˎ(c5253, interfaceC0462));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void getTestFlag(InterfaceC0462 interfaceC0462, int i) {
        m2317();
        if (i == 0) {
            C5339 c5339 = this.f2521.f20208;
            C5322.m10560(c5339);
            C5253 c5253 = this.f2521.f20187;
            C5322.m10559(c5253);
            AtomicReference atomicReference = new AtomicReference();
            C5215 c5215 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20200;
            C5322.m10556(c5215);
            c5339.m10706((String) c5215.m10199(atomicReference, 15000L, "String test flag value", new RunnableC5307(c5253, atomicReference, 1)), interfaceC0462);
            return;
        }
        if (i == 1) {
            C5339 c53392 = this.f2521.f20208;
            C5322.m10560(c53392);
            C5253 c52532 = this.f2521.f20187;
            C5322.m10559(c52532);
            AtomicReference atomicReference2 = new AtomicReference();
            C5215 c52152 = ((C5322) ((ᵎﹶ) c52532).ʾˋ).f20200;
            C5322.m10556(c52152);
            c53392.m10700(interfaceC0462, ((Long) c52152.m10199(atomicReference2, 15000L, "long test flag value", new RunnableC5307(c52532, atomicReference2, 2))).longValue());
            return;
        }
        if (i == 2) {
            C5339 c53393 = this.f2521.f20208;
            C5322.m10560(c53393);
            C5253 c52533 = this.f2521.f20187;
            C5322.m10559(c52533);
            AtomicReference atomicReference3 = new AtomicReference();
            C5215 c52153 = ((C5322) ((ᵎﹶ) c52533).ʾˋ).f20200;
            C5322.m10556(c52153);
            double doubleValue = ((Double) c52153.m10199(atomicReference3, 15000L, "double test flag value", new RunnableC5307(c52533, atomicReference3, 4))).doubleValue();
            Bundle bundle = new Bundle();
            bundle.putDouble("r", doubleValue);
            try {
                interfaceC0462.mo1551(bundle);
                return;
            } catch (RemoteException e) {
                C5344 c5344 = ((C5322) ((ᵎﹶ) c53393).ʾˋ).f20193;
                C5322.m10556(c5344);
                c5344.f20348.m10216(e, "Error returning double value to wrapper");
                return;
            }
        }
        if (i == 3) {
            C5339 c53394 = this.f2521.f20208;
            C5322.m10560(c53394);
            C5253 c52534 = this.f2521.f20187;
            C5322.m10559(c52534);
            AtomicReference atomicReference4 = new AtomicReference();
            C5215 c52154 = ((C5322) ((ᵎﹶ) c52534).ʾˋ).f20200;
            C5322.m10556(c52154);
            c53394.m10692(interfaceC0462, ((Integer) c52154.m10199(atomicReference4, 15000L, "int test flag value", new RunnableC5307(c52534, atomicReference4, 3))).intValue());
            return;
        }
        if (i != 4) {
            return;
        }
        C5339 c53395 = this.f2521.f20208;
        C5322.m10560(c53395);
        C5253 c52535 = this.f2521.f20187;
        C5322.m10559(c52535);
        AtomicReference atomicReference5 = new AtomicReference();
        C5215 c52155 = ((C5322) ((ᵎﹶ) c52535).ʾˋ).f20200;
        C5322.m10556(c52155);
        c53395.m10696(interfaceC0462, ((Boolean) c52155.m10199(atomicReference5, 15000L, "boolean test flag value", new RunnableC5307(c52535, atomicReference5, 0))).booleanValue());
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void getUserProperties(String str, String str2, boolean z, InterfaceC0462 interfaceC0462) {
        m2317();
        C5215 c5215 = this.f2521.f20200;
        C5322.m10556(c5215);
        c5215.m10200(new RunnableC5213(this, interfaceC0462, str, str2, z));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void initForTests(Map map) {
        m2317();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void initialize(InterfaceC1754 interfaceC1754, C0492 c0492, long j) {
        C5322 c5322 = this.f2521;
        if (c5322 == null) {
            Context context = (Context) BinderC1753.m4715(interfaceC1754);
            AbstractC3659.m7687(context);
            this.f2521 = C5322.m10557(context, c0492, Long.valueOf(j));
        } else {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10217("Attempting to initialize multiple times");
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void isDataCollectionEnabled(InterfaceC0462 interfaceC0462) {
        m2317();
        C5215 c5215 = this.f2521.f20200;
        C5322.m10556(c5215);
        c5215.m10200(new RunnableC5283(this, interfaceC0462, 1));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        c5253.m10379(str, str2, bundle, z, z2, j);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void logEventAndBundle(String str, String str2, Bundle bundle, InterfaceC0462 interfaceC0462, long j) {
        m2317();
        AbstractC3659.m7680(str2);
        (bundle != null ? new Bundle(bundle) : new Bundle()).putString("_o", "app");
        C5279 c5279 = new C5279(str2, new C5294(bundle), "app", j);
        C5215 c5215 = this.f2521.f20200;
        C5322.m10556(c5215);
        c5215.m10200(new ˎᐧ(this, interfaceC0462, c5279, str, 5, false));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void logHealthData(int i, String str, InterfaceC1754 interfaceC1754, InterfaceC1754 interfaceC17542, InterfaceC1754 interfaceC17543) {
        m2317();
        Object m4715 = interfaceC1754 == null ? null : BinderC1753.m4715(interfaceC1754);
        Object m47152 = interfaceC17542 == null ? null : BinderC1753.m4715(interfaceC17542);
        Object m47153 = interfaceC17543 != null ? BinderC1753.m4715(interfaceC17543) : null;
        C5344 c5344 = this.f2521.f20193;
        C5322.m10556(c5344);
        c5344.m10728(i, true, false, str, m4715, m47152, m47153);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void onActivityCreated(InterfaceC1754 interfaceC1754, Bundle bundle, long j) {
        m2317();
        Activity activity = (Activity) BinderC1753.m4715(interfaceC1754);
        AbstractC3659.m7687(activity);
        onActivityCreatedByScionActivityInfo(C0441.m1870(activity), bundle, j);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void onActivityCreatedByScionActivityInfo(C0441 c0441, Bundle bundle, long j) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        C5269 c5269 = c5253.f19800;
        if (c5269 != null) {
            C5253 c52532 = this.f2521.f20187;
            C5322.m10559(c52532);
            c52532.m10372();
            c5269.m10462(c0441, bundle);
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void onActivityDestroyed(InterfaceC1754 interfaceC1754, long j) {
        m2317();
        Activity activity = (Activity) BinderC1753.m4715(interfaceC1754);
        AbstractC3659.m7687(activity);
        onActivityDestroyedByScionActivityInfo(C0441.m1870(activity), j);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void onActivityDestroyedByScionActivityInfo(C0441 c0441, long j) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        C5269 c5269 = c5253.f19800;
        if (c5269 != null) {
            C5253 c52532 = this.f2521.f20187;
            C5322.m10559(c52532);
            c52532.m10372();
            c5269.m10461(c0441);
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void onActivityPaused(InterfaceC1754 interfaceC1754, long j) {
        m2317();
        Activity activity = (Activity) BinderC1753.m4715(interfaceC1754);
        AbstractC3659.m7687(activity);
        onActivityPausedByScionActivityInfo(C0441.m1870(activity), j);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void onActivityPausedByScionActivityInfo(C0441 c0441, long j) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        C5269 c5269 = c5253.f19800;
        if (c5269 != null) {
            C5253 c52532 = this.f2521.f20187;
            C5322.m10559(c52532);
            c52532.m10372();
            c5269.m10458(c0441);
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void onActivityResumed(InterfaceC1754 interfaceC1754, long j) {
        m2317();
        Activity activity = (Activity) BinderC1753.m4715(interfaceC1754);
        AbstractC3659.m7687(activity);
        onActivityResumedByScionActivityInfo(C0441.m1870(activity), j);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void onActivityResumedByScionActivityInfo(C0441 c0441, long j) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        C5269 c5269 = c5253.f19800;
        if (c5269 != null) {
            C5253 c52532 = this.f2521.f20187;
            C5322.m10559(c52532);
            c52532.m10372();
            c5269.m10459(c0441);
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void onActivitySaveInstanceState(InterfaceC1754 interfaceC1754, InterfaceC0462 interfaceC0462, long j) {
        m2317();
        Activity activity = (Activity) BinderC1753.m4715(interfaceC1754);
        AbstractC3659.m7687(activity);
        onActivitySaveInstanceStateByScionActivityInfo(C0441.m1870(activity), interfaceC0462, j);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void onActivitySaveInstanceStateByScionActivityInfo(C0441 c0441, InterfaceC0462 interfaceC0462, long j) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        C5269 c5269 = c5253.f19800;
        Bundle bundle = new Bundle();
        if (c5269 != null) {
            C5253 c52532 = this.f2521.f20187;
            C5322.m10559(c52532);
            c52532.m10372();
            c5269.m10460(c0441, bundle);
        }
        try {
            interfaceC0462.mo1551(bundle);
        } catch (RemoteException e) {
            C5344 c5344 = this.f2521.f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10216(e, "Error returning bundle value to wrapper");
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void onActivityStarted(InterfaceC1754 interfaceC1754, long j) {
        m2317();
        Activity activity = (Activity) BinderC1753.m4715(interfaceC1754);
        AbstractC3659.m7687(activity);
        onActivityStartedByScionActivityInfo(C0441.m1870(activity), j);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void onActivityStartedByScionActivityInfo(C0441 c0441, long j) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        if (c5253.f19800 != null) {
            C5253 c52532 = this.f2521.f20187;
            C5322.m10559(c52532);
            c52532.m10372();
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void onActivityStopped(InterfaceC1754 interfaceC1754, long j) {
        m2317();
        Activity activity = (Activity) BinderC1753.m4715(interfaceC1754);
        AbstractC3659.m7687(activity);
        onActivityStoppedByScionActivityInfo(C0441.m1870(activity), j);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void onActivityStoppedByScionActivityInfo(C0441 c0441, long j) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        if (c5253.f19800 != null) {
            C5253 c52532 = this.f2521.f20187;
            C5322.m10559(c52532);
            c52532.m10372();
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void performAction(Bundle bundle, InterfaceC0462 interfaceC0462, long j) {
        m2317();
        interfaceC0462.mo1551(null);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void registerOnMeasurementEventListener(InterfaceC0342 interfaceC0342) {
        Object obj;
        m2317();
        C3359 c3359 = this.f2522;
        synchronized (c3359) {
            try {
                obj = (InterfaceC5299) c3359.get(Integer.valueOf(interfaceC0342.mo1569()));
                if (obj == null) {
                    obj = new C5314(this, interfaceC0342);
                    c3359.put(Integer.valueOf(interfaceC0342.mo1569()), obj);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        c5253.m10526();
        if (c5253.f19814.add(obj)) {
            return;
        }
        C5344 c5344 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20193;
        C5322.m10556(c5344);
        c5344.f20348.m10217("OnEventListener already registered");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void resetAnalyticsData(long j) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        c5253.f19812.set(null);
        C5215 c5215 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20200;
        C5322.m10556(c5215);
        c5215.m10200(new RunnableC5350(c5253, j, 1));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void retrieveAndUploadBatches(InterfaceC0381 interfaceC0381) {
        EnumC5335 enumC5335;
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        c5253.m10526();
        C5322 c5322 = (C5322) ((ᵎﹶ) c5253).ʾˋ;
        C5215 c5215 = c5322.f20200;
        C5322.m10556(c5215);
        if (c5215.m10206()) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10217("Cannot retrieve and upload batches from analytics worker thread");
            return;
        }
        C5215 c52152 = c5322.f20200;
        C5322.m10556(c52152);
        if (Thread.currentThread() == c52152.f19585) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20343.m10217("Cannot retrieve and upload batches from analytics network thread");
            return;
        }
        if (C4486.m9046()) {
            C5344 c53443 = c5322.f20193;
            C5322.m10556(c53443);
            c53443.f20343.m10217("Cannot retrieve and upload batches from main thread");
            return;
        }
        C5344 c53444 = c5322.f20193;
        C5322.m10556(c53444);
        c53444.f20350.m10217("[sgtm] Started client-side batch upload work.");
        boolean z = false;
        int i = 0;
        int i2 = 0;
        loop0: while (!z) {
            C5344 c53445 = c5322.f20193;
            C5322.m10556(c53445);
            c53445.f20350.m10217("[sgtm] Getting upload batches from service (FE)");
            AtomicReference atomicReference = new AtomicReference();
            C5215 c52153 = c5322.f20200;
            C5322.m10556(c52153);
            c52153.m10199(atomicReference, 10000L, "[sgtm] Getting upload batches", new RunnableC5307(c5253, atomicReference, 6, false));
            C5340 c5340 = (C5340) atomicReference.get();
            if (c5340 == null) {
                break;
            }
            List list = c5340.f20320;
            if (list.isEmpty()) {
                break;
            }
            C5344 c53446 = c5322.f20193;
            C5322.m10556(c53446);
            c53446.f20350.m10216(Integer.valueOf(list.size()), "[sgtm] Retrieved upload batches. count");
            i += list.size();
            Iterator it = list.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z = false;
                    break;
                }
                C5295 c5295 = (C5295) it.next();
                try {
                    URL url = new URI(c5295.f19969).toURL();
                    AtomicReference atomicReference2 = new AtomicReference();
                    C5249 m10566 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).m10566();
                    m10566.m10526();
                    AbstractC3659.m7687(m10566.f19785);
                    String str = m10566.f19785;
                    C5322 c53222 = (C5322) ((ᵎﹶ) c5253).ʾˋ;
                    C5344 c53447 = c53222.f20193;
                    C5322.m10556(c53447);
                    C5221 c5221 = c53447.f20350;
                    Long valueOf = Long.valueOf(c5295.f19970);
                    c5221.m10215("[sgtm] Uploading data from app. row_id, url, uncompressed size", valueOf, c5295.f19969, Integer.valueOf(c5295.f19974.length));
                    if (!TextUtils.isEmpty(c5295.f19973)) {
                        C5344 c53448 = c53222.f20193;
                        C5322.m10556(c53448);
                        c53448.f20350.m10214(valueOf, c5295.f19973, "[sgtm] Uploading data from app. row_id");
                    }
                    HashMap hashMap = new HashMap();
                    Bundle bundle = c5295.f19971;
                    for (String str2 : bundle.keySet()) {
                        String string = bundle.getString(str2);
                        if (!TextUtils.isEmpty(string)) {
                            hashMap.put(str2, string);
                        }
                    }
                    C5274 c5274 = c53222.f20188;
                    C5322.m10556(c5274);
                    byte[] bArr = c5295.f19974;
                    ʽ r4 = new ʽ(c5253, atomicReference2, c5295);
                    c5274.m10463();
                    AbstractC3659.m7687(url);
                    AbstractC3659.m7687(bArr);
                    C5215 c52154 = ((C5322) ((ᵎﹶ) c5274).ʾˋ).f20200;
                    C5322.m10556(c52154);
                    c52154.m10202(new RunnableC5259(c5274, str, url, bArr, hashMap, (InterfaceC5284) r4));
                    try {
                        C5339 c5339 = c53222.f20208;
                        C5322.m10560(c5339);
                        C5322 c53223 = (C5322) ((ᵎﹶ) c5339).ʾˋ;
                        c53223.f20206.getClass();
                        long currentTimeMillis = System.currentTimeMillis() + 60000;
                        synchronized (atomicReference2) {
                            for (long j = 60000; atomicReference2.get() == null && j > 0; j = currentTimeMillis - System.currentTimeMillis()) {
                                try {
                                    atomicReference2.wait(j);
                                    c53223.f20206.getClass();
                                } catch (Throwable th) {
                                    throw th;
                                    break loop0;
                                }
                            }
                        }
                    } catch (InterruptedException unused) {
                        C5344 c53449 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20193;
                        C5322.m10556(c53449);
                        c53449.f20348.m10217("[sgtm] Interrupted waiting for uploading batch");
                    }
                    enumC5335 = atomicReference2.get() == null ? EnumC5335.f20266 : (EnumC5335) atomicReference2.get();
                } catch (MalformedURLException | URISyntaxException e) {
                    C5344 c534410 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20193;
                    C5322.m10556(c534410);
                    c534410.f20343.m10215("[sgtm] Bad upload url for row_id", c5295.f19969, Long.valueOf(c5295.f19970), e);
                    enumC5335 = EnumC5335.f20264;
                }
                if (enumC5335 != EnumC5335.f20263) {
                    if (enumC5335 == EnumC5335.f20267) {
                        z = true;
                        break;
                    }
                } else {
                    i2++;
                }
            }
        }
        C5344 c534411 = c5322.f20193;
        C5322.m10556(c534411);
        c534411.f20350.m10214(Integer.valueOf(i), Integer.valueOf(i2), "[sgtm] Completed client-side batch upload work. total, success");
        try {
            interfaceC0381.mo1567();
        } catch (RemoteException e2) {
            C5322 c53224 = this.f2521;
            AbstractC3659.m7687(c53224);
            C5344 c534412 = c53224.f20193;
            C5322.m10556(c534412);
            c534412.f20348.m10216(e2, "Failed to call IDynamiteUploadBatchesCallback");
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void setConditionalUserProperty(Bundle bundle, long j) {
        m2317();
        if (bundle == null) {
            C5344 c5344 = this.f2521.f20193;
            C5322.m10556(c5344);
            c5344.f20343.m10217("Conditional user property must not be null");
        } else {
            C5253 c5253 = this.f2521.f20187;
            C5322.m10559(c5253);
            c5253.m10373(bundle, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void setConsent(Bundle bundle, long j) {
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void setConsentThirdParty(Bundle bundle, long j) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        c5253.m10380(bundle, -20, j);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void setCurrentScreen(InterfaceC1754 interfaceC1754, String str, String str2, long j) {
        m2317();
        Activity activity = (Activity) BinderC1753.m4715(interfaceC1754);
        AbstractC3659.m7687(activity);
        setCurrentScreenByScionActivityInfo(C0441.m1870(activity), str, str2, j);
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0088, code lost:
    
        if (r3 <= 500) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00b1, code lost:
    
        if (r3 <= 500) goto L39;
     */
    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setCurrentScreenByScionActivityInfo(com.google.android.gms.internal.measurement.C0441 r6, java.lang.String r7, java.lang.String r8, long r9) {
        /*
            Method dump skipped, instructions count: 243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.AppMeasurementDynamiteService.setCurrentScreenByScionActivityInfo(com.google.android.gms.internal.measurement.ᴵˑ, java.lang.String, java.lang.String, long):void");
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void setDataCollectionEnabled(boolean z) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        c5253.m10526();
        C5215 c5215 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20200;
        C5322.m10556(c5215);
        c5215.m10200(new ⁱˊ(c5253, z));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void setDefaultEventParameters(Bundle bundle) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        Bundle bundle2 = bundle == null ? new Bundle() : new Bundle(bundle);
        C5215 c5215 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20200;
        C5322.m10556(c5215);
        c5215.m10200(new RunnableC5343(c5253, bundle2, 2));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void setEventInterceptor(InterfaceC0342 interfaceC0342) {
        m2317();
        C3125 c3125 = new C3125(this, interfaceC0342, 29, false);
        C5215 c5215 = this.f2521.f20200;
        C5322.m10556(c5215);
        if (!c5215.m10206()) {
            C5215 c52152 = this.f2521.f20200;
            C5322.m10556(c52152);
            c52152.m10200(new ﹶˎ(this, 3, c3125));
            return;
        }
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        c5253.m10252();
        c5253.m10526();
        C3125 c31252 = c5253.f19803;
        if (c3125 != c31252) {
            AbstractC3659.m7684("EventInterceptor already set.", c31252 == null);
        }
        c5253.f19803 = c3125;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void setInstanceIdProvider(InterfaceC0406 interfaceC0406) {
        m2317();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void setMeasurementEnabled(boolean z, long j) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        Boolean valueOf = Boolean.valueOf(z);
        c5253.m10526();
        C5215 c5215 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20200;
        C5322.m10556(c5215);
        c5215.m10200(new ﹶˎ(c5253, 1, valueOf));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void setMinimumSessionDuration(long j) {
        m2317();
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void setSessionTimeoutDuration(long j) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        C5215 c5215 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20200;
        C5322.m10556(c5215);
        c5215.m10200(new RunnableC5350(c5253, j, 0));
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void setSgtmDebugInfo(Intent intent) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        C5322 c5322 = (C5322) ((ᵎﹶ) c5253).ʾˋ;
        Uri data = intent.getData();
        if (data == null) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20349.m10217("Activity intent has no data. Preview Mode was not enabled.");
            return;
        }
        String queryParameter = data.getQueryParameter("sgtm_debug_enable");
        if (queryParameter == null || !queryParameter.equals("1")) {
            C5344 c53442 = c5322.f20193;
            C5322.m10556(c53442);
            c53442.f20349.m10217("[sgtm] Preview Mode was not enabled.");
            c5322.f20189.f20222 = null;
            return;
        }
        String queryParameter2 = data.getQueryParameter("sgtm_preview_key");
        if (TextUtils.isEmpty(queryParameter2)) {
            return;
        }
        C5344 c53443 = c5322.f20193;
        C5322.m10556(c53443);
        c53443.f20349.m10216(queryParameter2, "[sgtm] Preview Mode was enabled. Using the sgtmPreviewKey: ");
        c5322.f20189.f20222 = queryParameter2;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void setUserId(String str, long j) {
        m2317();
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        C5322 c5322 = (C5322) ((ᵎﹶ) c5253).ʾˋ;
        if (str != null && TextUtils.isEmpty(str)) {
            C5344 c5344 = c5322.f20193;
            C5322.m10556(c5344);
            c5344.f20348.m10217("User ID must be non-empty or null");
        } else {
            C5215 c5215 = c5322.f20200;
            C5322.m10556(c5215);
            c5215.m10200(new ﹶˎ(c5253, 4, str));
            c5253.m10375(null, "_id", str, true, j);
        }
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void setUserProperty(String str, String str2, InterfaceC1754 interfaceC1754, boolean z, long j) {
        m2317();
        Object m4715 = BinderC1753.m4715(interfaceC1754);
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        c5253.m10375(str, str2, m4715, z, j);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public void unregisterOnMeasurementEventListener(InterfaceC0342 interfaceC0342) {
        Object obj;
        m2317();
        C3359 c3359 = this.f2522;
        synchronized (c3359) {
            obj = (InterfaceC5299) c3359.remove(Integer.valueOf(interfaceC0342.mo1569()));
        }
        if (obj == null) {
            obj = new C5314(this, interfaceC0342);
        }
        C5253 c5253 = this.f2521.f20187;
        C5322.m10559(c5253);
        c5253.m10526();
        if (c5253.f19814.remove(obj)) {
            return;
        }
        C5344 c5344 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20193;
        C5322.m10556(c5344);
        c5344.f20348.m10217("OnEventListener had not been registered");
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m2317() {
        if (this.f2521 == null) {
            throw new IllegalStateException("Attempting to perform action before initialize.");
        }
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m2318(String str, InterfaceC0462 interfaceC0462) {
        m2317();
        C5339 c5339 = this.f2521.f20208;
        C5322.m10560(c5339);
        c5339.m10706(str, interfaceC0462);
    }
}
