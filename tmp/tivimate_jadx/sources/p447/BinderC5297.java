package p447;

import android.os.Parcel;
import com.google.android.gms.internal.measurement.AbstractBinderC0257;
import com.google.android.gms.internal.measurement.AbstractC0472;
import java.util.concurrent.atomic.AtomicReference;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ـʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class BinderC5297 extends AbstractBinderC0257 implements InterfaceC5329 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ AtomicReference f19976;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ C5240 f19977;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BinderC5297(C5240 c5240, AtomicReference atomicReference) {
        super("com.google.android.gms.measurement.internal.IUploadBatchesCallback");
        this.f19976 = atomicReference;
        this.f19977 = c5240;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractBinderC0257
    /* renamed from: ʽ */
    public final boolean mo1204(int i, Parcel parcel, Parcel parcel2) {
        if (i != 2) {
            return false;
        }
        C5340 c5340 = (C5340) AbstractC0472.m1912(parcel, C5340.CREATOR);
        AbstractC0472.m1910(parcel);
        mo10496(c5340);
        return true;
    }

    @Override // p447.InterfaceC5329
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo10496(C5340 c5340) {
        AtomicReference atomicReference = this.f19976;
        synchronized (atomicReference) {
            C5344 c5344 = ((C5322) ((ᵎﹶ) this.f19977).ʾˋ).f20193;
            C5322.m10556(c5344);
            c5344.f20350.m10216(Integer.valueOf(c5340.f20320.size()), "[sgtm] Got upload batches from service. count");
            atomicReference.set(c5340);
            atomicReference.notifyAll();
        }
    }
}
