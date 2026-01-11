package p035;

import android.os.IInterface;
import android.os.RemoteCallbackList;
import androidx.room.MultiInstanceInvalidationService;

/* renamed from: ʼﾞ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RemoteCallbackListC1225 extends RemoteCallbackList {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ MultiInstanceInvalidationService f4736;

    public RemoteCallbackListC1225(MultiInstanceInvalidationService multiInstanceInvalidationService) {
        this.f4736 = multiInstanceInvalidationService;
    }

    @Override // android.os.RemoteCallbackList
    public final void onCallbackDied(IInterface iInterface, Object obj) {
        this.f4736.f1559.remove((Integer) obj);
    }
}
