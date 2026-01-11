package p323;

import android.os.Parcel;
import android.os.Parcelable;
import p039.C1288;

/* renamed from: ᴵˑ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC3985 implements Parcelable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Parcelable f15355;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C3986 f15354 = new AbstractC3985();
    public static final Parcelable.Creator<AbstractC3985> CREATOR = new C1288(7);

    public AbstractC3985() {
        this.f15355 = null;
    }

    public AbstractC3985(Parcel parcel, ClassLoader classLoader) {
        Parcelable readParcelable = parcel.readParcelable(classLoader);
        this.f15355 = readParcelable == null ? f15354 : readParcelable;
    }

    public AbstractC3985(Parcelable parcelable) {
        if (parcelable == null) {
            throw new IllegalArgumentException("superState must not be null");
        }
        this.f15355 = parcelable == f15354 ? null : parcelable;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        parcel.writeParcelable(this.f15355, i);
    }
}
