package p328;

import android.view.Choreographer;
import java.util.ArrayList;

/* renamed from: ᴵᵔ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ChoreographerFrameCallbackC4080 implements Choreographer.FrameCallback {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C4065 f15549;

    public ChoreographerFrameCallbackC4080(C4065 c4065) {
        this.f15549 = c4065;
    }

    @Override // android.view.Choreographer.FrameCallback
    public final void doFrame(long j) {
        long j2 = j / 1000000;
        C4065 c4065 = this.f15549;
        ArrayList arrayList = c4065.f15468;
        for (int i = 0; i < arrayList.size(); i++) {
            InterfaceC4081 interfaceC4081 = (InterfaceC4081) arrayList.get(i);
            if (interfaceC4081 != null) {
                interfaceC4081.mo8309(j2);
            }
        }
        if (c4065.f15467) {
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (arrayList.get(size) == null) {
                    arrayList.remove(size);
                }
            }
            c4065.f15467 = false;
        }
        if (arrayList.size() > 0) {
            ChoreographerFrameCallbackC4080 choreographerFrameCallbackC4080 = c4065.f15469;
            choreographerFrameCallbackC4080.getClass();
            Choreographer.getInstance().postFrameCallback(choreographerFrameCallbackC4080);
        }
    }
}
