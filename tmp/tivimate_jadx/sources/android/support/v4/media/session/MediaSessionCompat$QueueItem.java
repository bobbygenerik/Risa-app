package android.support.v4.media.session;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.MediaDescriptionCompat;

/* loaded from: classes.dex */
public final class MediaSessionCompat$QueueItem implements Parcelable {
    public static final Parcelable.Creator<MediaSessionCompat$QueueItem> CREATOR = new android.support.v4.media.ﹳٴ(4);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final MediaDescriptionCompat f14;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f15;

    public MediaSessionCompat$QueueItem(Parcel parcel) {
        this.f14 = MediaDescriptionCompat.CREATOR.createFromParcel(parcel);
        this.f15 = parcel.readLong();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("MediaSession.QueueItem {Description=");
        sb.append(this.f14);
        sb.append(", Id=");
        return AbstractC0001.m8(sb, this.f15, " }");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        this.f14.writeToParcel(parcel, i);
        parcel.writeLong(this.f15);
    }
}
