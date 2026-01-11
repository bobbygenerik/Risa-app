package p248;

import p164.C2599;
import p208.C2950;
import p307.AbstractC3740;

/* renamed from: יʾ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3299 extends AbstractC3298 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f12698;

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f12694) {
            return;
        }
        if (!this.f12698) {
            m7108(C3296.f12684);
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
        if (this.f12698) {
            return -1L;
        }
        long mo5763 = super.mo5763(c2599, j);
        if (mo5763 != -1) {
            return mo5763;
        }
        this.f12698 = true;
        m7108(C2950.f11241);
        return -1L;
    }
}
