package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* renamed from: com.google.android.gms.internal.measurement.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC0292 implements IInterface {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ int f1903;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final IBinder f1904;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String f1905;

    public /* synthetic */ AbstractC0292(IBinder iBinder, String str, int i) {
        this.f1903 = i;
        this.f1904 = iBinder;
        this.f1905 = str;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        switch (this.f1903) {
            case 0:
                return this.f1904;
            case 1:
                return this.f1904;
            default:
                return this.f1904;
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public Parcel m1301(Parcel parcel, int i) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f1904.transact(i, parcel, obtain, 0);
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

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public void m1302(Parcel parcel) {
        try {
            this.f1904.transact(2, parcel, null, 1);
        } finally {
            parcel.recycle();
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public Parcel m1303(Parcel parcel, int i) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f1904.transact(i, parcel, obtain, 0);
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

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public Parcel m1304(Parcel parcel, int i) {
        Parcel obtain = Parcel.obtain();
        try {
            try {
                this.f1904.transact(i, parcel, obtain, 0);
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

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Parcel m1305() {
        switch (this.f1903) {
            case 0:
                Parcel obtain = Parcel.obtain();
                obtain.writeInterfaceToken(this.f1905);
                return obtain;
            default:
                Parcel obtain2 = Parcel.obtain();
                obtain2.writeInterfaceToken(this.f1905);
                return obtain2;
        }
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public void m1306(Parcel parcel, int i) {
        Parcel obtain = Parcel.obtain();
        try {
            this.f1904.transact(i, parcel, obtain, 0);
            obtain.readException();
        } finally {
            parcel.recycle();
            obtain.recycle();
        }
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public Parcel m1307() {
        Parcel obtain = Parcel.obtain();
        obtain.writeInterfaceToken(this.f1905);
        return obtain;
    }
}
