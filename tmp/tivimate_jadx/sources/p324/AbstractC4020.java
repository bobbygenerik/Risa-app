package p324;

import p430.C5109;

/* renamed from: ᴵי.ˑٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC4020 extends AbstractC4017 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f15398;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C5109 f15399;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public long f15400;

    public abstract void shutdown();

    /* renamed from: ʼـ */
    public abstract Thread mo8146();

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public final boolean m8200() {
        C5109 c5109 = this.f15399;
        if (c5109 == null) {
            return false;
        }
        AbstractC4037 abstractC4037 = (AbstractC4037) (c5109.isEmpty() ? null : c5109.removeFirst());
        if (abstractC4037 == null) {
            return false;
        }
        abstractC4037.run();
        return true;
    }

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public final void m8201(boolean z) {
        long j = this.f15400 - (z ? 4294967296L : 1L);
        this.f15400 = j;
        if (j <= 0 && this.f15398) {
            shutdown();
        }
    }

    /* renamed from: ʾﾞ */
    public void mo8147(long j, AbstractRunnableC4003 abstractRunnableC4003) {
        RunnableC3990.f15359.m8197(j, abstractRunnableC4003);
    }

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public final void m8202(boolean z) {
        this.f15400 = (z ? 4294967296L : 1L) + this.f15400;
        if (z) {
            return;
        }
        this.f15398 = true;
    }

    /* renamed from: ˑ, reason: contains not printable characters */
    public final void m8203(AbstractC4037 abstractC4037) {
        C5109 c5109 = this.f15399;
        if (c5109 == null) {
            c5109 = new C5109();
            this.f15399 = c5109;
        }
        c5109.addLast(abstractC4037);
    }

    /* renamed from: יﹳ */
    public abstract long mo8194();
}
