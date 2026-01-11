package p324;

import java.util.concurrent.ScheduledFuture;

/* renamed from: ᴵי.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4012 implements InterfaceC4041 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ScheduledFuture f15393;

    public C4012(ScheduledFuture scheduledFuture) {
        this.f15393 = scheduledFuture;
    }

    public final String toString() {
        return "DisposableFutureHandle[" + this.f15393 + ']';
    }

    @Override // p324.InterfaceC4041
    /* renamed from: ﹳٴ */
    public final void mo4747() {
        this.f15393.cancel(false);
    }
}
