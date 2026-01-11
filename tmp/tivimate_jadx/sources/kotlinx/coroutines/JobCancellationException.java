package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import p152.AbstractC2444;
import p324.C4031;
import p324.C4034;
import p324.InterfaceC4036;

/* loaded from: classes.dex */
public final class JobCancellationException extends CancellationException {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final transient InterfaceC4036 f3107;

    public JobCancellationException(String str, Throwable th, C4031 c4031) {
        super(str);
        this.f3107 = c4031;
        if (th != null) {
            initCause(th);
        }
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof JobCancellationException)) {
            return false;
        }
        JobCancellationException jobCancellationException = (JobCancellationException) obj;
        if (!AbstractC2444.m5562(jobCancellationException.getMessage(), getMessage())) {
            return false;
        }
        Object obj2 = jobCancellationException.f3107;
        if (obj2 == null) {
            obj2 = C4034.f15423;
        }
        Object obj3 = this.f3107;
        if (obj3 == null) {
            obj3 = C4034.f15423;
        }
        return obj2.equals(obj3) && AbstractC2444.m5562(jobCancellationException.getCause(), getCause());
    }

    @Override // java.lang.Throwable
    public final Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public final int hashCode() {
        int hashCode = getMessage().hashCode() * 31;
        Object obj = this.f3107;
        if (obj == null) {
            obj = C4034.f15423;
        }
        int hashCode2 = (obj.hashCode() + hashCode) * 31;
        Throwable cause = getCause();
        return hashCode2 + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(super.toString());
        sb.append("; job=");
        Object obj = this.f3107;
        if (obj == null) {
            obj = C4034.f15423;
        }
        sb.append(obj);
        return sb.toString();
    }
}
