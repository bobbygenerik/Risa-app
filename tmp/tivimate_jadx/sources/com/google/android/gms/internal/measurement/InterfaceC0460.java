package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IInterface;
import java.util.Map;
import p088.InterfaceC1754;

/* renamed from: com.google.android.gms.internal.measurement.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public interface InterfaceC0460 extends IInterface {
    void beginAdUnitExposure(String str, long j);

    void clearConditionalUserProperty(String str, String str2, Bundle bundle);

    void clearMeasurementEnabled(long j);

    void endAdUnitExposure(String str, long j);

    void generateEventId(InterfaceC0462 interfaceC0462);

    void getAppInstanceId(InterfaceC0462 interfaceC0462);

    void getCachedAppInstanceId(InterfaceC0462 interfaceC0462);

    void getConditionalUserProperties(String str, String str2, InterfaceC0462 interfaceC0462);

    void getCurrentScreenClass(InterfaceC0462 interfaceC0462);

    void getCurrentScreenName(InterfaceC0462 interfaceC0462);

    void getGmpAppId(InterfaceC0462 interfaceC0462);

    void getMaxUserProperties(String str, InterfaceC0462 interfaceC0462);

    void getSessionId(InterfaceC0462 interfaceC0462);

    void getTestFlag(InterfaceC0462 interfaceC0462, int i);

    void getUserProperties(String str, String str2, boolean z, InterfaceC0462 interfaceC0462);

    void initForTests(Map map);

    void initialize(InterfaceC1754 interfaceC1754, C0492 c0492, long j);

    void isDataCollectionEnabled(InterfaceC0462 interfaceC0462);

    void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j);

    void logEventAndBundle(String str, String str2, Bundle bundle, InterfaceC0462 interfaceC0462, long j);

    void logHealthData(int i, String str, InterfaceC1754 interfaceC1754, InterfaceC1754 interfaceC17542, InterfaceC1754 interfaceC17543);

    void onActivityCreated(InterfaceC1754 interfaceC1754, Bundle bundle, long j);

    void onActivityCreatedByScionActivityInfo(C0441 c0441, Bundle bundle, long j);

    void onActivityDestroyed(InterfaceC1754 interfaceC1754, long j);

    void onActivityDestroyedByScionActivityInfo(C0441 c0441, long j);

    void onActivityPaused(InterfaceC1754 interfaceC1754, long j);

    void onActivityPausedByScionActivityInfo(C0441 c0441, long j);

    void onActivityResumed(InterfaceC1754 interfaceC1754, long j);

    void onActivityResumedByScionActivityInfo(C0441 c0441, long j);

    void onActivitySaveInstanceState(InterfaceC1754 interfaceC1754, InterfaceC0462 interfaceC0462, long j);

    void onActivitySaveInstanceStateByScionActivityInfo(C0441 c0441, InterfaceC0462 interfaceC0462, long j);

    void onActivityStarted(InterfaceC1754 interfaceC1754, long j);

    void onActivityStartedByScionActivityInfo(C0441 c0441, long j);

    void onActivityStopped(InterfaceC1754 interfaceC1754, long j);

    void onActivityStoppedByScionActivityInfo(C0441 c0441, long j);

    void performAction(Bundle bundle, InterfaceC0462 interfaceC0462, long j);

    void registerOnMeasurementEventListener(InterfaceC0342 interfaceC0342);

    void resetAnalyticsData(long j);

    void retrieveAndUploadBatches(InterfaceC0381 interfaceC0381);

    void setConditionalUserProperty(Bundle bundle, long j);

    void setConsent(Bundle bundle, long j);

    void setConsentThirdParty(Bundle bundle, long j);

    void setCurrentScreen(InterfaceC1754 interfaceC1754, String str, String str2, long j);

    void setCurrentScreenByScionActivityInfo(C0441 c0441, String str, String str2, long j);

    void setDataCollectionEnabled(boolean z);

    void setDefaultEventParameters(Bundle bundle);

    void setEventInterceptor(InterfaceC0342 interfaceC0342);

    void setInstanceIdProvider(InterfaceC0406 interfaceC0406);

    void setMeasurementEnabled(boolean z, long j);

    void setMinimumSessionDuration(long j);

    void setSessionTimeoutDuration(long j);

    void setSgtmDebugInfo(Intent intent);

    void setUserId(String str, long j);

    void setUserProperty(String str, String str2, InterfaceC1754 interfaceC1754, boolean z, long j);

    void unregisterOnMeasurementEventListener(InterfaceC0342 interfaceC0342);
}
