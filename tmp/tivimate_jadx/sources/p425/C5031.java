package p425;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioDeviceInfo;
import android.media.AudioTrack;
import android.media.PlaybackParams;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import androidx.media3.decoder.ffmpeg.C0211;
import androidx.media3.exoplayer.audio.AudioSink$InitializationException;
import androidx.media3.exoplayer.audio.AudioSink$WriteException;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import p003.C0783;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p055.C1471;
import p055.C1485;
import p055.C1495;
import p055.C1497;
import p076.AbstractC1655;
import p076.AbstractC1659;
import p076.C1660;
import p076.C1661;
import p076.C1664;
import p076.C1665;
import p076.InterfaceC1662;
import p087.C1740;
import p105.RunnableC1926;
import p137.AbstractC2305;
import p171.AbstractC2649;
import p229.C3125;
import p262.C3433;
import p283.C3569;
import p283.RunnableC3568;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3721;
import p312.RunnableC3880;
import p384.C4603;
import p392.C4651;
import ᐧﹳ.ʽ;
import ᵢ.ﹳٴ;

/* renamed from: ﹶ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5031 implements InterfaceC5032 {

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public static int f18833;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public static final Object f18834 = new Object();

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public static ScheduledExecutorService f18835;

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public Context f18836;

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public C1665 f18837;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public boolean f18838;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public C5038 f18839;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public ByteBuffer f18840;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final ArrayDeque f18841;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final C5048 f18842;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C5045 f18843;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public C5051 f18844;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public C5047 f18845;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public C1471 f18846;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public C5049 f18847;

    /* renamed from: ʿ, reason: contains not printable characters */
    public int f18848;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public boolean f18849;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final int f18850;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public boolean f18851;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C5043 f18852;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public long f18853;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public long f18854;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C1485 f18855;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public boolean f18856;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final C1740 f18857;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final C3125 f18858;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public boolean f18859;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public long f18860;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public ByteBuffer f18861;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public int f18862;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public boolean f18863;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public ByteBuffer f18864;

    /* renamed from: ˏי, reason: contains not printable characters */
    public C5047 f18865;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public long f18866;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public final boolean f18867;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public float f18868;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C1664 f18869;

    /* renamed from: יـ, reason: contains not printable characters */
    public ʽ f18870;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public AudioTrack f18871;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public boolean f18872;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public Looper f18873;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public long f18874;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public int f18875;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public C5040 f18876;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public boolean f18877;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public C4603 f18878;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public long f18879;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C5051 f18880;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public boolean f18881;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f18882;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public long f18883;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public C1497 f18884;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public long f18885;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C0956 f18886;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final C5024 f18887;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public int f18888;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public boolean f18889;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C5035 f18890;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final int f18891;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public C5037 f18892;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ﹳٴ f18893;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public boolean f18894;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f18895;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public C0783 f18896;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public Handler f18897;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public long f18898;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final C1740 f18899;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C5034 f18900;

    /* JADX WARN: Type inference failed for: r3v4, types: [ﹶ.ᵔʾ, ʾﾞ.ʼˎ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v7, types: [ʽⁱ.ﾞᴵ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v1, types: [ʾﾞ.ʼˎ, ﹶ.ᴵᵔ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v1, types: [ʾﾞ.ʼˎ, ʾﾞ.ﾞʻ] */
    /* JADX WARN: Type inference failed for: r5v2, types: [ʾﾞ.ʼˎ, ﹶ.ˈٴ] */
    public C5031(C5026 c5026) {
        int deviceId;
        Context context = c5026.f18799;
        Context applicationContext = context == null ? null : context.getApplicationContext();
        this.f18895 = applicationContext;
        this.f18846 = C1471.f5756;
        this.f18847 = applicationContext == null ? c5026.f18798 : null;
        this.f18893 = c5026.f18794;
        int i = Build.VERSION.SDK_INT;
        this.f18850 = 0;
        this.f18887 = c5026.f18796;
        C3125 c3125 = c5026.f18797;
        c3125.getClass();
        this.f18858 = c3125;
        this.f18890 = new C5035(new C4603(this));
        ?? abstractC1655 = new AbstractC1655();
        this.f18843 = abstractC1655;
        ?? abstractC16552 = new AbstractC1655();
        abstractC16552.f18970 = AbstractC3712.f14480;
        this.f18852 = abstractC16552;
        this.f18869 = new AbstractC1655();
        this.f18900 = new AbstractC1655();
        this.f18886 = AbstractC0993.m3266(abstractC16552, abstractC1655);
        this.f18868 = 1.0f;
        this.f18848 = 0;
        this.f18884 = new Object();
        C1485 c1485 = C1485.f5835;
        this.f18844 = new C5051(c1485, 0L, 0L);
        this.f18855 = c1485;
        this.f18882 = false;
        this.f18841 = new ArrayDeque();
        this.f18899 = new C1740();
        this.f18857 = new C1740();
        this.f18842 = c5026.f18800;
        int i2 = -1;
        if (i >= 34 && context != null && (deviceId = context.getDeviceId()) != 0 && deviceId != -1) {
            i2 = deviceId;
        }
        this.f18891 = i2;
        this.f18867 = true;
    }

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public static boolean m9900(AudioTrack audioTrack) {
        return Build.VERSION.SDK_INT >= 29 && audioTrack.isOffloadedPlayback();
    }

    /* JADX WARN: Type inference failed for: r0v24, types: [java.lang.Object, java.util.concurrent.ThreadFactory] */
    @Override // p425.InterfaceC5032
    public final void flush() {
        C5037 c5037;
        if (m9922()) {
            this.f18860 = 0L;
            this.f18885 = 0L;
            this.f18874 = 0L;
            this.f18883 = 0L;
            this.f18863 = false;
            this.f18888 = 0;
            this.f18844 = new C5051(this.f18855, 0L, 0L);
            this.f18853 = 0L;
            this.f18880 = null;
            this.f18841.clear();
            this.f18864 = null;
            this.f18862 = 0;
            this.f18840 = null;
            this.f18894 = false;
            this.f18872 = false;
            this.f18856 = false;
            this.f18861 = null;
            this.f18875 = 0;
            this.f18852.f18971 = 0L;
            C1665 c1665 = this.f18845.f18979;
            this.f18837 = c1665;
            c1665.m4551();
            AudioTrack audioTrack = this.f18890.f18909;
            audioTrack.getClass();
            if (audioTrack.getPlayState() == 3) {
                this.f18871.pause();
            }
            if (m9900(this.f18871)) {
                C5040 c5040 = this.f18876;
                c5040.getClass();
                c5040.m9950(this.f18871);
            }
            C5025 m9952 = this.f18845.m9952();
            C5047 c5047 = this.f18865;
            if (c5047 != null) {
                this.f18845 = c5047;
                this.f18865 = null;
            }
            C5035 c5035 = this.f18890;
            c5035.m9945();
            c5035.f18909 = null;
            c5035.f18921 = null;
            if (Build.VERSION.SDK_INT >= 24 && (c5037 = this.f18892) != null) {
                c5037.m9947();
                this.f18892 = null;
            }
            AudioTrack audioTrack2 = this.f18871;
            ʽ r6 = this.f18870;
            Handler handler = new Handler(Looper.myLooper());
            synchronized (f18834) {
                try {
                    if (f18835 == null) {
                        String str = AbstractC3712.f14481;
                        f18835 = Executors.newSingleThreadScheduledExecutor(new Object());
                    }
                    f18833++;
                    f18835.schedule(new RunnableC1926(audioTrack2, r6, handler, m9952, 3), 20L, TimeUnit.MILLISECONDS);
                } catch (Throwable th) {
                    throw th;
                }
            }
            this.f18871 = null;
        }
        C1740 c1740 = this.f18857;
        c1740.f7093 = null;
        c1740.f7095 = -9223372036854775807L;
        c1740.f7094 = -9223372036854775807L;
        C1740 c17402 = this.f18899;
        c17402.f7093 = null;
        c17402.f7095 = -9223372036854775807L;
        c17402.f7094 = -9223372036854775807L;
        this.f18854 = 0L;
        this.f18898 = 0L;
        Handler handler2 = this.f18897;
        if (handler2 != null) {
            handler2.removeCallbacksAndMessages(null);
        }
    }

    @Override // p425.InterfaceC5032
    public final void reset() {
        flush();
        C0982 listIterator = this.f18886.listIterator(0);
        while (listIterator.hasNext()) {
            ((InterfaceC1662) listIterator.next()).reset();
        }
        this.f18869.reset();
        this.f18900.reset();
        C1665 c1665 = this.f18837;
        if (c1665 != null) {
            AbstractC0993 abstractC0993 = c1665.f6769;
            for (int i = 0; i < abstractC0993.size(); i++) {
                InterfaceC1662 interfaceC1662 = (InterfaceC1662) abstractC0993.get(i);
                interfaceC1662.flush();
                interfaceC1662.reset();
            }
            c1665.f6766 = new ByteBuffer[0];
            C1661 c1661 = C1661.f6757;
            c1665.f6767 = false;
        }
        this.f18881 = false;
        this.f18838 = false;
    }

    @Override // p425.InterfaceC5032
    public final void setPreferredDevice(AudioDeviceInfo audioDeviceInfo) {
        this.f18878 = audioDeviceInfo == null ? null : new C4603(audioDeviceInfo);
        C5038 c5038 = this.f18839;
        if (c5038 != null) {
            c5038.m9948(audioDeviceInfo);
        }
        AudioTrack audioTrack = this.f18871;
        if (audioTrack != null) {
            C4603 c4603 = this.f18878;
            audioTrack.setPreferredDevice(c4603 != null ? (AudioDeviceInfo) c4603.f17126 : null);
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x025f, code lost:
    
        if (r11 > 0) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0262, code lost:
    
        if (r14 > 0) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0265, code lost:
    
        if (r14 < 0) goto L119;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:51:0x0243. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0227  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0279  */
    /* JADX WARN: Type inference failed for: r12v4, types: [ʼʻ.ˊʻ, ʼʻ.ʽʽ] */
    @Override // p425.InterfaceC5032
    /* renamed from: ʻٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo9901(p055.C1495 r28, int[] r29) {
        /*
            Method dump skipped, instructions count: 880
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p425.C5031.mo9901(ʽⁱ.ﹳᐧ, int[]):void");
    }

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final void m9902(long j) {
        C1485 c1485;
        C5047 c5047 = this.f18845;
        boolean z = false;
        ﹳٴ r2 = this.f18893;
        if (c5047 == null || !c5047.f18981) {
            if (this.f18877 || c5047.f18980 != 0) {
                c1485 = C1485.f5835;
            } else {
                int i = c5047.f18988.f5915;
                c1485 = this.f18855;
                C1660 c1660 = (C1660) r2.ˈٴ;
                float f = c1485.f5838;
                c1660.getClass();
                AbstractC3731.m7849(f > 0.0f);
                if (c1660.f6744 != f) {
                    c1660.f6744 = f;
                    c1660.f6742 = true;
                }
                float f2 = c1485.f5837;
                AbstractC3731.m7849(f2 > 0.0f);
                if (c1660.f6746 != f2) {
                    c1660.f6746 = f2;
                    c1660.f6742 = true;
                }
            }
            this.f18855 = c1485;
        } else {
            c1485 = C1485.f5835;
        }
        C1485 c14852 = c1485;
        if (!this.f18877) {
            C5047 c50472 = this.f18845;
            if (c50472.f18980 == 0) {
                int i2 = c50472.f18988.f5915;
                z = this.f18882;
                ((C5028) r2.ʽʽ).f18808 = z;
            }
        }
        this.f18882 = z;
        this.f18841.add(new C5051(c14852, Math.max(0L, j), AbstractC3712.m7765(this.f18845.f18983, m9925())));
        C1665 c1665 = this.f18845.f18979;
        this.f18837 = c1665;
        c1665.m4551();
        ʽ r10 = this.f18870;
        if (r10 != null) {
            boolean z2 = this.f18882;
            switch (r10.ʾˋ) {
                case 17:
                    C3433 c3433 = ((C0211) r10.ᴵˊ).f1158;
                    Handler handler = (Handler) c3433.f13458;
                    if (handler != null) {
                        handler.post(new RunnableC3880(1, c3433, z2));
                        return;
                    }
                    return;
                default:
                    C3433 c34332 = ((C5030) r10.ᴵˊ).f18825;
                    Handler handler2 = (Handler) c34332.f13458;
                    if (handler2 != null) {
                        handler2.post(new RunnableC3880(1, c34332, z2));
                        return;
                    }
                    return;
            }
        }
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean mo9903() {
        if (!m9922()) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 29 && this.f18871.isOffloadedPlayback() && this.f18856) {
            return false;
        }
        long m9925 = m9925();
        C5035 c5035 = this.f18890;
        long m9944 = c5035.m9944();
        int i = c5035.f18937;
        String str = AbstractC3712.f14481;
        return m9925 > AbstractC3712.m7797(m9944, (long) i, 1000000L, RoundingMode.UP);
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void mo9904() {
        if (this.f18877) {
            this.f18877 = false;
            flush();
        }
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo9905(C1485 c1485) {
        this.f18855 = new C1485(AbstractC3712.m7803(c1485.f5838, 0.1f, 8.0f), AbstractC3712.m7803(c1485.f5837, 0.1f, 8.0f));
        C5047 c5047 = this.f18845;
        if (c5047 != null && c5047.f18981) {
            m9930();
            return;
        }
        C5051 c5051 = new C5051(c1485, -9223372036854775807L, -9223372036854775807L);
        if (m9922()) {
            this.f18880 = c5051;
        } else {
            this.f18844 = c5051;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x0044 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0043 A[RETURN] */
    /* renamed from: ʽʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m9906() {
        /*
            r6 = this;
            ʾﾞ.ﾞᴵ r0 = r6.f18837
            boolean r0 = r0.m4548()
            r1 = -9223372036854775808
            r3 = 0
            r4 = 1
            if (r0 != 0) goto L14
            r6.m9924(r1)
            java.nio.ByteBuffer r0 = r6.f18840
            if (r0 != 0) goto L44
            goto L43
        L14:
            ʾﾞ.ﾞᴵ r0 = r6.f18837
            boolean r5 = r0.m4548()
            if (r5 == 0) goto L2e
            boolean r5 = r0.f6767
            if (r5 == 0) goto L21
            goto L2e
        L21:
            r0.f6767 = r4
            java.util.ArrayList r0 = r0.f6768
            java.lang.Object r0 = r0.get(r3)
            ʾﾞ.ᵔᵢ r0 = (p076.InterfaceC1662) r0
            r0.mo4519()
        L2e:
            r6.m9926(r1)
            ʾﾞ.ﾞᴵ r0 = r6.f18837
            boolean r0 = r0.m4547()
            if (r0 == 0) goto L44
            java.nio.ByteBuffer r0 = r6.f18840
            if (r0 == 0) goto L43
            boolean r0 = r0.hasRemaining()
            if (r0 != 0) goto L44
        L43:
            return r4
        L44:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: p425.C5031.m9906():boolean");
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void mo9907(boolean z) {
        this.f18882 = z;
        C5047 c5047 = this.f18845;
        C5051 c5051 = new C5051((c5047 == null || !c5047.f18981) ? this.f18855 : C1485.f5835, -9223372036854775807L, -9223372036854775807L);
        if (m9922()) {
            this.f18880 = c5051;
        } else {
            this.f18844 = c5051;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:19:? A[SYNTHETIC] */
    /* renamed from: ʾˋ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.media.AudioTrack m9908(p425.C5047 r9) {
        /*
            r8 = this;
            int r0 = r8.f18848     // Catch: androidx.media3.exoplayer.audio.AudioSink$InitializationException -> L3a
            int r1 = r8.f18891     // Catch: androidx.media3.exoplayer.audio.AudioSink$InitializationException -> L3a
            r2 = -1
            if (r1 == r2) goto L26
            android.content.Context r2 = r8.f18895     // Catch: androidx.media3.exoplayer.audio.AudioSink$InitializationException -> L1c
            if (r2 == 0) goto L26
            int r3 = android.os.Build.VERSION.SDK_INT     // Catch: androidx.media3.exoplayer.audio.AudioSink$InitializationException -> L1c
            r4 = 34
            if (r3 < r4) goto L26
            android.content.Context r0 = r8.f18836     // Catch: androidx.media3.exoplayer.audio.AudioSink$InitializationException -> L1c
            if (r0 != 0) goto L20
            android.content.Context r0 = r2.createDeviceContext(r1)     // Catch: androidx.media3.exoplayer.audio.AudioSink$InitializationException -> L1c
            r8.f18836 = r0     // Catch: androidx.media3.exoplayer.audio.AudioSink$InitializationException -> L1c
            goto L20
        L1c:
            r0 = move-exception
            r9 = r0
            r2 = r8
            goto L3d
        L20:
            android.content.Context r0 = r8.f18836     // Catch: androidx.media3.exoplayer.audio.AudioSink$InitializationException -> L1c
            r1 = 0
            r7 = r0
            r5 = r1
            goto L29
        L26:
            r1 = 0
            r5 = r0
            r7 = r1
        L29:
            ﹶ.ʼˎ r3 = r9.m9952()     // Catch: androidx.media3.exoplayer.audio.AudioSink$InitializationException -> L3a
            ʽⁱ.ˑﹳ r4 = r8.f18846     // Catch: androidx.media3.exoplayer.audio.AudioSink$InitializationException -> L3a
            ʽⁱ.ﹳᐧ r6 = r9.f18988     // Catch: androidx.media3.exoplayer.audio.AudioSink$InitializationException -> L3a
            r2 = r8
            android.media.AudioTrack r9 = r2.m9933(r3, r4, r5, r6, r7)     // Catch: androidx.media3.exoplayer.audio.AudioSink$InitializationException -> L37
            return r9
        L37:
            r0 = move-exception
        L38:
            r9 = r0
            goto L3d
        L3a:
            r0 = move-exception
            r2 = r8
            goto L38
        L3d:
            ᐧﹳ.ʽ r0 = r2.f18870
            if (r0 == 0) goto L44
            r0.ᵔʾ(r9)
        L44:
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: p425.C5031.m9908(ﹶ.ᵔﹳ):android.media.AudioTrack");
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void mo9909(float f) {
        if (this.f18868 != f) {
            this.f18868 = f;
            if (m9922()) {
                this.f18871.setVolume(this.f18868);
            }
        }
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void mo9910(int i) {
        if (this.f18849) {
            if (this.f18848 != i) {
                return;
            } else {
                this.f18849 = false;
            }
        }
        if (this.f18848 != i) {
            this.f18848 = i;
            this.f18859 = i != 0;
            flush();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0141  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01ed A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0057 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01d9  */
    /* renamed from: ˆﾞ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m9911(java.nio.ByteBuffer r19) {
        /*
            Method dump skipped, instructions count: 512
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p425.C5031.m9911(java.nio.ByteBuffer):void");
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo9912() {
        this.f18881 = false;
        if (m9922()) {
            C5035 c5035 = this.f18890;
            c5035.m9945();
            if (c5035.f18913 == -9223372036854775807L) {
                C5052 c5052 = c5035.f18921;
                c5052.getClass();
                c5052.m9958(0);
            }
            c5035.f18932 = c5035.m9943();
            if (!this.f18894 || m9900(this.f18871)) {
                this.f18871.pause();
            }
        }
    }

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final long m9913() {
        return this.f18845.f18980 == 0 ? this.f18860 / r0.f18987 : this.f18885;
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void mo9914() {
        this.f18881 = true;
        if (m9922()) {
            C5035 c5035 = this.f18890;
            if (c5035.f18913 != -9223372036854775807L) {
                c5035.f18924.getClass();
                c5035.f18913 = AbstractC3712.m7757(SystemClock.elapsedRealtime());
            }
            c5035.f18914 = AbstractC3712.m7765(c5035.f18937, c5035.m9943());
            C5052 c5052 = c5035.f18921;
            c5052.getClass();
            c5052.m9958(0);
            if (!this.f18894 || m9900(this.f18871)) {
                this.f18871.play();
            }
        }
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final long mo9915(boolean z) {
        ArrayDeque arrayDeque;
        long j;
        if (!m9922() || this.f18889) {
            return Long.MIN_VALUE;
        }
        long min = Math.min(this.f18890.m9944(), AbstractC3712.m7765(this.f18845.f18983, m9925()));
        while (true) {
            arrayDeque = this.f18841;
            if (arrayDeque.isEmpty() || min < ((C5051) arrayDeque.getFirst()).f19000) {
                break;
            }
            this.f18844 = (C5051) arrayDeque.remove();
        }
        C5051 c5051 = this.f18844;
        long j2 = min - c5051.f19000;
        long m7793 = AbstractC3712.m7793(j2, c5051.f19003.f5838);
        boolean isEmpty = arrayDeque.isEmpty();
        ﹳٴ r2 = this.f18893;
        if (isEmpty) {
            C1660 c1660 = (C1660) r2.ˈٴ;
            if (c1660.mo4516()) {
                if (c1660.f6748 >= 1024) {
                    long j3 = c1660.f6752;
                    c1660.f6745.getClass();
                    long j4 = j3 - ((r7.f6725 * r7.f6730) * 2);
                    int i = c1660.f6753.f6761;
                    int i2 = c1660.f6751.f6761;
                    j2 = i == i2 ? AbstractC3712.m7797(j2, j4, c1660.f6748, RoundingMode.DOWN) : AbstractC3712.m7797(j2, j4 * i, c1660.f6748 * i2, RoundingMode.DOWN);
                } else {
                    j2 = (long) (c1660.f6744 * j2);
                }
            }
            C5051 c50512 = this.f18844;
            j = c50512.f19002 + j2;
            c50512.f19001 = j2 - m7793;
        } else {
            C5051 c50513 = this.f18844;
            j = c50513.f19002 + m7793 + c50513.f19001;
        }
        long j5 = ((C5028) r2.ʽʽ).f18813;
        long m7765 = AbstractC3712.m7765(this.f18845.f18983, j5) + j;
        long j6 = this.f18854;
        if (j5 > j6) {
            long m77652 = AbstractC3712.m7765(this.f18845.f18983, j5 - j6);
            this.f18854 = j5;
            this.f18898 += m77652;
            if (this.f18897 == null) {
                this.f18897 = new Handler(Looper.myLooper());
            }
            this.f18897.removeCallbacksAndMessages(null);
            this.f18897.postDelayed(new RunnableC3568(14, this), 100L);
        }
        return m7765;
    }

    /* JADX WARN: Removed duplicated region for block: B:92:0x01dd  */
    /* JADX WARN: Removed duplicated region for block: B:94:? A[SYNTHETIC] */
    /* renamed from: ˊʻ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m9916() {
        /*
            Method dump skipped, instructions count: 496
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p425.C5031.m9916():boolean");
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ˏי, reason: contains not printable characters */
    public final void mo9917(C1497 c1497) {
        if (this.f18884.equals(c1497)) {
            return;
        }
        c1497.getClass();
        if (this.f18871 != null) {
            this.f18884.getClass();
        }
        this.f18884 = c1497;
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C1485 mo9918() {
        return this.f18855;
    }

    @Override // p425.InterfaceC5032
    /* renamed from: יـ, reason: contains not printable characters */
    public final int mo9919(C1495 c1495) {
        m9927();
        String str = c1495.f5930;
        int i = c1495.f5915;
        if ("audio/raw".equals(str)) {
            if (!AbstractC3712.m7770(i)) {
                AbstractC2305.m5373(i, "Invalid PCM encoding: ", "DefaultAudioSink");
                return 0;
            }
            if (i != 2) {
                return 1;
            }
        } else if (this.f18847.m9957(this.f18846, c1495) == null) {
            return 0;
        }
        return 2;
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void mo9920() {
        this.f18851 = true;
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final void m9921() {
        if (this.f18894) {
            return;
        }
        this.f18894 = true;
        long m9925 = m9925();
        C5035 c5035 = this.f18890;
        c5035.f18932 = c5035.m9943();
        c5035.f18924.getClass();
        c5035.f18913 = AbstractC3712.m7757(SystemClock.elapsedRealtime());
        c5035.f18912 = m9925;
        if (m9900(this.f18871)) {
            this.f18856 = false;
        }
        this.f18871.stop();
        this.f18875 = 0;
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final boolean m9922() {
        return this.f18871 != null;
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final long mo9923() {
        if (!m9922()) {
            return -9223372036854775807L;
        }
        AudioTrack audioTrack = this.f18871;
        C5047 c5047 = this.f18845;
        if (c5047.f18980 == 0) {
            return AbstractC3712.m7765(c5047.f18983, audioTrack.getBufferSizeInFrames());
        }
        long bufferSizeInFrames = audioTrack.getBufferSizeInFrames();
        int m5918 = AbstractC2649.m5918(c5047.f18985);
        AbstractC3731.m7857(m5918 != -2147483647);
        return AbstractC3712.m7797(bufferSizeInFrames, 1000000L, m5918, RoundingMode.DOWN);
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void m9924(long j) {
        int write;
        ʽ r0;
        boolean z;
        C1740 c1740 = this.f18857;
        if (this.f18840 == null) {
            return;
        }
        if (((Exception) c1740.f7093) != null) {
            synchronized (f18834) {
                z = f18833 > 0;
            }
            if (z || SystemClock.elapsedRealtime() < c1740.f7094) {
                return;
            }
        }
        int remaining = this.f18840.remaining();
        if (this.f18877) {
            AbstractC3731.m7857(j != -9223372036854775807L);
            if (j == Long.MIN_VALUE) {
                j = this.f18866;
            } else {
                this.f18866 = j;
            }
            AudioTrack audioTrack = this.f18871;
            ByteBuffer byteBuffer = this.f18840;
            if (Build.VERSION.SDK_INT >= 26) {
                write = audioTrack.write(byteBuffer, remaining, 1, 1000 * j);
            } else {
                if (this.f18861 == null) {
                    ByteBuffer allocate = ByteBuffer.allocate(16);
                    this.f18861 = allocate;
                    allocate.order(ByteOrder.BIG_ENDIAN);
                    this.f18861.putInt(1431633921);
                }
                if (this.f18875 == 0) {
                    this.f18861.putInt(4, remaining);
                    this.f18861.putLong(8, j * 1000);
                    this.f18861.position(0);
                    this.f18875 = remaining;
                }
                int remaining2 = this.f18861.remaining();
                if (remaining2 > 0) {
                    int write2 = audioTrack.write(this.f18861, remaining2, 1);
                    if (write2 < 0) {
                        this.f18875 = 0;
                        write = write2;
                    } else if (write2 < remaining2) {
                        write = 0;
                    }
                }
                write = audioTrack.write(byteBuffer, remaining, 1);
                if (write < 0) {
                    this.f18875 = 0;
                } else {
                    this.f18875 -= write;
                }
            }
        } else {
            write = this.f18871.write(this.f18840, remaining, 1);
        }
        this.f18879 = SystemClock.elapsedRealtime();
        if (write < 0) {
            if ((Build.VERSION.SDK_INT >= 24 && write == -6) || write == -32) {
                if (m9925() <= 0) {
                    if (m9900(this.f18871)) {
                        if (this.f18845.f18980 == 1) {
                            this.f18838 = true;
                        }
                    }
                }
                r2 = true;
            }
            AudioSink$WriteException audioSink$WriteException = new AudioSink$WriteException(write, this.f18845.f18988, r2);
            ʽ r13 = this.f18870;
            if (r13 != null) {
                r13.ᵔʾ(audioSink$WriteException);
            }
            if (!audioSink$WriteException.f1219 || this.f18895 == null) {
                c1740.m4690(audioSink$WriteException);
                return;
            }
            C5049 c5049 = C5049.f18991;
            this.f18847 = c5049;
            this.f18839.m9949(c5049);
            throw audioSink$WriteException;
        }
        c1740.f7093 = null;
        c1740.f7095 = -9223372036854775807L;
        c1740.f7094 = -9223372036854775807L;
        if (m9900(this.f18871)) {
            if (this.f18883 > 0) {
                this.f18863 = false;
            }
            if (this.f18881 && (r0 = this.f18870) != null && write < remaining && !this.f18863) {
                switch (r0.ʾˋ) {
                    case 17:
                        break;
                    default:
                        C4651 c4651 = ((C5030) r0.ᴵˊ).f4505;
                        if (c4651 != null) {
                            c4651.f17439.f17602 = true;
                            break;
                        }
                        break;
                }
            }
        }
        int i = this.f18845.f18980;
        if (i == 0) {
            this.f18874 += write;
        }
        if (write == remaining) {
            if (i != 0) {
                AbstractC3731.m7857(this.f18840 == this.f18864);
                this.f18883 = (this.f18888 * this.f18862) + this.f18883;
            }
            this.f18840 = null;
        }
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final long m9925() {
        C5047 c5047 = this.f18845;
        if (c5047.f18980 != 0) {
            return this.f18883;
        }
        long j = this.f18874;
        long j2 = c5047.f18982;
        String str = AbstractC3712.f14481;
        return ((j + j2) - 1) / j2;
    }

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final void m9926(long j) {
        ByteBuffer byteBuffer;
        m9924(j);
        if (this.f18840 != null) {
            return;
        }
        if (!this.f18837.m4548()) {
            ByteBuffer byteBuffer2 = this.f18864;
            if (byteBuffer2 != null) {
                m9911(byteBuffer2);
                m9924(j);
                return;
            }
            return;
        }
        while (!this.f18837.m4547()) {
            do {
                C1665 c1665 = this.f18837;
                if (c1665.m4548()) {
                    ByteBuffer byteBuffer3 = c1665.f6766[c1665.m4550()];
                    if (byteBuffer3.hasRemaining()) {
                        byteBuffer = byteBuffer3;
                    } else {
                        c1665.m4549(InterfaceC1662.f6762);
                        byteBuffer = c1665.f6766[c1665.m4550()];
                    }
                } else {
                    byteBuffer = InterfaceC1662.f6762;
                }
                if (byteBuffer.hasRemaining()) {
                    m9911(byteBuffer);
                    m9924(j);
                } else {
                    ByteBuffer byteBuffer4 = this.f18864;
                    if (byteBuffer4 == null || !byteBuffer4.hasRemaining()) {
                        return;
                    }
                    C1665 c16652 = this.f18837;
                    ByteBuffer byteBuffer5 = this.f18864;
                    if (c16652.m4548() && !c16652.f6767) {
                        c16652.m4549(byteBuffer5);
                    }
                }
            } while (this.f18840 == null);
            return;
        }
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m9927() {
        Context context;
        C5049 c5049;
        Looper myLooper = Looper.myLooper();
        boolean z = this.f18839 == null || this.f18873 == myLooper;
        StringBuilder sb = new StringBuilder("DefaultAudioSink accessed on multiple threads: ");
        Looper looper = this.f18873;
        sb.append(looper == null ? "null" : looper.getThread().getName());
        sb.append(" and ");
        sb.append(myLooper != null ? myLooper.getThread().getName() : "null");
        AbstractC3731.m7848(sb.toString(), z);
        if (this.f18839 == null && (context = this.f18895) != null) {
            this.f18873 = myLooper;
            C5038 c5038 = new C5038(context, new C3569(28, this), this.f18846, this.f18878);
            this.f18839 = c5038;
            if (c5038.f18944) {
                c5049 = c5038.f18947;
                c5049.getClass();
            } else {
                c5038.f18944 = true;
                C5033 c5033 = c5038.f18951;
                if (c5033 != null) {
                    c5033.f18903.registerContentObserver(c5033.f18902, false, c5033);
                }
                Handler handler = c5038.f18943;
                Context context2 = c5038.f18950;
                C5027 c5027 = c5038.f18945;
                if (c5027 != null) {
                    AbstractC1659.m4534(context2).registerAudioDeviceCallback(c5027, handler);
                }
                C5049 m9955 = C5049.m9955(context2, context2.registerReceiver(c5038.f18946, new IntentFilter("android.media.action.HDMI_AUDIO_PLUG"), null, handler), c5038.f18942, c5038.f18948);
                c5038.f18947 = m9955;
                c5049 = m9955;
            }
            this.f18847 = c5049;
        }
        this.f18847.getClass();
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo9928(C1471 c1471) {
        if (this.f18846.equals(c1471)) {
            return;
        }
        this.f18846 = c1471;
        if (this.f18877) {
            return;
        }
        C5038 c5038 = this.f18839;
        if (c5038 != null) {
            c5038.f18942 = c1471;
            c5038.m9949(C5049.m9954(c5038.f18950, c1471, c5038.f18948));
        }
        flush();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:257:0x00b3, code lost:
    
        if (m9916() == false) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x03e8, code lost:
    
        if (r15 == 0) goto L224;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:87:0x01cf. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:119:0x01fc  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x02c9  */
    /* JADX WARN: Removed duplicated region for block: B:131:0x02cc  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x02d4  */
    /* JADX WARN: Removed duplicated region for block: B:241:0x04cb  */
    @Override // p425.InterfaceC5032
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean mo9929(java.nio.ByteBuffer r28, long r29, int r31) {
        /*
            Method dump skipped, instructions count: 1286
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p425.C5031.mo9929(java.nio.ByteBuffer, long, int):boolean");
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final void m9930() {
        if (m9922()) {
            try {
                this.f18871.setPlaybackParams(new PlaybackParams().allowDefaults().setSpeed(this.f18855.f5838).setPitch(this.f18855.f5837).setAudioFallbackMode(2));
            } catch (IllegalArgumentException e) {
                AbstractC3731.m7859("DefaultAudioSink", "Failed to set playback params", e);
            }
            C1485 c1485 = new C1485(this.f18871.getPlaybackParams().getSpeed(), this.f18871.getPlaybackParams().getPitch());
            this.f18855 = c1485;
            float f = c1485.f5838;
            C5035 c5035 = this.f18890;
            c5035.f18930 = f;
            C5052 c5052 = c5035.f18921;
            if (c5052 != null) {
                c5052.m9958(0);
            }
            c5035.m9945();
        }
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo9931() {
        if (!this.f18872 && m9922() && m9906()) {
            m9921();
            this.f18872 = true;
        }
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void mo9932(C0783 c0783) {
        this.f18896 = c0783;
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final AudioTrack m9933(C5025 c5025, C1471 c1471, int i, C1495 c1495, Context context) {
        try {
            AudioTrack m9953 = this.f18842.m9953(c5025, c1471, i, context);
            int state = m9953.getState();
            if (state == 1) {
                return m9953;
            }
            try {
                m9953.release();
            } catch (Exception unused) {
            }
            throw new AudioSink$InitializationException(state, c5025.f18791, c5025.f18788, c5025.f18792, c5025.f18793, c1495, c5025.f18790, null);
        } catch (IllegalArgumentException | UnsupportedOperationException e) {
            throw new AudioSink$InitializationException(0, c5025.f18791, c5025.f18788, c5025.f18792, c5025.f18793, c1495, c5025.f18790, e);
        }
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean mo9934() {
        if (m9922()) {
            return this.f18872 && !mo9903();
        }
        return true;
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean mo9935(C1495 c1495) {
        return mo9919(c1495) != 0;
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void mo9936(C3721 c3721) {
        this.f18890.f18924 = c3721;
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void mo9937(ʽ r1) {
        this.f18870 = r1;
    }

    @Override // p425.InterfaceC5032
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo9938() {
        AbstractC3731.m7857(this.f18859);
        if (this.f18877) {
            return;
        }
        this.f18877 = true;
        flush();
    }
}
