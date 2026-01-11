package p457;

import android.content.Context;
import android.os.Build;
import android.os.Looper;
import android.util.Pair;
import android.view.Surface;
import androidx.media3.common.VideoFrameProcessingException;
import androidx.media3.common.util.GlUtil$GlException;
import androidx.media3.exoplayer.video.VideoSink$VideoSinkException;
import java.util.List;
import java.util.Locale;
import p004.C0815;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.C1446;
import p055.C1490;
import p055.C1495;
import p283.RunnableC3568;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3711;
import p305.C3721;
import p305.C3723;
import p384.C4603;

/* renamed from: ﾞˏ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5392 implements InterfaceC5400 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f20577;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f20578;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final /* synthetic */ C5404 f20579;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public C1495 f20580;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public AbstractC0993 f20581;

    public C5392(C5404 c5404, Context context) {
        this.f20579 = c5404;
        AbstractC3712.m7782(context);
        C0982 c0982 = AbstractC0993.f3977;
        this.f20581 = C0956.f3901;
        this.f20578 = -9223372036854775807L;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ʻٴ */
    public final void mo10802() {
        C5404 c5404 = this.f20579;
        if (c5404.f20625.m2960() == 0) {
            c5404.f20621.mo10802();
            return;
        }
        C0815 c0815 = new C0815();
        if (c5404.f20625.m2960() <= 0) {
            c5404.f20625 = c0815;
        } else {
            ((AbstractC5383) c5404.f20625.m2963()).getClass();
            throw null;
        }
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ʼˎ */
    public final boolean mo10803(long j, C5401 c5401) {
        AbstractC3731.m7857(false);
        int i = this.f20579.f20620;
        if (i == -1 || i != 0) {
            return false;
        }
        throw null;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ʼᐧ */
    public final void mo10804() {
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ʽ */
    public final void mo10805() {
        int i = C3723.f14499.f14501;
        this.f20579.f20617 = null;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ʽﹳ */
    public final void mo10806(C4603 c4603) {
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ʾᵎ */
    public final void mo10807(float f) {
        this.f20579.f20621.mo10807(f);
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ˆʾ */
    public final void mo10808(long j, long j2) {
        this.f20579.f20621.mo10808(j + this.f20577, j2);
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ˈ */
    public final void mo10809(InterfaceC5386 interfaceC5386) {
        this.f20579.f20621.f20567 = interfaceC5386;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ˉʿ */
    public final void mo10810(boolean z) {
        C5404 c5404 = this.f20579;
        if (c5404.f20618) {
            c5404.f20621.mo10810(z);
        }
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ˉˆ */
    public final void mo10811() {
        C5404 c5404 = this.f20579;
        if (c5404.f20618) {
            c5404.f20621.mo10811();
        }
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ˏי */
    public final boolean mo10812() {
        return false;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ˑﹳ */
    public final Surface mo10813() {
        AbstractC3731.m7857(false);
        throw null;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: יـ */
    public final void mo10814() {
        long j = this.f20578;
        C5404 c5404 = this.f20579;
        if (c5404.f20619 >= j) {
            c5404.f20621.mo10814();
            c5404.f20624 = true;
        }
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ـˆ */
    public final void mo10815(int i) {
        this.f20579.f20621.mo10815(i);
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ٴﹶ */
    public final boolean mo10816(C1495 c1495) {
        boolean z = true;
        AbstractC3731.m7857(!false);
        C5404 c5404 = this.f20579;
        AbstractC3731.m7857(c5404.f20628 == 0);
        C1446 c1446 = c1495.f5912;
        if (c1446 == null || !c1446.m4238()) {
            c1446 = C1446.f5631;
        }
        int i = c1446.f5632;
        try {
            if (i == 7) {
                try {
                    int i2 = Build.VERSION.SDK_INT;
                    if (i2 < 34 && i2 >= 33 && AbstractC3731.m7856("EGL_EXT_gl_colorspace_bt2020_pq")) {
                        C3721 c3721 = c5404.f20629;
                        Looper myLooper = Looper.myLooper();
                        AbstractC3731.m7868(myLooper);
                        c5404.f20615 = c3721.m7820(myLooper, null);
                        c5404.f20626.m10826();
                        throw null;
                    }
                } catch (GlUtil$GlException e) {
                    throw new VideoSink$VideoSinkException(e, c1495);
                }
            }
            c5404.f20626.m10826();
            throw null;
        } catch (VideoFrameProcessingException e2) {
            throw new VideoSink$VideoSinkException(e2, c1495);
        }
        if (i == 6) {
            if (Build.VERSION.SDK_INT < 33 || !AbstractC3731.m7856("EGL_EXT_gl_colorspace_bt2020_pq")) {
                z = false;
            }
        } else if (i == 7) {
            z = AbstractC3731.m7856("EGL_EXT_gl_colorspace_bt2020_hlg");
        }
        if (!z && Build.VERSION.SDK_INT >= 29) {
            Locale locale = Locale.US;
            AbstractC3731.m7850("PlaybackVidGraphWrapper", "Color transfer " + i + " is not supported. Falling back to OpenGl tone mapping.");
            C1446 c14462 = C1446.f5631;
        }
        C3721 c37212 = c5404.f20629;
        Looper myLooper2 = Looper.myLooper();
        AbstractC3731.m7868(myLooper2);
        c5404.f20615 = c37212.m7820(myLooper2, null);
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ᵎﹶ */
    public final void mo10817(List list) {
        if (this.f20581.equals(list)) {
            return;
        }
        this.f20581 = AbstractC0993.m3264(list);
        C1495 c1495 = this.f20580;
        if (c1495 == null) {
            return;
        }
        C1490 m4300 = c1495.m4300();
        C1446 c1446 = c1495.f5912;
        if (c1446 == null || !c1446.m4238()) {
            c1446 = C1446.f5631;
        }
        m4300.f5853 = c1446;
        m4300.m4295();
        throw null;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ᵔʾ */
    public final boolean mo10818(boolean z) {
        return this.f20579.f20621.f20574.m10778(false);
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ᵔᵢ */
    public final void mo10819() {
        C5404 c5404 = this.f20579;
        if (c5404.f20618) {
            c5404.f20621.mo10819();
        }
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ᵔﹳ */
    public final void mo10820(Surface surface, C3723 c3723) {
        C5404 c5404 = this.f20579;
        Pair pair = c5404.f20617;
        if (pair != null && ((Surface) pair.first).equals(surface) && ((C3723) c5404.f20617.second).equals(c3723)) {
            return;
        }
        c5404.f20617 = Pair.create(surface, c3723);
        int i = c3723.f14501;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ⁱˊ */
    public final boolean mo10821() {
        return false;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ﹳٴ */
    public final void mo10822() {
        C5404 c5404 = this.f20579;
        if (c5404.f20628 == 2) {
            return;
        }
        C3711 c3711 = c5404.f20615;
        if (c3711 != null) {
            c3711.f14471.removeCallbacksAndMessages(null);
        }
        c5404.f20617 = null;
        c5404.f20628 = 2;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ﹳᐧ */
    public final void mo10823(long j) {
        this.f20577 = j;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ﾞʻ */
    public final void mo10824(C1495 c1495, long j, int i, List list) {
        AbstractC3731.m7857(false);
        this.f20581 = AbstractC0993.m3264(list);
        this.f20580 = c1495;
        this.f20579.f20624 = false;
        C1490 m4300 = c1495.m4300();
        C1446 c1446 = c1495.f5912;
        if (c1446 == null || !c1446.m4238()) {
            c1446 = C1446.f5631;
        }
        m4300.f5853 = c1446;
        m4300.m4295();
        throw null;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ﾞᴵ */
    public final void mo10825(boolean z) {
        this.f20578 = -9223372036854775807L;
        C5404 c5404 = this.f20579;
        C5390 c5390 = c5404.f20621;
        if (c5404.f20628 == 1) {
            c5404.f20622++;
            c5390.mo10825(z);
            while (c5404.f20625.m2960() > 1) {
                c5404.f20625.m2963();
            }
            if (c5404.f20625.m2960() == 1) {
                ((AbstractC5383) c5404.f20625.m2963()).getClass();
                throw null;
            }
            c5404.f20619 = -9223372036854775807L;
            c5404.f20624 = false;
            C3711 c3711 = c5404.f20615;
            AbstractC3731.m7868(c3711);
            c3711.m7750(new RunnableC3568(19, c5404));
        }
    }
}
