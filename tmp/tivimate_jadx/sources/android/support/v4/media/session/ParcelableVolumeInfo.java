package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class ParcelableVolumeInfo implements Parcelable {
    public static final Parcelable.Creator<ParcelableVolumeInfo> CREATOR = new android.support.v4.media.ﹳٴ(7);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f18;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f19;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public int f20;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f21;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public int f22;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f19);
        parcel.writeInt(this.f18);
        parcel.writeInt(this.f20);
        parcel.writeInt(this.f22);
        parcel.writeInt(this.f21);
    }
}
