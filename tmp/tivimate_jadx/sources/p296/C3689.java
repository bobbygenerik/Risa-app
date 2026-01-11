package p296;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import ˋˋ.ᵎˊ;

/* renamed from: ٴﾞ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3689 implements IInterface {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final IBinder f14429;

    public C3689(IBinder iBinder) {
        this.f14429 = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f14429;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7727(BinderC3667 binderC3667, C3682 c3682) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken("com.google.android.gms.common.internal.IGmsServiceBroker");
            obtain.writeStrongBinder(binderC3667);
            obtain.writeInt(1);
            ᵎˊ.ﹳٴ(c3682, obtain, 0);
            this.f14429.transact(46, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }
}
