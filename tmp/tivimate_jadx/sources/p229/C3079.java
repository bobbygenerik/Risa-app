package p229;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
import ˋˋ.ᵎˊ;

/* renamed from: ˑʼ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3079 implements Parcelable {
    public static final Parcelable.Creator<C3079> CREATOR = new ᵎˊ(5);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ArrayList f11698;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ArrayList f11699;

    public C3079(Parcel parcel) {
        this.f11698 = parcel.createStringArrayList();
        this.f11699 = parcel.createTypedArrayList(C3135.CREATOR);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringList(this.f11698);
        parcel.writeTypedList(this.f11699);
    }
}
