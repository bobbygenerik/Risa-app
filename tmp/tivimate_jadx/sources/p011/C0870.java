package p011;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.ﹳٴ;
import android.view.AbsSavedState;

/* renamed from: ʻᐧ.ᴵᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0870 extends C0879 {
    public static final Parcelable.Creator<C0870> CREATOR = new ﹳٴ(17);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f3714;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f3715;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public int f3716;

    public C0870() {
        super(AbsSavedState.EMPTY_STATE);
    }

    public C0870(Parcel parcel) {
        super(parcel);
        this.f3715 = parcel.readInt();
        this.f3716 = parcel.readInt();
        this.f3714 = parcel.readInt();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f3715);
        parcel.writeInt(this.f3716);
        parcel.writeInt(this.f3714);
    }
}
