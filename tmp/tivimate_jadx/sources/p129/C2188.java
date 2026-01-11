package p129;

import android.os.Parcel;
import android.os.Parcelable;
import p039.C1288;
import p323.AbstractC3985;

/* renamed from: ˈᐧ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2188 extends AbstractC3985 {
    public static final Parcelable.Creator<C2188> CREATOR = new C1288(2);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f8643;

    public C2188(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f8643 = parcel.readInt() == 1;
    }

    @Override // p323.AbstractC3985, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f8643 ? 1 : 0);
    }
}
