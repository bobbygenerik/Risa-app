package android.support.v4.media;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class RatingCompat implements Parcelable {
    public static final Parcelable.Creator<RatingCompat> CREATOR = new ﹳٴ(3);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f12;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final float f13;

    public RatingCompat(int i, float f) {
        this.f12 = i;
        this.f13 = f;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return this.f12;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Rating:style=");
        sb.append(this.f12);
        sb.append(" rating=");
        float f = this.f13;
        sb.append(f < 0.0f ? "unrated" : String.valueOf(f));
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f12);
        parcel.writeFloat(this.f13);
    }
}
