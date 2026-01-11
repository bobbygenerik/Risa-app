package p447;

import j$.util.Objects;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5216 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC5237 f19592;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19593 = 0;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ long f19594;

    public RunnableC5216(C5298 c5298, long j) {
        this.f19594 = j;
        Objects.requireNonNull(c5298);
        this.f19592 = c5298;
    }

    public RunnableC5216(C5356 c5356, long j) {
        this.f19594 = j;
        Objects.requireNonNull(c5356);
        this.f19592 = c5356;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f19593) {
            case 0:
                ((C5298) this.f19592).m10502(this.f19594);
                return;
            default:
                C5356 c5356 = (C5356) this.f19592;
                C5298 c5298 = ((C5322) ((ᵎﹶ) c5356).ʾˋ).f20210;
                C5322.m10558(c5298);
                c5298.m10499(this.f19594);
                c5356.f20389 = null;
                return;
        }
    }
}
