package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p121.AbstractC2026;
import p339.AbstractC4228;

/* renamed from: com.google.android.gms.internal.measurement.ﹳـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0492 extends AbstractC4228 {
    public static final Parcelable.Creator<C0492> CREATOR = new C0324(0);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean f2252;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f2253;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final Bundle f2254;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f2255;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final String f2256;

    public C0492(long j, long j2, boolean z, Bundle bundle, String str) {
        this.f2253 = j;
        this.f2255 = j2;
        this.f2252 = z;
        this.f2254 = bundle;
        this.f2256 = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5045(parcel, 1, 8);
        parcel.writeLong(this.f2253);
        AbstractC2026.m5045(parcel, 2, 8);
        parcel.writeLong(this.f2255);
        AbstractC2026.m5045(parcel, 3, 4);
        parcel.writeInt(this.f2252 ? 1 : 0);
        AbstractC2026.m5043(parcel, 7, this.f2254);
        AbstractC2026.m5054(parcel, 8, this.f2256);
        AbstractC2026.m5047(parcel, m5058);
    }
}
