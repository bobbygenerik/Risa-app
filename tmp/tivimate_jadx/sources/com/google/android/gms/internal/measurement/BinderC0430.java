package com.google.android.gms.internal.measurement;

import android.os.Parcel;

/* renamed from: com.google.android.gms.internal.measurement.ᐧᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class BinderC0430 extends AbstractBinderC0257 implements InterfaceC0381 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ ﹶﾞ.ﹶˎ f2175;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC0430(C0336 c0336, ﹶﾞ.ﹶˎ r2) {
        super("com.google.android.gms.measurement.api.internal.IDynamiteUploadBatchesCallback");
        this.f2175 = r2;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractBinderC0257
    /* renamed from: ʽ */
    public final boolean mo1204(int i, Parcel parcel, Parcel parcel2) {
        if (i != 2) {
            return false;
        }
        mo1567();
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.InterfaceC0381
    /* renamed from: ﹳٴ */
    public final void mo1567() {
        this.f2175.run();
    }
}
