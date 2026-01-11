package p425;

import android.content.Context;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import androidx.media3.exoplayer.audio.AudioSink$ConfigurationException;
import androidx.media3.exoplayer.audio.AudioSink$InitializationException;
import androidx.media3.exoplayer.audio.AudioSink$WriteException;
import j$.util.Objects;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import p017.AbstractC0993;
import p017.C0956;
import p032.AbstractC1162;
import p032.AbstractC1167;
import p032.C1150;
import p032.C1155;
import p032.C1161;
import p032.C1165;
import p032.InterfaceC1163;
import p032.InterfaceC1170;
import p032.InterfaceC1171;
import p055.AbstractC1464;
import p055.C1471;
import p055.C1485;
import p055.C1490;
import p055.C1495;
import p055.C1497;
import p262.C3433;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p307.AbstractC3740;
import p311.RunnableC3805;
import p392.C4651;
import p392.C4678;
import p392.C4687;
import p392.InterfaceC4686;
import p392.SurfaceHolderCallbackC4642;
import p421.C4996;
import ʻʿ.ˈ;
import ᐧﹳ.ʽ;
import ᵢـ.ˑﹳ;

/* renamed from: ﹶ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5030 extends AbstractC1167 implements InterfaceC4686 {

    /* renamed from: ʻʼ, reason: contains not printable characters */
    public long f18817;

    /* renamed from: ʽʾ, reason: contains not printable characters */
    public final ˑﹳ f18818;

    /* renamed from: ʿʽ, reason: contains not printable characters */
    public boolean f18819;

    /* renamed from: ˆʻ, reason: contains not printable characters */
    public boolean f18820;

    /* renamed from: ˆˎ, reason: contains not printable characters */
    public C1495 f18821;

    /* renamed from: ˆˑ, reason: contains not printable characters */
    public final C1155 f18822;

    /* renamed from: ˆﹳ, reason: contains not printable characters */
    public C1495 f18823;

    /* renamed from: ˉʽ, reason: contains not printable characters */
    public int f18824;

    /* renamed from: ˊﹳ, reason: contains not printable characters */
    public final C3433 f18825;

    /* renamed from: ˎـ, reason: contains not printable characters */
    public int f18826;

    /* renamed from: ˏⁱ, reason: contains not printable characters */
    public final Context f18827;

    /* renamed from: יʿ, reason: contains not printable characters */
    public boolean f18828;

    /* renamed from: ᴵٴ, reason: contains not printable characters */
    public long f18829;

    /* renamed from: ᵢʻ, reason: contains not printable characters */
    public boolean f18830;

    /* renamed from: ᵢᐧ, reason: contains not printable characters */
    public boolean f18831;

    /* renamed from: ﾞˊ, reason: contains not printable characters */
    public boolean f18832;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5030(Context context, InterfaceC1163 interfaceC1163, C1150 c1150, boolean z, Handler handler, SurfaceHolderCallbackC4642 surfaceHolderCallbackC4642, ˑﹳ r14) {
        super(1, interfaceC1163, c1150, z, 44100.0f);
        C1155 c1155 = Build.VERSION.SDK_INT >= 35 ? new C1155() : null;
        this.f18827 = context.getApplicationContext();
        this.f18818 = r14;
        this.f18822 = c1155;
        this.f18824 = -1000;
        this.f18825 = new C3433(handler, (InterfaceC5046) surfaceHolderCallbackC4642);
        this.f18829 = -9223372036854775807L;
        r14.ﹳٴ.f18870 = new ʽ(18, this);
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʼˎ */
    public final InterfaceC4686 mo757() {
        return this;
    }

    /* JADX WARN: Type inference failed for: r4v1, types: [java.lang.Object, ⁱי.ﾞᴵ] */
    @Override // p392.AbstractC4671
    /* renamed from: ʼᐧ */
    public final void mo758(boolean z, boolean z2) {
        ?? obj = new Object();
        this.f4519 = obj;
        C3433 c3433 = this.f18825;
        Handler handler = (Handler) c3433.f13458;
        if (handler != null) {
            handler.post(new RunnableC5044(c3433, obj, 5));
        }
        C4678 c4678 = this.f17507;
        c4678.getClass();
        boolean z3 = c4678.f17554;
        ˑﹳ r5 = this.f18818;
        if (z3) {
            r5.ﾞᴵ();
        } else {
            r5.ʼᐧ();
        }
        this.f17509.getClass();
        r5.getClass();
        this.f17514.getClass();
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ʽ */
    public final void mo759(C1485 c1485) {
        this.f18818.ʽ(c1485);
    }

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public final int m9897(C1495 c1495) {
        this.f18818.getClass();
        C5053 c5053 = C5053.f19013;
        if (!c5053.f19016) {
            return 0;
        }
        int i = c5053.f19015 ? 1536 : 512;
        return c5053.f19014 ? i | 2048 : i;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʽﹳ */
    public final void mo761() {
        m9899();
        this.f18828 = false;
        this.f18818.ˈ();
    }

    @Override // p032.AbstractC1167
    /* renamed from: ʾˊ */
    public final boolean mo3645(C1495 c1495) {
        C4678 c4678 = this.f17507;
        c4678.getClass();
        if (c4678.f17555 != 0) {
            int m9897 = m9897(c1495);
            if ((m9897 & 512) != 0) {
                C4678 c46782 = this.f17507;
                c46782.getClass();
                if (c46782.f17555 == 2 || (m9897 & 1024) != 0) {
                    return true;
                }
                if (c1495.f5928 == 0 && c1495.f5922 == 0) {
                    return true;
                }
            }
        }
        return this.f18818.ﹳٴ.mo9935(c1495);
    }

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public final int m9898(C1165 c1165, C1495 c1495) {
        int i;
        if (!"OMX.google.raw.decoder".equals(c1165.f4462) || (i = Build.VERSION.SDK_INT) >= 24 || (i == 23 && AbstractC3712.m7778(this.f18827))) {
            return c1495.f5914;
        }
        return -1;
    }

    @Override // p032.AbstractC1167
    /* renamed from: ʿ */
    public final void mo3646(String str) {
        C3433 c3433 = this.f18825;
        Handler handler = (Handler) c3433.f13458;
        if (handler != null) {
            handler.post(new RunnableC5044(c3433, str, 4));
        }
    }

    @Override // p032.AbstractC1167
    /* renamed from: ʿᵢ */
    public final C4687 mo3647(C3433 c3433) {
        C1495 c1495 = (C1495) c3433.f13456;
        c1495.getClass();
        this.f18823 = c1495;
        C4687 mo3647 = super.mo3647(c3433);
        C3433 c34332 = this.f18825;
        Handler handler = (Handler) c34332.f13458;
        if (handler != null) {
            handler.post(new RunnableC3805(c34332, c1495, mo3647, 9));
        }
        return mo3647;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˆʾ */
    public final String mo764() {
        return "MediaCodecAudioRenderer";
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˆﾞ */
    public final float mo3648(float f, C1495 c1495, C1495[] c1495Arr) {
        int i = -1;
        for (C1495 c14952 : c1495Arr) {
            int i2 = c14952.f5923;
            if (i2 != -1) {
                i = Math.max(i, i2);
            }
        }
        if (i == -1) {
            return -1.0f;
        }
        return i * f;
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˈʿ */
    public final long mo3649(long j, long j2) {
        boolean z = this.f18829 != -9223372036854775807L;
        if (this.f18828) {
            ˑﹳ r1 = this.f18818;
            long mo9923 = r1.ﹳٴ.mo9923();
            if (z && mo9923 != -9223372036854775807L) {
                long min = (((float) Math.min(mo9923, this.f18829 - j)) / r1.ﹳٴ.f18855.f5838) / 2.0f;
                this.f17514.getClass();
                return Math.max(10000L, min - (AbstractC3712.m7757(SystemClock.elapsedRealtime()) - j2));
            }
        } else if (z || this.f4491) {
            return 1000000L;
        }
        return 10000L;
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˈٴ */
    public final C4687 mo3651(C1165 c1165, C1495 c1495, C1495 c14952) {
        C4687 m3637 = c1165.m3637(c1495, c14952);
        int i = m3637.f17666;
        if (this.f4487 == null && mo3645(c14952)) {
            i |= 32768;
        }
        if (m9898(c1165, c14952) > this.f18826) {
            i |= 64;
        }
        int i2 = i;
        return new C4687(c1165.f4462, c1495, c14952, i2 != 0 ? 0 : m3637.f17665, i2);
    }

    @Override // p032.AbstractC1167, p392.AbstractC4671
    /* renamed from: ˉʿ */
    public final boolean mo766() {
        return this.f18818.ﹳٴ.mo9903() || super.mo766();
    }

    @Override // p032.AbstractC1167, p392.AbstractC4671
    /* renamed from: ˉˆ */
    public final void mo767() {
        C3433 c3433 = this.f18825;
        this.f18832 = true;
        this.f18823 = null;
        this.f18829 = -9223372036854775807L;
        try {
            this.f18818.flush();
            try {
                super.mo767();
            } finally {
            }
        } catch (Throwable th) {
            try {
                super.mo767();
                throw th;
            } finally {
            }
        }
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˉـ */
    public final void mo3653(long j, long j2, String str) {
        C3433 c3433 = this.f18825;
        Handler handler = (Handler) c3433.f13458;
        if (handler != null) {
            handler.post(new RunnableC5044(c3433, str, j, j2));
        }
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˊᵔ */
    public final boolean mo3657(long j, long j2, InterfaceC1171 interfaceC1171, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, C1495 c1495) {
        int i4;
        int i5;
        byteBuffer.getClass();
        this.f18829 = -9223372036854775807L;
        if (this.f18821 != null && (i2 & 2) != 0) {
            interfaceC1171.getClass();
            interfaceC1171.mo3601(i);
            return true;
        }
        ˑﹳ r1 = this.f18818;
        if (z) {
            if (interfaceC1171 != null) {
                interfaceC1171.mo3601(i);
            }
            this.f4519.f17750 += i3;
            r1.ـˆ();
            return true;
        }
        try {
            if (!r1.ﹳٴ.mo9929(byteBuffer, j3, i3)) {
                this.f18829 = j3;
                return false;
            }
            if (interfaceC1171 != null) {
                interfaceC1171.mo3601(i);
            }
            this.f4519.f17743 += i3;
            return true;
        } catch (AudioSink$InitializationException e) {
            C1495 c14952 = this.f18823;
            if (this.f4521) {
                C4678 c4678 = this.f17507;
                c4678.getClass();
                if (c4678.f17555 != 0) {
                    i5 = 5004;
                    throw m9276(e, c14952, e.f1216, i5);
                }
            }
            i5 = 5001;
            throw m9276(e, c14952, e.f1216, i5);
        } catch (AudioSink$WriteException e2) {
            if (this.f4521) {
                C4678 c46782 = this.f17507;
                c46782.getClass();
                if (c46782.f17555 != 0) {
                    i4 = 5003;
                    throw m9276(e2, c1495, e2.f1219, i4);
                }
            }
            i4 = 5002;
            throw m9276(e2, c1495, e2.f1219, i4);
        }
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˋᵔ */
    public final void mo3658(C4996 c4996) {
        C1495 c1495;
        if (Build.VERSION.SDK_INT < 29 || (c1495 = c4996.f18666) == null || !Objects.equals(c1495.f5930, "audio/opus") || !this.f4521) {
            return;
        }
        ByteBuffer byteBuffer = c4996.f18668;
        byteBuffer.getClass();
        c4996.f18666.getClass();
        if (byteBuffer.remaining() == 8) {
            byteBuffer.order(ByteOrder.LITTLE_ENDIAN).getLong();
            this.f18818.getClass();
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˏי */
    public final void mo770() {
        this.f18818.ˉʿ();
        this.f18828 = true;
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˏᵢ */
    public final void mo3660() {
        this.f18818.ـˆ();
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0049, code lost:
    
        if ((r7.isEmpty() ? null : (p032.C1165) r7.get(0)) != null) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:32:0x007d  */
    @Override // p032.AbstractC1167
    /* renamed from: ˑ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int mo3661(p032.InterfaceC1170 r18, p055.C1495 r19) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p425.C5030.mo3661(ʼᵢ.ﹳᐧ, ʽⁱ.ﹳᐧ):int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00d2, code lost:
    
        if ("AXON 7 mini".equals(r6) == false) goto L45;
     */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00be  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0128  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0133  */
    @Override // p032.AbstractC1167
    /* renamed from: ˑٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p404.C4799 mo3663(p032.C1165 r13, p055.C1495 r14, android.media.MediaCrypto r15, float r16) {
        /*
            Method dump skipped, instructions count: 353
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p425.C5030.mo3663(ʼᵢ.ᵔʾ, ʽⁱ.ﹳᐧ, android.media.MediaCrypto, float):ﹳʽ.ᴵᵔ");
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ˑﹳ */
    public final C1485 mo771() {
        return this.f18818.ﹳٴ.f18855;
    }

    @Override // p392.AbstractC4671
    /* renamed from: יـ */
    public final void mo5945() {
        ˑﹳ r0 = this.f18818;
        this.f18820 = false;
        this.f18829 = -9223372036854775807L;
        try {
            try {
                this.f4521 = false;
                m3686();
                m3650();
            } finally {
                AbstractC3740.m7928(this.f4487, null);
                this.f4487 = null;
            }
        } finally {
            if (this.f18832) {
                this.f18832 = false;
                r0.reset();
            }
        }
    }

    @Override // p032.AbstractC1167
    /* renamed from: ᐧﾞ */
    public final void mo3674(long j) {
        this.f18818.getClass();
    }

    @Override // p032.AbstractC1167
    /* renamed from: ᴵˑ */
    public final void mo3676(Exception exc) {
        AbstractC3731.m7863("MediaCodecAudioRenderer", "Audio codec error", exc);
        C3433 c3433 = this.f18825;
        Handler handler = (Handler) c3433.f13458;
        if (handler != null) {
            handler.post(new RunnableC5044(c3433, exc, 0));
        }
    }

    @Override // p032.AbstractC1167
    /* renamed from: ᵎᵔ */
    public final void mo3680(C1495 c1495, MediaFormat mediaFormat) {
        C1495 c14952 = this.f18821;
        int[] iArr = null;
        if (c14952 != null) {
            c1495 = c14952;
        } else if (this.f4496 != null) {
            mediaFormat.getClass();
            String str = c1495.f5930;
            int i = c1495.f5916;
            int m7771 = "audio/raw".equals(str) ? c1495.f5915 : (Build.VERSION.SDK_INT < 24 || !mediaFormat.containsKey("pcm-encoding")) ? mediaFormat.containsKey("v-bits-per-sample") ? AbstractC3712.m7771(mediaFormat.getInteger("v-bits-per-sample"), ByteOrder.LITTLE_ENDIAN) : 2 : mediaFormat.getInteger("pcm-encoding");
            C1490 c1490 = new C1490();
            c1490.f5861 = AbstractC1464.m4251("audio/raw");
            c1490.f5870 = m7771;
            c1490.f5863 = c1495.f5928;
            c1490.f5875 = c1495.f5922;
            c1490.f5871 = c1495.f5939;
            c1490.f5884 = c1495.f5937;
            c1490.f5883 = c1495.f5936;
            c1490.f5852 = AbstractC0993.m3264(c1495.f5903);
            c1490.f5859 = c1495.f5910;
            c1490.f5866 = c1495.f5919;
            c1490.f5887 = c1495.f5940;
            c1490.f5873 = mediaFormat.getInteger("channel-count");
            c1490.f5864 = mediaFormat.getInteger("sample-rate");
            c1495 = new C1495(c1490);
            boolean z = this.f18830;
            int i2 = c1495.f5916;
            if (z && i2 == 6 && i < 6) {
                iArr = new int[i];
                for (int i3 = 0; i3 < i; i3++) {
                    iArr[i3] = i3;
                }
            } else if (this.f18819) {
                if (i2 == 3) {
                    iArr = new int[]{0, 2, 1};
                } else if (i2 == 5) {
                    iArr = new int[]{0, 2, 1, 3, 4};
                } else if (i2 == 6) {
                    iArr = new int[]{0, 2, 1, 5, 3, 4};
                } else if (i2 == 7) {
                    iArr = new int[]{0, 2, 1, 6, 5, 3, 4};
                } else if (i2 == 8) {
                    iArr = new int[]{0, 2, 1, 7, 5, 6, 3, 4};
                }
            }
        }
        try {
            int i4 = Build.VERSION.SDK_INT;
            ˑﹳ r3 = this.f18818;
            if (i4 >= 29) {
                if (this.f4521) {
                    C4678 c4678 = this.f17507;
                    c4678.getClass();
                    if (c4678.f17555 != 0) {
                        this.f17507.getClass();
                        r3.getClass();
                    }
                }
                r3.getClass();
            }
            r3.ʻٴ(c1495, iArr);
        } catch (AudioSink$ConfigurationException e) {
            throw m9276(e, e.f1213, false, 5001);
        }
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ᵎﹶ */
    public final long mo777() {
        if (this.f17508 == 2) {
            m9899();
        }
        return this.f18817;
    }

    @Override // p032.AbstractC1167
    /* renamed from: ᵔٴ */
    public final ArrayList mo3683(InterfaceC1170 interfaceC1170, C1495 c1495, boolean z) {
        C0956 m3626;
        if (c1495.f5930 == null) {
            m3626 = C0956.f3901;
        } else {
            if (this.f18818.ﹳٴ.mo9935(c1495)) {
                List m3620 = AbstractC1162.m3620("audio/raw", false, false);
                C1165 c1165 = m3620.isEmpty() ? null : (C1165) m3620.get(0);
                if (c1165 != null) {
                    m3626 = AbstractC0993.m3260(c1165);
                }
            }
            m3626 = AbstractC1162.m3626(interfaceC1170, c1495, z, false);
        }
        HashMap hashMap = AbstractC1162.f4449;
        ArrayList arrayList = new ArrayList(m3626);
        Collections.sort(arrayList, new C1161(0, new ˈ(7, c1495)));
        return arrayList;
    }

    @Override // p032.AbstractC1167, p392.AbstractC4671
    /* renamed from: ᵔﹳ */
    public final void mo779(boolean z, long j) {
        super.mo779(z, j);
        this.f18818.flush();
        this.f18817 = j;
        this.f18829 = -9223372036854775807L;
        this.f18820 = false;
        this.f18831 = true;
    }

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public final void m9899() {
        long j = this.f18818.ˉˆ(mo781());
        if (j != Long.MIN_VALUE) {
            if (!this.f18831) {
                j = Math.max(this.f18817, j);
            }
            this.f18817 = j;
            this.f18831 = false;
        }
    }

    @Override // p392.AbstractC4671, p392.InterfaceC4653
    /* renamed from: ⁱˊ */
    public final void mo780(int i, Object obj) {
        C1155 c1155;
        ˑﹳ r1 = this.f18818;
        if (i == 2) {
            obj.getClass();
            r1.ʾᵎ(((Float) obj).floatValue());
            return;
        }
        if (i == 3) {
            C1471 c1471 = (C1471) obj;
            c1471.getClass();
            r1.ᵎﹶ(c1471);
            return;
        }
        if (i == 6) {
            C1497 c1497 = (C1497) obj;
            c1497.getClass();
            r1.ˏי(c1497);
            return;
        }
        if (i == 12) {
            r1.getClass();
            return;
        }
        if (i == 16) {
            obj.getClass();
            this.f18824 = ((Integer) obj).intValue();
            InterfaceC1171 interfaceC1171 = this.f4496;
            if (interfaceC1171 != null && Build.VERSION.SDK_INT >= 35) {
                Bundle bundle = new Bundle();
                bundle.putInt("importance", Math.max(0, -this.f18824));
                interfaceC1171.mo3588(bundle);
                return;
            }
            return;
        }
        if (i == 9) {
            obj.getClass();
            r1.ʽﹳ(((Boolean) obj).booleanValue());
            return;
        }
        if (i != 10) {
            if (i == 11) {
                C4651 c4651 = (C4651) obj;
                c4651.getClass();
                this.f4505 = c4651;
                return;
            }
            return;
        }
        obj.getClass();
        int intValue = ((Integer) obj).intValue();
        r1.ˆʾ(intValue);
        if (Build.VERSION.SDK_INT < 35 || (c1155 = this.f18822) == null) {
            return;
        }
        c1155.m3603(intValue);
    }

    @Override // p392.AbstractC4671
    /* renamed from: ﹳᐧ */
    public final void mo5947() {
        C1155 c1155;
        this.f18818.getClass();
        if (Build.VERSION.SDK_INT < 35 || (c1155 = this.f18822) == null) {
            return;
        }
        c1155.m3604();
    }

    @Override // p032.AbstractC1167
    /* renamed from: ﹶᐧ */
    public final void mo3687() {
        try {
            this.f18818.ᵔᵢ();
            long j = this.f4531;
            if (j != -9223372036854775807L) {
                this.f18829 = j;
            }
        } catch (AudioSink$WriteException e) {
            throw m9276(e, e.f1217, e.f1219, this.f4521 ? 5003 : 5002);
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ﾞʻ */
    public final boolean mo781() {
        return this.f4491 && this.f18818.ﹳٴ.mo9934();
    }

    @Override // p392.InterfaceC4686
    /* renamed from: ﾞᴵ */
    public final boolean mo782() {
        boolean z = this.f18820;
        this.f18820 = false;
        return z;
    }
}
