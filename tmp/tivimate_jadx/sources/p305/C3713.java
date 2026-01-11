package p305;

import android.os.Handler;
import android.os.Message;
import ar.tvplayer.core.domain.ʽﹳ;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
import p055.C1447;

/* renamed from: ᐧˎ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C3713 implements Handler.Callback {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ ˉʿ f14484;

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        ˉʿ r8 = this.f14484;
        Iterator it = ((CopyOnWriteArraySet) r8.ﾞᴵ).iterator();
        while (it.hasNext()) {
            C3733 c3733 = (C3733) it.next();
            InterfaceC3725 interfaceC3725 = (InterfaceC3725) r8.ˑﹳ;
            if (!c3733.f14536 && c3733.f14535) {
                C1447 c1447 = c3733.f14537.ʽ();
                c3733.f14537 = new ʽﹳ(4);
                c3733.f14535 = false;
                interfaceC3725.mo2820(c3733.f14538, c1447);
            }
            if (((C3711) r8.ˈ).f14471.hasMessages(1)) {
                break;
            }
        }
        return true;
    }
}
