package kotlinx.coroutines.internal;

import p126.InterfaceC2139;

/* loaded from: classes.dex */
public final class DiagnosticCoroutineContextException extends RuntimeException {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final transient InterfaceC2139 f3110;

    public DiagnosticCoroutineContextException(InterfaceC2139 interfaceC2139) {
        this.f3110 = interfaceC2139;
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public final String getLocalizedMessage() {
        return String.valueOf(this.f3110);
    }
}
