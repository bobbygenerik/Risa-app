package p361;

import java.net.SocketTimeoutException;
import p035.AbstractC1220;
import p164.C2579;
import p452.C5366;
import ᵔʻ.ﹳـ;

/* renamed from: ᵔᐧ.ʽﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4378 extends C2579 {

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final /* synthetic */ C4373 f16257;

    public C4378(C4373 c4373) {
        this.f16257 = c4373;
    }

    @Override // p164.C2579
    /* renamed from: ˆʾ */
    public final void mo5778() {
        this.f16257.m8848(9);
        C4390 c4390 = this.f16257.f16241;
        synchronized (c4390) {
            long j = c4390.f16327;
            long j2 = c4390.f16308;
            if (j < j2) {
                return;
            }
            c4390.f16308 = j2 + 1;
            c4390.f16309 = System.nanoTime() + 1000000000;
            C5366.m10764(c4390.f16313, AbstractC1220.m3775(new StringBuilder(), c4390.f16305, " ping"), new ﹳـ(4, c4390));
        }
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m8860() {
        if (m5777()) {
            throw new SocketTimeoutException("timeout");
        }
    }
}
