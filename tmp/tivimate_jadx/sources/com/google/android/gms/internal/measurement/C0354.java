package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;

/* renamed from: com.google.android.gms.internal.measurement.ˋᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0354 extends AbstractC0292 implements InterfaceC0342 {
    public C0354(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.measurement.api.internal.IEventHandlerProxy", 0);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0342
    /* renamed from: ʽﹳ */
    public final void mo1568(long j, Bundle bundle, String str, String str2) {
        Parcel m1305 = m1305();
        m1305.writeString(str);
        m1305.writeString(str2);
        AbstractC0472.m1911(m1305, bundle);
        m1305.writeLong(j);
        m1306(m1305, 1);
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0342
    /* renamed from: ﾞᴵ */
    public final int mo1569() {
        Parcel m1303 = m1303(m1305(), 2);
        int readInt = m1303.readInt();
        m1303.recycle();
        return readInt;
    }
}
