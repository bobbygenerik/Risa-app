package p457;

import android.content.Context;
import android.graphics.Point;
import android.media.MediaCodecInfo;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.os.Trace;
import android.util.Pair;
import android.util.SparseArray;
import android.view.Surface;
import androidx.media3.exoplayer.mediacodec.MediaCodecDecoderException;
import androidx.media3.exoplayer.video.VideoSink$VideoSinkException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.PriorityQueue;
import p004.C0812;
import p012.C0888;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p032.AbstractC1162;
import p032.AbstractC1167;
import p032.C1161;
import p032.C1165;
import p032.InterfaceC1170;
import p032.InterfaceC1171;
import p055.AbstractC1445;
import p055.AbstractC1464;
import p055.C1446;
import p055.C1467;
import p055.C1469;
import p055.C1490;
import p055.C1495;
import p055.InterfaceC1478;
import p076.AbstractC1659;
import p262.C3433;
import p305.AbstractC3712;
import p305.AbstractC3715;
import p305.AbstractC3731;
import p305.C3721;
import p305.C3723;
import p307.AbstractC3740;
import p311.RunnableC3805;
import p384.C4603;
import p392.C4651;
import p392.C4669;
import p392.C4677;
import p392.C4678;
import p392.C4687;
import p392.C4699;
import p404.C4799;
import p411.RunnableC4889;
import p420.C4987;
import p420.InterfaceC4956;
import p421.C4996;
import ʻʿ.ˈ;

/* renamed from: ﾞˏ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC5389 extends AbstractC1167 {

    /* renamed from: ʼˋ, reason: contains not printable characters */
    public static boolean f20520;

    /* renamed from: ˊˎ, reason: contains not printable characters */
    public static boolean f20521;

    /* renamed from: ˎˏ, reason: contains not printable characters */
    public static final int[] f20522 = {1920, 1600, 1440, 1280, 960, 854, 640, 540, 480};

    /* renamed from: ʻʻ, reason: contains not printable characters */
    public boolean f20523;

    /* renamed from: ʻʼ, reason: contains not printable characters */
    public C0888 f20524;

    /* renamed from: ʻˆ, reason: contains not printable characters */
    public C3723 f20525;

    /* renamed from: ʻᐧ, reason: contains not printable characters */
    public int f20526;

    /* renamed from: ʼᵎ, reason: contains not printable characters */
    public long f20527;

    /* renamed from: ʼﾞ, reason: contains not printable characters */
    public boolean f20528;

    /* renamed from: ʽʾ, reason: contains not printable characters */
    public final C3433 f20529;

    /* renamed from: ʽᐧ, reason: contains not printable characters */
    public int f20530;

    /* renamed from: ʾˏ, reason: contains not printable characters */
    public int f20531;

    /* renamed from: ʿʽ, reason: contains not printable characters */
    public final C0812 f20532;

    /* renamed from: ʿˎ, reason: contains not printable characters */
    public long f20533;

    /* renamed from: ˆʻ, reason: contains not printable characters */
    public InterfaceC5400 f20534;

    /* renamed from: ˆˎ, reason: contains not printable characters */
    public final PriorityQueue f20535;

    /* renamed from: ˆˑ, reason: contains not printable characters */
    public final int f20536;

    /* renamed from: ˆﹳ, reason: contains not printable characters */
    public final long f20537;

    /* renamed from: ˈʻ, reason: contains not printable characters */
    public int f20538;

    /* renamed from: ˉʽ, reason: contains not printable characters */
    public boolean f20539;

    /* renamed from: ˊـ, reason: contains not printable characters */
    public boolean f20540;

    /* renamed from: ˊﹳ, reason: contains not printable characters */
    public final boolean f20541;

    /* renamed from: ˋ, reason: contains not printable characters */
    public C5382 f20542;

    /* renamed from: ˋˋ, reason: contains not printable characters */
    public boolean f20543;

    /* renamed from: ˎʼ, reason: contains not printable characters */
    public C5409 f20544;

    /* renamed from: ˎـ, reason: contains not printable characters */
    public final boolean f20545;

    /* renamed from: ˎᵎ, reason: contains not printable characters */
    public int f20546;

    /* renamed from: ˏʻ, reason: contains not printable characters */
    public boolean f20547;

    /* renamed from: ˏⁱ, reason: contains not printable characters */
    public final Context f20548;

    /* renamed from: ˑˉ, reason: contains not printable characters */
    public int f20549;

    /* renamed from: ˑﹶ, reason: contains not printable characters */
    public Surface f20550;

    /* renamed from: יʿ, reason: contains not printable characters */
    public int f20551;

    /* renamed from: יˑ, reason: contains not printable characters */
    public C1469 f20552;

    /* renamed from: יי, reason: contains not printable characters */
    public C1469 f20553;

    /* renamed from: יⁱ, reason: contains not printable characters */
    public int f20554;

    /* renamed from: ـˑ, reason: contains not printable characters */
    public C4669 f20555;

    /* renamed from: ᐧˏ, reason: contains not printable characters */
    public int f20556;

    /* renamed from: ᐧⁱ, reason: contains not printable characters */
    public boolean f20557;

    /* renamed from: ᴵٴ, reason: contains not printable characters */
    public List f20558;

    /* renamed from: ᵢʻ, reason: contains not printable characters */
    public final C5380 f20559;

    /* renamed from: ᵢי, reason: contains not printable characters */
    public long f20560;

    /* renamed from: ᵢᐧ, reason: contains not printable characters */
    public boolean f20561;

    /* renamed from: ᵢᵎ, reason: contains not printable characters */
    public InterfaceC5386 f20562;

    /* renamed from: ᵢﹳ, reason: contains not printable characters */
    public int f20563;

    /* renamed from: ⁱʾ, reason: contains not printable characters */
    public long f20564;

    /* renamed from: ﾞˊ, reason: contains not printable characters */
    public boolean f20565;

    /* renamed from: ﾞי, reason: contains not printable characters */
    public long f20566;

    public AbstractC5389(C5403 c5403) {
        super(2, c5403.f20607, c5403.f20612, c5403.f20609, 30.0f);
        Context applicationContext = c5403.f20613.getApplicationContext();
        this.f20548 = applicationContext;
        this.f20536 = c5403.f20611;
        this.f20534 = null;
        this.f20529 = new C3433(c5403.f20614, (InterfaceC5385) c5403.f20610);
        this.f20541 = this.f20534 == null;
        this.f20559 = new C5380(applicationContext, this, c5403.f20608);
        this.f20532 = new C0812();
        this.f20545 = "NVIDIA".equals(Build.MANUFACTURER);
        this.f20525 = C3723.f14499;
        this.f20554 = 1;
        this.f20530 = 0;
        this.f20553 = C1469.f5752;
        this.f20526 = 0;
        this.f20552 = null;
        this.f20563 = -1000;
        this.f20566 = -9223372036854775807L;
        this.f20527 = -9223372036854775807L;
        this.f20535 = new PriorityQueue();
        this.f20537 = -9223372036854775807L;
        this.f20555 = null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:396:0x0736, code lost:
    
        if (r0.equals("ELUGA_Ray_X") == false) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x08b7, code lost:
    
        if (r13.equals("JSN-L21") == false) goto L664;
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x008b A[FALL_THROUGH] */
    /* renamed from: ʽⁱ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m10785(java.lang.String r17) {
        /*
            Method dump skipped, instructions count: 3206
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p457.AbstractC5389.m10785(java.lang.String):boolean");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0084, code lost:
    
        if (r3.equals("video/av01") == false) goto L22;
     */
    /* renamed from: ʾﾞ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int m10786(p032.C1165 r11, p055.C1495 r12) {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p457.AbstractC5389.m10786(ʼᵢ.ᵔʾ, ʽⁱ.ﹳᐧ):int");
    }

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public static int m10787(C1165 c1165, C1495 c1495) {
        int i = c1495.f5914;
        List list = c1495.f5934;
        if (i == -1) {
            return m10786(c1165, c1495);
        }
        int size = list.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += ((byte[]) list.get(i3)).length;
        }
        return c1495.f5914 + i2;
    }

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public static List m10788(Context context, InterfaceC1170 interfaceC1170, C1495 c1495, boolean z, boolean z2) {
        String str = c1495.f5930;
        if (str == null) {
            return C0956.f3901;
        }
        if (Build.VERSION.SDK_INT >= 26 && "video/dolby-vision".equals(str) && !AbstractC1659.m4532(context)) {
            String m3624 = AbstractC1162.m3624(c1495);
            List mo3583 = m3624 == null ? C0956.f3901 : interfaceC1170.mo3583(m3624, z, z2);
            if (!mo3583.isEmpty()) {
                return mo3583;
            }
        }
        return AbstractC1162.m3626(interfaceC1170, c1495, z, z2);
    }

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public final void m10789(InterfaceC1171 interfaceC1171, int i, long j) {
        Surface surface;
        Trace.beginSection("releaseOutputBuffer");
        interfaceC1171.mo3596(i, j);
        Trace.endSection();
        this.f4519.f17743++;
        this.f20531 = 0;
        if (this.f20534 == null) {
            C1469 c1469 = this.f20553;
            boolean equals = c1469.equals(C1469.f5752);
            C3433 c3433 = this.f20529;
            if (!equals && !c1469.equals(this.f20552)) {
                this.f20552 = c1469;
                c3433.m7328(c1469);
            }
            C5380 c5380 = this.f20559;
            boolean z = c5380.f20489 != 3;
            c5380.f20489 = 3;
            c5380.f20496.getClass();
            c5380.f20491 = AbstractC3712.m7757(SystemClock.elapsedRealtime());
            if (!z || (surface = this.f20550) == null) {
                return;
            }
            Handler handler = (Handler) c3433.f13458;
            if (handler != null) {
                handler.post(new RunnableC4889(c3433, surface, SystemClock.elapsedRealtime()));
            }
            this.f20547 = true;
        }
    }

    @Override // p032.AbstractC1167
    /* renamed from: ʻˋ */
    public final void mo3639() {
        super.mo3639();
        this.f20535.clear();
        this.f20556 = 0;
        this.f20538 = 0;
        this.f20540 = false;
    }

    @Override // p032.AbstractC1167, p392.AbstractC4671
    /* renamed from: ʻٴ */
    public final void mo756(C1495[] c1495Arr, long j, long j2, C4987 c4987) {
        super.mo756(c1495Arr, j, j2, c4987);
        AbstractC1445 abstractC1445 = this.f17512;
        if (abstractC1445.m4217()) {
            this.f20527 = -9223372036854775807L;
        } else {
            c4987.getClass();
            this.f20527 = abstractC1445.mo4225(c4987.f18631, new C1467()).f5745;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0070 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0059  */
    /* JADX WARN: Type inference failed for: r0v10, types: [android.os.HandlerThread, java.lang.Thread, android.os.Handler$Callback, ﾞˏ.ٴﹶ, java.lang.Object] */
    /* renamed from: ʻᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.view.Surface m10790(p032.C1165 r6) {
        /*
            r5 = this;
            ﾞˏ.ᴵᵔ r0 = r5.f20534
            if (r0 == 0) goto L9
            android.view.Surface r6 = r0.mo10813()
            return r6
        L9:
            android.view.Surface r0 = r5.f20550
            if (r0 == 0) goto Le
            return r0
        Le:
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 35
            r2 = 0
            if (r0 < r1) goto L1a
            boolean r0 = r6.f4460
            if (r0 == 0) goto L1a
            return r2
        L1a:
            boolean r0 = r5.m10795(r6)
            p305.AbstractC3731.m7857(r0)
            ﾞˏ.ﾞʻ r0 = r5.f20544
            if (r0 == 0) goto L32
            boolean r1 = r0.f20661
            boolean r3 = r6.f4464
            if (r1 == r3) goto L32
            if (r0 == 0) goto L32
            r0.release()
            r5.f20544 = r2
        L32:
            ﾞˏ.ﾞʻ r0 = r5.f20544
            if (r0 != 0) goto Lab
            android.content.Context r0 = r5.f20548
            boolean r6 = r6.f4464
            r1 = 1
            r2 = 0
            if (r6 == 0) goto L47
            boolean r0 = p457.C5409.m10838(r0)
            if (r0 == 0) goto L45
            goto L49
        L45:
            r0 = r2
            goto L4a
        L47:
            int r0 = p457.C5409.f20658
        L49:
            r0 = r1
        L4a:
            p305.AbstractC3731.m7857(r0)
            ﾞˏ.ٴﹶ r0 = new ﾞˏ.ٴﹶ
            java.lang.String r3 = "ExoPlayer:PlaceholderSurface"
            r0.<init>(r3)
            if (r6 == 0) goto L59
            int r6 = p457.C5409.f20658
            goto L5a
        L59:
            r6 = r2
        L5a:
            r0.start()
            android.os.Handler r3 = new android.os.Handler
            android.os.Looper r4 = r0.getLooper()
            r3.<init>(r4, r0)
            r0.f20600 = r3
            ᐧˎ.ᵔᵢ r4 = new ᐧˎ.ᵔᵢ
            r4.<init>(r3)
            r0.f20598 = r4
            monitor-enter(r0)
            android.os.Handler r3 = r0.f20600     // Catch: java.lang.Throwable -> L89
            android.os.Message r6 = r3.obtainMessage(r1, r6, r2)     // Catch: java.lang.Throwable -> L89
            r6.sendToTarget()     // Catch: java.lang.Throwable -> L89
        L79:
            ﾞˏ.ﾞʻ r6 = r0.f20601     // Catch: java.lang.Throwable -> L89
            if (r6 != 0) goto L8d
            java.lang.RuntimeException r6 = r0.f20599     // Catch: java.lang.Throwable -> L89
            if (r6 != 0) goto L8d
            java.lang.Error r6 = r0.f20597     // Catch: java.lang.Throwable -> L89
            if (r6 != 0) goto L8d
            r0.wait()     // Catch: java.lang.Throwable -> L89 java.lang.InterruptedException -> L8b
            goto L79
        L89:
            r6 = move-exception
            goto La9
        L8b:
            r2 = r1
            goto L79
        L8d:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L89
            if (r2 == 0) goto L97
            java.lang.Thread r6 = java.lang.Thread.currentThread()
            r6.interrupt()
        L97:
            java.lang.RuntimeException r6 = r0.f20599
            if (r6 != 0) goto La8
            java.lang.Error r6 = r0.f20597
            if (r6 != 0) goto La7
            ﾞˏ.ﾞʻ r6 = r0.f20601
            r6.getClass()
            r5.f20544 = r6
            goto Lab
        La7:
            throw r6
        La8:
            throw r6
        La9:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L89
            throw r6
        Lab:
            ﾞˏ.ﾞʻ r6 = r5.f20544
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: p457.AbstractC5389.m10790(ʼᵢ.ᵔʾ):android.view.Surface");
    }

    /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Object, ⁱי.ﾞᴵ] */
    @Override // p392.AbstractC4671
    /* renamed from: ʼᐧ */
    public final void mo758(boolean z, boolean z2) {
        InterfaceC5400 interfaceC5400;
        this.f4519 = new Object();
        C4678 c4678 = this.f17507;
        c4678.getClass();
        boolean z3 = c4678.f17554;
        AbstractC3731.m7857((z3 && this.f20526 == 0) ? false : true);
        if (this.f20557 != z3) {
            this.f20557 = z3;
            m3650();
        }
        C4699 c4699 = this.f4519;
        C3433 c3433 = this.f20529;
        Handler handler = (Handler) c3433.f13458;
        if (handler != null) {
            handler.post(new RunnableC5399(c3433, c4699, 5));
        }
        boolean z4 = this.f20539;
        C5380 c5380 = this.f20559;
        if (!z4) {
            if (this.f20558 != null && this.f20534 == null) {
                C4677 c4677 = new C4677(this.f20548, c5380);
                c4677.f17548 = true;
                C3721 c3721 = this.f17514;
                c3721.getClass();
                c4677.f17550 = c3721;
                AbstractC3731.m7857(!c4677.f17551);
                if (((C5393) c4677.f17552) == null) {
                    c4677.f17552 = new C5393();
                }
                C5404 c5404 = new C5404(c4677);
                c4677.f17551 = true;
                c5404.f20620 = 1;
                SparseArray sparseArray = c5404.f20616;
                if (AbstractC3712.m7789(sparseArray, 0)) {
                    interfaceC5400 = (InterfaceC5400) sparseArray.get(0);
                } else {
                    C5392 c5392 = new C5392(c5404, c5404.f20627);
                    c5404.f20623.add(c5392);
                    sparseArray.put(0, c5392);
                    interfaceC5400 = c5392;
                }
                this.f20534 = interfaceC5400;
            }
            this.f20539 = true;
        }
        InterfaceC5400 interfaceC54002 = this.f20534;
        if (interfaceC54002 == null) {
            C3721 c37212 = this.f17514;
            c37212.getClass();
            c5380.f20496 = c37212;
            c5380.m10780(!z2 ? 1 : 0);
            return;
        }
        interfaceC54002.mo10806(new C4603(this));
        InterfaceC5386 interfaceC5386 = this.f20562;
        if (interfaceC5386 != null) {
            this.f20534.mo10809(interfaceC5386);
        }
        if (this.f20550 != null && !this.f20525.equals(C3723.f14499)) {
            this.f20534.mo10820(this.f20550, this.f20525);
        }
        this.f20534.mo10815(this.f20530);
        this.f20534.mo10807(this.f4526);
        List list = this.f20558;
        if (list != null) {
            this.f20534.mo10817(list);
        }
        this.f20551 = !z2 ? 1 : 0;
        this.f4506 = true;
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public final void m10791(long j) {
        C4699 c4699 = this.f4519;
        c4699.f17744 += j;
        c4699.f17749++;
        this.f20560 += j;
        this.f20549++;
    }

    @Override // p032.AbstractC1167
    /* renamed from: ʽᵔ */
    public final boolean mo3644() {
        C1495 c1495 = this.f4508;
        if (this.f20555 == null || this.f20540 || this.f20557) {
            return true;
        }
        return (c1495 != null && c1495.f5902 > 0) || this.f4532 || this.f4531 != -9223372036854775807L;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ʽﹳ */
    public final void mo761() {
        m10792();
        int i = this.f20549;
        if (i != 0) {
            long j = this.f20560;
            C3433 c3433 = this.f20529;
            Handler handler = (Handler) c3433.f13458;
            if (handler != null) {
                handler.post(new RunnableC5399(c3433, j, i));
            }
            this.f20560 = 0L;
            this.f20549 = 0;
        }
        InterfaceC5400 interfaceC5400 = this.f20534;
        if (interfaceC5400 != null) {
            interfaceC5400.mo10819();
        } else {
            this.f20559.m10775();
        }
    }

    @Override // p032.AbstractC1167, p392.AbstractC4671
    /* renamed from: ʾᵎ */
    public final void mo763(long j, long j2) {
        InterfaceC5400 interfaceC5400 = this.f20534;
        if (interfaceC5400 != null) {
            try {
                interfaceC5400.mo10808(j, j2);
            } catch (VideoSink$VideoSinkException e) {
                throw m9276(e, e.f1253, false, 7001);
            }
        }
        super.mo763(j, j2);
    }

    @Override // p032.AbstractC1167
    /* renamed from: ʿ */
    public final void mo3646(String str) {
        C3433 c3433 = this.f20529;
        Handler handler = (Handler) c3433.f13458;
        if (handler != null) {
            handler.post(new RunnableC5399(c3433, str, 2));
        }
    }

    /* renamed from: ʿـ, reason: contains not printable characters */
    public final void m10792() {
        if (this.f20546 > 0) {
            this.f17514.getClass();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            long j = elapsedRealtime - this.f20564;
            int i = this.f20546;
            C3433 c3433 = this.f20529;
            Handler handler = (Handler) c3433.f13458;
            if (handler != null) {
                handler.post(new RunnableC5399(c3433, i, j));
            }
            this.f20546 = 0;
            this.f20564 = elapsedRealtime;
        }
    }

    @Override // p032.AbstractC1167
    /* renamed from: ʿᵢ */
    public final C4687 mo3647(C3433 c3433) {
        C4687 mo3647 = super.mo3647(c3433);
        C1495 c1495 = (C1495) c3433.f13456;
        c1495.getClass();
        C3433 c34332 = this.f20529;
        Handler handler = (Handler) c34332.f13458;
        if (handler != null) {
            handler.post(new RunnableC3805(c34332, c1495, mo3647, 14));
        }
        return mo3647;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˆʾ */
    public final String mo764() {
        return "MediaCodecVideoRenderer";
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˆﾞ */
    public final float mo3648(float f, C1495 c1495, C1495[] c1495Arr) {
        C1165 c1165;
        float f2 = -1.0f;
        for (C1495 c14952 : c1495Arr) {
            float f3 = c14952.f5900;
            if (f3 != -1.0f) {
                f2 = Math.max(f2, f3);
            }
        }
        float f4 = f2 == -1.0f ? -1.0f : f2 * f;
        if (this.f20555 == null || (c1165 = this.f4477) == null) {
            return f4;
        }
        int i = c1495.f5905;
        int i2 = c1495.f5899;
        float f5 = -3.4028235E38f;
        if (c1165.f4453) {
            float f6 = c1165.f4463;
            if (f6 != -3.4028235E38f && c1165.f4455 == i && c1165.f4458 == i2) {
                f5 = f6;
            } else {
                float f7 = 1024.0f;
                if (!c1165.m3635(i, i2, 1024.0f)) {
                    f5 = 0.0f;
                    while (true) {
                        float f8 = f7 - f5;
                        if (Math.abs(f8) <= 5.0f) {
                            break;
                        }
                        float f9 = (f8 / 2.0f) + f5;
                        if (c1165.m3635(i, i2, f9)) {
                            f5 = f9;
                        } else {
                            f7 = f9;
                        }
                    }
                } else {
                    f5 = 1024.0f;
                }
                c1165.f4463 = f5;
                c1165.f4455 = i;
                c1165.f4458 = i2;
            }
        }
        return f4 != -1.0f ? Math.max(f4, f5) : f5;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˈ */
    public final void mo785() {
        InterfaceC5400 interfaceC5400 = this.f20534;
        if (interfaceC5400 == null) {
            C5380 c5380 = this.f20559;
            if (c5380.f20489 == 0) {
                c5380.f20489 = 1;
                return;
            }
            return;
        }
        int i = this.f20551;
        if (i == 0 || i == 1) {
            this.f20551 = 0;
        } else {
            interfaceC5400.mo10802();
        }
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˈٴ */
    public final C4687 mo3651(C1165 c1165, C1495 c1495, C1495 c14952) {
        C4687 m3637 = c1165.m3637(c1495, c14952);
        int i = m3637.f17666;
        C0888 c0888 = this.f20524;
        c0888.getClass();
        if (c14952.f5905 > c0888.f3755 || c14952.f5899 > c0888.f3754) {
            i |= 256;
        }
        if (m10787(c1165, c14952) > c0888.f3753) {
            i |= 64;
        }
        int i2 = i;
        return new C4687(c1165.f4462, c1495, c14952, i2 != 0 ? 0 : m3637.f17665, i2);
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˈⁱ */
    public final boolean mo3652(C1495 c1495) {
        InterfaceC5400 interfaceC5400 = this.f20534;
        if (interfaceC5400 == null || interfaceC5400.mo10812()) {
            return true;
        }
        try {
            return this.f20534.mo10816(c1495);
        } catch (VideoSink$VideoSinkException e) {
            throw m9276(e, c1495, false, 7000);
        }
    }

    @Override // p032.AbstractC1167, p392.AbstractC4671
    /* renamed from: ˉʿ */
    public final boolean mo766() {
        boolean mo766 = super.mo766();
        InterfaceC5400 interfaceC5400 = this.f20534;
        if (interfaceC5400 != null) {
            return interfaceC5400.mo10818(mo766);
        }
        if (mo766 && (this.f4496 == null || this.f20557)) {
            return true;
        }
        return this.f20559.m10778(mo766);
    }

    @Override // p032.AbstractC1167, p392.AbstractC4671
    /* renamed from: ˉˆ */
    public final void mo767() {
        C3433 c3433 = this.f20529;
        this.f20552 = null;
        this.f20527 = -9223372036854775807L;
        m10799();
        this.f20547 = false;
        this.f20542 = null;
        this.f20540 = true;
        try {
            super.mo767();
        } finally {
            c3433.m7339(this.f4519);
            c3433.m7328(C1469.f5752);
        }
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˉـ */
    public final void mo3653(long j, long j2, String str) {
        String str2;
        MediaCodecInfo.CodecProfileLevel[] codecProfileLevelArr;
        C3433 c3433 = this.f20529;
        Handler handler = (Handler) c3433.f13458;
        if (handler != null) {
            str2 = str;
            handler.post(new RunnableC5399(c3433, str2, j, j2));
        } else {
            str2 = str;
        }
        this.f20561 = m10785(str2);
        C1165 c1165 = this.f4477;
        c1165.getClass();
        boolean z = false;
        if (Build.VERSION.SDK_INT >= 29 && "video/x-vnd.on2.vp9".equals(c1165.f4461)) {
            MediaCodecInfo.CodecCapabilities codecCapabilities = c1165.f4456;
            if (codecCapabilities == null || (codecProfileLevelArr = codecCapabilities.profileLevels) == null) {
                codecProfileLevelArr = new MediaCodecInfo.CodecProfileLevel[0];
            }
            int length = codecProfileLevelArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                if (codecProfileLevelArr[i].profile == 16384) {
                    z = true;
                    break;
                }
                i++;
            }
        }
        this.f20565 = z;
        m10799();
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˊᵔ */
    public final boolean mo3657(long j, long j2, InterfaceC1171 interfaceC1171, ByteBuffer byteBuffer, int i, int i2, int i3, long j3, boolean z, boolean z2, C1495 c1495) {
        int i4;
        interfaceC1171.getClass();
        long j4 = j3 - this.f4490.f4416;
        int i5 = 0;
        while (true) {
            PriorityQueue priorityQueue = this.f20535;
            Long l = (Long) priorityQueue.peek();
            if (l == null || l.longValue() >= j3) {
                break;
            }
            i5++;
            priorityQueue.poll();
        }
        m10801(i5, 0);
        InterfaceC5400 interfaceC5400 = this.f20534;
        if (interfaceC5400 != null) {
            if (!z || z2) {
                return interfaceC5400.mo10803(j3, new C5401(this, interfaceC1171, i, j4));
            }
            m10798(interfaceC1171, i);
            return true;
        }
        int m10779 = this.f20559.m10779(j3, j, j2, this.f4490.f4418, z, z2, this.f20532);
        C0812 c0812 = this.f20532;
        if (m10779 == 0) {
            this.f17514.getClass();
            long nanoTime = System.nanoTime();
            InterfaceC5386 interfaceC5386 = this.f20562;
            if (interfaceC5386 != null) {
                interfaceC5386.mo5637(j4, nanoTime, c1495, this.f4515);
            }
            m10789(interfaceC1171, i, nanoTime);
            m10791(c0812.f3457);
            return true;
        }
        if (m10779 == 1) {
            long j5 = c0812.f3456;
            long j6 = c0812.f3457;
            if (j5 != this.f20533 || this.f20528) {
                InterfaceC5386 interfaceC53862 = this.f20562;
                if (interfaceC53862 != null) {
                    i4 = i;
                    interfaceC53862.mo5637(j4, j5, c1495, this.f4515);
                } else {
                    i4 = i;
                }
                m10789(interfaceC1171, i4, j5);
            } else {
                m10798(interfaceC1171, i);
            }
            m10791(j6);
            this.f20533 = j5;
            return true;
        }
        if (m10779 == 2) {
            Trace.beginSection("dropVideoBuffer");
            interfaceC1171.mo3601(i);
            Trace.endSection();
            m10801(0, 1);
            m10791(c0812.f3457);
            return true;
        }
        if (m10779 == 3) {
            m10798(interfaceC1171, i);
            m10791(c0812.f3457);
            return true;
        }
        if (m10779 == 4 || m10779 == 5) {
            return false;
        }
        throw new IllegalStateException(String.valueOf(m10779));
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˋᵔ */
    public final void mo3658(C4996 c4996) {
        if (this.f20565) {
            ByteBuffer byteBuffer = c4996.f18668;
            byteBuffer.getClass();
            if (byteBuffer.remaining() >= 7) {
                byte b = byteBuffer.get();
                short s = byteBuffer.getShort();
                short s2 = byteBuffer.getShort();
                byte b2 = byteBuffer.get();
                byte b3 = byteBuffer.get();
                byteBuffer.position(0);
                if (b == -75 && s == 60 && s2 == 1 && b2 == 4) {
                    if (b3 == 0 || b3 == 1) {
                        byte[] bArr = new byte[byteBuffer.remaining()];
                        byteBuffer.get(bArr);
                        byteBuffer.position(0);
                        InterfaceC1171 interfaceC1171 = this.f4496;
                        interfaceC1171.getClass();
                        Bundle bundle = new Bundle();
                        bundle.putByteArray("hdr10-plus-info", bArr);
                        interfaceC1171.mo3588(bundle);
                    }
                }
            }
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ˏי */
    public final void mo770() {
        this.f20546 = 0;
        this.f17514.getClass();
        this.f20564 = SystemClock.elapsedRealtime();
        this.f20560 = 0L;
        this.f20549 = 0;
        InterfaceC5400 interfaceC5400 = this.f20534;
        if (interfaceC5400 != null) {
            interfaceC5400.mo10811();
        } else {
            this.f20559.m10774();
        }
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˏᵢ */
    public final void mo3660() {
        InterfaceC5400 interfaceC5400 = this.f20534;
        if (interfaceC5400 != null) {
            interfaceC5400.mo10814();
            if (this.f20566 == -9223372036854775807L) {
                this.f20566 = this.f4490.f4418;
            }
            this.f20534.mo10823(-this.f20566);
        } else {
            this.f20559.m10780(2);
        }
        this.f20523 = true;
        m10799();
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˑ */
    public final int mo3661(InterfaceC1170 interfaceC1170, C1495 c1495) {
        boolean z;
        int i = 0;
        if (!AbstractC1464.m4256(c1495.f5930)) {
            return AbstractC3740.m7927(0, 0, 0, 0);
        }
        boolean z2 = c1495.f5938 != null;
        Context context = this.f20548;
        List m10788 = m10788(context, interfaceC1170, c1495, z2, false);
        if (z2 && m10788.isEmpty()) {
            m10788 = m10788(context, interfaceC1170, c1495, false, false);
        }
        if (m10788.isEmpty()) {
            return AbstractC3740.m7927(1, 0, 0, 0);
        }
        int i2 = c1495.f5911;
        if (i2 != 0 && i2 != 2) {
            return AbstractC3740.m7927(2, 0, 0, 0);
        }
        C1165 c1165 = (C1165) m10788.get(0);
        boolean m3634 = c1165.m3634(c1495);
        if (!m3634) {
            for (int i3 = 1; i3 < m10788.size(); i3++) {
                C1165 c11652 = (C1165) m10788.get(i3);
                if (c11652.m3634(c1495)) {
                    z = false;
                    m3634 = true;
                    c1165 = c11652;
                    break;
                }
            }
        }
        z = true;
        int i4 = m3634 ? 4 : 3;
        int i5 = c1165.m3638(c1495) ? 16 : 8;
        int i6 = c1165.f4459 ? 64 : 0;
        int i7 = z ? 128 : 0;
        if (Build.VERSION.SDK_INT >= 26 && "video/dolby-vision".equals(c1495.f5930) && !AbstractC1659.m4532(context)) {
            i7 = 256;
        }
        if (m3634) {
            List m107882 = m10788(context, interfaceC1170, c1495, z2, true);
            if (!m107882.isEmpty()) {
                HashMap hashMap = AbstractC1162.f4449;
                ArrayList arrayList = new ArrayList(m107882);
                Collections.sort(arrayList, new C1161(i, new ˈ(7, c1495)));
                C1165 c11653 = (C1165) arrayList.get(0);
                if (c11653.m3634(c1495) && c11653.m3638(c1495)) {
                    i = 32;
                }
            }
        }
        return i4 | i5 | i | i6 | i7;
    }

    @Override // p032.AbstractC1167
    /* renamed from: ˑٴ */
    public final C4799 mo3663(C1165 c1165, C1495 c1495, MediaCrypto mediaCrypto, float f) {
        int i;
        int i2;
        C1446 c1446;
        int i3;
        C0888 c0888;
        Point point;
        MediaCodecInfo.VideoCapabilities videoCapabilities;
        int i4;
        int i5;
        char c;
        boolean z;
        int m10786;
        String str;
        String str2 = c1165.f4454;
        C1495[] c1495Arr = this.f17513;
        c1495Arr.getClass();
        int i6 = c1495.f5905;
        float f2 = c1495.f5900;
        C1446 c14462 = c1495.f5912;
        int i7 = c1495.f5899;
        if (this.f20543 && (str = c1165.f4462) != null && str.startsWith("OMX.amlogic.avc.decoder.awesome")) {
            i = Math.max(i6, 1920);
            i2 = Math.max(i7, 1089);
        } else {
            i = i6;
            i2 = i7;
        }
        int m10787 = m10787(c1165, c1495);
        if (c1495Arr.length == 1) {
            if (m10787 != -1 && (m10786 = m10786(c1165, c1495)) != -1) {
                m10787 = Math.min((int) (m10787 * 1.5f), m10786);
            }
            c0888 = new C0888(i, i2, m10787);
            c1446 = c14462;
            i3 = i7;
        } else {
            int length = c1495Arr.length;
            int i8 = 0;
            boolean z2 = false;
            while (i8 < length) {
                C1495 c14952 = c1495Arr[i8];
                C1495[] c1495Arr2 = c1495Arr;
                if (c14462 != null && c14952.f5912 == null) {
                    C1490 m4300 = c14952.m4300();
                    m4300.f5853 = c14462;
                    c14952 = new C1495(m4300);
                }
                C4687 m3637 = c1165.m3637(c1495, c14952);
                int i9 = length;
                int i10 = c14952.f5899;
                if (m3637.f17665 != 0) {
                    int i11 = c14952.f5905;
                    i5 = i8;
                    c = 65535;
                    z2 |= i11 == -1 || i10 == -1;
                    int max = Math.max(i, i11);
                    int max2 = Math.max(i2, i10);
                    m10787 = Math.max(m10787, m10787(c1165, c14952));
                    i2 = max2;
                    i = max;
                } else {
                    i5 = i8;
                    c = 65535;
                }
                length = i9;
                i8 = i5 + 1;
                c1495Arr = c1495Arr2;
            }
            if (z2) {
                AbstractC3731.m7850("MediaCodecVideoRenderer", "Resolutions unknown. Codec max resolution: " + i + "x" + i2);
                boolean z3 = i7 > i6;
                int i12 = z3 ? i7 : i6;
                boolean z4 = z3;
                int i13 = z3 ? i6 : i7;
                float f3 = i13 / i12;
                int i14 = 0;
                while (true) {
                    c1446 = c14462;
                    if (i14 >= 9) {
                        break;
                    }
                    int i15 = f20522[i14];
                    int i16 = i14;
                    int i17 = (int) (i15 * f3);
                    if (i15 <= i12 || i17 <= i13) {
                        break;
                    }
                    if (!z4) {
                        i17 = i15;
                    }
                    if (!z4) {
                        i15 = i17;
                    }
                    int i18 = i13;
                    MediaCodecInfo.CodecCapabilities codecCapabilities = c1165.f4456;
                    if (codecCapabilities == null || (videoCapabilities = codecCapabilities.getVideoCapabilities()) == null) {
                        i4 = i12;
                        point = null;
                    } else {
                        int widthAlignment = videoCapabilities.getWidthAlignment();
                        i4 = i12;
                        int heightAlignment = videoCapabilities.getHeightAlignment();
                        point = new Point(AbstractC3712.m7811(i17, widthAlignment) * widthAlignment, AbstractC3712.m7811(i15, heightAlignment) * heightAlignment);
                    }
                    if (point != null) {
                        i3 = i7;
                        if (c1165.m3635(point.x, point.y, f2)) {
                            break;
                        }
                    } else {
                        i3 = i7;
                    }
                    i14 = i16 + 1;
                    i7 = i3;
                    c14462 = c1446;
                    i13 = i18;
                    i12 = i4;
                }
                i3 = i7;
                point = null;
                if (point != null) {
                    i = Math.max(i, point.x);
                    i2 = Math.max(i2, point.y);
                    C1490 m43002 = c1495.m4300();
                    m43002.f5865 = i;
                    m43002.f5854 = i2;
                    m10787 = Math.max(m10787, m10786(c1165, new C1495(m43002)));
                    AbstractC3731.m7850("MediaCodecVideoRenderer", "Codec max resolution adjusted to: " + i + "x" + i2);
                }
            } else {
                c1446 = c14462;
                i3 = i7;
            }
            c0888 = new C0888(i, i2, m10787);
        }
        this.f20524 = c0888;
        int i19 = this.f20557 ? this.f20526 : 0;
        MediaFormat mediaFormat = new MediaFormat();
        mediaFormat.setString("mime", str2);
        mediaFormat.setInteger("width", i6);
        mediaFormat.setInteger("height", i3);
        AbstractC3731.m7844(mediaFormat, c1495.f5934);
        if (f2 != -1.0f) {
            mediaFormat.setFloat("frame-rate", f2);
        }
        AbstractC3731.m7840(mediaFormat, "rotation-degrees", c1495.f5935);
        if (c1446 != null) {
            C1446 c14463 = c1446;
            AbstractC3731.m7840(mediaFormat, "color-transfer", c14463.f5632);
            AbstractC3731.m7840(mediaFormat, "color-standard", c14463.f5637);
            AbstractC3731.m7840(mediaFormat, "color-range", c14463.f5636);
            byte[] bArr = c14463.f5633;
            if (bArr != null) {
                mediaFormat.setByteBuffer("hdr-static-info", ByteBuffer.wrap(bArr));
            }
        }
        if ("video/dolby-vision".equals(c1495.f5930)) {
            HashMap hashMap = AbstractC1162.f4449;
            Pair m7812 = AbstractC3715.m7812(c1495);
            if (m7812 != null) {
                AbstractC3731.m7840(mediaFormat, "profile", ((Integer) m7812.first).intValue());
            }
        }
        mediaFormat.setInteger("max-width", c0888.f3755);
        mediaFormat.setInteger("max-height", c0888.f3754);
        AbstractC3731.m7840(mediaFormat, "max-input-size", c0888.f3753);
        int i20 = Build.VERSION.SDK_INT;
        mediaFormat.setInteger("priority", 0);
        if (f != -1.0f) {
            mediaFormat.setFloat("operating-rate", f);
        }
        if (this.f20545) {
            z = true;
            mediaFormat.setInteger("no-post-process", 1);
            mediaFormat.setInteger("auto-frc", 0);
        } else {
            z = true;
        }
        if (i19 != 0) {
            mediaFormat.setFeatureEnabled("tunneled-playback", z);
            mediaFormat.setInteger("audio-session-id", i19);
        }
        if (i20 >= 35) {
            mediaFormat.setInteger("importance", Math.max(0, -this.f20563));
        }
        Surface m10790 = m10790(c1165);
        if (this.f20534 != null && !AbstractC3712.m7782(this.f20548)) {
            mediaFormat.setInteger("allow-frame-drop", 0);
        }
        return new C4799(c1165, mediaFormat, c1495, m10790, mediaCrypto, null);
    }

    @Override // p032.AbstractC1167
    /* renamed from: י */
    public final boolean mo3664() {
        C1165 c1165 = this.f4477;
        if (this.f20534 != null && c1165 != null) {
            String str = c1165.f4462;
            if (str.equals("c2.mtk.avc.decoder") || str.equals("c2.mtk.hevc.decoder")) {
                return true;
            }
        }
        return super.mo3664();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p392.AbstractC4671
    /* renamed from: יـ */
    public final void mo5945() {
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
            this.f20539 = false;
            this.f20566 = -9223372036854775807L;
            C5409 c5409 = this.f20544;
            if (c5409 != null) {
                c5409.release();
                this.f20544 = null;
            }
        }
    }

    /* renamed from: ـˊ, reason: contains not printable characters */
    public final boolean m10793(C1165 c1165) {
        if (this.f20534 != null) {
            return true;
        }
        Surface surface = this.f20550;
        if (surface == null || !surface.isValid()) {
            return (Build.VERSION.SDK_INT >= 35 && c1165.f4460) || m10795(c1165);
        }
        return true;
    }

    @Override // p032.AbstractC1167
    /* renamed from: ـᵎ */
    public final boolean mo3667(C4996 c4996) {
        boolean z = false;
        if (!m10796(c4996)) {
            boolean z2 = c4996.f18671 < this.f17519;
            if (z2 && !c4996.m3177(268435456)) {
                if (c4996.m3177(67108864)) {
                    c4996.mo3629();
                    z = true;
                }
                if (z) {
                    if (z2) {
                        this.f4519.f17742++;
                    } else {
                        this.f20535.add(Long.valueOf(c4996.f18671));
                        this.f20538++;
                    }
                }
                return z;
            }
        }
        return false;
    }

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public final boolean m10794(long j, long j2, boolean z, boolean z2) {
        if (this.f20534 != null && this.f20541) {
            j2 -= -this.f20566;
        }
        if (j < -500000 && !z) {
            InterfaceC4956 interfaceC4956 = this.f17518;
            interfaceC4956.getClass();
            int mo3473 = interfaceC4956.mo3473(j2 - this.f17517);
            if (mo3473 != 0) {
                PriorityQueue priorityQueue = this.f20535;
                if (z2) {
                    C4699 c4699 = this.f4519;
                    int i = c4699.f17742 + mo3473;
                    c4699.f17742 = i;
                    c4699.f17750 += this.f20556;
                    c4699.f17742 = priorityQueue.size() + i;
                } else {
                    this.f4519.f17741++;
                    m10801(priorityQueue.size() + mo3473, this.f20556);
                }
                if (m3669()) {
                    m3666();
                }
                InterfaceC5400 interfaceC5400 = this.f20534;
                if (interfaceC5400 != null) {
                    interfaceC5400.mo10825(false);
                }
                return true;
            }
        }
        return false;
    }

    /* renamed from: ٴᴵ, reason: contains not printable characters */
    public final boolean m10795(C1165 c1165) {
        if (this.f20557 || m10785(c1165.f4462)) {
            return false;
        }
        return !c1165.f4464 || C5409.m10838(this.f20548);
    }

    @Override // p032.AbstractC1167
    /* renamed from: ᐧᴵ */
    public void mo3672(long j) {
        super.mo3672(j);
        if (this.f20557) {
            return;
        }
        this.f20556--;
    }

    @Override // p032.AbstractC1167
    /* renamed from: ᐧﹶ */
    public final boolean mo3673(C1165 c1165) {
        return m10793(c1165);
    }

    @Override // p032.AbstractC1167
    /* renamed from: ᴵʼ */
    public final void mo3675(C4996 c4996) {
        this.f20538 = 0;
        int mo3682 = mo3682(c4996);
        if ((Build.VERSION.SDK_INT < 34 || (mo3682 & 32) == 0) && !this.f20557) {
            this.f20556++;
        }
    }

    @Override // p032.AbstractC1167
    /* renamed from: ᴵˑ */
    public final void mo3676(Exception exc) {
        AbstractC3731.m7863("MediaCodecVideoRenderer", "Video codec error", exc);
        C3433 c3433 = this.f20529;
        Handler handler = (Handler) c3433.f13458;
        if (handler != null) {
            handler.post(new RunnableC5399(c3433, exc, 1));
        }
    }

    @Override // p032.AbstractC1167
    /* renamed from: ᴵᵔ */
    public final MediaCodecDecoderException mo3677(IllegalStateException illegalStateException, C1165 c1165) {
        Surface surface = this.f20550;
        MediaCodecDecoderException mediaCodecDecoderException = new MediaCodecDecoderException(illegalStateException, c1165);
        System.identityHashCode(surface);
        if (surface != null) {
            surface.isValid();
        }
        return mediaCodecDecoderException;
    }

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public final boolean m10796(C4996 c4996) {
        if (m9274() || c4996.m3177(536870912)) {
            return true;
        }
        long j = this.f20527;
        return j == -9223372036854775807L || j - (c4996.f18671 - this.f4490.f4416) <= 100000;
    }

    @Override // p032.AbstractC1167
    /* renamed from: ᵎᵔ */
    public final void mo3680(C1495 c1495, MediaFormat mediaFormat) {
        int integer;
        int i;
        InterfaceC1171 interfaceC1171 = this.f4496;
        if (interfaceC1171 != null) {
            interfaceC1171.mo3597(this.f20554);
        }
        if (this.f20557) {
            i = c1495.f5905;
            integer = c1495.f5899;
        } else {
            mediaFormat.getClass();
            boolean z = mediaFormat.containsKey("crop-right") && mediaFormat.containsKey("crop-left") && mediaFormat.containsKey("crop-bottom") && mediaFormat.containsKey("crop-top");
            int integer2 = z ? (mediaFormat.getInteger("crop-right") - mediaFormat.getInteger("crop-left")) + 1 : mediaFormat.getInteger("width");
            integer = z ? (mediaFormat.getInteger("crop-bottom") - mediaFormat.getInteger("crop-top")) + 1 : mediaFormat.getInteger("height");
            i = integer2;
        }
        float f = c1495.f5906;
        int i2 = c1495.f5935;
        if (i2 == 90 || i2 == 270) {
            f = 1.0f / f;
            int i3 = integer;
            integer = i;
            i = i3;
        }
        this.f20553 = new C1469(f, i, integer);
        InterfaceC5400 interfaceC5400 = this.f20534;
        if (interfaceC5400 == null || !this.f20523) {
            this.f20559.m10776(c1495.f5900);
        } else {
            C1490 m4300 = c1495.m4300();
            m4300.f5865 = i;
            m4300.f5854 = integer;
            m4300.f5882 = f;
            C1495 c14952 = new C1495(m4300);
            int i4 = this.f20551;
            List list = this.f20558;
            if (list == null) {
                C0982 c0982 = AbstractC0993.f3977;
                list = C0956.f3901;
            }
            interfaceC5400.mo10824(c14952, this.f4490.f4418, i4, list);
            this.f20551 = 2;
        }
        this.f20523 = false;
    }

    @Override // p032.AbstractC1167
    /* renamed from: ᵔי */
    public final int mo3682(C4996 c4996) {
        if (Build.VERSION.SDK_INT >= 34) {
            return ((this.f20555 == null && !this.f20557) || c4996.f18671 >= this.f17519 || m10796(c4996)) ? 0 : 32;
        }
        return 0;
    }

    @Override // p032.AbstractC1167
    /* renamed from: ᵔٴ */
    public final ArrayList mo3683(InterfaceC1170 interfaceC1170, C1495 c1495, boolean z) {
        List m10788 = m10788(this.f20548, interfaceC1170, c1495, z, this.f20557);
        HashMap hashMap = AbstractC1162.f4449;
        ArrayList arrayList = new ArrayList(m10788);
        Collections.sort(arrayList, new C1161(0, new ˈ(7, c1495)));
        return arrayList;
    }

    @Override // p032.AbstractC1167, p392.AbstractC4671
    /* renamed from: ᵔﹳ */
    public final void mo779(boolean z, long j) {
        InterfaceC5400 interfaceC5400 = this.f20534;
        if (interfaceC5400 != null && !z) {
            interfaceC5400.mo10825(true);
        }
        super.mo779(z, j);
        InterfaceC5400 interfaceC54002 = this.f20534;
        C5380 c5380 = this.f20559;
        if (interfaceC54002 == null) {
            C5405 c5405 = c5380.f20494;
            c5405.f20635 = 0L;
            c5405.f20631 = -1L;
            c5405.f20640 = -1L;
            c5380.f20493 = -9223372036854775807L;
            c5380.f20497 = -9223372036854775807L;
            c5380.f20489 = Math.min(c5380.f20489, 1);
            c5380.f20484 = -9223372036854775807L;
        }
        if (z) {
            InterfaceC5400 interfaceC54003 = this.f20534;
            if (interfaceC54003 != null) {
                interfaceC54003.mo10810(false);
            } else {
                c5380.m10773(false);
            }
        }
        m10799();
        this.f20531 = 0;
    }

    @Override // p032.AbstractC1167, p392.AbstractC4671
    /* renamed from: ᵢˏ */
    public final void mo3684(float f, float f2) {
        super.mo3684(f, f2);
        InterfaceC5400 interfaceC5400 = this.f20534;
        if (interfaceC5400 != null) {
            interfaceC5400.mo10807(f);
        } else {
            this.f20559.m10772(f);
        }
    }

    @Override // p392.AbstractC4671, p392.InterfaceC4653
    /* renamed from: ⁱˊ */
    public final void mo780(int i, Object obj) {
        if (i == 1) {
            m10800(obj);
            return;
        }
        if (i == 7) {
            obj.getClass();
            InterfaceC5386 interfaceC5386 = (InterfaceC5386) obj;
            this.f20562 = interfaceC5386;
            InterfaceC5400 interfaceC5400 = this.f20534;
            if (interfaceC5400 != null) {
                interfaceC5400.mo10809(interfaceC5386);
                return;
            }
            return;
        }
        if (i == 10) {
            obj.getClass();
            int intValue = ((Integer) obj).intValue();
            if (this.f20526 != intValue) {
                this.f20526 = intValue;
                if (this.f20557) {
                    m3650();
                    return;
                }
                return;
            }
            return;
        }
        if (i == 4) {
            obj.getClass();
            int intValue2 = ((Integer) obj).intValue();
            this.f20554 = intValue2;
            InterfaceC1171 interfaceC1171 = this.f4496;
            if (interfaceC1171 != null) {
                interfaceC1171.mo3597(intValue2);
                return;
            }
            return;
        }
        if (i == 5) {
            obj.getClass();
            int intValue3 = ((Integer) obj).intValue();
            this.f20530 = intValue3;
            InterfaceC5400 interfaceC54002 = this.f20534;
            if (interfaceC54002 != null) {
                interfaceC54002.mo10815(intValue3);
                return;
            }
            C5405 c5405 = this.f20559.f20494;
            if (c5405.f20633 == intValue3) {
                return;
            }
            c5405.f20633 = intValue3;
            c5405.m10835(true);
            return;
        }
        if (i == 13) {
            obj.getClass();
            List list = (List) obj;
            if (list.equals(InterfaceC1478.f5777)) {
                InterfaceC5400 interfaceC54003 = this.f20534;
                if (interfaceC54003 == null || !interfaceC54003.mo10812()) {
                    return;
                }
                this.f20534.mo10804();
                return;
            }
            this.f20558 = list;
            InterfaceC5400 interfaceC54004 = this.f20534;
            if (interfaceC54004 != null) {
                interfaceC54004.mo10817(list);
                return;
            }
            return;
        }
        if (i == 14) {
            obj.getClass();
            C3723 c3723 = (C3723) obj;
            if (c3723.f14501 == 0 || c3723.f14500 == 0) {
                return;
            }
            this.f20525 = c3723;
            InterfaceC5400 interfaceC54005 = this.f20534;
            if (interfaceC54005 != null) {
                Surface surface = this.f20550;
                AbstractC3731.m7868(surface);
                interfaceC54005.mo10820(surface, c3723);
                return;
            }
            return;
        }
        switch (i) {
            case 16:
                obj.getClass();
                this.f20563 = ((Integer) obj).intValue();
                InterfaceC1171 interfaceC11712 = this.f4496;
                if (interfaceC11712 != null && Build.VERSION.SDK_INT >= 35) {
                    Bundle bundle = new Bundle();
                    bundle.putInt("importance", Math.max(0, -this.f20563));
                    interfaceC11712.mo3588(bundle);
                    return;
                }
                return;
            case 17:
                Surface surface2 = this.f20550;
                m10800(null);
                obj.getClass();
                ((AbstractC5389) obj).mo780(1, surface2);
                return;
            case 18:
                boolean z = this.f20555 != null;
                C4669 c4669 = (C4669) obj;
                this.f20555 = c4669;
                if (z != (c4669 != null)) {
                    m3642(this.f4508);
                    return;
                }
                return;
            default:
                if (i == 11) {
                    C4651 c4651 = (C4651) obj;
                    c4651.getClass();
                    this.f4505 = c4651;
                    return;
                }
                return;
        }
    }

    /* renamed from: ⁱי, reason: contains not printable characters */
    public final void m10797(long j) {
        Surface surface;
        m3665(j);
        C1469 c1469 = this.f20553;
        boolean equals = c1469.equals(C1469.f5752);
        C3433 c3433 = this.f20529;
        if (!equals && !c1469.equals(this.f20552)) {
            this.f20552 = c1469;
            c3433.m7328(c1469);
        }
        this.f4519.f17743++;
        C5380 c5380 = this.f20559;
        boolean z = c5380.f20489 != 3;
        c5380.f20489 = 3;
        c5380.f20496.getClass();
        c5380.f20491 = AbstractC3712.m7757(SystemClock.elapsedRealtime());
        if (z && (surface = this.f20550) != null) {
            Handler handler = (Handler) c3433.f13458;
            if (handler != null) {
                handler.post(new RunnableC4889(c3433, surface, SystemClock.elapsedRealtime()));
            }
            this.f20547 = true;
        }
        mo3672(j);
    }

    /* renamed from: ⁱᴵ, reason: contains not printable characters */
    public final void m10798(InterfaceC1171 interfaceC1171, int i) {
        Trace.beginSection("skipVideoBuffer");
        interfaceC1171.mo3601(i);
        Trace.endSection();
        this.f4519.f17750++;
    }

    @Override // p392.AbstractC4671
    /* renamed from: ﹳᐧ */
    public final void mo5947() {
        InterfaceC5400 interfaceC5400 = this.f20534;
        if (interfaceC5400 == null || !this.f20541) {
            return;
        }
        interfaceC5400.mo10822();
    }

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public final void m10799() {
        if (this.f20557) {
            int i = Build.VERSION.SDK_INT;
            InterfaceC1171 interfaceC1171 = this.f4496;
            if (interfaceC1171 == null) {
                return;
            }
            this.f20542 = new C5382(this, interfaceC1171);
            if (i >= 33) {
                Bundle bundle = new Bundle();
                bundle.putInt("tunnel-peek", 1);
                interfaceC1171.mo3588(bundle);
            }
        }
    }

    /* renamed from: ﹶ, reason: contains not printable characters */
    public final void m10800(Object obj) {
        Handler handler;
        Surface surface = obj instanceof Surface ? (Surface) obj : null;
        Surface surface2 = this.f20550;
        C3433 c3433 = this.f20529;
        if (surface2 == surface) {
            if (surface != null) {
                C1469 c1469 = this.f20552;
                if (c1469 != null) {
                    c3433.m7328(c1469);
                }
                Surface surface3 = this.f20550;
                if (surface3 == null || !this.f20547 || (handler = (Handler) c3433.f13458) == null) {
                    return;
                }
                handler.post(new RunnableC4889(c3433, surface3, SystemClock.elapsedRealtime()));
                return;
            }
            return;
        }
        this.f20550 = surface;
        InterfaceC5400 interfaceC5400 = this.f20534;
        C5380 c5380 = this.f20559;
        if (interfaceC5400 == null) {
            c5380.m10777(surface);
        }
        this.f20547 = false;
        int i = this.f17508;
        InterfaceC1171 interfaceC1171 = this.f4496;
        if (interfaceC1171 != null && this.f20534 == null) {
            C1165 c1165 = this.f4477;
            c1165.getClass();
            boolean m10793 = m10793(c1165);
            int i2 = Build.VERSION.SDK_INT;
            if (!m10793 || this.f20561) {
                m3650();
                m3666();
            } else {
                Surface m10790 = m10790(c1165);
                if (m10790 != null) {
                    interfaceC1171.mo3600(m10790);
                } else {
                    if (i2 < 35) {
                        throw new IllegalStateException();
                    }
                    interfaceC1171.mo3589();
                }
            }
        }
        if (surface != null) {
            C1469 c14692 = this.f20552;
            if (c14692 != null) {
                c3433.m7328(c14692);
            }
        } else {
            this.f20552 = null;
            InterfaceC5400 interfaceC54002 = this.f20534;
            if (interfaceC54002 != null) {
                interfaceC54002.mo10805();
            }
        }
        if (i == 2) {
            InterfaceC5400 interfaceC54003 = this.f20534;
            if (interfaceC54003 != null) {
                interfaceC54003.mo10810(true);
            } else {
                c5380.m10773(true);
            }
        }
        m10799();
    }

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public final void m10801(int i, int i2) {
        C4699 c4699 = this.f4519;
        c4699.f17746 += i;
        int i3 = i + i2;
        c4699.f17745 += i3;
        this.f20546 += i3;
        int i4 = this.f20531 + i3;
        this.f20531 = i4;
        c4699.f17739 = Math.max(i4, c4699.f17739);
        int i5 = this.f20536;
        if (i5 <= 0 || this.f20546 < i5) {
            return;
        }
        m10792();
    }

    @Override // p032.AbstractC1167
    /* renamed from: ﹶᐧ */
    public final void mo3687() {
        InterfaceC5400 interfaceC5400 = this.f20534;
        if (interfaceC5400 != null) {
            interfaceC5400.mo10814();
        }
    }

    @Override // p392.AbstractC4671
    /* renamed from: ﾞʻ */
    public final boolean mo781() {
        if (!this.f4491) {
            return false;
        }
        InterfaceC5400 interfaceC5400 = this.f20534;
        return interfaceC5400 == null || interfaceC5400.mo10821();
    }
}
