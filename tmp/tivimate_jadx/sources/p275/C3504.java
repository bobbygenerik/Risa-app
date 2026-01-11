package p275;

import java.nio.ByteBuffer;
import p124.C2130;

/* renamed from: ـﹶ.ʼᐧ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3504 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C3514 f13817;

    /* renamed from: ˈ, reason: contains not printable characters */
    public C3514 f13818;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public int f13819;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C3514 f13820;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public int f13821 = 1;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f13822;

    public C3504(C3514 c3514) {
        this.f13820 = c3514;
        this.f13817 = c3514;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean m7448() {
        C2130 m7444 = this.f13817.f13843.m7444();
        int m5092 = m7444.m5092(6);
        return !(m5092 == 0 || ((ByteBuffer) m7444.f8314).get(m5092 + m7444.f8313) == 0) || this.f13819 == 65039;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7449() {
        this.f13821 = 1;
        this.f13817 = this.f13820;
        this.f13822 = 0;
    }
}
