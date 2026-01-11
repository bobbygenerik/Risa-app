package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import p088.InterfaceC1754;

/* renamed from: com.google.android.gms.internal.measurement.ٴʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0412 extends AbstractC0292 implements InterfaceC0460 {
    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void beginAdUnitExposure(String str, long j) {
        Parcel m1305 = m1305();
        m1305.writeString(str);
        m1305.writeLong(j);
        m1306(m1305, 23);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void clearConditionalUserProperty(String str, String str2, Bundle bundle) {
        Parcel m1305 = m1305();
        m1305.writeString(str);
        m1305.writeString(str2);
        AbstractC0472.m1911(m1305, bundle);
        m1306(m1305, 9);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void endAdUnitExposure(String str, long j) {
        Parcel m1305 = m1305();
        m1305.writeString(str);
        m1305.writeLong(j);
        m1306(m1305, 24);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void generateEventId(InterfaceC0462 interfaceC0462) {
        Parcel m1305 = m1305();
        AbstractC0472.m1909(m1305, interfaceC0462);
        m1306(m1305, 22);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void getCachedAppInstanceId(InterfaceC0462 interfaceC0462) {
        Parcel m1305 = m1305();
        AbstractC0472.m1909(m1305, interfaceC0462);
        m1306(m1305, 19);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void getConditionalUserProperties(String str, String str2, InterfaceC0462 interfaceC0462) {
        Parcel m1305 = m1305();
        m1305.writeString(str);
        m1305.writeString(str2);
        AbstractC0472.m1909(m1305, interfaceC0462);
        m1306(m1305, 10);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void getCurrentScreenClass(InterfaceC0462 interfaceC0462) {
        Parcel m1305 = m1305();
        AbstractC0472.m1909(m1305, interfaceC0462);
        m1306(m1305, 17);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void getCurrentScreenName(InterfaceC0462 interfaceC0462) {
        Parcel m1305 = m1305();
        AbstractC0472.m1909(m1305, interfaceC0462);
        m1306(m1305, 16);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void getGmpAppId(InterfaceC0462 interfaceC0462) {
        Parcel m1305 = m1305();
        AbstractC0472.m1909(m1305, interfaceC0462);
        m1306(m1305, 21);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void getMaxUserProperties(String str, InterfaceC0462 interfaceC0462) {
        Parcel m1305 = m1305();
        m1305.writeString(str);
        AbstractC0472.m1909(m1305, interfaceC0462);
        m1306(m1305, 6);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void getUserProperties(String str, String str2, boolean z, InterfaceC0462 interfaceC0462) {
        Parcel m1305 = m1305();
        m1305.writeString(str);
        m1305.writeString(str2);
        ClassLoader classLoader = AbstractC0472.f2228;
        m1305.writeInt(z ? 1 : 0);
        AbstractC0472.m1909(m1305, interfaceC0462);
        m1306(m1305, 5);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void initialize(InterfaceC1754 interfaceC1754, C0492 c0492, long j) {
        Parcel m1305 = m1305();
        AbstractC0472.m1909(m1305, interfaceC1754);
        AbstractC0472.m1911(m1305, c0492);
        m1305.writeLong(j);
        m1306(m1305, 1);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void logEvent(String str, String str2, Bundle bundle, boolean z, boolean z2, long j) {
        Parcel m1305 = m1305();
        m1305.writeString(str);
        m1305.writeString(str2);
        AbstractC0472.m1911(m1305, bundle);
        m1305.writeInt(1);
        m1305.writeInt(1);
        m1305.writeLong(j);
        m1306(m1305, 2);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void logHealthData(int i, String str, InterfaceC1754 interfaceC1754, InterfaceC1754 interfaceC17542, InterfaceC1754 interfaceC17543) {
        Parcel m1305 = m1305();
        m1305.writeInt(5);
        m1305.writeString("Error with data collection. Data lost.");
        AbstractC0472.m1909(m1305, interfaceC1754);
        AbstractC0472.m1909(m1305, interfaceC17542);
        AbstractC0472.m1909(m1305, interfaceC17543);
        m1306(m1305, 33);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void onActivityCreatedByScionActivityInfo(C0441 c0441, Bundle bundle, long j) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c0441);
        AbstractC0472.m1911(m1305, bundle);
        m1305.writeLong(j);
        m1306(m1305, 53);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void onActivityDestroyedByScionActivityInfo(C0441 c0441, long j) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c0441);
        m1305.writeLong(j);
        m1306(m1305, 54);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void onActivityPausedByScionActivityInfo(C0441 c0441, long j) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c0441);
        m1305.writeLong(j);
        m1306(m1305, 55);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void onActivityResumedByScionActivityInfo(C0441 c0441, long j) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c0441);
        m1305.writeLong(j);
        m1306(m1305, 56);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void onActivitySaveInstanceStateByScionActivityInfo(C0441 c0441, InterfaceC0462 interfaceC0462, long j) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c0441);
        AbstractC0472.m1909(m1305, interfaceC0462);
        m1305.writeLong(j);
        m1306(m1305, 57);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void onActivityStartedByScionActivityInfo(C0441 c0441, long j) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c0441);
        m1305.writeLong(j);
        m1306(m1305, 51);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void onActivityStoppedByScionActivityInfo(C0441 c0441, long j) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c0441);
        m1305.writeLong(j);
        m1306(m1305, 52);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void registerOnMeasurementEventListener(InterfaceC0342 interfaceC0342) {
        Parcel m1305 = m1305();
        AbstractC0472.m1909(m1305, interfaceC0342);
        m1306(m1305, 35);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void retrieveAndUploadBatches(InterfaceC0381 interfaceC0381) {
        Parcel m1305 = m1305();
        AbstractC0472.m1909(m1305, interfaceC0381);
        m1306(m1305, 58);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void setConditionalUserProperty(Bundle bundle, long j) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, bundle);
        m1305.writeLong(j);
        m1306(m1305, 8);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void setCurrentScreenByScionActivityInfo(C0441 c0441, String str, String str2, long j) {
        Parcel m1305 = m1305();
        AbstractC0472.m1911(m1305, c0441);
        m1305.writeString(str);
        m1305.writeString(str2);
        m1305.writeLong(j);
        m1306(m1305, 50);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void setDataCollectionEnabled(boolean z) {
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0460
    public final void setMeasurementEnabled(boolean z, long j) {
        Parcel m1305 = m1305();
        ClassLoader classLoader = AbstractC0472.f2228;
        m1305.writeInt(z ? 1 : 0);
        m1305.writeLong(j);
        m1306(m1305, 11);
    }
}
