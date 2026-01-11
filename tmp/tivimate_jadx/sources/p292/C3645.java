package p292;

import com.bumptech.glide.C0229;
import java.io.IOException;
import java.net.ProtocolException;
import p035.AbstractC1220;
import p164.C2580;
import p164.C2599;
import p164.InterfaceC2576;

/* renamed from: ٴᵎ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3645 implements InterfaceC2576 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public boolean f14277;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final InterfaceC2576 f14278;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public long f14279;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ C0229 f14280;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final long f14281;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f14282;

    public C3645(C0229 c0229, InterfaceC2576 interfaceC2576, long j) {
        this.f14280 = c0229;
        this.f14278 = interfaceC2576;
        this.f14281 = j;
    }

    @Override // p164.InterfaceC2576, java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (this.f14282) {
            return;
        }
        this.f14282 = true;
        long j = this.f14281;
        if (j != -1 && this.f14279 != j) {
            throw new ProtocolException("unexpected end of stream");
        }
        try {
            m7637();
        } catch (IOException e) {
            throw m7639(e);
        }
    }

    @Override // p164.InterfaceC2576, java.io.Flushable
    public final void flush() {
        try {
            m7638();
        } catch (IOException e) {
            throw m7639(e);
        }
    }

    public final String toString() {
        return C3645.class.getSimpleName() + '(' + this.f14278 + ')';
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7637() {
        this.f14278.close();
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void m7638() {
        this.f14278.flush();
    }

    @Override // p164.InterfaceC2576
    /* renamed from: ˑﹳ */
    public final C2580 mo5737() {
        return this.f14278.mo5737();
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final IOException m7639(IOException iOException) {
        if (this.f14277) {
            return iOException;
        }
        this.f14277 = true;
        return C0229.m1128(this.f14280, iOException, 2);
    }

    @Override // p164.InterfaceC2576
    /* renamed from: ᵔי */
    public final void mo5741(C2599 c2599, long j) {
        if (this.f14282) {
            throw new IllegalStateException("closed");
        }
        long j2 = this.f14281;
        if (j2 != -1 && this.f14279 + j > j2) {
            StringBuilder m3770 = AbstractC1220.m3770(j2, "expected ", " bytes but received ");
            m3770.append(this.f14279 + j);
            throw new ProtocolException(m3770.toString());
        }
        try {
            this.f14278.mo5741(c2599, j);
            this.f14279 += j;
        } catch (IOException e) {
            throw m7639(e);
        }
    }
}
