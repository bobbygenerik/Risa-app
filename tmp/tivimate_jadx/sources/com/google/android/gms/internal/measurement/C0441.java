package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import j$.util.Objects;
import p121.AbstractC2026;
import p339.AbstractC4228;

/* renamed from: com.google.android.gms.internal.measurement.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0441 extends AbstractC4228 {
    public static final Parcelable.Creator<C0441> CREATOR = new C0324(1);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Intent f2186;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f2187;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final String f2188;

    public C0441(int i, String str, Intent intent) {
        this.f2187 = i;
        this.f2188 = str;
        this.f2186 = intent;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static C0441 m1870(Activity activity) {
        return new C0441(activity.hashCode(), activity.getClass().getCanonicalName(), activity.getIntent());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C0441)) {
            return false;
        }
        C0441 c0441 = (C0441) obj;
        return this.f2187 == c0441.f2187 && Objects.equals(this.f2188, c0441.f2188) && Objects.equals(this.f2186, c0441.f2186);
    }

    public final int hashCode() {
        return this.f2187;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5045(parcel, 1, 4);
        parcel.writeInt(this.f2187);
        AbstractC2026.m5054(parcel, 2, this.f2188);
        AbstractC2026.m5050(parcel, 3, this.f2186, i);
        AbstractC2026.m5047(parcel, m5058);
    }
}
