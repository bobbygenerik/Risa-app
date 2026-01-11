package p011;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.ﹳٴ;
import android.view.AbsSavedState;

/* renamed from: ʻᐧ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0855 extends C0879 {
    public static final Parcelable.Creator<C0855> CREATOR = new ﹳٴ(16);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f3657;

    public C0855(int i) {
        super(AbsSavedState.EMPTY_STATE);
        this.f3657 = i;
    }

    public C0855(Parcel parcel) {
        super(parcel);
        this.f3657 = parcel.readInt();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f3657);
    }
}
