package p035;

import android.os.IBinder;
import android.os.Parcel;

/* renamed from: ʼﾞ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1250 implements InterfaceC1238 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public IBinder f4863;

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f4863;
    }

    @Override // p035.InterfaceC1238
    /* renamed from: ʼᐧ */
    public final int mo3832(InterfaceC1224 interfaceC1224, String str) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(InterfaceC1238.f4815);
            obtain.writeStrongInterface(interfaceC1224);
            obtain.writeString(str);
            this.f4863.transact(1, obtain, obtain2, 0);
            obtain2.readException();
            return obtain2.readInt();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // p035.InterfaceC1238
    /* renamed from: ˉٴ */
    public final void mo3833(InterfaceC1224 interfaceC1224, int i) {
        Parcel obtain = Parcel.obtain();
        Parcel obtain2 = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(InterfaceC1238.f4815);
            obtain.writeStrongInterface(interfaceC1224);
            obtain.writeInt(i);
            this.f4863.transact(2, obtain, obtain2, 0);
            obtain2.readException();
        } finally {
            obtain2.recycle();
            obtain.recycle();
        }
    }

    @Override // p035.InterfaceC1238
    /* renamed from: ᵎⁱ */
    public final void mo3834(int i, String[] strArr) {
        Parcel obtain = Parcel.obtain();
        try {
            obtain.writeInterfaceToken(InterfaceC1238.f4815);
            obtain.writeInt(i);
            obtain.writeStringArray(strArr);
            this.f4863.transact(3, obtain, null, 1);
        } finally {
            obtain.recycle();
        }
    }
}
