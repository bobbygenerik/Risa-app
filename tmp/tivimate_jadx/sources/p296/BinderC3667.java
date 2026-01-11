package p296;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.internal.play_billing.AbstractBinderC0554;
import p195.AbstractC2888;

/* renamed from: ٴﾞ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class BinderC3667 extends AbstractBinderC0554 {

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public AbstractC3675 f14347;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final int f14348;

    public BinderC3667(AbstractC3675 abstractC3675, int i) {
        super("com.google.android.gms.common.internal.IGmsCallbacks");
        this.f14347 = abstractC3675;
        this.f14348 = i;
    }

    @Override // com.google.android.gms.internal.play_billing.AbstractBinderC0554
    /* renamed from: ᵔי */
    public final boolean mo2131(int i, Parcel parcel, Parcel parcel2) {
        if (i == 1) {
            int readInt = parcel.readInt();
            IBinder readStrongBinder = parcel.readStrongBinder();
            Bundle bundle = (Bundle) AbstractC2888.m6390(parcel, Bundle.CREATOR);
            AbstractC2888.m6389(parcel);
            AbstractC3659.m7683(this.f14347, "onPostInitComplete can be called only once per call to getRemoteService");
            AbstractC3675 abstractC3675 = this.f14347;
            int i2 = this.f14348;
            abstractC3675.getClass();
            C3686 c3686 = new C3686(abstractC3675, readInt, readStrongBinder, bundle);
            HandlerC3677 handlerC3677 = abstractC3675.f14394;
            handlerC3677.sendMessage(handlerC3677.obtainMessage(1, i2, -1, c3686));
            this.f14347 = null;
        } else if (i == 2) {
            parcel.readInt();
            AbstractC2888.m6389(parcel);
            new Exception();
        } else {
            if (i != 3) {
                return false;
            }
            int readInt2 = parcel.readInt();
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            C3680 c3680 = (C3680) AbstractC2888.m6390(parcel, C3680.CREATOR);
            AbstractC2888.m6389(parcel);
            AbstractC3675 abstractC36752 = this.f14347;
            AbstractC3659.m7683(abstractC36752, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
            AbstractC3659.m7687(c3680);
            abstractC36752.f14372 = c3680;
            Bundle bundle2 = c3680.f14403;
            AbstractC3659.m7683(this.f14347, "onPostInitComplete can be called only once per call to getRemoteService");
            AbstractC3675 abstractC36753 = this.f14347;
            int i3 = this.f14348;
            abstractC36753.getClass();
            C3686 c36862 = new C3686(abstractC36753, readInt2, readStrongBinder2, bundle2);
            HandlerC3677 handlerC36772 = abstractC36753.f14394;
            handlerC36772.sendMessage(handlerC36772.obtainMessage(1, i3, -1, c36862));
            this.f14347 = null;
        }
        parcel2.writeNoException();
        return true;
    }
}
