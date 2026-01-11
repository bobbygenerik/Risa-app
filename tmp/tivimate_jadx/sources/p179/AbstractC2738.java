package p179;

import j$.util.DesugarCollections;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import p404.C4790;
import ˉˆ.ʿ;

/* renamed from: ˋˋ.ᵔﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2738 extends AbstractC2727 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2672 f10454;

    public AbstractC2738(AbstractC2741 abstractC2741) {
        C2674 c2674 = new C2674(this);
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
        C2672 c2672 = new C2672(r2, new C4790(AbstractC2741.f10461, abstractC2741, 20, false));
        this.f10454 = c2672;
        c2672.f10167.add(c2674);
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m6134(List list, boolean z) {
        List list2;
        C2672 c2672 = this.f10454;
        ʿ r0 = c2672.f10171;
        int i = c2672.f10169 + 1;
        c2672.f10169 = i;
        List list3 = c2672.f10168;
        if (list != list3) {
            if (z && list != null) {
                c2672.f10168 = list;
                c2672.f10172 = DesugarCollections.unmodifiableList(list);
                c2672.m6003();
            } else if (list == null) {
                int size = list3.size();
                c2672.f10168 = null;
                c2672.f10172 = Collections.EMPTY_LIST;
                r0.ʼˎ(0, size);
                c2672.m6003();
            } else {
                if (list3 != null) {
                    list2 = list;
                    ((Executor) c2672.f10170.f18036).execute(new RunnableC2708(c2672, list3, list2, i, 1));
                    if (z || list2 == null) {
                    }
                    m6118();
                    return;
                }
                c2672.f10168 = list;
                c2672.f10172 = DesugarCollections.unmodifiableList(list);
                r0.ᵢˏ(0, list.size());
                c2672.m6003();
            }
        }
        list2 = list;
        if (z) {
        }
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final Object m6135(int i) {
        return this.f10454.f10172.get(i);
    }

    @Override // p179.AbstractC2727
    /* renamed from: ﹳٴ */
    public final int mo611() {
        return this.f10454.f10172.size();
    }
}
