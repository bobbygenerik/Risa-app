package p447;

import android.os.Bundle;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicReference;
import ʽⁱ.ᵎﹶ;
import ʿי.ˎᐧ;

/* renamed from: ﹶﾞ.ٴᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5307 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C5253 f20008;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f20009;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ AtomicReference f20010;

    public RunnableC5307(C5253 c5253, AtomicReference atomicReference, int i) {
        this.f20009 = i;
        switch (i) {
            case 1:
                this.f20010 = atomicReference;
                Objects.requireNonNull(c5253);
                this.f20008 = c5253;
                return;
            case 2:
                this.f20010 = atomicReference;
                Objects.requireNonNull(c5253);
                this.f20008 = c5253;
                return;
            case 3:
                this.f20010 = atomicReference;
                Objects.requireNonNull(c5253);
                this.f20008 = c5253;
                return;
            case 4:
                this.f20010 = atomicReference;
                Objects.requireNonNull(c5253);
                this.f20008 = c5253;
                return;
            default:
                this.f20010 = atomicReference;
                Objects.requireNonNull(c5253);
                this.f20008 = c5253;
                return;
        }
    }

    public /* synthetic */ RunnableC5307(C5253 c5253, AtomicReference atomicReference, int i, boolean z) {
        this.f20009 = i;
        this.f20008 = c5253;
        this.f20010 = atomicReference;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    private final void m10521() {
        AtomicReference atomicReference = this.f20010;
        synchronized (atomicReference) {
            try {
                try {
                    C5322 c5322 = (C5322) ((ᵎﹶ) this.f20008).ʾˋ;
                    atomicReference.set(Integer.valueOf(c5322.f20189.m10576(c5322.m10566().m10361(), AbstractC5321.f20145)));
                } finally {
                    this.f20010.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    private final void m10522() {
        AtomicReference atomicReference = this.f20010;
        synchronized (atomicReference) {
            try {
                try {
                    C5322 c5322 = (C5322) ((ᵎﹶ) this.f20008).ʾˋ;
                    atomicReference.set(Double.valueOf(c5322.f20189.m10578(c5322.m10566().m10361(), AbstractC5321.f20069)));
                } finally {
                    this.f20010.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    private final void m10523() {
        AtomicReference atomicReference = this.f20010;
        synchronized (atomicReference) {
            try {
                try {
                    C5322 c5322 = (C5322) ((ᵎﹶ) this.f20008).ʾˋ;
                    atomicReference.set(Long.valueOf(c5322.f20189.m10573(c5322.m10566().m10361(), AbstractC5321.f20117)));
                } finally {
                    this.f20010.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    private final void m10524() {
        AtomicReference atomicReference = this.f20010;
        synchronized (atomicReference) {
            try {
                try {
                    C5322 c5322 = (C5322) ((ᵎﹶ) this.f20008).ʾˋ;
                    atomicReference.set(c5322.f20189.m10585(c5322.m10566().m10361(), AbstractC5321.f20142));
                } finally {
                    this.f20010.notify();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f20009) {
            case 0:
                AtomicReference atomicReference = this.f20010;
                synchronized (atomicReference) {
                    try {
                        try {
                            C5322 c5322 = (C5322) ((ᵎﹶ) this.f20008).ʾˋ;
                            atomicReference.set(Boolean.valueOf(c5322.f20189.m10577(c5322.m10566().m10361(), AbstractC5321.f20144)));
                        } finally {
                            this.f20010.notify();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                return;
            case 1:
                m10524();
                return;
            case 2:
                m10523();
                return;
            case 3:
                m10521();
                return;
            case 4:
                m10522();
                return;
            case 5:
                C5253 c5253 = this.f20008;
                C5313 c5313 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).f20205;
                C5322.m10560(c5313);
                Bundle bundle = c5313.f20042.ʼᐧ();
                C5240 m10569 = ((C5322) ((ᵎﹶ) c5253).ʾˋ).m10569();
                AtomicReference atomicReference2 = this.f20010;
                m10569.m10252();
                m10569.m10526();
                m10569.m10306(new ˎᐧ(m10569, atomicReference2, m10569.m10302(false), bundle, 10));
                return;
            default:
                C5240 m105692 = ((C5322) ((ᵎﹶ) this.f20008).ʾˋ).m10569();
                C5230 m10249 = C5230.m10249(EnumC5270.f19901);
                AtomicReference atomicReference3 = this.f20010;
                m105692.m10252();
                m105692.m10526();
                m105692.m10306(new ˎᐧ(m105692, atomicReference3, m105692.m10302(false), m10249, 11));
                return;
        }
    }
}
