package p137;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import ʼⁱ.ﾞˊ;

/* renamed from: ˉˆ.ᵔٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2325 extends View.BaseSavedState {
    public static final Parcelable.Creator<C2325> CREATOR = new ﾞˊ(26);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public boolean f9061;

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeByte(this.f9061 ? (byte) 1 : (byte) 0);
    }
}
