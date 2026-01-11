package p069;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* renamed from: ʾـ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1625 implements InterfaceC1624, IInterface {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final IBinder f6470;

    public C1625(IBinder iBinder) {
        this.f6470 = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.f6470;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Parcel m4406(Parcel parcel, int i) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f6470.transact(i, parcel, obtain, 0);
                obtain.readException();
                return obtain;
            } catch (RuntimeException e) {
                obtain.recycle();
                throw e;
            }
        } finally {
            parcel.recycle();
        }
    }
}
