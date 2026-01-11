package p361;

import java.io.InterruptedIOException;
import java.util.TimeZone;
import p164.C2580;
import p164.C2599;
import p164.InterfaceC2576;
import p394.AbstractC4712;

/* renamed from: ᵔᐧ.יـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4386 implements InterfaceC2576 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f16290;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean f16291;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ C4373 f16292;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2599 f16293 = new Object();

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    public C4386(C4373 c4373, boolean z) {
        this.f16292 = c4373;
        this.f16291 = z;
    }

    @Override // p164.InterfaceC2576, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        C4373 c4373 = this.f16292;
        TimeZone timeZone = AbstractC4712.f17804;
        synchronized (c4373) {
            if (this.f16290) {
                return;
            }
            boolean z = c4373.m8853() == 0;
            C4373 c43732 = this.f16292;
            if (!c43732.f16232.f16291) {
                if (this.f16293.f9835 > 0) {
                    while (this.f16293.f9835 > 0) {
                        m8869(true);
                    }
                } else if (z) {
                    c43732.f16241.m8882(c43732.f16242, true, null, 0L);
                }
            }
            C4373 c43733 = this.f16292;
            synchronized (c43733) {
                this.f16290 = true;
                c43733.notifyAll();
            }
            this.f16292.f16241.flush();
            this.f16292.m8852();
        }
    }

    @Override // p164.InterfaceC2576, java.io.Flushable
    public final void flush() {
        C4373 c4373 = this.f16292;
        TimeZone timeZone = AbstractC4712.f17804;
        synchronized (c4373) {
            c4373.m8851();
        }
        while (this.f16293.f9835 > 0) {
            m8869(false);
            this.f16292.f16241.flush();
        }
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m8869(boolean z) {
        long min;
        boolean z2;
        C4373 c4373 = this.f16292;
        synchronized (c4373) {
            c4373.f16238.m5779();
            while (c4373.f16235 >= c4373.f16237 && !this.f16291 && !this.f16290 && c4373.m8853() == 0) {
                try {
                    try {
                        c4373.wait();
                    } catch (InterruptedException unused) {
                        Thread.currentThread().interrupt();
                        throw new InterruptedIOException();
                    }
                } catch (Throwable th) {
                    c4373.f16238.m8860();
                    throw th;
                }
            }
            c4373.f16238.m8860();
            c4373.m8851();
            min = Math.min(c4373.f16237 - c4373.f16235, this.f16293.f9835);
            c4373.f16235 += min;
            z2 = z && min == this.f16293.f9835;
        }
        this.f16292.f16238.m5779();
        try {
            C4373 c43732 = this.f16292;
            c43732.f16241.m8882(c43732.f16242, z2, this.f16293, min);
        } finally {
            this.f16292.f16238.m8860();
        }
    }

    @Override // p164.InterfaceC2576
    /* renamed from: ˑﹳ */
    public final C2580 mo5737() {
        return this.f16292.f16238;
    }

    @Override // p164.InterfaceC2576
    /* renamed from: ᵔי */
    public final void mo5741(C2599 c2599, long j) {
        TimeZone timeZone = AbstractC4712.f17804;
        C2599 c25992 = this.f16293;
        c25992.mo5741(c2599, j);
        while (c25992.f9835 >= 16384) {
            m8869(false);
        }
    }
}
