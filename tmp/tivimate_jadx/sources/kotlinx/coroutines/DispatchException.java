package kotlinx.coroutines;

import p126.InterfaceC2139;
import p324.AbstractC4017;

/* loaded from: classes.dex */
public final class DispatchException extends Exception {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Throwable f3106;

    public DispatchException(Throwable th, AbstractC4017 abstractC4017, InterfaceC2139 interfaceC2139) {
        super("Coroutine dispatcher " + abstractC4017 + " threw an exception, context = " + interfaceC2139, th);
        this.f3106 = th;
    }

    @Override // java.lang.Throwable
    public final Throwable getCause() {
        return this.f3106;
    }
}
