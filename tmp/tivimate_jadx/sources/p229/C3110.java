package p229;

import android.os.Parcel;
import android.os.Parcelable;
import ˋˋ.ᵎˊ;

/* renamed from: ˑʼ.ـˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3110 implements Parcelable {
    public static final Parcelable.Creator<C3110> CREATOR = new ᵎˊ(6);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public String f11842;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f11843;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f11842);
        parcel.writeInt(this.f11843);
    }
}
