package p131;

import com.google.android.gms.internal.measurement.ᵎ;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import p220.C3029;
import p411.CallableC4900;
import ʻʿ.ˈ;

/* renamed from: ˈᵔ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ExecutorC2193 implements Executor {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ExecutorService f8647;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f8648 = new Object();

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C3029 f8646 = ᵎ.ᵔᵢ((Object) null);

    public ExecutorC2193(ExecutorService executorService) {
        this.f8647 = executorService;
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f8647.execute(runnable);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3029 m5192(CallableC4900 callableC4900) {
        C3029 m6561;
        synchronized (this.f8648) {
            m6561 = this.f8646.m6561(this.f8647, new ˈ(19, callableC4900));
            this.f8646 = m6561;
        }
        return m6561;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3029 m5193(Runnable runnable) {
        C3029 m6561;
        synchronized (this.f8648) {
            m6561 = this.f8646.m6561(this.f8647, new ˈ(20, runnable));
            this.f8646 = m6561;
        }
        return m6561;
    }
}
