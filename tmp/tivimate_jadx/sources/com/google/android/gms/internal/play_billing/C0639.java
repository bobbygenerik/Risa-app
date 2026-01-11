package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.measurement.AbstractC0292;

/* renamed from: com.google.android.gms.internal.play_billing.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0639 extends AbstractC0292 implements InterfaceC0532 {
    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final Bundle m2246(int i, String str, String str2, String str3, Bundle bundle) {
        Parcel m1307 = m1307();
        m1307.writeInt(i);
        m1307.writeString(str);
        m1307.writeString(str2);
        m1307.writeString(str3);
        m1307.writeString(null);
        int i2 = AbstractC0588.f2391;
        m1307.writeInt(1);
        bundle.writeToParcel(m1307, 0);
        Parcel m1304 = m1304(m1307, 8);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle2 = (Bundle) AbstractC0588.m2180(m1304);
        m1304.recycle();
        return bundle2;
    }

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final Bundle m2247(int i, String str, String str2, Bundle bundle, Bundle bundle2) {
        Parcel m1307 = m1307();
        m1307.writeInt(i);
        m1307.writeString(str);
        m1307.writeString(str2);
        int i2 = AbstractC0588.f2391;
        m1307.writeInt(1);
        bundle.writeToParcel(m1307, 0);
        m1307.writeInt(1);
        bundle2.writeToParcel(m1307, 0);
        Parcel m1304 = m1304(m1307, 901);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle3 = (Bundle) AbstractC0588.m2180(m1304);
        m1304.recycle();
        return bundle3;
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final Bundle m2248(String str, String str2, String str3) {
        Parcel m1307 = m1307();
        m1307.writeInt(3);
        m1307.writeString(str);
        m1307.writeString(str2);
        m1307.writeString(str3);
        m1307.writeString(null);
        Parcel m1304 = m1304(m1307, 3);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle = (Bundle) AbstractC0588.m2180(m1304);
        m1304.recycle();
        return bundle;
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final Bundle m2249(String str, String str2, Bundle bundle) {
        Parcel m1307 = m1307();
        m1307.writeInt(9);
        m1307.writeString(str);
        m1307.writeString(str2);
        int i = AbstractC0588.f2391;
        m1307.writeInt(1);
        bundle.writeToParcel(m1307, 0);
        Parcel m1304 = m1304(m1307, 902);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle2 = (Bundle) AbstractC0588.m2180(m1304);
        m1304.recycle();
        return bundle2;
    }

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final int m2250(int i, String str, String str2, Bundle bundle) {
        Parcel m1307 = m1307();
        m1307.writeInt(i);
        m1307.writeString(str);
        m1307.writeString(str2);
        int i2 = AbstractC0588.f2391;
        m1307.writeInt(1);
        bundle.writeToParcel(m1307, 0);
        Parcel m1304 = m1304(m1307, 10);
        int readInt = m1304.readInt();
        m1304.recycle();
        return readInt;
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final Bundle m2251(String str, String str2, String str3) {
        Parcel m1307 = m1307();
        m1307.writeInt(3);
        m1307.writeString(str);
        m1307.writeString(str2);
        m1307.writeString(str3);
        Parcel m1304 = m1304(m1307, 4);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle = (Bundle) AbstractC0588.m2180(m1304);
        m1304.recycle();
        return bundle;
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final Bundle m2252(int i, String str, String str2, String str3, Bundle bundle) {
        Parcel m1307 = m1307();
        m1307.writeInt(i);
        m1307.writeString(str);
        m1307.writeString(str2);
        m1307.writeString(str3);
        int i2 = AbstractC0588.f2391;
        m1307.writeInt(1);
        bundle.writeToParcel(m1307, 0);
        Parcel m1304 = m1304(m1307, 11);
        Parcelable.Creator creator = Bundle.CREATOR;
        Bundle bundle2 = (Bundle) AbstractC0588.m2180(m1304);
        m1304.recycle();
        return bundle2;
    }
}
