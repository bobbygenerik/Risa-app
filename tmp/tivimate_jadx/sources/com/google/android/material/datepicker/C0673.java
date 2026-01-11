package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.internal.measurement.AbstractC0473;
import java.util.Arrays;
import java.util.Calendar;
import java.util.GregorianCalendar;

/* renamed from: com.google.android.material.datepicker.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0673 implements Comparable, Parcelable {
    public static final Parcelable.Creator<C0673> CREATOR = new android.support.v4.media.ﹳٴ(11);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final int f2745;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Calendar f2746;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final int f2747;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final long f2748;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public String f2749;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int f2750;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f2751;

    public C0673(Calendar calendar) {
        calendar.set(5, 1);
        Calendar m2391 = AbstractC0654.m2391(calendar);
        this.f2746 = m2391;
        this.f2750 = m2391.get(2);
        this.f2745 = m2391.get(1);
        this.f2747 = m2391.getMaximum(7);
        this.f2751 = m2391.getActualMaximum(5);
        this.f2748 = m2391.getTimeInMillis();
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C0673 m2406(long j) {
        Calendar m2389 = AbstractC0654.m2389(null);
        m2389.setTimeInMillis(j);
        return new C0673(m2389);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C0673 m2407(int i, int i2) {
        Calendar m2389 = AbstractC0654.m2389(null);
        m2389.set(1, i);
        m2389.set(2, i2);
        return new C0673(m2389);
    }

    @Override // java.lang.Comparable
    public final int compareTo(Object obj) {
        return this.f2746.compareTo(((C0673) obj).f2746);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0673)) {
            return false;
        }
        C0673 c0673 = (C0673) obj;
        return this.f2750 == c0673.f2750 && this.f2745 == c0673.f2745;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Integer.valueOf(this.f2750), Integer.valueOf(this.f2745)});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f2745);
        parcel.writeInt(this.f2750);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final String m2408() {
        if (this.f2749 == null) {
            this.f2749 = AbstractC0473.m1919(this.f2746.getTimeInMillis());
        }
        return this.f2749;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final int m2409(C0673 c0673) {
        if (!(this.f2746 instanceof GregorianCalendar)) {
            throw new IllegalArgumentException("Only Gregorian calendars are supported.");
        }
        return (c0673.f2750 - this.f2750) + ((c0673.f2745 - this.f2745) * 12);
    }
}
