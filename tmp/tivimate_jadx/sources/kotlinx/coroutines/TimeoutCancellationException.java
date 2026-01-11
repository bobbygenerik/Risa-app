package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import p324.InterfaceC4036;

/* loaded from: classes.dex */
public final class TimeoutCancellationException extends CancellationException {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final transient InterfaceC4036 f3108;

    public TimeoutCancellationException(String str, InterfaceC4036 interfaceC4036) {
        super(str);
        this.f3108 = interfaceC4036;
    }
}
