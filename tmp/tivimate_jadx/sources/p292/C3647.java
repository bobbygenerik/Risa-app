package p292;

import com.bumptech.glide.C0229;
import java.io.IOException;
import java.net.ProtocolException;
import p048.InterfaceC1375;
import p164.AbstractC2581;
import p164.C2599;
import p164.InterfaceC2588;

/* renamed from: ٴᵎ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3647 extends AbstractC2581 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public long f14284;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public boolean f14285;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public boolean f14286;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C0229 f14287;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f14288;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f14289;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3647(C0229 c0229, InterfaceC2588 interfaceC2588, long j) {
        super(interfaceC2588);
        this.f14287 = c0229;
        this.f14288 = j;
        this.f14285 = true;
        if (j == 0) {
            m7640(null);
        }
    }

    @Override // p164.AbstractC2581, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f14286) {
            return;
        }
        this.f14286 = true;
        try {
            super.close();
        } catch (IOException e) {
            throw m7640(e);
        }
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final IOException m7640(IOException iOException) {
        if (this.f14289) {
            return iOException;
        }
        this.f14289 = true;
        if (iOException == null && this.f14285) {
            this.f14285 = false;
        }
        return C0229.m1128(this.f14287, iOException, 4);
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ٴﹶ */
    public final long mo5763(C2599 c2599, long j) {
        C0229 c0229 = this.f14287;
        if (this.f14286) {
            throw new IllegalStateException("closed");
        }
        try {
            long mo5763 = this.f9801.mo5763(c2599, j);
            if (this.f14285) {
                this.f14285 = false;
            }
            if (mo5763 == -1) {
                m7640(null);
                return -1L;
            }
            long j2 = this.f14284 + mo5763;
            long j3 = this.f14288;
            if (j3 == -1 || j2 <= j3) {
                this.f14284 = j2;
                if (((InterfaceC1375) c0229.f1645).mo4058()) {
                    m7640(null);
                }
                return mo5763;
            }
            throw new ProtocolException("expected " + j3 + " bytes but received " + j2);
        } catch (IOException e) {
            throw m7640(e);
        }
    }
}
