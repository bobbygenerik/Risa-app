package androidx.media3.decoder.ffmpeg;

import android.os.Handler;
import android.os.SystemClock;
import android.os.Trace;
import android.view.Surface;
import androidx.media3.decoder.DecoderException;
import p004.C0815;
import p055.C1469;
import p055.C1495;
import p262.C3433;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p307.AbstractC3740;
import p311.RunnableC3805;
import p392.AbstractC4671;
import p392.C4699;
import p395.InterfaceC4735;
import p411.RunnableC4889;
import p420.C4987;
import p421.C4996;
import p457.InterfaceC5385;
import p457.InterfaceC5394;
import p457.RunnableC5399;

/* renamed from: androidx.media3.decoder.ffmpeg.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0214 extends AbstractC4671 {

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public boolean f1188;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final long f1189;

    /* renamed from: ʿ, reason: contains not printable characters */
    public Object f1190;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public Surface f1191;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public int f1192;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final C4996 f1193;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public int f1194;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public C1469 f1195;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public int f1196;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final C3433 f1197;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public long f1198;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public InterfaceC4735 f1199;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public InterfaceC4735 f1200;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public long f1201;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public C1495 f1202;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public InterfaceC5394 f1203;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final C0815 f1204;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public C4699 f1205;

    /* JADX WARN: Type inference failed for: r1v6, types: [java.lang.Object, ⁱי.ﾞᴵ] */
    public C0214(long j, Handler handler, InterfaceC5385 interfaceC5385, int i) {
        super(2);
        this.f1189 = j;
        this.f1201 = -9223372036854775807L;
        this.f1204 = new C0815();
        this.f1193 = new C4996(0, 0);
        this.f1197 = new C3433(handler, interfaceC5385);
        this.f1194 = -1;
        this.f1196 = 0;
        this.f1205 = new Object();
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʻٴ */
    public final void mo756(C1495[] c1495Arr, long j, long j2, C4987 c4987) {
    }

    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Object, ⁱי.ﾞᴵ] */
    @Override // p392.AbstractC4671
    /* renamed from: ʼᐧ */
    public final void mo758(boolean z, boolean z2) {
        ?? obj = new Object();
        this.f1205 = obj;
        C3433 c3433 = this.f1197;
        Handler handler = (Handler) c3433.f13458;
        if (handler != null) {
            handler.post(new RunnableC5399(c3433, (Object) obj, 5));
        }
        this.f1196 = z2 ? 1 : 0;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m784() {
        InterfaceC4735 interfaceC4735 = this.f1199;
        AbstractC3740.m7928(this.f1200, interfaceC4735);
        this.f1200 = interfaceC4735;
        if (interfaceC4735 != null && interfaceC4735.mo9467() == null && this.f1200.mo9473() == null) {
            return;
        }
        try {
            SystemClock.elapsedRealtime();
            this.f1202.getClass();
            Trace.beginSection("createFfmpegVideoDecoder");
            Trace.endSection();
            throw null;
        } catch (DecoderException e) {
            AbstractC3731.m7863("DecoderVideoRenderer", "Video codec error", e);
            C3433 c3433 = this.f1197;
            Handler handler = (Handler) c3433.f13458;
            if (handler != null) {
                handler.post(new RunnableC5399(c3433, e, 1));
            }
            throw m9276(e, this.f1202, false, 4001);
        } catch (OutOfMemoryError e2) {
            throw m9276(e2, this.f1202, false, 4001);
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʽﹳ */
    public final void mo761() {
        this.f1201 = -9223372036854775807L;
        if (this.f1192 > 0) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = elapsedRealtime - this.f1198;
            int i = this.f1192;
            C3433 c3433 = this.f1197;
            Handler handler = (Handler) c3433.f13458;
            if (handler != null) {
                handler.post(new RunnableC5399(c3433, i, j));
            }
            this.f1192 = 0;
            this.f1198 = elapsedRealtime;
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʾˋ */
    public final int mo762(C1495 c1495) {
        return AbstractC3740.m7927(0, 0, 0, 0);
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʾᵎ */
    public final void mo763(long j, long j2) {
        if (this.f1188) {
            return;
        }
        if (this.f1202 == null) {
            C3433 c3433 = this.f17503;
            c3433.m7345();
            C4996 c4996 = this.f1193;
            c4996.mo3629();
            int m9273 = m9273(c3433, c4996, 2);
            if (m9273 != -5) {
                if (m9273 == -4) {
                    AbstractC3731.m7857(c4996.m3177(4));
                    this.f1188 = true;
                    return;
                }
                return;
            }
            C1495 c1495 = (C1495) c3433.f13456;
            c1495.getClass();
            InterfaceC4735 interfaceC4735 = (InterfaceC4735) c3433.f13458;
            AbstractC3740.m7928(this.f1199, interfaceC4735);
            this.f1199 = interfaceC4735;
            this.f1202 = c1495;
            m784();
            C1495 c14952 = this.f1202;
            c14952.getClass();
            C3433 c34332 = this.f1197;
            Handler handler = (Handler) c34332.f13458;
            if (handler != null) {
                handler.post(new RunnableC3805(c34332, c14952, null, 14));
            }
        }
        m784();
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˆʾ */
    public final String mo764() {
        return "ExperimentalFfmpegVideoRenderer";
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo785() {
        if (this.f1196 == 0) {
            this.f1196 = 1;
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˉʿ */
    public final boolean mo766() {
        if (this.f1202 != null && m9275() && (this.f1196 == 3 || this.f1194 == -1)) {
            this.f1201 = -9223372036854775807L;
            return true;
        }
        if (this.f1201 == -9223372036854775807L) {
            return false;
        }
        if (SystemClock.elapsedRealtime() < this.f1201) {
            return true;
        }
        this.f1201 = -9223372036854775807L;
        return false;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˉˆ */
    public final void mo767() {
        C3433 c3433 = this.f1197;
        this.f1202 = null;
        this.f1195 = null;
        this.f1196 = Math.min(this.f1196, 0);
        try {
            AbstractC3740.m7928(this.f1199, null);
            this.f1199 = null;
            AbstractC3740.m7928(this.f1200, null);
            this.f1200 = null;
        } finally {
            c3433.m7339(this.f1205);
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˏי */
    public final void mo770() {
        this.f1192 = 0;
        this.f1198 = SystemClock.elapsedRealtime();
        SystemClock.elapsedRealtime();
        String str = AbstractC3712.f14481;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ᵔﹳ */
    public final void mo779(boolean z, long j) {
        this.f1188 = false;
        this.f1196 = Math.min(this.f1196, 1);
        if (z) {
            long j2 = this.f1189;
            this.f1201 = j2 > 0 ? SystemClock.elapsedRealtime() + j2 : -9223372036854775807L;
        } else {
            this.f1201 = -9223372036854775807L;
        }
        this.f1204.m2965();
    }

    @Override // p392.AbstractC4671, p392.InterfaceC4653
    /* renamed from: ⁱˊ */
    public final void mo780(int i, Object obj) {
        Object obj2;
        Handler handler;
        if (i != 1) {
            if (i == 7) {
                return;
            }
            return;
        }
        if (obj instanceof Surface) {
            this.f1191 = (Surface) obj;
            this.f1203 = null;
            this.f1194 = 1;
        } else if (obj instanceof InterfaceC5394) {
            this.f1191 = null;
            this.f1203 = (InterfaceC5394) obj;
            this.f1194 = 0;
        } else {
            this.f1191 = null;
            this.f1203 = null;
            this.f1194 = -1;
            obj = null;
        }
        Object obj3 = this.f1190;
        C3433 c3433 = this.f1197;
        if (obj3 == obj) {
            if (obj != null) {
                C1469 c1469 = this.f1195;
                if (c1469 != null) {
                    c3433.m7328(c1469);
                }
                if (this.f1196 != 3 || (obj2 = this.f1190) == null || (handler = (Handler) c3433.f13458) == null) {
                    return;
                }
                handler.post(new RunnableC4889(c3433, obj2, SystemClock.elapsedRealtime()));
                return;
            }
            return;
        }
        this.f1190 = obj;
        if (obj == null) {
            this.f1195 = null;
            this.f1196 = Math.min(this.f1196, 1);
            return;
        }
        C1469 c14692 = this.f1195;
        if (c14692 != null) {
            c3433.m7328(c14692);
        }
        this.f1196 = Math.min(this.f1196, 1);
        if (this.f17508 == 2) {
            long j = this.f1189;
            this.f1201 = j > 0 ? SystemClock.elapsedRealtime() + j : -9223372036854775807L;
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ﾞʻ */
    public final boolean mo781() {
        return this.f1188;
    }
}
