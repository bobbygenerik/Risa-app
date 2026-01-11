package p389;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import ᴵˈ.ٴﹶ;

/* renamed from: ⁱˊ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public class C4629 implements Parcelable {
    public static final Parcelable.Creator<C4629> CREATOR = new ٴﹶ(27);

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public InterfaceC4630 f17303;

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        synchronized (this) {
            try {
                if (this.f17303 == null) {
                    this.f17303 = new BinderC4628(this);
                }
                parcel.writeStrongBinder(this.f17303.asBinder());
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﹳٴ */
    public void mo0(int i, Bundle bundle) {
    }
}
