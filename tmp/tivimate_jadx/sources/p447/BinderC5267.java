package p447;

import android.os.Parcel;
import com.google.android.gms.internal.measurement.AbstractBinderC0257;
import com.google.android.gms.internal.measurement.AbstractC0472;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: ﹶﾞ.ˊﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class BinderC5267 extends AbstractBinderC0257 implements InterfaceC5305 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ AtomicReference f19885;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC5267(C5240 c5240, AtomicReference atomicReference) {
        super("com.google.android.gms.measurement.internal.ITriggerUrisCallback");
        this.f19885 = atomicReference;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractBinderC0257
    /* renamed from: ʽ */
    public final boolean mo1204(int i, Parcel parcel, Parcel parcel2) {
        if (i != 2) {
            return false;
        }
        ArrayList createTypedArrayList = parcel.createTypedArrayList(C5272.CREATOR);
        AbstractC0472.m1910(parcel);
        mo10455(createTypedArrayList);
        return true;
    }

    @Override // p447.InterfaceC5305
    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void mo10455(List list) {
        AtomicReference atomicReference = this.f19885;
        synchronized (atomicReference) {
            atomicReference.set(list);
            atomicReference.notifyAll();
        }
    }
}
