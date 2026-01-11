package p283;

import android.os.Parcel;
import android.os.Parcelable;
import p039.C1288;
import p323.AbstractC3985;

/* renamed from: ٴˉ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3565 extends AbstractC3985 {
    public static final Parcelable.Creator<C3565> CREATOR = new C1288(6);

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f13920;

    public C3565(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        if (classLoader == null) {
            C3565.class.getClassLoader();
        }
        this.f13920 = parcel.readInt() == 1;
    }

    @Override // p323.AbstractC3985, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        super.writeToParcel(parcel, i);
        parcel.writeInt(this.f13920 ? 1 : 0);
    }
}
