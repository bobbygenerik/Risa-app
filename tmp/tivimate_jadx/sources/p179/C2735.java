package p179;

import android.os.Parcel;
import android.os.Parcelable;

/* renamed from: ˋˋ.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2735 implements Parcelable {
    public static final Parcelable.Creator<C2735> CREATOR = new ᵎˊ(0);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f10445;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f10446;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f10447;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f10446);
        parcel.writeInt(this.f10447);
        parcel.writeInt(this.f10445 ? 1 : 0);
    }
}
