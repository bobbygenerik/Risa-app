package p299;

import android.os.Handler;
import android.os.Looper;
import java.util.LinkedHashMap;
import java.util.concurrent.CancellationException;
import p003.RunnableC0786;
import p035.AbstractC1220;
import p091.C1842;
import p091.ExecutorC1840;
import p126.InterfaceC2139;
import p152.AbstractC2444;
import p153.AbstractC2478;
import p299.C3694;
import p324.AbstractC4017;
import p324.AbstractC4028;
import p324.C3989;
import p324.C3997;
import p324.C4030;
import p324.InterfaceC3995;
import p324.InterfaceC4036;
import p324.InterfaceC4041;
import p324.RunnableC3987;
import ˑᵢ.ᐧᴵ;

/* renamed from: ᐧʼ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3694 extends AbstractC4017 implements InterfaceC3995 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final boolean f14441;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3694 f14442;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Handler f14443;

    public C3694(Handler handler, boolean z) {
        this.f14443 = handler;
        this.f14441 = z;
        this.f14442 = z ? this : new C3694(handler, true);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C3694)) {
            return false;
        }
        C3694 c3694 = (C3694) obj;
        return c3694.f14443 == this.f14443 && c3694.f14441 == this.f14441;
    }

    public final int hashCode() {
        return System.identityHashCode(this.f14443) ^ (this.f14441 ? 1231 : 1237);
    }

    @Override // p324.AbstractC4017
    public final String toString() {
        C3694 c3694;
        String str;
        C1842 c1842 = AbstractC4028.f15408;
        C3694 c36942 = AbstractC2478.f9460;
        if (this == c36942) {
            str = "Dispatchers.Main";
        } else {
            try {
                c3694 = c36942.f14442;
            } catch (UnsupportedOperationException unused) {
                c3694 = null;
            }
            str = this == c3694 ? "Dispatchers.Main.immediate" : null;
        }
        if (str != null) {
            return str;
        }
        String handler = this.f14443.toString();
        return this.f14441 ? AbstractC1220.m3791(handler, ".immediate") : handler;
    }

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public final void m7732(InterfaceC2139 interfaceC2139, Runnable runnable) {
        CancellationException cancellationException = new CancellationException("The task was rejected, the handler underlying the dispatcher '" + this + "' was closed");
        InterfaceC4036 interfaceC4036 = (InterfaceC4036) interfaceC2139.mo3419(C3997.f15367);
        if (interfaceC4036 != null) {
            interfaceC4036.mo3899(cancellationException);
        }
        C1842 c1842 = AbstractC4028.f15408;
        ExecutorC1840.f7404.mo4764(interfaceC2139, runnable);
    }

    @Override // p324.InterfaceC3995
    /* renamed from: ʾˋ */
    public final void mo5611(long j, C4030 c4030) {
        RunnableC0786 runnableC0786 = new RunnableC0786(c4030, 25, this);
        if (j > 4611686018427387903L) {
            j = 4611686018427387903L;
        }
        if (this.f14443.postDelayed(runnableC0786, j)) {
            c4030.m8211(new ᐧᴵ(this, 8, runnableC0786));
        } else {
            m7732(c4030.f15414, runnableC0786);
        }
    }

    @Override // p324.AbstractC4017
    /* renamed from: ـᵎ */
    public final void mo4764(InterfaceC2139 interfaceC2139, Runnable runnable) {
        if (this.f14443.post(runnable)) {
            return;
        }
        m7732(interfaceC2139, runnable);
    }

    @Override // p324.AbstractC4017
    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public final boolean mo7733(InterfaceC2139 interfaceC2139) {
        return (this.f14441 && AbstractC2444.m5562(Looper.myLooper(), this.f14443.getLooper())) ? false : true;
    }

    @Override // p324.InterfaceC3995
    /* renamed from: ᴵʼ */
    public final InterfaceC4041 mo5613(long j, final RunnableC3987 runnableC3987, InterfaceC2139 interfaceC2139) {
        if (j > 4611686018427387903L) {
            j = 4611686018427387903L;
        }
        if (this.f14443.postDelayed(runnableC3987, j)) {
            final int i = 1;
            return new InterfaceC4041() { // from class: ʿᵢ.ˉـ
                @Override // p324.InterfaceC4041
                /* renamed from: ﹳٴ, reason: contains not printable characters */
                public final void mo4747() {
                    switch (i) {
                        case 0:
                            String str = (String) this;
                            C1784 c1784 = (C1784) runnableC3987;
                            synchronized (FileObserverC1785.f7214) {
                                LinkedHashMap linkedHashMap = FileObserverC1785.f7213;
                                FileObserverC1785 fileObserverC1785 = (FileObserverC1785) linkedHashMap.get(str);
                                if (fileObserverC1785 != null) {
                                    fileObserverC1785.f7215.remove(c1784);
                                    if (fileObserverC1785.f7215.isEmpty()) {
                                        linkedHashMap.remove(str);
                                        fileObserverC1785.stopWatching();
                                    }
                                }
                            }
                            return;
                        default:
                            C3694 c3694 = (C3694) this;
                            c3694.f14443.removeCallbacks((RunnableC3987) runnableC3987);
                            return;
                    }
                }
            };
        }
        m7732(interfaceC2139, runnableC3987);
        return C3989.f15358;
    }
}
