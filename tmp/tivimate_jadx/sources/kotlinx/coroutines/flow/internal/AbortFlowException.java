package kotlinx.coroutines.flow.internal;

import java.util.concurrent.CancellationException;
import p340.InterfaceC4256;

/* loaded from: classes.dex */
public final class AbortFlowException extends CancellationException {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final transient Object f3109;

    public AbortFlowException(InterfaceC4256 interfaceC4256) {
        super("Flow was aborted, no more elements needed");
        this.f3109 = interfaceC4256;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
