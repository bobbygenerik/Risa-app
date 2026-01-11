package p248;

import java.io.IOException;
import java.net.ProtocolException;
import java.util.concurrent.TimeUnit;
import p164.C2599;
import p208.C2940;
import p208.C2950;
import p307.AbstractC3740;
import p394.AbstractC4712;

/* renamed from: יʾ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3294 extends AbstractC3298 {

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ C3296 f12679;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public long f12680;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3294(C3296 c3296, C2940 c2940, long j) {
        super(c3296, c2940);
        this.f12679 = c3296;
        this.f12680 = j;
        if (j == 0) {
            m7108(C2950.f11241);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        boolean z;
        if (this.f12694) {
            return;
        }
        if (this.f12680 != 0) {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            try {
                z = AbstractC4712.m9447(this, 100);
            } catch (IOException unused) {
                z = false;
            }
            if (!z) {
                this.f12679.f12688.mo4053();
                m7108(C3296.f12684);
            }
        }
        this.f12694 = true;
    }

    @Override // p248.AbstractC3298, p164.InterfaceC2588
    /* renamed from: ٴﹶ */
    public final long mo5763(C2599 c2599, long j) {
        if (j < 0) {
            throw new IllegalArgumentException(AbstractC3740.m7926("byteCount < 0: ", j).toString());
        }
        if (this.f12694) {
            throw new IllegalStateException("closed");
        }
        long j2 = this.f12680;
        if (j2 == 0) {
            return -1L;
        }
        long mo5763 = super.mo5763(c2599, Math.min(j2, j));
        if (mo5763 == -1) {
            this.f12679.f12688.mo4053();
            ProtocolException protocolException = new ProtocolException("unexpected end of stream");
            m7108(C3296.f12684);
            throw protocolException;
        }
        long j3 = this.f12680 - mo5763;
        this.f12680 = j3;
        if (j3 == 0) {
            m7108(C2950.f11241);
        }
        return mo5763;
    }
}
