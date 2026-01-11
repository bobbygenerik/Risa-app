package okhttp3.internal.platform;

import android.content.Context;
import java.util.List;
import p166.InterfaceC2601;
import p271.AbstractC3480;
import p271.InterfaceC3479;
import p430.C5097;

/* loaded from: classes.dex */
public final class PlatformInitializer implements InterfaceC2601 {
    @Override // p166.InterfaceC2601
    /* renamed from: ⁱˊ */
    public final Object mo412(Context context) {
        AbstractC3480 abstractC3480 = AbstractC3480.f13658;
        Object obj = AbstractC3480.f13658;
        InterfaceC3479 interfaceC3479 = obj != null ? (InterfaceC3479) obj : null;
        if (interfaceC3479 != null) {
            interfaceC3479.mo7407(context);
        }
        return AbstractC3480.f13658;
    }

    @Override // p166.InterfaceC2601
    /* renamed from: ﹳٴ */
    public final List mo413() {
        return C5097.f19202;
    }
}
