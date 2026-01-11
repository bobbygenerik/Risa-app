package p389;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* renamed from: ⁱˊ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class BinderC4628 extends Binder implements InterfaceC4630 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final /* synthetic */ int f17301 = 0;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ C4629 f17302;

    public BinderC4628(C4629 c4629) {
        this.f17302 = c4629;
        attachInterface(this, InterfaceC4630.f17304);
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        String str = InterfaceC4630.f17304;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface(str);
        }
        if (i == 1598968902) {
            parcel2.writeString(str);
            return true;
        }
        if (i != 1) {
            return super.onTransact(i, parcel, parcel2, i2);
        }
        this.f17302.mo0(parcel.readInt(), (Bundle) (parcel.readInt() != 0 ? Bundle.CREATOR.createFromParcel(parcel) : null));
        return true;
    }
}
