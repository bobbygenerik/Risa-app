package p179;

import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import p404.C4790;
import ˉˆ.ʿ;

/* renamed from: ˋˋ.ˈʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2690 extends AbstractC2727 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2733 f10253;

    public AbstractC2690(AbstractC2741 abstractC2741) {
        C2736 c2736 = new C2736(this);
        ʿ r2 = new ʿ(8, this);
        synchronized (AbstractC2741.f10462) {
            try {
                if (AbstractC2741.f10461 == null) {
                    AbstractC2741.f10461 = Executors.newFixedThreadPool(2);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        C2733 c2733 = new C2733(r2, new C4790(AbstractC2741.f10461, abstractC2741, 20, false));
        this.f10253 = c2733;
        c2733.f10433.add(c2736);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m6046(List list) {
        C2733 c2733 = this.f10253;
        ʿ r0 = c2733.f10437;
        int i = c2733.f10435 + 1;
        c2733.f10435 = i;
        List list2 = c2733.f10434;
        if (list == list2) {
            return;
        }
        if (list == null) {
            int size = list2.size();
            c2733.f10434 = null;
            c2733.f10438 = Collections.EMPTY_LIST;
            r0.ʼˎ(0, size);
            c2733.m6132();
            return;
        }
        if (list2 != null) {
            ((Executor) c2733.f10436.f18036).execute(new RunnableC2708(c2733, list2, list, i, 0));
            return;
        }
        c2733.f10434 = list;
        c2733.f10438 = DesugarCollections.unmodifiableList(list);
        r0.ᵢˏ(0, list.size());
        c2733.m6132();
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final Object m6047(int i) {
        return this.f10253.f10438.get(i);
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﹳٴ */
    public final int mo611() {
        return this.f10253.f10438.size();
    }
}
