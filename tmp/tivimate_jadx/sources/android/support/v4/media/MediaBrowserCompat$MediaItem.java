package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public class MediaBrowserCompat$MediaItem implements Parcelable {
    public static final Parcelable.Creator<MediaBrowserCompat$MediaItem> CREATOR = new ﹳٴ(0);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f0;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final MediaDescriptionCompat f1;

    public MediaBrowserCompat$MediaItem(Parcel parcel) {
        this.f0 = parcel.readInt();
        this.f1 = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return "MediaItem{mFlags=" + this.f0 + ", mDescription=" + this.f1 + '}';
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f0);
        this.f1.writeToParcel(parcel, i);
    }
}
