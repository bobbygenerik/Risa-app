package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;
import java.util.Arrays;

/* renamed from: com.google.android.material.datepicker.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0675 implements Parcelable {
    public static final Parcelable.Creator<C0675> CREATOR = new android.support.v4.media.ﹳٴ(9);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C0662 f2753;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C0673 f2754;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C0673 f2755;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f2756;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final int f2757;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C0673 f2758;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final int f2759;

    public C0675(C0673 c0673, C0673 c06732, C0662 c0662, C0673 c06733, int i) {
        Objects.requireNonNull(c0673, "start cannot be null");
        Objects.requireNonNull(c06732, "end cannot be null");
        Objects.requireNonNull(c0662, "validator cannot be null");
        this.f2754 = c0673;
        this.f2758 = c06732;
        this.f2755 = c06733;
        this.f2759 = i;
        this.f2753 = c0662;
        if (c06733 != null && c0673.f2746.compareTo(c06733.f2746) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (c06733 != null && c06733.f2746.compareTo(c06732.f2746) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        if (i < 0 || i > AbstractC0654.m2389(null).getMaximum(7)) {
            throw new IllegalArgumentException("firstDayOfWeek is not valid");
        }
        this.f2757 = c0673.m2409(c06732) + 1;
        this.f2756 = (c06732.f2745 - c0673.f2745) + 1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0675)) {
            return false;
        }
        C0675 c0675 = (C0675) obj;
        return this.f2754.equals(c0675.f2754) && this.f2758.equals(c0675.f2758) && Objects.equals(this.f2755, c0675.f2755) && this.f2759 == c0675.f2759 && this.f2753.equals(c0675.f2753);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f2754, this.f2758, this.f2755, Integer.valueOf(this.f2759), this.f2753});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f2754, 0);
        parcel.writeParcelable(this.f2758, 0);
        parcel.writeParcelable(this.f2755, 0);
        parcel.writeParcelable(this.f2753, 0);
        parcel.writeInt(this.f2759);
    }
}
