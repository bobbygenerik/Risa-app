package p447;

import j$.util.Objects;

/* renamed from: ﹶﾞ.ٴʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5306 implements Runnable {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f20006;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C5356 f20007;

    public RunnableC5306(C5356 c5356, int i) {
        this.f20006 = i;
        switch (i) {
            case 1:
                Objects.requireNonNull(c5356);
                this.f20007 = c5356;
                return;
            default:
                Objects.requireNonNull(c5356);
                this.f20007 = c5356;
                return;
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f20006) {
            case 0:
                C5356 c5356 = this.f20007;
                c5356.f20389 = c5356.f20387;
                return;
            default:
                this.f20007.f20387 = null;
                return;
        }
    }
}
