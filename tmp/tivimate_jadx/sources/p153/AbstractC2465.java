package p153;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* renamed from: ˊʽ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2465 {
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9428 = AtomicReferenceFieldUpdater.newUpdater(AbstractC2465.class, Object.class, "_next$volatile");

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final /* synthetic */ AtomicReferenceFieldUpdater f9427 = AtomicReferenceFieldUpdater.newUpdater(AbstractC2465.class, Object.class, "_prev$volatile");

    public AbstractC2465(AbstractC2483 abstractC2483) {
        this._prev$volatile = abstractC2483;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final AbstractC2465 m5587() {
        Object obj = f9428.get(this);
        if (obj == AbstractC2481.f9468) {
            return null;
        }
        return (AbstractC2465) obj;
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public abstract boolean mo5588();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m5589() {
        AbstractC2465 m5587;
        if (m5587() == null) {
            return;
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = f9427;
            AbstractC2465 abstractC2465 = (AbstractC2465) atomicReferenceFieldUpdater.get(this);
            while (abstractC2465 != null && abstractC2465.mo5588()) {
                abstractC2465 = (AbstractC2465) atomicReferenceFieldUpdater.get(abstractC2465);
            }
            AbstractC2465 m55872 = m5587();
            while (m55872.mo5588() && (m5587 = m55872.m5587()) != null) {
                m55872 = m5587;
            }
            while (true) {
                Object obj = atomicReferenceFieldUpdater.get(m55872);
                AbstractC2465 abstractC24652 = ((AbstractC2465) obj) == null ? null : abstractC2465;
                while (!atomicReferenceFieldUpdater.compareAndSet(m55872, obj, abstractC24652)) {
                    if (atomicReferenceFieldUpdater.get(m55872) != obj) {
                        break;
                    }
                }
            }
            if (abstractC2465 != null) {
                f9428.set(abstractC2465, m55872);
            }
            if (!m55872.mo5588() || m55872.m5587() == null) {
                if (abstractC2465 == null || !abstractC2465.mo5588()) {
                    return;
                }
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5590() {
        f9427.set(this, null);
    }
}
