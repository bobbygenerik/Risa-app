package p035;

import android.os.IBinder;
import android.os.Parcel;

/* renamed from: ʼﾞ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1211 implements InterfaceC1224 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public IBinder f4688;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f4688;
    }

    @Override // p035.InterfaceC1224
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void mo3751(String[] strArr) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(InterfaceC1224.f4735);
            obtain.writeStringArray(strArr);
            this.f4688.transact(1, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
