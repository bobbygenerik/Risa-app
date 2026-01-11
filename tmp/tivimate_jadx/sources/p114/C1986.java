package p114;

import android.os.OutcomeReceiver;
import java.util.concurrent.atomic.AtomicBoolean;
import p013.C0922;
import p324.C4030;

/* renamed from: ˆﾞ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1986 extends AtomicBoolean implements OutcomeReceiver {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C4030 f7847;

    public C1986(C4030 c4030) {
        super(false);
        this.f7847 = c4030;
    }

    public final void onError(Throwable th) {
        if (compareAndSet(false, true)) {
            this.f7847.mo3549(new C0922(th));
        }
    }

    public final void onResult(Object obj) {
        if (compareAndSet(false, true)) {
            this.f7847.mo3549(obj);
        }
    }

    @Override // java.util.concurrent.atomic.AtomicBoolean
    public final String toString() {
        return "ContinuationOutcomeReceiver(outcomeReceived = " + get() + ')';
    }
}
