package com.google.android.gms.internal.measurement;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* renamed from: com.google.android.gms.internal.measurement.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractBinderC0257 extends Binder implements IInterface {
    public AbstractBinderC0257(String str) {
        attachInterface(this, str);
    }

    @Override // android.os.IInterface
    public IBinder asBinder() {
        return this;
    }

    @Override // android.os.Binder
    public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
        if (i <= 16777215) {
            parcel.enforceInterface(getInterfaceDescriptor());
        } else if (super.onTransact(i, parcel, parcel2, i2)) {
            return true;
        }
        return mo1204(i, parcel, parcel2);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public abstract boolean mo1204(int i, Parcel parcel, Parcel parcel2);
}
