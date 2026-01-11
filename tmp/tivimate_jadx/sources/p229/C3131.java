package p229;

import androidx.lifecycle.RunnableC0197;
import java.util.ArrayList;
import java.util.concurrent.CopyOnWriteArrayList;
import p152.C2440;

/* renamed from: ˑʼ.ᵔٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3131 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C2440 f11962;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ C3085 f11963;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public boolean f11965 = false;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f11964 = new CopyOnWriteArrayList();

    public C3131(C3085 c3085) {
        this.f11963 = c3085;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m6863() {
        boolean m6654 = C3085.m6654(3);
        C3085 c3085 = this.f11963;
        if (m6654) {
            String str = "handleOnBackCancelled. PREDICTIVE_BACK = true fragment manager " + c3085;
        }
        if (C3085.m6654(3)) {
            String str2 = "cancelBackStackTransition for transition " + c3085.f11756;
        }
        C3137 c3137 = c3085.f11756;
        if (c3137 != null) {
            c3137.f12004 = false;
            c3137.m6884();
            C3137 c31372 = c3085.f11756;
            RunnableC0197 runnableC0197 = new RunnableC0197(26, c3085);
            if (c31372.f12009 == null) {
                c31372.f12009 = new ArrayList();
            }
            c31372.f12009.add(runnableC0197);
            c3085.f11756.m6890();
            c3085.f11723 = true;
            c3085.m6664(true);
            c3085.m6678();
            c3085.f11723 = false;
            c3085.f11756 = null;
        }
    }
}
