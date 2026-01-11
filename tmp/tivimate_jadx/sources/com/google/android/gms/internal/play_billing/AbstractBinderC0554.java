package com.google.android.gms.internal.play_billing;

import android.os.BadParcelableException;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import p027.BinderC1083;
import p307.AbstractC3740;

/* renamed from: com.google.android.gms.internal.play_billing.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractBinderC0554 extends Binder implements IInterface {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ int f2334 = 0;

    public /* synthetic */ AbstractBinderC0554() {
    }

    public AbstractBinderC0554(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        int i = this.f2334;
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        switch (this.f2334) {
            case 0:
                if (i <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i, parcel, parcel2, i2)) {
                    return true;
                }
                BinderC1083 binderC1083 = (BinderC1083) this;
                if (i != 1) {
                    return false;
                }
                int readInt = parcel.readInt();
                int i3 = AbstractC0588.f2391;
                int dataAvail = parcel.dataAvail();
                if (dataAvail > 0) {
                    throw new BadParcelableException(AbstractC3740.m7932(dataAvail, "Parcel data not fully consumed, unread size: "));
                }
                binderC1083.f4238.m2080(Integer.valueOf(readInt));
                return true;
            case 1:
                if (i <= 16777215) {
                    parcel.enforceInterface(getInterfaceDescriptor());
                } else if (super.onTransact(i, parcel, parcel2, i2)) {
                    return true;
                }
                return mo2131(i, parcel, parcel2);
            default:
                return super.onTransact(i, parcel, parcel2, i2);
        }
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public boolean mo2131(int i, Parcel parcel, Parcel parcel2) {
        return false;
    }
}
