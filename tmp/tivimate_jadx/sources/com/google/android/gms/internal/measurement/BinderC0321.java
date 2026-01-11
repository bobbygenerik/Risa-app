package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import p313.C3884;

/* renamed from: com.google.android.gms.internal.measurement.ˈˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class BinderC0321 extends AbstractBinderC0257 implements InterfaceC0342 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3884 f1966;

    public BinderC0321(C3884 c3884) {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
        this.f1966 = c3884;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractBinderC0257
    /* renamed from: ʽ */
    public final boolean mo1204(int i, Parcel parcel, Parcel parcel2) {
        if (i != 1) {
            if (i != 2) {
                return false;
            }
            int identityHashCode = System.identityHashCode(this.f1966);
            parcel2.writeNoException();
            parcel2.writeInt(identityHashCode);
            return true;
        }
        String readString = parcel.readString();
        String readString2 = parcel.readString();
        Bundle bundle = (Bundle) AbstractC0472.m1912(parcel, Bundle.CREATOR);
        long readLong = parcel.readLong();
        AbstractC0472.m1910(parcel);
        mo1568(readLong, bundle, readString, readString2);
        parcel2.writeNoException();
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0342
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void mo1568(long j, Bundle bundle, String str, String str2) {
        this.f1966.mo8074(j, bundle, str, str2);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0342
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int mo1569() {
        return System.identityHashCode(this.f1966);
    }
}
