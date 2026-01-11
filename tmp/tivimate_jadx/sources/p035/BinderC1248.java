package p035;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.room.MultiInstanceInvalidationService;

/* renamed from: ʼﾞ.ﹳᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class BinderC1248 extends Binder implements InterfaceC1238 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public static final /* synthetic */ int f4858 = 0;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ MultiInstanceInvalidationService f4859;

    public BinderC1248(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.f4859 = multiInstanceInvalidationService;
        attachInterface(this, InterfaceC1238.f4815);
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [ʼﾞ.ˈ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v8, types: [ʼﾞ.ˈ, java.lang.Object] */
    @Override // android.os.Binder
    public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        String str = InterfaceC1238.f4815;
        if (i >= 1 && i <= 16777215) {
            parcel.enforceInterface(str);
        }
        if (i == 1598968902) {
            parcel2.writeString(str);
            return true;
        }
        InterfaceC1224 interfaceC1224 = null;
        InterfaceC1224 interfaceC12242 = null;
        if (i == 1) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder != null) {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(InterfaceC1224.f4735);
                if (queryLocalInterface == null || !(queryLocalInterface instanceof InterfaceC1224)) {
                    ?? obj = new Object();
                    obj.f4688 = readStrongBinder;
                    interfaceC1224 = obj;
                } else {
                    interfaceC1224 = (InterfaceC1224) queryLocalInterface;
                }
            }
            int mo3832 = mo3832(interfaceC1224, parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(mo3832);
            return true;
        }
        if (i != 2) {
            if (i != 3) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            mo3834(parcel.readInt(), parcel.createStringArray());
            return true;
        }
        IBinder readStrongBinder2 = parcel.readStrongBinder();
        if (readStrongBinder2 != null) {
            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface(InterfaceC1224.f4735);
            if (queryLocalInterface2 == null || !(queryLocalInterface2 instanceof InterfaceC1224)) {
                ?? obj2 = new Object();
                obj2.f4688 = readStrongBinder2;
                interfaceC12242 = obj2;
            } else {
                interfaceC12242 = (InterfaceC1224) queryLocalInterface2;
            }
        }
        mo3833(interfaceC12242, parcel.readInt());
        parcel2.writeNoException();
        return true;
    }

    @Override // p035.InterfaceC1238
    /* renamed from: ʼᐧ */
    public final int mo3832(InterfaceC1224 interfaceC1224, String str) {
        int i = 0;
        if (str == null) {
            return 0;
        }
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f4859;
        synchronized (multiInstanceInvalidationService.f1556) {
            try {
                int i2 = multiInstanceInvalidationService.f1557 + 1;
                multiInstanceInvalidationService.f1557 = i2;
                if (multiInstanceInvalidationService.f1556.register(interfaceC1224, Integer.valueOf(i2))) {
                    multiInstanceInvalidationService.f1559.put(Integer.valueOf(i2), str);
                    i = i2;
                } else {
                    multiInstanceInvalidationService.f1557--;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    @Override // p035.InterfaceC1238
    /* renamed from: ˉٴ */
    public final void mo3833(InterfaceC1224 interfaceC1224, int i) {
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f4859;
        synchronized (multiInstanceInvalidationService.f1556) {
            multiInstanceInvalidationService.f1556.unregister(interfaceC1224);
        }
    }

    @Override // p035.InterfaceC1238
    /* renamed from: ᵎⁱ */
    public final void mo3834(int i, String[] strArr) {
        MultiInstanceInvalidationService multiInstanceInvalidationService = this.f4859;
        synchronized (multiInstanceInvalidationService.f1556) {
            String str = (String) multiInstanceInvalidationService.f1559.get(Integer.valueOf(i));
            if (str == null) {
                return;
            }
            int beginBroadcast = multiInstanceInvalidationService.f1556.beginBroadcast();
            for (int i2 = 0; i2 < beginBroadcast; i2++) {
                try {
                    Integer num = (Integer) multiInstanceInvalidationService.f1556.getBroadcastCookie(i2);
                    int intValue = num.intValue();
                    String str2 = (String) multiInstanceInvalidationService.f1559.get(num);
                    if (i != intValue && str.equals(str2)) {
                        try {
                            ((InterfaceC1224) multiInstanceInvalidationService.f1556.getBroadcastItem(i2)).mo3751(strArr);
                        } catch (RemoteException e) {
                        }
                    }
                } finally {
                    multiInstanceInvalidationService.f1556.finishBroadcast();
                }
            }
        }
    }
}
