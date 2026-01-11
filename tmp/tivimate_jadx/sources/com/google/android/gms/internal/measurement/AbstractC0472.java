package com.google.android.gms.internal.measurement;

import android.os.BadParcelableException;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: com.google.android.gms.internal.measurement.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0472 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final ClassLoader f2228 = AbstractC0472.class.getClassLoader();

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m1909(Parcel parcel, IInterface iInterface) {
        if (iInterface == null) {
            parcel.writeStrongBinder(null);
        } else {
            parcel.writeStrongBinder(iInterface.asBinder());
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static void m1910(Parcel parcel) {
        int dataAvail = parcel.dataAvail();
        if (dataAvail <= 0) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(dataAvail).length() + 45);
        sb.append("Parcel data not fully consumed, unread size: ");
        sb.append(dataAvail);
        throw new BadParcelableException(sb.toString());
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static void m1911(Parcel parcel, Parcelable parcelable) {
        if (parcelable == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            parcelable.writeToParcel(parcel, 0);
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Parcelable m1912(Parcel parcel, Parcelable.Creator creator) {
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }
}
