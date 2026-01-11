package androidx.versionedparcelable;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import p267.C3464;
import p267.InterfaceC3463;
import ˋˋ.ᵎˊ;

@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public class ParcelImpl implements Parcelable {
    public static final Parcelable.Creator<ParcelImpl> CREATOR = new ᵎˊ(15);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC3463 f1560;

    public ParcelImpl(Parcel parcel) {
        this.f1560 = new C3464(parcel).m7380();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        new C3464(parcel).m7378(this.f1560);
    }
}
