package com.google.android.gms.measurement;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Keep;
import com.google.android.gms.internal.measurement.C0492;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import p009.AbstractC0839;
import p009.C0840;
import p009.C0841;
import p296.AbstractC3659;
import p447.AbstractC5218;
import p447.C5322;
import p447.InterfaceC5273;

@Deprecated
/* loaded from: classes.dex */
public class AppMeasurement {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static volatile AppMeasurement f2516;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC0839 f2517;

    /* loaded from: classes.dex */
    public static class ConditionalUserProperty {

        @Keep
        public boolean mActive;

        @Keep
        public String mAppId;

        @Keep
        public long mCreationTimestamp;

        @Keep
        public String mExpiredEventName;

        @Keep
        public Bundle mExpiredEventParams;

        @Keep
        public String mName;

        @Keep
        public String mOrigin;

        @Keep
        public long mTimeToLive;

        @Keep
        public String mTimedOutEventName;

        @Keep
        public Bundle mTimedOutEventParams;

        @Keep
        public String mTriggerEventName;

        @Keep
        public long mTriggerTimeout;

        @Keep
        public String mTriggeredEventName;

        @Keep
        public Bundle mTriggeredEventParams;

        @Keep
        public long mTriggeredTimestamp;

        @Keep
        public Object mValue;
    }

    public AppMeasurement(InterfaceC5273 interfaceC5273) {
        this.f2517 = new C0840(interfaceC5273);
    }

    public AppMeasurement(C5322 c5322) {
        this.f2517 = new C0841(c5322);
    }

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    @Keep
    @Deprecated
    public static AppMeasurement getInstance(Context context) {
        if (f2516 == null) {
            synchronized (AppMeasurement.class) {
                if (f2516 == null) {
                    InterfaceC5273 interfaceC5273 = (InterfaceC5273) FirebaseAnalytics.class.getDeclaredMethod("getScionFrontendApiImplementation", Context.class, Bundle.class).invoke(null, context, null);
                    if (interfaceC5273 != null) {
                        f2516 = new AppMeasurement(interfaceC5273);
                    } else {
                        f2516 = new AppMeasurement(C5322.m10557(context, new C0492(0L, 0L, true, null, null), null));
                    }
                }
            }
        }
        return f2516;
    }

    @Keep
    public void beginAdUnitExposure(String str) {
        this.f2517.mo2986(str);
    }

    @Keep
    public void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        this.f2517.mo2987(str, str2, bundle);
    }

    @Keep
    public void endAdUnitExposure(String str) {
        this.f2517.mo2992(str);
    }

    @Keep
    public long generateEventId() {
        return this.f2517.mo2984();
    }

    @Keep
    public String getAppInstanceId() {
        return this.f2517.mo2988();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.measurement.AppMeasurement$ConditionalUserProperty, java.lang.Object] */
    @Keep
    public List<ConditionalUserProperty> getConditionalUserProperties(String str, String str2) {
        List<Bundle> mo2991 = this.f2517.mo2991(str, str2);
        ArrayList arrayList = new ArrayList(mo2991 == null ? 0 : mo2991.size());
        for (Bundle bundle : mo2991) {
            ?? obj = new Object();
            AbstractC3659.m7687(bundle);
            obj.mAppId = (String) AbstractC5218.m10209(bundle, "app_id", String.class, null);
            obj.mOrigin = (String) AbstractC5218.m10209(bundle, "origin", String.class, null);
            obj.mName = (String) AbstractC5218.m10209(bundle, "name", String.class, null);
            obj.mValue = AbstractC5218.m10209(bundle, "value", Object.class, null);
            obj.mTriggerEventName = (String) AbstractC5218.m10209(bundle, "trigger_event_name", String.class, null);
            obj.mTriggerTimeout = ((Long) AbstractC5218.m10209(bundle, "trigger_timeout", Long.class, 0L)).longValue();
            obj.mTimedOutEventName = (String) AbstractC5218.m10209(bundle, "timed_out_event_name", String.class, null);
            obj.mTimedOutEventParams = (Bundle) AbstractC5218.m10209(bundle, "timed_out_event_params", Bundle.class, null);
            obj.mTriggeredEventName = (String) AbstractC5218.m10209(bundle, "triggered_event_name", String.class, null);
            obj.mTriggeredEventParams = (Bundle) AbstractC5218.m10209(bundle, "triggered_event_params", Bundle.class, null);
            obj.mTimeToLive = ((Long) AbstractC5218.m10209(bundle, "time_to_live", Long.class, 0L)).longValue();
            obj.mExpiredEventName = (String) AbstractC5218.m10209(bundle, "expired_event_name", String.class, null);
            obj.mExpiredEventParams = (Bundle) AbstractC5218.m10209(bundle, "expired_event_params", Bundle.class, null);
            obj.mActive = ((Boolean) AbstractC5218.m10209(bundle, "active", Boolean.class, Boolean.FALSE)).booleanValue();
            obj.mCreationTimestamp = ((Long) AbstractC5218.m10209(bundle, "creation_timestamp", Long.class, 0L)).longValue();
            obj.mTriggeredTimestamp = ((Long) AbstractC5218.m10209(bundle, "triggered_timestamp", Long.class, 0L)).longValue();
            arrayList.add(obj);
        }
        return arrayList;
    }

    @Keep
    public String getCurrentScreenClass() {
        return this.f2517.mo2989();
    }

    @Keep
    public String getCurrentScreenName() {
        return this.f2517.mo2993();
    }

    @Keep
    public String getGmpAppId() {
        return this.f2517.mo2985();
    }

    @Keep
    public int getMaxUserProperties(String str) {
        return this.f2517.mo2983(str);
    }

    @Keep
    public Map<String, Object> getUserProperties(String str, String str2, boolean z) {
        return this.f2517.mo2990(str, str2, z);
    }

    @Keep
    public void logEventInternal(String str, String str2, Bundle bundle) {
        this.f2517.mo2982(str, str2, bundle);
    }

    @Keep
    public void setConditionalUserProperty(ConditionalUserProperty conditionalUserProperty) {
        AbstractC3659.m7687(conditionalUserProperty);
        Bundle bundle = new Bundle();
        String str = conditionalUserProperty.mAppId;
        if (str != null) {
            bundle.putString("app_id", str);
        }
        String str2 = conditionalUserProperty.mOrigin;
        if (str2 != null) {
            bundle.putString("origin", str2);
        }
        String str3 = conditionalUserProperty.mName;
        if (str3 != null) {
            bundle.putString("name", str3);
        }
        Object obj = conditionalUserProperty.mValue;
        if (obj != null) {
            AbstractC5218.m10207(bundle, obj);
        }
        String str4 = conditionalUserProperty.mTriggerEventName;
        if (str4 != null) {
            bundle.putString("trigger_event_name", str4);
        }
        bundle.putLong("trigger_timeout", conditionalUserProperty.mTriggerTimeout);
        String str5 = conditionalUserProperty.mTimedOutEventName;
        if (str5 != null) {
            bundle.putString("timed_out_event_name", str5);
        }
        Bundle bundle2 = conditionalUserProperty.mTimedOutEventParams;
        if (bundle2 != null) {
            bundle.putBundle("timed_out_event_params", bundle2);
        }
        String str6 = conditionalUserProperty.mTriggeredEventName;
        if (str6 != null) {
            bundle.putString("triggered_event_name", str6);
        }
        Bundle bundle3 = conditionalUserProperty.mTriggeredEventParams;
        if (bundle3 != null) {
            bundle.putBundle("triggered_event_params", bundle3);
        }
        bundle.putLong("time_to_live", conditionalUserProperty.mTimeToLive);
        String str7 = conditionalUserProperty.mExpiredEventName;
        if (str7 != null) {
            bundle.putString("expired_event_name", str7);
        }
        Bundle bundle4 = conditionalUserProperty.mExpiredEventParams;
        if (bundle4 != null) {
            bundle.putBundle("expired_event_params", bundle4);
        }
        bundle.putLong("creation_timestamp", conditionalUserProperty.mCreationTimestamp);
        bundle.putBoolean("active", conditionalUserProperty.mActive);
        bundle.putLong("triggered_timestamp", conditionalUserProperty.mTriggeredTimestamp);
        this.f2517.mo2981(bundle);
    }
}
