package androidx.media3.decoder.ffmpeg;

import android.media.AudioDeviceInfo;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Trace;
import androidx.media3.decoder.DecoderException;
import androidx.media3.decoder.SimpleDecoderOutputBuffer;
import androidx.media3.exoplayer.audio.AudioSink$ConfigurationException;
import androidx.media3.exoplayer.audio.AudioSink$InitializationException;
import androidx.media3.exoplayer.audio.AudioSink$WriteException;
import p003.C0783;
import p017.AbstractC0993;
import p055.AbstractC1464;
import p055.C1471;
import p055.C1485;
import p055.C1490;
import p055.C1495;
import p055.C1497;
import p262.C3433;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3721;
import p307.AbstractC3740;
import p311.RunnableC3805;
import p392.AbstractC4671;
import p392.C4678;
import p392.C4687;
import p392.C4699;
import p392.InterfaceC4686;
import p395.InterfaceC4735;
import p420.C4987;
import p421.AbstractC4997;
import p421.C4996;
import p421.InterfaceC4995;
import p425.InterfaceC5032;
import p425.InterfaceC5046;
import p425.RunnableC5044;

/* renamed from: androidx.media3.decoder.ffmpeg.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0211 extends AbstractC4671 implements InterfaceC4686 {

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public boolean f1156;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public int f1157;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final C3433 f1158;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public boolean f1159;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public long f1160;

    /* renamed from: ʿ, reason: contains not printable characters */
    public int f1161;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public boolean f1162;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public long f1163;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public C4699 f1164;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public int f1165;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public boolean f1166;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public InterfaceC4735 f1167;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public long f1168;

    /* renamed from: י, reason: contains not printable characters */
    public long f1169;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final InterfaceC5032 f1170;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public boolean f1171;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public boolean f1172;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public final long[] f1173;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public SimpleDecoderOutputBuffer f1174;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public long f1175;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public C4996 f1176;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public InterfaceC4735 f1177;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public C1495 f1178;

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public int f1179;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public InterfaceC4995 f1180;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final C4996 f1181;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public boolean f1182;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public boolean f1183;

    public C0211(Handler handler, InterfaceC5046 interfaceC5046, InterfaceC5032 interfaceC5032) {
        super(1);
        this.f1158 = new C3433(handler, interfaceC5046);
        this.f1170 = interfaceC5032;
        interfaceC5032.mo9937(new ᐧﹳ.ʽ(17, this));
        this.f1181 = new C4996(0, 0);
        this.f1157 = 0;
        this.f1172 = true;
        m776(-9223372036854775807L);
        this.f1173 = new long[10];
        this.f1175 = -9223372036854775807L;
        this.f1169 = -9223372036854775807L;
        this.f1160 = -9223372036854775807L;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void mo756(C1495[] c1495Arr, long j, long j2, C4987 c4987) {
        this.f1162 = false;
        if (this.f1168 == -9223372036854775807L) {
            m776(j2);
            return;
        }
        int i = this.f1179;
        long[] jArr = this.f1173;
        if (i == jArr.length) {
            AbstractC3731.m7850("DecoderAudioRenderer", "Too many stream changes, so dropping offset: " + jArr[this.f1179 - 1]);
        } else {
            this.f1179 = i + 1;
        }
        jArr[this.f1179 - 1] = j2;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final InterfaceC4686 mo757() {
        return this;
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, ⁱי.ﾞᴵ] */
    @Override // p392.AbstractC4671
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void mo758(boolean z, boolean z2) {
        ?? obj = new Object();
        this.f1164 = obj;
        C3433 c3433 = this.f1158;
        Handler handler = (Handler) c3433.f13458;
        if (handler != null) {
            handler.post(new RunnableC5044(c3433, obj, 5));
        }
        C4678 c4678 = this.f17507;
        c4678.getClass();
        boolean z3 = c4678.f17554;
        InterfaceC5032 interfaceC5032 = this.f1170;
        if (z3) {
            interfaceC5032.mo9938();
        } else {
            interfaceC5032.mo9904();
        }
        C0783 c0783 = this.f17509;
        c0783.getClass();
        interfaceC5032.mo9932(c0783);
        C3721 c3721 = this.f17514;
        c3721.getClass();
        interfaceC5032.mo9936(c3721);
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo759(C1485 c1485) {
        this.f1170.mo9905(c1485);
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC4995 m760(C1495 c1495) {
        Trace.beginSection("createFfmpegAudioDecoder");
        int i = c1495.f5914;
        int i2 = c1495.f5923;
        int i3 = c1495.f5916;
        if (i == -1) {
            i = 5760;
        }
        C1495 m7795 = AbstractC3712.m7795(2, i3, i2);
        InterfaceC5032 interfaceC5032 = this.f1170;
        FfmpegAudioDecoder ffmpegAudioDecoder = new FfmpegAudioDecoder(i, c1495, interfaceC5032.mo9935(m7795) ? interfaceC5032.mo9919(AbstractC3712.m7795(4, i3, i2)) != 2 ? false : true ^ "audio/ac3".equals(c1495.f5930) : true);
        Trace.endSection();
        return ffmpegAudioDecoder;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void mo761() {
        m772();
        this.f1170.mo9912();
        this.f1159 = false;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final int mo762(C1495 c1495) {
        int i;
        String str = c1495.f5930;
        int i2 = c1495.f5923;
        int i3 = c1495.f5916;
        if (!AbstractC1464.m4258(str)) {
            return AbstractC3740.m7927(0, 0, 0, 0);
        }
        String str2 = c1495.f5930;
        str2.getClass();
        if (FfmpegLibrary.m752() && AbstractC1464.m4258(str2)) {
            if (FfmpegLibrary.m753(str2)) {
                C1495 m7795 = AbstractC3712.m7795(2, i3, i2);
                InterfaceC5032 interfaceC5032 = this.f1170;
                i = 4;
                if (interfaceC5032.mo9935(m7795) || interfaceC5032.mo9935(AbstractC3712.m7795(4, i3, i2))) {
                    if (c1495.f5911 != 0) {
                        i = 2;
                    }
                }
            }
            i = 1;
        } else {
            i = 0;
        }
        return i <= 2 ? AbstractC3740.m7927(i, 0, 0, 0) : i | 168;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void mo763(long j, long j2) {
        if (this.f1156) {
            try {
                this.f1170.mo9931();
                this.f1160 = this.f1169;
                return;
            } catch (AudioSink$WriteException e) {
                throw m9276(e, e.f1217, e.f1219, 5002);
            }
        }
        if (this.f1178 == null) {
            C3433 c3433 = this.f17503;
            c3433.m7345();
            this.f1181.mo3629();
            int m9273 = m9273(c3433, this.f1181, 2);
            if (m9273 != -5) {
                if (m9273 == -4) {
                    AbstractC3731.m7857(this.f1181.m3177(4));
                    this.f1182 = true;
                    try {
                        this.f1156 = true;
                        this.f1170.mo9931();
                        this.f1160 = this.f1169;
                        return;
                    } catch (AudioSink$WriteException e2) {
                        throw m9276(e2, null, false, 5002);
                    }
                }
                return;
            }
            m773(c3433);
        }
        m769();
        if (this.f1180 != null) {
            try {
                Trace.beginSection("drainAndFeed");
                do {
                } while (m765());
                do {
                } while (m775());
                Trace.endSection();
                synchronized (this.f1164) {
                }
            } catch (DecoderException e3) {
                AbstractC3731.m7863("DecoderAudioRenderer", "Audio codec error", e3);
                C3433 c34332 = this.f1158;
                Handler handler = (Handler) c34332.f13458;
                if (handler != null) {
                    handler.post(new RunnableC5044(c34332, e3, 0));
                }
                throw m9276(e3, this.f1178, false, 4003);
            } catch (AudioSink$ConfigurationException e4) {
                throw m9276(e4, e4.f1213, false, 5001);
            } catch (AudioSink$InitializationException e5) {
                throw m9276(e5, e5.f1214, e5.f1216, 5001);
            } catch (AudioSink$WriteException e6) {
                throw m9276(e6, e6.f1217, e6.f1219, 5002);
            }
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final String mo764() {
        return "FfmpegAudioRenderer";
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final boolean m765() {
        if (this.f1174 == null) {
            SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = (SimpleDecoderOutputBuffer) ((AbstractC4997) this.f1180).mo9159();
            this.f1174 = simpleDecoderOutputBuffer;
            if (simpleDecoderOutputBuffer == null) {
                return false;
            }
            int i = simpleDecoderOutputBuffer.f18691;
            if (i > 0) {
                this.f1164.f17750 += i;
                this.f1170.mo9920();
            }
            if (this.f1174.m3177(134217728)) {
                long[] jArr = this.f1173;
                this.f1170.mo9920();
                if (this.f1179 != 0) {
                    m776(jArr[0]);
                    int i2 = this.f1179 - 1;
                    this.f1179 = i2;
                    System.arraycopy(jArr, 1, jArr, 0, i2);
                }
            }
        }
        if (this.f1174.m3177(4)) {
            if (this.f1157 == 2) {
                m768();
                m769();
                this.f1172 = true;
                return false;
            }
            this.f1174.mo743();
            this.f1174 = null;
            try {
                this.f1156 = true;
                this.f1170.mo9931();
                this.f1160 = this.f1169;
                return false;
            } catch (AudioSink$WriteException e) {
                throw m9276(e, e.f1217, e.f1219, 5002);
            }
        }
        this.f1160 = -9223372036854775807L;
        if (this.f1172) {
            FfmpegAudioDecoder ffmpegAudioDecoder = (FfmpegAudioDecoder) this.f1180;
            ffmpegAudioDecoder.getClass();
            C1490 c1490 = new C1490();
            c1490.f5861 = AbstractC1464.m4251("audio/raw");
            c1490.f5873 = ffmpegAudioDecoder.f1147;
            c1490.f5864 = ffmpegAudioDecoder.f1145;
            c1490.f5870 = ffmpegAudioDecoder.f1151;
            C1490 m4300 = new C1495(c1490).m4300();
            m4300.f5863 = this.f1165;
            m4300.f5875 = this.f1161;
            C1495 c1495 = this.f1178;
            m4300.f5871 = c1495.f5939;
            m4300.f5884 = c1495.f5937;
            m4300.f5883 = c1495.f5936;
            m4300.f5852 = AbstractC0993.m3264(c1495.f5903);
            C1495 c14952 = this.f1178;
            m4300.f5859 = c14952.f5910;
            m4300.f5866 = c14952.f5919;
            m4300.f5887 = c14952.f5940;
            this.f1170.mo9901(new C1495(m4300), null);
            this.f1172 = false;
        }
        InterfaceC5032 interfaceC5032 = this.f1170;
        SimpleDecoderOutputBuffer simpleDecoderOutputBuffer2 = this.f1174;
        if (!interfaceC5032.mo9929(simpleDecoderOutputBuffer2.f1144, simpleDecoderOutputBuffer2.f18690, 1)) {
            this.f1160 = this.f1174.f18690;
            return false;
        }
        this.f1164.f17743++;
        this.f1174.mo743();
        this.f1174 = null;
        return true;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final boolean mo766() {
        if (this.f1170.mo9903()) {
            return true;
        }
        if (this.f1178 != null) {
            return m9275() || this.f1174 != null;
        }
        return false;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void mo767() {
        C3433 c3433 = this.f1158;
        this.f1178 = null;
        this.f1172 = true;
        m776(-9223372036854775807L);
        this.f1171 = false;
        this.f1160 = -9223372036854775807L;
        try {
            AbstractC3740.m7928(this.f1177, null);
            this.f1177 = null;
            m768();
            this.f1170.reset();
        } finally {
            c3433.m7339(this.f1164);
        }
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void m768() {
        this.f1176 = null;
        this.f1174 = null;
        this.f1157 = 0;
        this.f1166 = false;
        this.f1175 = -9223372036854775807L;
        this.f1169 = -9223372036854775807L;
        InterfaceC4995 interfaceC4995 = this.f1180;
        if (interfaceC4995 != null) {
            this.f1164.f17747++;
            ((FfmpegAudioDecoder) interfaceC4995).mo750();
            String m746 = ((FfmpegAudioDecoder) this.f1180).m746();
            C3433 c3433 = this.f1158;
            Handler handler = (Handler) c3433.f13458;
            if (handler != null) {
                handler.post(new RunnableC5044(c3433, m746, 4));
            }
            this.f1180 = null;
        }
        AbstractC3740.m7928(this.f1167, null);
        this.f1167 = null;
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final void m769() {
        C3433 c3433 = this.f1158;
        if (this.f1180 != null) {
            return;
        }
        InterfaceC4735 interfaceC4735 = this.f1177;
        AbstractC3740.m7928(this.f1167, interfaceC4735);
        this.f1167 = interfaceC4735;
        if (interfaceC4735 != null && interfaceC4735.mo9467() == null && this.f1167.mo9473() == null) {
            return;
        }
        try {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            Trace.beginSection("createAudioDecoder");
            InterfaceC4995 m760 = m760(this.f1178);
            this.f1180 = m760;
            ((AbstractC4997) m760).mo9157(this.f17519);
            Trace.endSection();
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            String m746 = ((FfmpegAudioDecoder) this.f1180).m746();
            long j = elapsedRealtime2 - elapsedRealtime;
            Handler handler = (Handler) c3433.f13458;
            if (handler != null) {
                handler.post(new RunnableC5044(c3433, m746, elapsedRealtime2, j));
            }
            this.f1164.f17748++;
        } catch (DecoderException e) {
            AbstractC3731.m7863("DecoderAudioRenderer", "Audio codec error", e);
            Handler handler2 = (Handler) c3433.f13458;
            if (handler2 != null) {
                handler2.post(new RunnableC5044(c3433, e, 0));
            }
            throw m9276(e, this.f1178, false, 4001);
        } catch (OutOfMemoryError e2) {
            throw m9276(e2, this.f1178, false, 4001);
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˏי, reason: contains not printable characters */
    public final void mo770() {
        this.f1170.mo9914();
        this.f1159 = true;
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C1485 mo771() {
        return this.f1170.mo9918();
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m772() {
        long mo9915 = this.f1170.mo9915(mo781());
        if (mo9915 != Long.MIN_VALUE) {
            if (!this.f1183) {
                mo9915 = Math.max(this.f1163, mo9915);
            }
            this.f1163 = mo9915;
            this.f1183 = false;
        }
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m773(C3433 c3433) {
        C1495 c1495 = (C1495) c3433.f13456;
        c1495.getClass();
        InterfaceC4735 interfaceC4735 = (InterfaceC4735) c3433.f13458;
        AbstractC3740.m7928(this.f1177, interfaceC4735);
        this.f1177 = interfaceC4735;
        C1495 c14952 = this.f1178;
        this.f1178 = c1495;
        this.f1165 = c1495.f5928;
        this.f1161 = c1495.f5922;
        InterfaceC4995 interfaceC4995 = this.f1180;
        C3433 c34332 = this.f1158;
        if (interfaceC4995 == null) {
            m769();
            C1495 c14953 = this.f1178;
            Handler handler = (Handler) c34332.f13458;
            if (handler != null) {
                handler.post(new RunnableC3805(c34332, c14953, null, 9));
                return;
            }
            return;
        }
        C4687 c4687 = interfaceC4735 != this.f1167 ? new C4687(((FfmpegAudioDecoder) interfaceC4995).m746(), c14952, c1495, 0, 128) : new C4687(((FfmpegAudioDecoder) interfaceC4995).m746(), c14952, c1495, 0, 1);
        if (c4687.f17665 == 0) {
            if (this.f1166) {
                this.f1157 = 1;
            } else {
                m768();
                m769();
                this.f1172 = true;
            }
        }
        C1495 c14954 = this.f1178;
        Handler handler2 = (Handler) c34332.f13458;
        if (handler2 != null) {
            handler2.post(new RunnableC3805(c34332, c14954, c4687, 9));
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final int mo774() {
        return 8;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
    
        if (r0 == null) goto L46;
     */
    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m775() {
        /*
            r7 = this;
            ﹳⁱ.ˈ r0 = r7.f1180
            r1 = 0
            if (r0 == 0) goto Lca
            int r2 = r7.f1157
            r3 = 2
            if (r2 == r3) goto Lca
            boolean r2 = r7.f1182
            if (r2 == 0) goto L10
            goto Lca
        L10:
            ﹳⁱ.ˑﹳ r2 = r7.f1176
            if (r2 != 0) goto L22
            ﹳⁱ.ᵎﹶ r0 = (p421.AbstractC4997) r0
            java.lang.Object r0 = r0.mo9163()
            ﹳⁱ.ˑﹳ r0 = (p421.C4996) r0
            r7.f1176 = r0
            if (r0 != 0) goto L22
            goto Lca
        L22:
            int r0 = r7.f1157
            r2 = 4
            r4 = 0
            r5 = 1
            if (r0 != r5) goto L3c
            ﹳⁱ.ˑﹳ r0 = r7.f1176
            r0.f3828 = r2
            ﹳⁱ.ˈ r2 = r7.f1180
            ﹳⁱ.ᵎﹶ r2 = (p421.AbstractC4997) r2
            r2.getClass()
            r2.mo9162(r0)
            r7.f1176 = r4
            r7.f1157 = r3
            return r1
        L3c:
            ـʾ.ᵔﹳ r0 = r7.f17503
            r0.m7345()
            ﹳⁱ.ˑﹳ r3 = r7.f1176
            int r3 = r7.m9273(r0, r3, r1)
            r6 = -5
            if (r3 == r6) goto Lc6
            r0 = -4
            if (r3 == r0) goto L61
            r0 = -3
            if (r3 != r0) goto L5b
            boolean r0 = r7.m9274()
            if (r0 == 0) goto Lca
            long r2 = r7.f1175
            r7.f1169 = r2
            return r1
        L5b:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            r0.<init>()
            throw r0
        L61:
            ﹳⁱ.ˑﹳ r0 = r7.f1176
            boolean r0 = r0.m3177(r2)
            if (r0 == 0) goto L7e
            r7.f1182 = r5
            long r2 = r7.f1175
            r7.f1169 = r2
            ﹳⁱ.ˈ r0 = r7.f1180
            ﹳⁱ.ˑﹳ r2 = r7.f1176
            ﹳⁱ.ᵎﹶ r0 = (p421.AbstractC4997) r0
            r0.getClass()
            r0.mo9162(r2)
            r7.f1176 = r4
            return r1
        L7e:
            boolean r0 = r7.f1162
            if (r0 != 0) goto L8b
            r7.f1162 = r5
            ﹳⁱ.ˑﹳ r0 = r7.f1176
            r1 = 134217728(0x8000000, float:3.85186E-34)
            r0.m3183(r1)
        L8b:
            ﹳⁱ.ˑﹳ r0 = r7.f1176
            long r0 = r0.f18671
            r7.f1175 = r0
            boolean r0 = r7.m9274()
            if (r0 != 0) goto La1
            ﹳⁱ.ˑﹳ r0 = r7.f1176
            r1 = 536870912(0x20000000, float:1.0842022E-19)
            boolean r0 = r0.m3177(r1)
            if (r0 == 0) goto La5
        La1:
            long r0 = r7.f1175
            r7.f1169 = r0
        La5:
            ﹳⁱ.ˑﹳ r0 = r7.f1176
            r0.m9845()
            ﹳⁱ.ˑﹳ r0 = r7.f1176
            ʽⁱ.ﹳᐧ r1 = r7.f1178
            r0.f18666 = r1
            ﹳⁱ.ˈ r1 = r7.f1180
            ﹳⁱ.ᵎﹶ r1 = (p421.AbstractC4997) r1
            r1.getClass()
            r1.mo9162(r0)
            r7.f1166 = r5
            ⁱי.ﾞᴵ r0 = r7.f1164
            int r1 = r0.f17740
            int r1 = r1 + r5
            r0.f17740 = r1
            r7.f1176 = r4
            return r5
        Lc6:
            r7.m773(r0)
            return r5
        Lca:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.decoder.ffmpeg.C0211.m775():boolean");
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m776(long j) {
        this.f1168 = j;
        if (j != -9223372036854775807L) {
            this.f1170.getClass();
        }
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final long mo777() {
        if (this.f17508 == 2) {
            m772();
        }
        return this.f1163;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final long mo778(long j, long j2) {
        boolean z = this.f1160 != -9223372036854775807L;
        if (this.f1159) {
            InterfaceC5032 interfaceC5032 = this.f1170;
            long mo9923 = interfaceC5032.mo9923();
            if (z && mo9923 != -9223372036854775807L) {
                float min = (float) Math.min(mo9923, this.f1160 - j);
                float f = interfaceC5032.mo9918() != null ? interfaceC5032.mo9918().f5838 : 1.0f;
                this.f17514.getClass();
                return Math.max(10000L, ((min / f) / 2.0f) - (AbstractC3712.m7757(SystemClock.elapsedRealtime()) - j2));
            }
        } else if (z || this.f1156) {
            return 1000000L;
        }
        return 10000L;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void mo779(boolean z, long j) {
        this.f1170.flush();
        this.f1163 = j;
        this.f1160 = -9223372036854775807L;
        this.f1171 = false;
        this.f1183 = true;
        this.f1182 = false;
        this.f1156 = false;
        if (this.f1180 != null) {
            if (this.f1157 != 0) {
                m768();
                m769();
                return;
            }
            this.f1176 = null;
            SimpleDecoderOutputBuffer simpleDecoderOutputBuffer = this.f1174;
            if (simpleDecoderOutputBuffer != null) {
                simpleDecoderOutputBuffer.mo743();
                this.f1174 = null;
            }
            InterfaceC4995 interfaceC4995 = this.f1180;
            interfaceC4995.getClass();
            AbstractC4997 abstractC4997 = (AbstractC4997) interfaceC4995;
            abstractC4997.flush();
            abstractC4997.mo9157(this.f17519);
            this.f1166 = false;
        }
    }

    @Override // p392.AbstractC4671, p392.InterfaceC4653
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo780(int i, Object obj) {
        InterfaceC5032 interfaceC5032 = this.f1170;
        if (i == 2) {
            interfaceC5032.mo9909(((Float) obj).floatValue());
            return;
        }
        if (i == 3) {
            interfaceC5032.mo9928((C1471) obj);
            return;
        }
        if (i == 6) {
            interfaceC5032.mo9917((C1497) obj);
            return;
        }
        if (i == 12) {
            interfaceC5032.setPreferredDevice((AudioDeviceInfo) obj);
        } else if (i == 9) {
            interfaceC5032.mo9907(((Boolean) obj).booleanValue());
        } else {
            if (i != 10) {
                return;
            }
            interfaceC5032.mo9910(((Integer) obj).intValue());
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final boolean mo781() {
        return this.f1156 && this.f1170.mo9934();
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final boolean mo782() {
        boolean z = this.f1171;
        this.f1171 = false;
        return z;
    }
}
