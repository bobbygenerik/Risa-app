package p080;

import android.os.Handler;
import android.os.Message;
import p137.AbstractC2305;

/* renamed from: ʿʾ.ʽʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1691 implements Handler.Callback {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f6877;

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        switch (this.f6877) {
            case 0:
                if (message.what != 1) {
                    return false;
                }
                ((InterfaceC1710) message.obj).mo4404();
                return true;
            default:
                int i = message.what;
                if (i == 0) {
                    throw AbstractC2305.m5368(message.obj);
                }
                if (i != 1) {
                    return false;
                }
                throw AbstractC2305.m5368(message.obj);
        }
    }
}
