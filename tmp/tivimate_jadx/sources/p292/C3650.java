package p292;

import java.net.Socket;
import java.util.LinkedHashSet;
import java.util.TimeZone;
import p048.C1376;
import p152.AbstractC2444;
import p208.C2952;
import p394.AbstractC4712;
import ˉˆ.ʿ;

/* renamed from: ٴᵎ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3650 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1376 f14309;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C3632 f14310;

    public C3650(C3632 c3632, C1376 c1376) {
        this.f14310 = c3632;
        this.f14309 = c1376;
    }

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void m7648() {
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void m7649(C3648 c3648) {
        c3648.getClass();
    }

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean m7650() {
        return this.f14310.f14209;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m7651() {
    }

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void m7652(C3641 c3641) {
        this.f14310.f14210.remove(c3641);
    }

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void m7653(C2952 c2952) {
        ʿ r0 = this.f14310.f14208.f11122;
        synchronized (r0) {
            ((LinkedHashSet) r0.ᴵˊ).remove(c2952);
        }
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void m7654(C3648 c3648) {
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C3648 m7655() {
        return this.f14310.f14212;
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void m7656() {
    }

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final boolean m7657() {
        return !AbstractC2444.m5562(this.f14309.f5414.f11225, "GET");
    }

    /* renamed from: ˏי, reason: contains not printable characters */
    public final Socket m7658() {
        return this.f14310.m7612();
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m7659() {
    }

    /* renamed from: יـ, reason: contains not printable characters */
    public final void m7660() {
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void m7661() {
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void m7662(C3648 c3648) {
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m7663() {
    }

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void m7664() {
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void m7665() {
    }

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void m7666(C3648 c3648) {
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m7667(C3641 c3641) {
        this.f14310.f14210.add(c3641);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7668(C3648 c3648) {
        TimeZone timeZone = AbstractC4712.f17804;
        C3632 c3632 = this.f14310;
        if (c3632.f14212 != null) {
            throw new IllegalStateException("Check failed.");
        }
        c3632.f14212 = c3648;
        c3648.f14305.add(new C3646(c3632, c3632.f14213));
    }

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void m7669() {
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void m7670() {
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m7671() {
    }
}
