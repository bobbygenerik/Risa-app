package p179;

import android.os.Parcel;
import android.os.Parcelable;
import p039.C1288;
import p323.AbstractC3985;

/* renamed from: ˋˋ.ᵎʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2729 extends AbstractC3985 {
    public static final Parcelable.Creator<C2729> CREATOR = new C1288(4);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Parcelable f10426;

    public C2729(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f10426 = parcel.readParcelable(classLoader == null ? AbstractC2669.class.getClassLoader() : classLoader);
    }

    @Override // p323.AbstractC3985, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeParcelable(this.f10426, 0);
    }
}
