package p011;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.ﹳٴ;
import android.view.AbsSavedState;

/* renamed from: ʻᐧ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0853 extends C0879 {
    public static final Parcelable.Creator<C0853> CREATOR = new ﹳٴ(12);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public String f3655;

    public C0853() {
        super(AbsSavedState.EMPTY_STATE);
    }

    public C0853(Parcel parcel) {
        super(parcel);
        this.f3655 = parcel.readString();
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeString(this.f3655);
    }
}
