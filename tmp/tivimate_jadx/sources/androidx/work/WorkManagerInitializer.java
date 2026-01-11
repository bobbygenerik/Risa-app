package androidx.work;

import android.content.Context;
import java.util.Collections;
import java.util.List;
import p166.InterfaceC2601;
import p262.C3437;
import p322.C3965;
import p322.C3980;

/* loaded from: classes.dex */
public final class WorkManagerInitializer implements InterfaceC2601 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final String f1563 = C3965.m8128("WrkMgrInitializer");

    @Override // p166.InterfaceC2601
    /* renamed from: ⁱˊ */
    public final Object mo412(Context context) {
        C3965.m8127().m8133(f1563, "Initializing WorkManager with default configuration.");
        C3437.m7346(context, new C3980());
        return C3437.m7348(context);
    }

    @Override // p166.InterfaceC2601
    /* renamed from: ﹳٴ */
    public final List mo413() {
        return Collections.EMPTY_LIST;
    }
}
