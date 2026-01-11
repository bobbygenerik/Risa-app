package p035;

import android.os.Binder;
import android.os.IBinder;
import android.os.Parcel;
import p126.InterfaceC2136;
import p324.AbstractC3999;
import ʼˋ.ᵔʾ;

/* renamed from: ʼﾞ.ˉˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class BinderC1216 extends Binder implements InterfaceC1224 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ C1243 f4703;

    public BinderC1216(C1243 c1243) {
        this.f4703 = c1243;
        attachInterface(this, InterfaceC1224.f4735);
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        String str = InterfaceC1224.f4735;
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
        mo3751(parcel.createStringArray());
        return true;
    }

    @Override // p035.InterfaceC1224
    /* renamed from: ﹳᐧ */
    public final void mo3751(String[] strArr) {
        C1243 c1243 = this.f4703;
        AbstractC3999.m8168(c1243.f4826, null, new ᵔʾ(strArr, c1243, (InterfaceC2136) null, 2), 3);
    }
}
