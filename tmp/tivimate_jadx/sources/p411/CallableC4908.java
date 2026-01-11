package p411;

import android.os.Bundle;
import java.util.concurrent.Callable;

/* renamed from: ﹳˎ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class CallableC4908 implements Callable {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ C4894 f18323;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ long f18324;

    public CallableC4908(C4894 c4894, long j) {
        this.f18323 = c4894;
        this.f18324 = j;
    }

    @Override // java.util.concurrent.Callable
    public final Object call() {
        Bundle bundle = new Bundle();
        bundle.putInt("fatal", 1);
        bundle.putLong("timestamp", this.f18324);
        this.f18323.f18255.mo6380(bundle);
        return null;
    }
}
