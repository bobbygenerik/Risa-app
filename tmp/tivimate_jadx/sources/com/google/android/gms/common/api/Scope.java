package com.google.android.gms.common.api;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import p121.AbstractC2026;
import p296.AbstractC3659;
import p339.AbstractC4228;
import ᴵˈ.ٴﹶ;

/* loaded from: classes.dex */
public final class Scope extends AbstractC4228 implements ReflectedParcelable {
    public static final Parcelable.Creator<Scope> CREATOR = new ٴﹶ(8);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f1718;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final String f1719;

    public Scope(int i, String str) {
        AbstractC3659.m7681(str, "scopeUri must not be null or empty");
        this.f1718 = i;
        this.f1719 = str;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Scope)) {
            return false;
        }
        return this.f1719.equals(((Scope) obj).f1719);
    }

    public final int hashCode() {
        return this.f1719.hashCode();
    }

    public final String toString() {
        return this.f1719;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int m5058 = AbstractC2026.m5058(parcel, 20293);
        AbstractC2026.m5045(parcel, 1, 4);
        parcel.writeInt(this.f1718);
        AbstractC2026.m5054(parcel, 2, this.f1719);
        AbstractC2026.m5047(parcel, m5058);
    }
}
