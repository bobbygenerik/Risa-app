package android.support.v4.media;

import android.graphics.Bitmap;
import android.media.MediaDescription;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class MediaDescriptionCompat implements Parcelable {
    public static final Parcelable.Creator<MediaDescriptionCompat> CREATOR = new ﹳٴ(1);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final CharSequence f2;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final String f3;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final CharSequence f4;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final Uri f5;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Uri f6;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final Bundle f7;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final CharSequence f8;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Bitmap f9;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public Object f10;

    public MediaDescriptionCompat(String str, CharSequence charSequence, CharSequence charSequence2, CharSequence charSequence3, Bitmap bitmap, Uri uri, Bundle bundle, Uri uri2) {
        this.f3 = str;
        this.f8 = charSequence;
        this.f2 = charSequence2;
        this.f4 = charSequence3;
        this.f9 = bitmap;
        this.f6 = uri;
        this.f7 = bundle;
        this.f5 = uri2;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        return ((Object) this.f8) + ", " + ((Object) this.f2) + ", " + ((Object) this.f4);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        Object obj = this.f10;
        if (obj == null) {
            MediaDescription.Builder builder = new MediaDescription.Builder();
            builder.setMediaId(this.f3);
            builder.setTitle(this.f8);
            builder.setSubtitle(this.f2);
            builder.setDescription(this.f4);
            builder.setIconBitmap(this.f9);
            builder.setIconUri(this.f6);
            builder.setExtras(this.f7);
            builder.setMediaUri(this.f5);
            obj = builder.build();
            this.f10 = obj;
        }
        ((MediaDescription) obj).writeToParcel(parcel, i);
    }
}
