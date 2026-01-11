package p415;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import p035.AbstractC1220;

/* renamed from: ﹳـ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4924 extends View.BaseSavedState {
    public static final Parcelable.Creator<C4924> CREATOR = new ᵎﹶ(0);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f18366;

    public final String toString() {
        StringBuilder sb = new StringBuilder("HorizontalScrollView.SavedState{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" scrollPosition=");
        return AbstractC1220.m3782(sb, this.f18366, "}");
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f18366);
    }
}
