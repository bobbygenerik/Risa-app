package androidx.leanback.widget;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: androidx.leanback.widget.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0092 implements Parcelable {
    public static final Parcelable.Creator<C0092> CREATOR = new Object();

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f860;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public Bundle f861;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f860);
        parcel.writeBundle(this.f861);
    }
}
