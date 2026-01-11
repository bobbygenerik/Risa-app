package p035;

import android.os.Looper;
import androidx.lifecycle.RunnableC0197;
import java.util.Set;
import p028.C1118;

/* renamed from: ʼﾞ.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1240 extends AbstractC1200 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C1229 f4819;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1240(String[] strArr, C1229 c1229) {
        super(strArr);
        this.f4819 = c1229;
    }

    @Override // p035.AbstractC1200
    /* renamed from: ﹳٴ */
    public final void mo3732(Set set) {
        C1118 m3545 = C1118.m3545();
        RunnableC0197 runnableC0197 = new RunnableC0197(8, this.f4819);
        m3545.f4374.getClass();
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            runnableC0197.run();
        } else {
            m3545.m3546(runnableC0197);
        }
    }
}
