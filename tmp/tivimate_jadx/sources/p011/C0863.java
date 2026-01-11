package p011;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.ﹳٴ;
import android.view.AbsSavedState;

/* renamed from: ʻᐧ.ˊʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0863 extends C0879 {
    public static final Parcelable.Creator<C0863> CREATOR = new ﹳٴ(18);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f3677;

    public C0863() {
        super(AbsSavedState.EMPTY_STATE);
    }

    public C0863(Parcel parcel) {
        super(parcel);
        this.f3677 = parcel.readInt() == 1;
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f3677 ? 1 : 0);
    }
}
