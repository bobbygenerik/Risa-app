package p447;

import android.os.Handler;
import com.google.android.gms.internal.measurement.HandlerC0337;
import p179.RunnableC2689;
import p296.AbstractC3659;

/* renamed from: ﹶﾞ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5328 {

    /* renamed from: ˈ, reason: contains not printable characters */
    public static volatile HandlerC0337 f20226;

    /* renamed from: ʽ, reason: contains not printable characters */
    public volatile long f20227;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final RunnableC2689 f20228;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC5296 f20229;

    public AbstractC5328(InterfaceC5296 interfaceC5296) {
        AbstractC3659.m7687(interfaceC5296);
        this.f20229 = interfaceC5296;
        this.f20228 = new RunnableC2689(this, 26, interfaceC5296);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m10586() {
        this.f20227 = 0L;
        m10587().removeCallbacks(this.f20228);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Handler m10587() {
        HandlerC0337 handlerC0337;
        if (f20226 != null) {
            return f20226;
        }
        synchronized (AbstractC5328.class) {
            try {
                if (f20226 == null) {
                    f20226 = new HandlerC0337(this.f20229.mo10492().getMainLooper(), 0);
                }
                handlerC0337 = f20226;
            } catch (Throwable th) {
                throw th;
            }
        }
        return handlerC0337;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m10588(long j) {
        m10586();
        if (j >= 0) {
            InterfaceC5296 interfaceC5296 = this.f20229;
            interfaceC5296.mo10493().getClass();
            this.f20227 = System.currentTimeMillis();
            if (m10587().postDelayed(this.f20228, j)) {
                return;
            }
            interfaceC5296.mo10494().f20343.m10216(Long.valueOf(j), "Failed to schedule delayed post. time");
        }
    }

    /* renamed from: ﹳٴ */
    public abstract void mo10248();
}
