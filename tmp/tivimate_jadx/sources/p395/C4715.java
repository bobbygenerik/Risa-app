package p395;

import com.parse.ˊﾞ;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import p000.RunnableC0761;
import p305.AbstractC3712;
import p420.C4987;

/* renamed from: ⁱᴵ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4715 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final CopyOnWriteArrayList f17808;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4987 f17809;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f17810;

    public C4715(CopyOnWriteArrayList copyOnWriteArrayList, int i, C4987 c4987) {
        this.f17808 = copyOnWriteArrayList;
        this.f17810 = i;
        this.f17809 = c4987;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m9454(int i) {
        Iterator it = this.f17808.iterator();
        while (it.hasNext()) {
            C4729 c4729 = (C4729) it.next();
            AbstractC3712.m7794(c4729.f17876, new RunnableC0761(this, c4729.f17875, i, 3));
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m9455(Exception exc) {
        Iterator it = this.f17808.iterator();
        while (it.hasNext()) {
            C4729 c4729 = (C4729) it.next();
            AbstractC3712.m7794(c4729.f17876, new ˊﾞ(this, c4729.f17875, exc, 14));
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [ⁱᴵ.ˆʾ, java.lang.Object] */
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m9456() {
        Iterator it = this.f17808.iterator();
        while (it.hasNext()) {
            C4729 c4729 = (C4729) it.next();
            AbstractC3712.m7794(c4729.f17876, new RunnableC4727(this, c4729.f17875, 0));
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [ⁱᴵ.ˆʾ, java.lang.Object] */
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9457() {
        Iterator it = this.f17808.iterator();
        while (it.hasNext()) {
            C4729 c4729 = (C4729) it.next();
            AbstractC3712.m7794(c4729.f17876, new RunnableC4727(this, c4729.f17875, 1));
        }
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [ⁱᴵ.ˆʾ, java.lang.Object] */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9458() {
        Iterator it = this.f17808.iterator();
        while (it.hasNext()) {
            C4729 c4729 = (C4729) it.next();
            AbstractC3712.m7794(c4729.f17876, new RunnableC4727(this, c4729.f17875, 2));
        }
    }
}
