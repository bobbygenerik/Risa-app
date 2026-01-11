package p381;

import android.os.Parcel;
import android.os.Parcelable;
import android.view.View;
import p035.AbstractC1220;
import ᴵˈ.ٴﹶ;

/* renamed from: ⁱ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4548 extends View.BaseSavedState {
    public static final Parcelable.Creator<C4548> CREATOR = new ٴﹶ(26);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public int f17057;

    public final String toString() {
        StringBuilder sb = new StringBuilder("MaterialCheckBox.SavedState{");
        sb.append(Integer.toHexString(System.identityHashCode(this)));
        sb.append(" CheckedState=");
        int i = this.f17057;
        return AbstractC1220.m3775(sb, i != 1 ? i != 2 ? "unchecked" : "indeterminate" : "checked", "}");
    }

    @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeValue(Integer.valueOf(this.f17057));
    }
}
