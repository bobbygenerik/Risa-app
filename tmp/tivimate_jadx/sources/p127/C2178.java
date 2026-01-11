package p127;

import android.os.Handler;
import com.parse.ˊﾞ;
import p171.C2651;
import p305.AbstractC3712;
import p364.InterfaceC4445;
import ʻʿ.ˈ;
import ˈˆ.ﾞᴵ;
import ﹶﾞ.ⁱי;

/* renamed from: ˈـ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2178 implements InterfaceC4445 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final ˈ f8532;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int f8533;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final ⁱי f8534;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public C2169 f8535;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final InterfaceC2153 f8536;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public volatile boolean f8537;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public InterfaceC2160 f8538;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C2143 f8539;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Handler f8540 = AbstractC3712.m7759(null);

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public volatile long f8541 = -9223372036854775807L;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C2651 f8542;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public volatile long f8543;

    public C2178(int i, C2143 c2143, ˈ r3, ⁱי r4, InterfaceC2153 interfaceC2153) {
        this.f8533 = i;
        this.f8539 = c2143;
        this.f8532 = r3;
        this.f8534 = r4;
        this.f8536 = interfaceC2153;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0, types: [ʽⁱ.ˏי, java.lang.Object] */
    @Override // p364.InterfaceC4445
    /* renamed from: ʽ */
    public final void mo5106() {
        if (this.f8537) {
            this.f8537 = false;
        }
        try {
            if (this.f8538 == null) {
                InterfaceC2160 m5108 = this.f8536.m5108(this.f8533);
                this.f8538 = m5108;
                this.f8540.post(new ˊﾞ(this, m5108.mo5117(), this.f8538, 2));
                InterfaceC2160 interfaceC2160 = this.f8538;
                interfaceC2160.getClass();
                this.f8542 = new C2651(interfaceC2160, 0L, -1L);
                C2169 c2169 = new C2169(this.f8539.f8330, this.f8533);
                this.f8535 = c2169;
                c2169.mo2900(this.f8534);
            }
            while (!this.f8537) {
                if (this.f8541 != -9223372036854775807L) {
                    C2169 c21692 = this.f8535;
                    c21692.getClass();
                    c21692.mo2908(this.f8543, this.f8541);
                    this.f8541 = -9223372036854775807L;
                }
                C2169 c21693 = this.f8535;
                c21693.getClass();
                C2651 c2651 = this.f8542;
                c2651.getClass();
                if (c21693.mo2904(c2651, new Object()) == -1) {
                    break;
                }
            }
            this.f8537 = false;
            InterfaceC2160 interfaceC21602 = this.f8538;
            interfaceC21602.getClass();
            if (interfaceC21602.mo5115()) {
                ﾞᴵ.ﾞᴵ(this.f8538);
                this.f8538 = null;
            }
        } catch (Throwable th) {
            InterfaceC2160 interfaceC21603 = this.f8538;
            interfaceC21603.getClass();
            if (interfaceC21603.mo5115()) {
                ﾞᴵ.ﾞᴵ(this.f8538);
                this.f8538 = null;
            }
            throw th;
        }
    }

    @Override // p364.InterfaceC4445
    /* renamed from: ʽﹳ */
    public final void mo5107() {
        this.f8537 = true;
    }
}
