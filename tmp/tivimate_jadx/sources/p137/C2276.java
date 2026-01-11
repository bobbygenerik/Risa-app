package p137;

import android.os.Parcel;
import android.os.Parcelable;
import p039.C1288;
import p323.AbstractC3985;

/* renamed from: ˉˆ.ˊﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2276 extends AbstractC3985 {
    public static final Parcelable.Creator<C2276> CREATOR = new C1288(3);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public int f8914;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f8915;

    public C2276(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        this.f8914 = parcel.readInt();
        this.f8915 = parcel.readInt() != 0;
    }

    @Override // p323.AbstractC3985, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f8914);
        parcel.writeInt(this.f8915 ? 1 : 0);
    }
}
