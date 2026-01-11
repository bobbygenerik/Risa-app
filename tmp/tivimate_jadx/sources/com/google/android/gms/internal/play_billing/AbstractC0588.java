package com.google.android.gms.internal.play_billing;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: com.google.android.gms.internal.play_billing.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0588 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final /* synthetic */ int f2391 = 0;

    static {
        AbstractC0588.class.getClassLoader();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static Parcelable m2180(Parcel parcel) {
        Parcelable.Creator creator = Bundle.CREATOR;
        if (parcel.readInt() == 0) {
            return null;
        }
        return (Parcelable) creator.createFromParcel(parcel);
    }
}
