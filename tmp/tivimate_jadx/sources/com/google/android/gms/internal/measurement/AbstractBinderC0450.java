package com.google.android.gms.internal.measurement;

import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import java.util.HashMap;
import p088.BinderC1753;
import p088.InterfaceC1754;
import p223.C3056;

/* renamed from: com.google.android.gms.internal.measurement.ᵎˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractBinderC0450 extends AbstractBinderC0257 implements InterfaceC0460 {
    /* JADX WARN: Type inference failed for: r1v1, types: [com.google.android.gms.internal.measurement.ʾᵎ, com.google.android.gms.internal.measurement.ᵔי] */
    public static InterfaceC0460 asInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService");
        return queryLocalInterface instanceof InterfaceC0460 ? (InterfaceC0460) queryLocalInterface : new AbstractC0292(iBinder, "com.google.android.gms.measurement.api.internal.IAppMeasurementDynamiteService", 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v38, types: [com.google.android.gms.internal.measurement.ʾᵎ] */
    /* JADX WARN: Type inference failed for: r5v98, types: [com.google.android.gms.internal.measurement.ʾᵎ] */
    @Override // com.google.android.gms.internal.measurement.AbstractBinderC0257
    /* renamed from: ʽ */
    public final boolean mo1204(int i, Parcel parcel, Parcel parcel2) {
        boolean z;
        InterfaceC0462 interfaceC0462 = null;
        InterfaceC0381 interfaceC0381 = null;
        InterfaceC0462 interfaceC04622 = null;
        InterfaceC0462 interfaceC04623 = null;
        InterfaceC0462 interfaceC04624 = null;
        InterfaceC0462 interfaceC04625 = null;
        InterfaceC0342 interfaceC0342 = null;
        InterfaceC0342 interfaceC03422 = null;
        InterfaceC0342 interfaceC03423 = null;
        InterfaceC0462 interfaceC04626 = null;
        InterfaceC0462 interfaceC04627 = null;
        InterfaceC0462 interfaceC04628 = null;
        InterfaceC0462 interfaceC04629 = null;
        InterfaceC0462 interfaceC046210 = null;
        InterfaceC0462 interfaceC046211 = null;
        InterfaceC0406 interfaceC0406 = null;
        InterfaceC0462 interfaceC046212 = null;
        InterfaceC0462 interfaceC046213 = null;
        InterfaceC0462 interfaceC046214 = null;
        InterfaceC0462 interfaceC046215 = null;
        InterfaceC0462 interfaceC046216 = null;
        switch (i) {
            case 1:
                InterfaceC1754 m4714 = BinderC1753.m4714(parcel.readStrongBinder());
                C0492 c0492 = (C0492) AbstractC0472.m1912(parcel, C0492.CREATOR);
                long readLong = parcel.readLong();
                AbstractC0472.m1910(parcel);
                initialize(m4714, c0492, readLong);
                break;
            case 2:
                String readString = parcel.readString();
                String readString2 = parcel.readString();
                Bundle bundle = (Bundle) AbstractC0472.m1912(parcel, Bundle.CREATOR);
                boolean z2 = parcel.readInt() != 0;
                boolean z3 = parcel.readInt() != 0;
                long readLong2 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                logEvent(readString, readString2, bundle, z2, z3, readLong2);
                break;
            case 3:
                String readString3 = parcel.readString();
                String readString4 = parcel.readString();
                Bundle bundle2 = (Bundle) AbstractC0472.m1912(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC0462 = queryLocalInterface instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface : new C0315(readStrongBinder);
                }
                InterfaceC0462 interfaceC046217 = interfaceC0462;
                long readLong3 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                logEventAndBundle(readString3, readString4, bundle2, interfaceC046217, readLong3);
                break;
            case 4:
                String readString5 = parcel.readString();
                String readString6 = parcel.readString();
                InterfaceC1754 m47142 = BinderC1753.m4714(parcel.readStrongBinder());
                ClassLoader classLoader = AbstractC0472.f2228;
                z = parcel.readInt() != 0;
                long readLong4 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                setUserProperty(readString5, readString6, m47142, z, readLong4);
                break;
            case 5:
                String readString7 = parcel.readString();
                String readString8 = parcel.readString();
                ClassLoader classLoader2 = AbstractC0472.f2228;
                z = parcel.readInt() != 0;
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC046216 = queryLocalInterface2 instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface2 : new C0315(readStrongBinder2);
                }
                AbstractC0472.m1910(parcel);
                getUserProperties(readString7, readString8, z, interfaceC046216);
                break;
            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                String readString9 = parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC046215 = queryLocalInterface3 instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface3 : new C0315(readStrongBinder3);
                }
                AbstractC0472.m1910(parcel);
                getMaxUserProperties(readString9, interfaceC046215);
                break;
            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                String readString10 = parcel.readString();
                long readLong5 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                setUserId(readString10, readLong5);
                break;
            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                Bundle bundle3 = (Bundle) AbstractC0472.m1912(parcel, Bundle.CREATOR);
                long readLong6 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                setConditionalUserProperty(bundle3, readLong6);
                break;
            case 9:
                String readString11 = parcel.readString();
                String readString12 = parcel.readString();
                Bundle bundle4 = (Bundle) AbstractC0472.m1912(parcel, Bundle.CREATOR);
                AbstractC0472.m1910(parcel);
                clearConditionalUserProperty(readString11, readString12, bundle4);
                break;
            case 10:
                String readString13 = parcel.readString();
                String readString14 = parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    IInterface queryLocalInterface4 = readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC046214 = queryLocalInterface4 instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface4 : new C0315(readStrongBinder4);
                }
                AbstractC0472.m1910(parcel);
                getConditionalUserProperties(readString13, readString14, interfaceC046214);
                break;
            case 11:
                ClassLoader classLoader3 = AbstractC0472.f2228;
                z = parcel.readInt() != 0;
                long readLong7 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                setMeasurementEnabled(z, readLong7);
                break;
            case 12:
                long readLong8 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                resetAnalyticsData(readLong8);
                break;
            case 13:
                long readLong9 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                setMinimumSessionDuration(readLong9);
                break;
            case 14:
                long readLong10 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                setSessionTimeoutDuration(readLong10);
                break;
            case 15:
                InterfaceC1754 m47143 = BinderC1753.m4714(parcel.readStrongBinder());
                String readString15 = parcel.readString();
                String readString16 = parcel.readString();
                long readLong11 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                setCurrentScreen(m47143, readString15, readString16, readLong11);
                break;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    IInterface queryLocalInterface5 = readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC046213 = queryLocalInterface5 instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface5 : new C0315(readStrongBinder5);
                }
                AbstractC0472.m1910(parcel);
                getCurrentScreenName(interfaceC046213);
                break;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    IInterface queryLocalInterface6 = readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC046212 = queryLocalInterface6 instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface6 : new C0315(readStrongBinder6);
                }
                AbstractC0472.m1910(parcel);
                getCurrentScreenClass(interfaceC046212);
                break;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    IInterface queryLocalInterface7 = readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                    interfaceC0406 = queryLocalInterface7 instanceof InterfaceC0406 ? (InterfaceC0406) queryLocalInterface7 : new AbstractC0292(readStrongBinder7, "com.google.android.gms.measurement.api.internal.IStringProvider", 0);
                }
                AbstractC0472.m1910(parcel);
                setInstanceIdProvider(interfaceC0406);
                break;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    IInterface queryLocalInterface8 = readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC046211 = queryLocalInterface8 instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface8 : new C0315(readStrongBinder8);
                }
                AbstractC0472.m1910(parcel);
                getCachedAppInstanceId(interfaceC046211);
                break;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    IInterface queryLocalInterface9 = readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC046210 = queryLocalInterface9 instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface9 : new C0315(readStrongBinder9);
                }
                AbstractC0472.m1910(parcel);
                getAppInstanceId(interfaceC046210);
                break;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    IInterface queryLocalInterface10 = readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC04629 = queryLocalInterface10 instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface10 : new C0315(readStrongBinder10);
                }
                AbstractC0472.m1910(parcel);
                getGmpAppId(interfaceC04629);
                break;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    IInterface queryLocalInterface11 = readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC04628 = queryLocalInterface11 instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface11 : new C0315(readStrongBinder11);
                }
                AbstractC0472.m1910(parcel);
                generateEventId(interfaceC04628);
                break;
            case 23:
                String readString17 = parcel.readString();
                long readLong12 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                beginAdUnitExposure(readString17, readLong12);
                break;
            case 24:
                String readString18 = parcel.readString();
                long readLong13 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                endAdUnitExposure(readString18, readLong13);
                break;
            case 25:
                InterfaceC1754 m47144 = BinderC1753.m4714(parcel.readStrongBinder());
                long readLong14 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                onActivityStarted(m47144, readLong14);
                break;
            case 26:
                InterfaceC1754 m47145 = BinderC1753.m4714(parcel.readStrongBinder());
                long readLong15 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                onActivityStopped(m47145, readLong15);
                break;
            case 27:
                InterfaceC1754 m47146 = BinderC1753.m4714(parcel.readStrongBinder());
                Bundle bundle5 = (Bundle) AbstractC0472.m1912(parcel, Bundle.CREATOR);
                long readLong16 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                onActivityCreated(m47146, bundle5, readLong16);
                break;
            case 28:
                InterfaceC1754 m47147 = BinderC1753.m4714(parcel.readStrongBinder());
                long readLong17 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                onActivityDestroyed(m47147, readLong17);
                break;
            case 29:
                InterfaceC1754 m47148 = BinderC1753.m4714(parcel.readStrongBinder());
                long readLong18 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                onActivityPaused(m47148, readLong18);
                break;
            case 30:
                InterfaceC1754 m47149 = BinderC1753.m4714(parcel.readStrongBinder());
                long readLong19 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                onActivityResumed(m47149, readLong19);
                break;
            case 31:
                InterfaceC1754 m471410 = BinderC1753.m4714(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    IInterface queryLocalInterface12 = readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC04627 = queryLocalInterface12 instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface12 : new C0315(readStrongBinder12);
                }
                long readLong20 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                onActivitySaveInstanceState(m471410, interfaceC04627, readLong20);
                break;
            case 32:
                Bundle bundle6 = (Bundle) AbstractC0472.m1912(parcel, Bundle.CREATOR);
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 != null) {
                    IInterface queryLocalInterface13 = readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC04626 = queryLocalInterface13 instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface13 : new C0315(readStrongBinder13);
                }
                long readLong21 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                performAction(bundle6, interfaceC04626, readLong21);
                break;
            case 33:
                int readInt = parcel.readInt();
                String readString19 = parcel.readString();
                InterfaceC1754 m471411 = BinderC1753.m4714(parcel.readStrongBinder());
                InterfaceC1754 m471412 = BinderC1753.m4714(parcel.readStrongBinder());
                InterfaceC1754 m471413 = BinderC1753.m4714(parcel.readStrongBinder());
                AbstractC0472.m1910(parcel);
                logHealthData(readInt, readString19, m471411, m471412, m471413);
                break;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 != null) {
                    IInterface queryLocalInterface14 = readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    interfaceC03423 = queryLocalInterface14 instanceof InterfaceC0342 ? (InterfaceC0342) queryLocalInterface14 : new C0354(readStrongBinder14);
                }
                AbstractC0472.m1910(parcel);
                setEventInterceptor(interfaceC03423);
                break;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 != null) {
                    IInterface queryLocalInterface15 = readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    interfaceC03422 = queryLocalInterface15 instanceof InterfaceC0342 ? (InterfaceC0342) queryLocalInterface15 : new C0354(readStrongBinder15);
                }
                AbstractC0472.m1910(parcel);
                registerOnMeasurementEventListener(interfaceC03422);
                break;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 != null) {
                    IInterface queryLocalInterface16 = readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                    interfaceC0342 = queryLocalInterface16 instanceof InterfaceC0342 ? (InterfaceC0342) queryLocalInterface16 : new C0354(readStrongBinder16);
                }
                AbstractC0472.m1910(parcel);
                unregisterOnMeasurementEventListener(interfaceC0342);
                break;
            case 37:
                HashMap readHashMap = parcel.readHashMap(AbstractC0472.f2228);
                AbstractC0472.m1910(parcel);
                initForTests(readHashMap);
                break;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 != null) {
                    IInterface queryLocalInterface17 = readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC04625 = queryLocalInterface17 instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface17 : new C0315(readStrongBinder17);
                }
                int readInt2 = parcel.readInt();
                AbstractC0472.m1910(parcel);
                getTestFlag(interfaceC04625, readInt2);
                break;
            case 39:
                ClassLoader classLoader4 = AbstractC0472.f2228;
                z = parcel.readInt() != 0;
                AbstractC0472.m1910(parcel);
                setDataCollectionEnabled(z);
                break;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 != null) {
                    IInterface queryLocalInterface18 = readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC04624 = queryLocalInterface18 instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface18 : new C0315(readStrongBinder18);
                }
                AbstractC0472.m1910(parcel);
                isDataCollectionEnabled(interfaceC04624);
                break;
            case 41:
            case 47:
            case 49:
            default:
                return false;
            case 42:
                Bundle bundle7 = (Bundle) AbstractC0472.m1912(parcel, Bundle.CREATOR);
                AbstractC0472.m1910(parcel);
                setDefaultEventParameters(bundle7);
                break;
            case 43:
                long readLong22 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                clearMeasurementEnabled(readLong22);
                break;
            case 44:
                Bundle bundle8 = (Bundle) AbstractC0472.m1912(parcel, Bundle.CREATOR);
                long readLong23 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                setConsent(bundle8, readLong23);
                break;
            case 45:
                Bundle bundle9 = (Bundle) AbstractC0472.m1912(parcel, Bundle.CREATOR);
                long readLong24 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                setConsentThirdParty(bundle9, readLong24);
                break;
            case 46:
                IBinder readStrongBinder19 = parcel.readStrongBinder();
                if (readStrongBinder19 != null) {
                    IInterface queryLocalInterface19 = readStrongBinder19.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC04623 = queryLocalInterface19 instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface19 : new C0315(readStrongBinder19);
                }
                AbstractC0472.m1910(parcel);
                getSessionId(interfaceC04623);
                break;
            case 48:
                Intent intent = (Intent) AbstractC0472.m1912(parcel, Intent.CREATOR);
                AbstractC0472.m1910(parcel);
                setSgtmDebugInfo(intent);
                break;
            case 50:
                C0441 c0441 = (C0441) AbstractC0472.m1912(parcel, C0441.CREATOR);
                String readString20 = parcel.readString();
                String readString21 = parcel.readString();
                long readLong25 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                setCurrentScreenByScionActivityInfo(c0441, readString20, readString21, readLong25);
                break;
            case 51:
                C0441 c04412 = (C0441) AbstractC0472.m1912(parcel, C0441.CREATOR);
                long readLong26 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                onActivityStartedByScionActivityInfo(c04412, readLong26);
                break;
            case 52:
                C0441 c04413 = (C0441) AbstractC0472.m1912(parcel, C0441.CREATOR);
                long readLong27 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                onActivityStoppedByScionActivityInfo(c04413, readLong27);
                break;
            case 53:
                C0441 c04414 = (C0441) AbstractC0472.m1912(parcel, C0441.CREATOR);
                Bundle bundle10 = (Bundle) AbstractC0472.m1912(parcel, Bundle.CREATOR);
                long readLong28 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                onActivityCreatedByScionActivityInfo(c04414, bundle10, readLong28);
                break;
            case 54:
                C0441 c04415 = (C0441) AbstractC0472.m1912(parcel, C0441.CREATOR);
                long readLong29 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                onActivityDestroyedByScionActivityInfo(c04415, readLong29);
                break;
            case 55:
                C0441 c04416 = (C0441) AbstractC0472.m1912(parcel, C0441.CREATOR);
                long readLong30 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                onActivityPausedByScionActivityInfo(c04416, readLong30);
                break;
            case 56:
                C0441 c04417 = (C0441) AbstractC0472.m1912(parcel, C0441.CREATOR);
                long readLong31 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                onActivityResumedByScionActivityInfo(c04417, readLong31);
                break;
            case 57:
                C0441 c04418 = (C0441) AbstractC0472.m1912(parcel, C0441.CREATOR);
                IBinder readStrongBinder20 = parcel.readStrongBinder();
                if (readStrongBinder20 != null) {
                    IInterface queryLocalInterface20 = readStrongBinder20.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                    interfaceC04622 = queryLocalInterface20 instanceof InterfaceC0462 ? (InterfaceC0462) queryLocalInterface20 : new C0315(readStrongBinder20);
                }
                long readLong32 = parcel.readLong();
                AbstractC0472.m1910(parcel);
                onActivitySaveInstanceStateByScionActivityInfo(c04418, interfaceC04622, readLong32);
                break;
            case 58:
                IBinder readStrongBinder21 = parcel.readStrongBinder();
                if (readStrongBinder21 != null) {
                    IInterface queryLocalInterface21 = readStrongBinder21.queryLocalInterface("com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback");
                    interfaceC0381 = queryLocalInterface21 instanceof InterfaceC0381 ? (InterfaceC0381) queryLocalInterface21 : new AbstractC0292(readStrongBinder21, "com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback", 0);
                }
                AbstractC0472.m1910(parcel);
                retrieveAndUploadBatches(interfaceC0381);
                break;
        }
        parcel2.writeNoException();
        return true;
    }
}
