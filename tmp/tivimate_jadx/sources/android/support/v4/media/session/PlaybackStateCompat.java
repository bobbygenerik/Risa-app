package android.support.v4.media.session;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class PlaybackStateCompat implements Parcelable {
    public static final Parcelable.Creator<PlaybackStateCompat> CREATOR = new android.support.v4.media.ﹳٴ(8);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final long f23;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f24;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final float f25;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final long f26;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final int f27;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final long f28;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final CharSequence f29;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f30;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final long f31;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final Bundle f32;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final ArrayList f33;

    /* loaded from: classes.dex */
    public static final class CustomAction implements Parcelable {
        public static final Parcelable.Creator<CustomAction> CREATOR = new Object();

        /* renamed from: ʽʽ, reason: contains not printable characters */
        public final int f34;

        /* renamed from: ʾˋ, reason: contains not printable characters */
        public final String f35;

        /* renamed from: ˈٴ, reason: contains not printable characters */
        public final Bundle f36;

        /* renamed from: ᴵˊ, reason: contains not printable characters */
        public final CharSequence f37;

        public CustomAction(Parcel parcel) {
            this.f35 = parcel.readString();
            this.f37 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
            this.f34 = parcel.readInt();
            this.f36 = parcel.readBundle(ⁱˊ.class.getClassLoader());
        }

        @Override // android.os.Parcelable
        public final int describeContents() {
            return 0;
        }

        public final String toString() {
            return "Action:mName='" + ((Object) this.f37) + ", mIcon=" + this.f34 + ", mExtras=" + this.f36;
        }

        @Override // android.os.Parcelable
        public final void writeToParcel(Parcel parcel, int i) {
            parcel.writeString(this.f35);
            TextUtils.writeToParcel(this.f37, parcel, i);
            parcel.writeInt(this.f34);
            parcel.writeBundle(this.f36);
        }
    }

    public PlaybackStateCompat(Parcel parcel) {
        this.f24 = parcel.readInt();
        this.f30 = parcel.readLong();
        this.f25 = parcel.readFloat();
        this.f26 = parcel.readLong();
        this.f23 = parcel.readLong();
        this.f31 = parcel.readLong();
        this.f29 = (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(parcel);
        this.f33 = parcel.createTypedArrayList(CustomAction.CREATOR);
        this.f28 = parcel.readLong();
        this.f32 = parcel.readBundle(ⁱˊ.class.getClassLoader());
        this.f27 = parcel.readInt();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PlaybackState {state=");
        sb.append(this.f24);
        sb.append(", position=");
        sb.append(this.f30);
        sb.append(", buffered position=");
        sb.append(this.f23);
        sb.append(", speed=");
        sb.append(this.f25);
        sb.append(", updated=");
        sb.append(this.f26);
        sb.append(", actions=");
        sb.append(this.f31);
        sb.append(", error code=");
        sb.append(this.f27);
        sb.append(", error message=");
        sb.append(this.f29);
        sb.append(", custom actions=");
        sb.append(this.f33);
        sb.append(", active item id=");
        return AbstractC0001.m8(sb, this.f28, "}");
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeInt(this.f24);
        parcel.writeLong(this.f30);
        parcel.writeFloat(this.f25);
        parcel.writeLong(this.f26);
        parcel.writeLong(this.f23);
        parcel.writeLong(this.f31);
        TextUtils.writeToParcel(this.f29, parcel, i);
        parcel.writeTypedList(this.f33);
        parcel.writeLong(this.f28);
        parcel.writeBundle(this.f32);
        parcel.writeInt(this.f27);
    }
}
