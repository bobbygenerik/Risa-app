package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* renamed from: com.google.android.material.datepicker.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0662 implements Parcelable {
    public static final Parcelable.Creator<C0662> CREATOR = new android.support.v4.media.ﹳٴ(10);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f2700;

    public C0662(long j) {
        this.f2700 = j;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof C0662) && this.f2700 == ((C0662) obj).f2700;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f2700)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeLong(this.f2700);
    }
}
