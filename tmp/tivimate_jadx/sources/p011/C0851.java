package p011;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.ﹳٴ;
import android.view.AbsSavedState;
import java.util.Collections;
import java.util.HashSet;

/* renamed from: ʻᐧ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0851 extends C0879 {
    public static final Parcelable.Creator<C0851> CREATOR = new ﹳٴ(14);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public HashSet f3646;

    public C0851() {
        super(AbsSavedState.EMPTY_STATE);
    }

    public C0851(Parcel parcel) {
        super(parcel);
        int readInt = parcel.readInt();
        this.f3646 = new HashSet();
        String[] strArr = new String[readInt];
        parcel.readStringArray(strArr);
        Collections.addAll(this.f3646, strArr);
    }

    @Override // android.view.AbsSavedState, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f3646.size());
        HashSet hashSet = this.f3646;
        parcel.writeStringArray((String[]) hashSet.toArray(new String[hashSet.size()]));
    }
}
