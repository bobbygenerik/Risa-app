package p364;

import android.os.Looper;
import android.os.SystemClock;
import androidx.leanback.widget.RunnableC0142;
import java.io.IOException;
import p022.C1047;
import p281.ExecutorC3561;
import p305.AbstractC3731;

/* renamed from: ᵔⁱ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4441 implements InterfaceC4442 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public IOException f16593;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ExecutorC3561 f16594;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public HandlerC4439 f16595;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public static final C1047 f16590 = new C1047(-9223372036854775807L, false, 0);

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public static final C1047 f16592 = new C1047(-9223372036854775807L, false, 2);

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public static final C1047 f16591 = new C1047(-9223372036854775807L, false, 3);

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Type inference failed for: r0v3, types: [ـﹶ.ʾᵎ, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C4441(java.lang.String r3) {
        /*
            r2 = this;
            java.lang.String r0 = "ExoPlayer:Loader:"
            java.lang.String r3 = p035.AbstractC1220.m3771(r0, r3)
            java.lang.String r0 = p305.AbstractC3712.f14481
            ـﹶ.ﹳٴ r0 = new ـﹶ.ﹳٴ
            r1 = 1
            r0.<init>(r1, r3)
            java.util.concurrent.ExecutorService r3 = java.util.concurrent.Executors.newSingleThreadExecutor(r0)
            ـﹶ.ʾᵎ r0 = new ـﹶ.ʾᵎ
            r0.<init>()
            ٴʿ.ﹳٴ r1 = new ٴʿ.ﹳٴ
            r1.<init>(r3, r0)
            r2.<init>(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p364.C4441.<init>(java.lang.String):void");
    }

    public C4441(ExecutorC3561 executorC3561) {
        this.f16594 = executorC3561;
    }

    @Override // p364.InterfaceC4442
    /* renamed from: ʽ */
    public final void mo7443() {
        IOException iOException = this.f16593;
        if (iOException != null) {
            throw iOException;
        }
        HandlerC4439 handlerC4439 = this.f16595;
        if (handlerC4439 != null) {
            int i = handlerC4439.f16581;
            IOException iOException2 = handlerC4439.f16588;
            if (iOException2 != null && handlerC4439.f16584 > i) {
                throw iOException2;
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean m8979() {
        return this.f16595 != null;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m8980(InterfaceC4453 interfaceC4453) {
        HandlerC4439 handlerC4439 = this.f16595;
        if (handlerC4439 != null) {
            handlerC4439.m8978(true);
        }
        ExecutorC3561 executorC3561 = this.f16594;
        if (interfaceC4453 != null) {
            executorC3561.execute(new RunnableC0142(27, interfaceC4453));
        }
        executorC3561.f13919.accept(executorC3561.f13918);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m8981() {
        return this.f16593 != null;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8982() {
        HandlerC4439 handlerC4439 = this.f16595;
        AbstractC3731.m7868(handlerC4439);
        handlerC4439.m8978(false);
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m8983(InterfaceC4445 interfaceC4445, InterfaceC4436 interfaceC4436, int i) {
        Looper myLooper = Looper.myLooper();
        AbstractC3731.m7868(myLooper);
        this.f16593 = null;
        HandlerC4439 handlerC4439 = new HandlerC4439(this, myLooper, interfaceC4445, interfaceC4436, i, SystemClock.elapsedRealtime());
        AbstractC3731.m7857(this.f16595 == null);
        this.f16595 = handlerC4439;
        handlerC4439.m8977();
    }
}
