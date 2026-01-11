package p392;

import android.content.Context;
import android.graphics.Rect;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import android.util.SparseBooleanArray;
import android.view.Surface;
import android.view.SurfaceHolder;
import android.view.TextureView;
import androidx.leanback.widget.ˉˆ;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.ExoPlayer;
import androidx.media3.exoplayer.image.ImageOutput;
import ar.tvplayer.core.data.api.parse.ˈ;
import ar.tvplayer.core.domain.ʽﹳ;
import com.bumptech.glide.C0229;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CopyOnWriteArraySet;
import p003.C0777;
import p003.C0779;
import p003.C0782;
import p003.C0783;
import p003.C0789;
import p003.C0790;
import p012.C0882;
import p012.C0894;
import p017.AbstractC0983;
import p017.AbstractC0993;
import p017.AbstractC0997;
import p017.C0956;
import p017.C0982;
import p055.AbstractC1445;
import p055.AbstractC1449;
import p055.C1447;
import p055.C1454;
import p055.C1456;
import p055.C1459;
import p055.C1463;
import p055.C1466;
import p055.C1467;
import p055.C1469;
import p055.C1471;
import p055.C1475;
import p055.C1476;
import p055.C1477;
import p055.C1480;
import p055.C1481;
import p055.C1482;
import p055.C1495;
import p055.InterfaceC1465;
import p055.InterfaceC1487;
import p157.C2517;
import p179.C2697;
import p223.C3056;
import p283.C3569;
import p283.RunnableC3568;
import p290.C3606;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3711;
import p305.C3716;
import p305.C3721;
import p305.C3722;
import p305.C3723;
import p305.C3733;
import p305.InterfaceC3718;
import p305.InterfaceC3725;
import p311.RunnableC3805;
import p364.C4438;
import p364.C4446;
import p364.InterfaceC4440;
import p366.C4473;
import p388.C4620;
import p420.C4936;
import p420.C4979;
import p420.C4987;
import p428.AbstractC5070;
import p428.C5056;
import p428.C5057;
import p428.C5058;
import p428.C5062;
import p428.C5063;
import p428.C5078;
import p428.InterfaceC5067;
import ʽⁱ.ᵎﹶ;
import ˊⁱ.ˑﹳ;
import ᐧˎ.ˉʿ;
import ᵔʻ.ـˏ;
import ᵢـ.ᵔᵢ;

/* renamed from: ⁱי.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4644 extends ᵎﹶ implements ExoPlayer {

    /* renamed from: ʻʿ, reason: contains not printable characters */
    public boolean f17350;

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public AbstractC0997 f17351;

    /* renamed from: ʻᴵ, reason: contains not printable characters */
    public C3723 f17352;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public int f17353;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final Looper f17354;

    /* renamed from: ʼـ, reason: contains not printable characters */
    public Surface f17355;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C1475 f17356;

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public int f17357;

    /* renamed from: ʽᵔ, reason: contains not printable characters */
    public C1475 f17358;

    /* renamed from: ʽⁱ, reason: contains not printable characters */
    public boolean f17359;

    /* renamed from: ʾˊ, reason: contains not printable characters */
    public C1495 f17360;

    /* renamed from: ʾﾞ, reason: contains not printable characters */
    public TextureView f17361;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final SurfaceHolderCallbackC4642 f17362;

    /* renamed from: ʿـ, reason: contains not printable characters */
    public boolean f17363;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public final C4673 f17364;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final ˉʿ f17365;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final C1467 f17366;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public int f17367;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C3722 f17368;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final long f17369;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final C3721 f17370;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final AbstractC4671[] f17371;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final C4644 f17372;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final C0779 f17373;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public boolean f17374;

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public long f17375;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final boolean f17376;

    /* renamed from: ˎᐧ, reason: contains not printable characters */
    public SurfaceHolder f17377;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public final long f17378;

    /* renamed from: ˑ, reason: contains not printable characters */
    public Object f17379;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public final C4669 f17380;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final ArrayList f17381;

    /* renamed from: י, reason: contains not printable characters */
    public C1495 f17382;

    /* renamed from: יﹳ, reason: contains not printable characters */
    public C2517 f17383;

    /* renamed from: ـˊ, reason: contains not printable characters */
    public C1471 f17384;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final InterfaceC4440 f17385;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public final C4662 f17386;

    /* renamed from: ـᵢ, reason: contains not printable characters */
    public boolean f17387;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public int f17388;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C3711 f17389;

    /* renamed from: ٴᴵ, reason: contains not printable characters */
    public C1469 f17390;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final AbstractC4671[] f17391;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public final C4680 f17392;

    /* renamed from: ᐧˎ, reason: contains not printable characters */
    public final int f17393;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public final C0894 f17394;

    /* renamed from: ᐧﹶ, reason: contains not printable characters */
    public C1482 f17395;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public final C0894 f17396;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public final C0882 f17397;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C5057 f17398;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final long f17399;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Context f17400;

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public C4979 f17401;

    /* renamed from: ᵎʿ, reason: contains not printable characters */
    public float f17402;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C4672 f17403;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public final C0229 f17404;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final AbstractC5070 f17405;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final C4683 f17406;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final CopyOnWriteArraySet f17407;

    /* renamed from: ⁱˉ, reason: contains not printable characters */
    public final int f17408;

    /* renamed from: ⁱי, reason: contains not printable characters */
    public final boolean f17409;

    /* renamed from: ⁱᴵ, reason: contains not printable characters */
    public C1482 f17410;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final long f17411;

    /* renamed from: ﹳⁱ, reason: contains not printable characters */
    public C4620 f17412;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public boolean f17413;

    /* renamed from: ﹶ, reason: contains not printable characters */
    public final int f17414;

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public C4682 f17415;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public boolean f17416;

    static {
        AbstractC1449.m4241("media3.exoplayer");
    }

    /* JADX WARN: Type inference failed for: r3v22, types: [java.lang.Object, com.bumptech.glide.ʼˎ] */
    /* JADX WARN: Type inference failed for: r6v8, types: [java.lang.Object, ⁱי.ـˆ] */
    public C4644(C4688 c4688) {
        super(0);
        this.f17368 = new C3722();
        try {
            AbstractC3731.m7845("ExoPlayerImpl", "Init " + Integer.toHexString(System.identityHashCode(this)) + " [AndroidXMedia3/1.8.0] [" + AbstractC3712.f14481 + "]");
            Context context = c4688.f17689;
            Looper looper = c4688.f17686;
            C3721 c3721 = c4688.f17688;
            this.f17400 = context.getApplicationContext();
            this.f17373 = new C0779(c3721);
            this.f17414 = c4688.f17670;
            this.f17384 = c4688.f17675;
            this.f17408 = c4688.f17683;
            this.f17393 = c4688.f17691;
            this.f17363 = false;
            this.f17378 = c4688.f17673;
            SurfaceHolderCallbackC4642 surfaceHolderCallbackC4642 = new SurfaceHolderCallbackC4642(this);
            this.f17362 = surfaceHolderCallbackC4642;
            this.f17364 = new Object();
            AbstractC4671[] abstractC4671Arr = ((ᵔᵢ) c4688.f17672.f17478).ﹳٴ(new Handler(looper), surfaceHolderCallbackC4642, surfaceHolderCallbackC4642, surfaceHolderCallbackC4642, surfaceHolderCallbackC4642);
            this.f17391 = abstractC4671Arr;
            AbstractC3731.m7857(abstractC4671Arr.length > 0);
            this.f17371 = new AbstractC4671[abstractC4671Arr.length];
            int i = 0;
            while (true) {
                AbstractC4671[] abstractC4671Arr2 = this.f17371;
                if (i >= abstractC4671Arr2.length) {
                    break;
                }
                int i2 = this.f17391[i].f17515;
                abstractC4671Arr2[i] = null;
                i++;
            }
            this.f17405 = (AbstractC5070) c4688.f17680.get();
            c4688.f17676.get();
            this.f17385 = (InterfaceC4440) c4688.f17684.get();
            this.f17376 = c4688.f17677;
            this.f17392 = c4688.f17685;
            this.f17411 = c4688.f17671;
            this.f17369 = c4688.f17687;
            this.f17399 = c4688.f17690;
            this.f17380 = c4688.f17678;
            this.f17354 = looper;
            this.f17370 = c3721;
            this.f17372 = this;
            this.f17365 = new ˉʿ(looper, c3721, new C4473(12, this));
            this.f17407 = new CopyOnWriteArraySet();
            this.f17381 = new ArrayList();
            this.f17401 = new C4979();
            this.f17386 = C4662.f17479;
            AbstractC4671[] abstractC4671Arr3 = this.f17391;
            this.f17398 = new C5057(new C4678[abstractC4671Arr3.length], new InterfaceC5067[abstractC4671Arr3.length], C1454.f5657, null);
            this.f17366 = new C1467();
            SparseBooleanArray sparseBooleanArray = new SparseBooleanArray();
            int[] iArr = {1, 2, 3, 13, 14, 15, 16, 17, 18, 19, 31, 20, 30, 21, 35, 22, 24, 27, 28, 32};
            for (int i3 = 0; i3 < 20; i3++) {
                int i4 = iArr[i3];
                AbstractC3731.m7857(!false);
                sparseBooleanArray.append(i4, true);
            }
            this.f17405.getClass();
            AbstractC3731.m7857(!false);
            sparseBooleanArray.append(29, true);
            AbstractC3731.m7857(!false);
            C1447 c1447 = new C1447(sparseBooleanArray);
            this.f17356 = new C1475(c1447);
            SparseBooleanArray sparseBooleanArray2 = new SparseBooleanArray();
            for (int i5 = 0; i5 < c1447.f5639.size(); i5++) {
                int m4239 = c1447.m4239(i5);
                AbstractC3731.m7857(!false);
                sparseBooleanArray2.append(m4239, true);
            }
            AbstractC3731.m7857(!false);
            sparseBooleanArray2.append(4, true);
            AbstractC3731.m7857(!false);
            sparseBooleanArray2.append(10, true);
            AbstractC3731.m7857(!false);
            this.f17358 = new C1475(new C1447(sparseBooleanArray2));
            this.f17389 = this.f17370.m7820(this.f17354, null);
            C4672 c4672 = new C4672(this);
            this.f17403 = c4672;
            this.f17415 = C4682.m9293(this.f17398);
            this.f17373.m2864(this.f17372, this.f17354);
            final C0783 c0783 = new C0783(c4688.f17674);
            C4683 c4683 = new C4683(this.f17400, this.f17391, this.f17371, this.f17405, this.f17398, (C4655) c4688.f17692.get(), this.f17385, this.f17353, this.f17374, this.f17373, this.f17392, c4688.f17681, c4688.f17679, this.f17354, this.f17370, c4672, c0783, this.f17386, this.f17364);
            C3711 c3711 = c4683.f17615;
            this.f17406 = c4683;
            Looper looper2 = c4683.f17631;
            this.f17402 = 1.0f;
            this.f17353 = 0;
            C1482 c1482 = C1482.f5805;
            this.f17395 = c1482;
            this.f17410 = c1482;
            this.f17357 = -1;
            this.f17412 = C4620.f17227;
            this.f17409 = true;
            C0779 c0779 = this.f17373;
            ˉʿ r6 = this.f17365;
            c0779.getClass();
            r6.ﹳٴ(c0779);
            InterfaceC4440 interfaceC4440 = this.f17385;
            Handler handler = new Handler(this.f17354);
            C0779 c07792 = this.f17373;
            C4446 c4446 = (C4446) interfaceC4440;
            c4446.getClass();
            c07792.getClass();
            ˑﹳ r5 = c4446.f16618;
            r5.getClass();
            CopyOnWriteArrayList copyOnWriteArrayList = (CopyOnWriteArrayList) r5.ᴵˊ;
            Iterator it = copyOnWriteArrayList.iterator();
            while (it.hasNext()) {
                C4438 c4438 = (C4438) it.next();
                if (c4438.f16578 == c07792) {
                    c4438.f16577 = true;
                    copyOnWriteArrayList.remove(c4438);
                }
            }
            copyOnWriteArrayList.add(new C4438(handler, c07792));
            this.f17407.add(this.f17362);
            if (Build.VERSION.SDK_INT >= 31) {
                final Context context2 = this.f17400;
                final boolean z = c4688.f17669;
                this.f17370.m7820(c4683.f17631, null).m7750(new Runnable() { // from class: ⁱי.ʽﹳ
                    @Override // java.lang.Runnable
                    public final void run() {
                        Context context3 = context2;
                        boolean z2 = z;
                        C4644 c4644 = this;
                        C0783 c07832 = c0783;
                        C0777 m2805 = C0777.m2805(context3);
                        if (m2805 == null) {
                            AbstractC3731.m7850("ExoPlayerImpl", "MediaMetricsService unavailable.");
                            return;
                        }
                        if (z2) {
                            C0779 c07793 = c4644.f17373;
                            c07793.getClass();
                            c07793.f3250.ﹳٴ(m2805);
                        }
                        LogSessionId m2808 = m2805.m2808();
                        synchronized (c07832) {
                            C0790 c0790 = c07832.f3269;
                            c0790.getClass();
                            c0790.m2894(m2808);
                        }
                    }
                });
            }
            C0882 c0882 = new C0882(0, looper2, this.f17354, this.f17370, new C4672(this));
            this.f17397 = c0882;
            c0882.m3125(new RunnableC3568(10, this));
            Context context3 = c4688.f17689;
            Looper looper3 = c4688.f17686;
            SurfaceHolderCallbackC4642 surfaceHolderCallbackC46422 = this.f17362;
            C3721 c37212 = this.f17370;
            ?? obj = new Object();
            obj.f1646 = context3.getApplicationContext();
            obj.f1645 = c37212.m7820(looper2, null);
            obj.f1643 = new C4696(obj, c37212.m7820(looper3, null), surfaceHolderCallbackC46422);
            this.f17404 = obj;
            obj.m1134();
            this.f17396 = new C0894(context, looper2, this.f17370, 3);
            this.f17394 = new C0894(context, looper2, this.f17370, 4);
            int i6 = C1477.f5774;
            this.f17390 = C1469.f5752;
            this.f17352 = C3723.f14499;
            c3711.m7753(38, this.f17380).m7816();
            C1471 c1471 = this.f17384;
            c3711.getClass();
            C3716 m7749 = C3711.m7749();
            m7749.f14491 = c3711.f14471.obtainMessage(31, 0, 0, c1471);
            m7749.m7816();
            m9230(1, 3, this.f17384);
            m9230(2, 4, Integer.valueOf(this.f17408));
            m9230(2, 5, Integer.valueOf(this.f17393));
            m9230(1, 9, Boolean.valueOf(this.f17363));
            m9230(6, 8, this.f17364);
            m9230(-1, 16, Integer.valueOf(this.f17414));
            this.f17368.m7823();
        } catch (Throwable th) {
            this.f17368.m7823();
            throw th;
        }
    }

    /* renamed from: ˊˊ, reason: contains not printable characters */
    public static long m9219(C4682 c4682) {
        C1466 c1466 = new C1466();
        C1467 c1467 = new C1467();
        c4682.f17591.mo4225(c4682.f17590.f18631, c1467);
        long j = c4682.f17577;
        return j == -9223372036854775807L ? c4682.f17591.mo4221(c1467.f5744, c1466, 0L).f5742 : c1467.f5746 + j;
    }

    /* renamed from: ˏⁱ, reason: contains not printable characters */
    public static C4682 m9220(C4682 c4682, int i) {
        C4682 m9301 = c4682.m9301(i);
        return (i == 1 || i == 4) ? m9301.m9302(false) : m9301;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final boolean isScrubbingModeEnabled() {
        m9241();
        return this.f17413;
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void setImageOutput(ImageOutput imageOutput) {
        m9241();
        m9230(4, 15, imageOutput);
    }

    @Override // androidx.media3.exoplayer.ExoPlayer
    public final void setScrubbingModeEnabled(boolean z) {
        C1463 c1463;
        m9241();
        if (z == this.f17413) {
            return;
        }
        this.f17413 = z;
        C4669 c4669 = this.f17380;
        if (!c4669.f17499.isEmpty()) {
            AbstractC5070 abstractC5070 = this.f17405;
            abstractC5070.getClass();
            C5063 m9984 = ((C5078) abstractC5070).m9984();
            if (z) {
                this.f17351 = m9984.f5706;
                AbstractC0997 abstractC0997 = c4669.f17499;
                C1481 mo4249 = m9984.mo4249();
                AbstractC0983 it = abstractC0997.iterator();
                while (it.hasNext()) {
                    mo4249.mo4283(((Integer) it.next()).intValue(), true);
                }
                c1463 = mo4249.mo4290();
            } else {
                m9984.getClass();
                C5058 c5058 = new C5058(m9984);
                c5058.m9964(this.f17351);
                C5063 c5063 = new C5063(c5058);
                this.f17351 = null;
                c1463 = c5063;
            }
            if (!c1463.equals(m9984)) {
                abstractC5070.mo9972(c1463);
            }
        }
        this.f17406.f17615.m7753(36, Boolean.valueOf(z)).m7816();
        C4682 c4682 = this.f17415;
        m9243(c4682.f17580, c4682.f17593);
    }

    /* renamed from: ʻʼ, reason: contains not printable characters */
    public final void m9221(boolean z) {
        m9241();
        m9243(1, z);
    }

    /* renamed from: ʻˆ, reason: contains not printable characters */
    public final void m9222() {
        int m9259 = m9259();
        C0894 c0894 = this.f17394;
        C0894 c08942 = this.f17396;
        boolean z = false;
        if (m9259 != 1) {
            if (m9259 == 2 || m9259 == 3) {
                m9241();
                boolean z2 = this.f17415.f17576;
                if (m9248() && !z2) {
                    z = true;
                }
                c08942.m3144(z);
                c0894.m3144(m9248());
                return;
            }
            if (m9259 != 4) {
                throw new IllegalStateException();
            }
        }
        c08942.m3144(false);
        c0894.m3144(false);
    }

    /* renamed from: ʼᵢ, reason: contains not printable characters */
    public final long m9223() {
        m9241();
        if (this.f17415.f17591.m4217()) {
            return this.f17375;
        }
        C4682 c4682 = this.f17415;
        long j = 0;
        if (c4682.f17585.f18628 != c4682.f17590.f18628) {
            return AbstractC3712.m7755(c4682.f17591.mo4221(m9238(), (C1466) ((ᵎﹶ) this).ʾˋ, 0L).f5733);
        }
        long j2 = c4682.f17589;
        if (this.f17415.f17585.m9838()) {
            C4682 c46822 = this.f17415;
            c46822.f17591.mo4225(c46822.f17585.f18631, this.f17366).m4269(this.f17415.f17585.f18630);
        } else {
            j = j2;
        }
        C4682 c46823 = this.f17415;
        AbstractC1445 abstractC1445 = c46823.f17591;
        Object obj = c46823.f17585.f18631;
        C1467 c1467 = this.f17366;
        abstractC1445.mo4225(obj, c1467);
        return AbstractC3712.m7755(j + c1467.f5746);
    }

    /* renamed from: ʽʾ, reason: contains not printable characters */
    public final Pair m9224(AbstractC1445 abstractC1445, int i, long j) {
        if (abstractC1445.m4217()) {
            this.f17357 = i;
            if (j == -9223372036854775807L) {
                j = 0;
            }
            this.f17375 = j;
            return null;
        }
        if (i == -1 || i >= abstractC1445.mo4222()) {
            i = abstractC1445.mo4229(this.f17374);
            j = AbstractC3712.m7755(abstractC1445.mo4221(i, (C1466) ((ᵎﹶ) this).ʾˋ, 0L).f5742);
        }
        return abstractC1445.m4216((C1466) ((ᵎﹶ) this).ʾˋ, this.f17366, i, AbstractC3712.m7757(j));
    }

    /* renamed from: ʽˑ, reason: contains not printable characters */
    public final void m9225() {
        m9241();
        m9226();
        m9227(null);
        m9229(0, 0);
    }

    /* renamed from: ʿʽ, reason: contains not printable characters */
    public final void m9226() {
        C2517 c2517 = this.f17383;
        SurfaceHolderCallbackC4642 surfaceHolderCallbackC4642 = this.f17362;
        if (c2517 != null) {
            C4654 m9235 = m9235(this.f17364);
            AbstractC3731.m7857(!m9235.f17447);
            m9235.f17442 = 10000;
            AbstractC3731.m7857(!m9235.f17447);
            m9235.f17443 = null;
            m9235.m9263();
            this.f17383.f9579.remove(surfaceHolderCallbackC4642);
            this.f17383 = null;
        }
        TextureView textureView = this.f17361;
        if (textureView != null) {
            if (textureView.getSurfaceTextureListener() != surfaceHolderCallbackC4642) {
                AbstractC3731.m7850("ExoPlayerImpl", "SurfaceTextureListener already unset or replaced.");
            } else {
                this.f17361.setSurfaceTextureListener(null);
            }
            this.f17361 = null;
        }
        SurfaceHolder surfaceHolder = this.f17377;
        if (surfaceHolder != null) {
            surfaceHolder.removeCallback(surfaceHolderCallbackC4642);
            this.f17377 = null;
        }
    }

    /* renamed from: ˆʻ, reason: contains not printable characters */
    public final void m9227(Object obj) {
        Object obj2 = this.f17379;
        boolean z = true;
        boolean z2 = (obj2 == null || obj2 == obj) ? false : true;
        long j = z2 ? this.f17378 : -9223372036854775807L;
        C4683 c4683 = this.f17406;
        if (!c4683.f17630 && c4683.f17631.getThread().isAlive()) {
            C3722 c3722 = new C3722(c4683.f17624);
            c4683.f17615.m7753(30, new Pair(obj, c3722)).m7816();
            if (j != -9223372036854775807L) {
                z = c3722.m7821(j);
            }
        }
        if (z2) {
            Object obj3 = this.f17379;
            Surface surface = this.f17355;
            if (obj3 == surface) {
                surface.release();
                this.f17355 = null;
            }
        }
        this.f17379 = obj;
        if (z) {
            return;
        }
        m9244(new ExoPlaybackException(2, new RuntimeException("Detaching surface timed out."), 1003));
    }

    /* renamed from: ˆˎ, reason: contains not printable characters */
    public final void m9228(SurfaceHolder surfaceHolder) {
        this.f17359 = false;
        this.f17377 = surfaceHolder;
        surfaceHolder.addCallback(this.f17362);
        Surface surface = this.f17377.getSurface();
        if (surface == null || !surface.isValid()) {
            m9229(0, 0);
        } else {
            Rect surfaceFrame = this.f17377.getSurfaceFrame();
            m9229(surfaceFrame.width(), surfaceFrame.height());
        }
    }

    /* renamed from: ˆˑ, reason: contains not printable characters */
    public final void m9229(final int i, final int i2) {
        C3723 c3723 = this.f17352;
        if (i == c3723.f14501 && i2 == c3723.f14500) {
            return;
        }
        this.f17352 = new C3723(i, i2);
        this.f17365.ᵎﹶ(24, new InterfaceC3718() { // from class: ⁱי.ﹳᐧ
            @Override // p305.InterfaceC3718
            /* renamed from: ⁱˊ */
            public final void mo2801(Object obj) {
                ((InterfaceC1487) obj).mo2854(i, i2);
            }
        });
        m9230(2, 14, new C3723(i, i2));
    }

    /* renamed from: ˆﹳ, reason: contains not printable characters */
    public final void m9230(int i, int i2, Object obj) {
        for (AbstractC4671 abstractC4671 : this.f17391) {
            if (i == -1 || abstractC4671.f17515 == i) {
                C4654 m9235 = m9235(abstractC4671);
                AbstractC3731.m7857(!m9235.f17447);
                m9235.f17442 = i2;
                AbstractC3731.m7857(!m9235.f17447);
                m9235.f17443 = obj;
                m9235.m9263();
            }
        }
        for (AbstractC4671 abstractC46712 : this.f17371) {
            if (abstractC46712 != null && (i == -1 || abstractC46712.f17515 == i)) {
                C4654 m92352 = m9235(abstractC46712);
                AbstractC3731.m7857(!m92352.f17447);
                m92352.f17442 = i2;
                AbstractC3731.m7857(!m92352.f17447);
                m92352.f17443 = obj;
                m92352.m9263();
            }
        }
    }

    /* renamed from: ˈـ, reason: contains not printable characters */
    public final int m9231() {
        m9241();
        if (m9246()) {
            return this.f17415.f17590.f18627;
        }
        return -1;
    }

    /* renamed from: ˉʽ, reason: contains not printable characters */
    public final void m9232(float f) {
        m9241();
        final float m7803 = AbstractC3712.m7803(f, 0.0f, 1.0f);
        if (this.f17402 == m7803) {
            return;
        }
        this.f17402 = m7803;
        this.f17406.f17615.m7753(32, Float.valueOf(m7803)).m7816();
        this.f17365.ᵎﹶ(22, new InterfaceC3718() { // from class: ⁱי.ᵔﹳ
            @Override // p305.InterfaceC3718
            /* renamed from: ⁱˊ */
            public final void mo2801(Object obj) {
                ((InterfaceC1487) obj).mo2822(m7803);
            }
        });
    }

    /* renamed from: ˊﹳ, reason: contains not printable characters */
    public final C4682 m9233(C4682 c4682, AbstractC1445 abstractC1445, Pair pair) {
        List list;
        AbstractC3731.m7849(abstractC1445.m4217() || pair != null);
        AbstractC1445 abstractC14452 = c4682.f17591;
        long m9245 = m9245(c4682);
        C4682 m9296 = c4682.m9296(abstractC1445);
        if (abstractC1445.m4217()) {
            C4987 c4987 = C4682.f17574;
            long m7757 = AbstractC3712.m7757(this.f17375);
            C4682 m9295 = m9296.m9297(c4987, m7757, m7757, m7757, 0L, C4936.f18384, this.f17398, C0956.f3901).m9295(c4987);
            m9295.f17589 = m9295.f17584;
            return m9295;
        }
        Object obj = m9296.f17590.f18631;
        boolean equals = obj.equals(pair.first);
        C4987 c49872 = !equals ? new C4987(pair.first) : m9296.f17590;
        long longValue = ((Long) pair.second).longValue();
        long m77572 = AbstractC3712.m7757(m9245);
        if (!abstractC14452.m4217()) {
            m77572 -= abstractC14452.mo4225(obj, this.f17366).f5746;
        }
        if (!equals || longValue < m77572) {
            C4987 c49873 = c49872;
            AbstractC3731.m7857(!c49873.m9838());
            C4936 c4936 = !equals ? C4936.f18384 : m9296.f17588;
            C5057 c5057 = !equals ? this.f17398 : m9296.f17575;
            if (equals) {
                list = m9296.f17578;
            } else {
                C0982 c0982 = AbstractC0993.f3977;
                list = C0956.f3901;
            }
            C4682 m92952 = m9296.m9297(c49873, longValue, longValue, longValue, 0L, c4936, c5057, list).m9295(c49873);
            m92952.f17589 = longValue;
            return m92952;
        }
        if (longValue != m77572) {
            C4987 c49874 = c49872;
            AbstractC3731.m7857(!c49874.m9838());
            long max = Math.max(0L, m9296.f17592 - (longValue - m77572));
            long j = m9296.f17589;
            if (m9296.f17585.equals(m9296.f17590)) {
                j = longValue + max;
            }
            C4682 m9297 = m9296.m9297(c49874, longValue, longValue, longValue, max, m9296.f17588, m9296.f17575, m9296.f17578);
            m9297.f17589 = j;
            return m9297;
        }
        int mo4228 = abstractC1445.mo4228(m9296.f17585.f18631);
        if (mo4228 != -1 && abstractC1445.mo4231(mo4228, this.f17366, false).f5744 == abstractC1445.mo4225(c49872.f18631, this.f17366).f5744) {
            return m9296;
        }
        abstractC1445.mo4225(c49872.f18631, this.f17366);
        long m4274 = c49872.m9838() ? this.f17366.m4274(c49872.f18630, c49872.f18627) : this.f17366.f5745;
        C4987 c49875 = c49872;
        C4682 m92953 = m9296.m9297(c49875, m9296.f17584, m9296.f17584, m9296.f17579, m4274 - m9296.f17584, m9296.f17588, m9296.f17575, m9296.f17578).m9295(c49875);
        m92953.f17589 = m4274;
        return m92953;
    }

    /* renamed from: ˊﾞ, reason: contains not printable characters */
    public final C1463 m9234() {
        m9241();
        C5063 m9984 = ((C5078) this.f17405).m9984();
        if (!this.f17413) {
            return m9984;
        }
        m9984.getClass();
        C5058 c5058 = new C5058(m9984);
        c5058.m9964(this.f17351);
        return new C5063(c5058);
    }

    /* renamed from: ˋˊ, reason: contains not printable characters */
    public final C4654 m9235(InterfaceC4653 interfaceC4653) {
        int m9255 = m9255(this.f17415);
        AbstractC1445 abstractC1445 = this.f17415.f17591;
        if (m9255 == -1) {
            m9255 = 0;
        }
        C4683 c4683 = this.f17406;
        return new C4654(c4683, interfaceC4653, abstractC1445, m9255, c4683.f17631);
    }

    /* renamed from: ˋـ, reason: contains not printable characters */
    public final C1454 m9236() {
        m9241();
        return this.f17415.f17575.f19028;
    }

    /* renamed from: ˎʼ, reason: contains not printable characters */
    public final void m9237(final C4682 c4682, int i, boolean z, int i2, long j, int i3, boolean z2) {
        Pair pair;
        int i4;
        C1480 c1480;
        boolean z3;
        boolean z4;
        boolean z5;
        int i5;
        Object obj;
        C1480 c14802;
        Object obj2;
        int i6;
        long j2;
        long j3;
        long j4;
        long m9219;
        Object obj3;
        C1480 c14803;
        Object obj4;
        int i7;
        C4682 c46822 = this.f17415;
        this.f17415 = c4682;
        boolean equals = c46822.f17591.equals(c4682.f17591);
        C1466 c1466 = (C1466) ((ᵎﹶ) this).ʾˋ;
        C1467 c1467 = this.f17366;
        AbstractC1445 abstractC1445 = c46822.f17591;
        C4987 c4987 = c46822.f17590;
        AbstractC1445 abstractC14452 = c4682.f17591;
        C4987 c49872 = c4682.f17590;
        if (abstractC14452.m4217() && abstractC1445.m4217()) {
            pair = new Pair(Boolean.FALSE, -1);
        } else if (abstractC14452.m4217() != abstractC1445.m4217()) {
            pair = new Pair(Boolean.TRUE, 3);
        } else if (abstractC1445.mo4221(abstractC1445.mo4225(c4987.f18631, c1467).f5744, c1466, 0L).f5741.equals(abstractC14452.mo4221(abstractC14452.mo4225(c49872.f18631, c1467).f5744, c1466, 0L).f5741)) {
            pair = (z && i2 == 0 && c4987.f18628 < c49872.f18628) ? new Pair(Boolean.TRUE, 0) : (z && i2 == 1 && z2) ? new Pair(Boolean.TRUE, 2) : new Pair(Boolean.FALSE, -1);
        } else {
            if (z && i2 == 0) {
                i4 = 1;
            } else if (z && i2 == 1) {
                i4 = 2;
            } else {
                if (equals) {
                    throw new IllegalStateException();
                }
                i4 = 3;
            }
            pair = new Pair(Boolean.TRUE, Integer.valueOf(i4));
        }
        boolean booleanValue = ((Boolean) pair.first).booleanValue();
        int intValue = ((Integer) pair.second).intValue();
        if (booleanValue) {
            c1480 = !c4682.f17591.m4217() ? c4682.f17591.mo4221(c4682.f17591.mo4225(c4682.f17590.f18631, this.f17366).f5744, (C1466) ((ᵎﹶ) this).ʾˋ, 0L).f5730 : null;
            this.f17410 = C1482.f5805;
        } else {
            c1480 = null;
        }
        if (booleanValue || !c46822.f17578.equals(c4682.f17578)) {
            C1459 m4292 = this.f17410.m4292();
            List list = c4682.f17578;
            for (int i8 = 0; i8 < list.size(); i8++) {
                C1476 c1476 = (C1476) list.get(i8);
                int i9 = 0;
                while (true) {
                    InterfaceC1465[] interfaceC1465Arr = c1476.f5773;
                    if (i9 < interfaceC1465Arr.length) {
                        interfaceC1465Arr[i9].mo2792(m4292);
                        i9++;
                    }
                }
            }
            this.f17410 = new C1482(m4292);
        }
        C1482 m9256 = m9256();
        boolean equals2 = m9256.equals(this.f17395);
        this.f17395 = m9256;
        boolean z6 = c46822.f17593 != c4682.f17593;
        boolean z7 = c46822.f17583 != c4682.f17583;
        if (z7 || z6) {
            m9222();
        }
        boolean z8 = c46822.f17586 != c4682.f17586;
        if (!equals) {
            this.f17365.ˈ(0, new ـˏ(i, 2, c4682));
        }
        if (z) {
            C1467 c14672 = new C1467();
            if (c46822.f17591.m4217()) {
                z3 = booleanValue;
                z4 = equals2;
                z5 = z7;
                i5 = i3;
                obj = null;
                c14802 = null;
                obj2 = null;
                i6 = -1;
            } else {
                Object obj5 = c46822.f17590.f18631;
                c46822.f17591.mo4225(obj5, c14672);
                int i10 = c14672.f5744;
                int mo4228 = c46822.f17591.mo4228(obj5);
                z3 = booleanValue;
                z4 = equals2;
                z5 = z7;
                obj = c46822.f17591.mo4221(i10, (C1466) ((ᵎﹶ) this).ʾˋ, 0L).f5741;
                c14802 = ((C1466) ((ᵎﹶ) this).ʾˋ).f5730;
                obj2 = obj5;
                i5 = i10;
                i6 = mo4228;
            }
            if (i2 == 0) {
                if (c46822.f17590.m9838()) {
                    C4987 c49873 = c46822.f17590;
                    j4 = c14672.m4274(c49873.f18630, c49873.f18627);
                    m9219 = m9219(c46822);
                } else if (c46822.f17590.f18629 != -1) {
                    j4 = m9219(this.f17415);
                    m9219 = j4;
                } else {
                    j2 = c14672.f5746;
                    j3 = c14672.f5745;
                    j4 = j2 + j3;
                    m9219 = j4;
                }
            } else if (c46822.f17590.m9838()) {
                j4 = c46822.f17584;
                m9219 = m9219(c46822);
            } else {
                j2 = c14672.f5746;
                j3 = c46822.f17584;
                j4 = j2 + j3;
                m9219 = j4;
            }
            long m7755 = AbstractC3712.m7755(j4);
            long m77552 = AbstractC3712.m7755(m9219);
            C4987 c49874 = c46822.f17590;
            C1456 c1456 = new C1456(obj, i5, c14802, obj2, i6, m7755, m77552, c49874.f18630, c49874.f18627);
            C1466 c14662 = (C1466) ((ᵎﹶ) this).ʾˋ;
            int m9238 = m9238();
            if (this.f17415.f17591.m4217()) {
                obj3 = null;
                c14803 = null;
                obj4 = null;
                i7 = -1;
            } else {
                C4682 c46823 = this.f17415;
                Object obj6 = c46823.f17590.f18631;
                c46823.f17591.mo4225(obj6, this.f17366);
                int mo42282 = this.f17415.f17591.mo4228(obj6);
                Object obj7 = this.f17415.f17591.mo4221(m9238, c14662, 0L).f5741;
                c14803 = c14662.f5730;
                i7 = mo42282;
                obj4 = obj6;
                obj3 = obj7;
            }
            long m77553 = AbstractC3712.m7755(j);
            long m77554 = this.f17415.f17590.m9838() ? AbstractC3712.m7755(m9219(this.f17415)) : m77553;
            C4987 c49875 = this.f17415.f17590;
            this.f17365.ˈ(11, new C3606(i2, c1456, new C1456(obj3, m9238, c14803, obj4, i7, m77553, m77554, c49875.f18630, c49875.f18627)));
        } else {
            z3 = booleanValue;
            z4 = equals2;
            z5 = z7;
        }
        if (z3) {
            this.f17365.ˈ(1, new ـˏ(intValue, 3, c1480));
        }
        if (c46822.f17594 != c4682.f17594) {
            final int i11 = 7;
            this.f17365.ˈ(10, new InterfaceC3718() { // from class: ⁱי.ʼᐧ
                @Override // p305.InterfaceC3718
                /* renamed from: ⁱˊ */
                public final void mo2801(Object obj8) {
                    InterfaceC1487 interfaceC1487 = (InterfaceC1487) obj8;
                    switch (i11) {
                        case 0:
                            C4682 c46824 = c4682;
                            boolean z9 = c46824.f17586;
                            interfaceC1487.getClass();
                            interfaceC1487.mo2837(c46824.f17586);
                            return;
                        case 1:
                            C4682 c46825 = c4682;
                            interfaceC1487.mo2843(c46825.f17583, c46825.f17593);
                            return;
                        case 2:
                            interfaceC1487.mo2828(c4682.f17583);
                            return;
                        case 3:
                            C4682 c46826 = c4682;
                            interfaceC1487.mo2829(c46826.f17580, c46826.f17593);
                            return;
                        case 4:
                            interfaceC1487.mo2863(c4682.f17587);
                            return;
                        case 5:
                            interfaceC1487.mo2824(c4682.m9298());
                            return;
                        case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                            interfaceC1487.mo2845(c4682.f17581);
                            return;
                        case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                            interfaceC1487.mo2862(c4682.f17594);
                            return;
                        case C3056.BYTES_FIELD_NUMBER /* 8 */:
                            interfaceC1487.mo2839(c4682.f17594);
                            return;
                        default:
                            interfaceC1487.mo2851(c4682.f17575.f19028);
                            return;
                    }
                }
            });
            if (c4682.f17594 != null) {
                final int i12 = 8;
                this.f17365.ˈ(10, new InterfaceC3718() { // from class: ⁱי.ʼᐧ
                    @Override // p305.InterfaceC3718
                    /* renamed from: ⁱˊ */
                    public final void mo2801(Object obj8) {
                        InterfaceC1487 interfaceC1487 = (InterfaceC1487) obj8;
                        switch (i12) {
                            case 0:
                                C4682 c46824 = c4682;
                                boolean z9 = c46824.f17586;
                                interfaceC1487.getClass();
                                interfaceC1487.mo2837(c46824.f17586);
                                return;
                            case 1:
                                C4682 c46825 = c4682;
                                interfaceC1487.mo2843(c46825.f17583, c46825.f17593);
                                return;
                            case 2:
                                interfaceC1487.mo2828(c4682.f17583);
                                return;
                            case 3:
                                C4682 c46826 = c4682;
                                interfaceC1487.mo2829(c46826.f17580, c46826.f17593);
                                return;
                            case 4:
                                interfaceC1487.mo2863(c4682.f17587);
                                return;
                            case 5:
                                interfaceC1487.mo2824(c4682.m9298());
                                return;
                            case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                                interfaceC1487.mo2845(c4682.f17581);
                                return;
                            case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                                interfaceC1487.mo2862(c4682.f17594);
                                return;
                            case C3056.BYTES_FIELD_NUMBER /* 8 */:
                                interfaceC1487.mo2839(c4682.f17594);
                                return;
                            default:
                                interfaceC1487.mo2851(c4682.f17575.f19028);
                                return;
                        }
                    }
                });
            }
        }
        C5057 c5057 = c46822.f17575;
        C5057 c50572 = c4682.f17575;
        if (c5057 != c50572) {
            AbstractC5070 abstractC5070 = this.f17405;
            Object obj8 = c50572.f19029;
            abstractC5070.getClass();
            abstractC5070.f19077 = (C5056) obj8;
            final int i13 = 9;
            this.f17365.ˈ(2, new InterfaceC3718() { // from class: ⁱי.ʼᐧ
                @Override // p305.InterfaceC3718
                /* renamed from: ⁱˊ */
                public final void mo2801(Object obj82) {
                    InterfaceC1487 interfaceC1487 = (InterfaceC1487) obj82;
                    switch (i13) {
                        case 0:
                            C4682 c46824 = c4682;
                            boolean z9 = c46824.f17586;
                            interfaceC1487.getClass();
                            interfaceC1487.mo2837(c46824.f17586);
                            return;
                        case 1:
                            C4682 c46825 = c4682;
                            interfaceC1487.mo2843(c46825.f17583, c46825.f17593);
                            return;
                        case 2:
                            interfaceC1487.mo2828(c4682.f17583);
                            return;
                        case 3:
                            C4682 c46826 = c4682;
                            interfaceC1487.mo2829(c46826.f17580, c46826.f17593);
                            return;
                        case 4:
                            interfaceC1487.mo2863(c4682.f17587);
                            return;
                        case 5:
                            interfaceC1487.mo2824(c4682.m9298());
                            return;
                        case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                            interfaceC1487.mo2845(c4682.f17581);
                            return;
                        case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                            interfaceC1487.mo2862(c4682.f17594);
                            return;
                        case C3056.BYTES_FIELD_NUMBER /* 8 */:
                            interfaceC1487.mo2839(c4682.f17594);
                            return;
                        default:
                            interfaceC1487.mo2851(c4682.f17575.f19028);
                            return;
                    }
                }
            });
        }
        if (!z4) {
            this.f17365.ˈ(14, new C3569(18, this.f17395));
        }
        if (z8) {
            final int i14 = 0;
            this.f17365.ˈ(3, new InterfaceC3718() { // from class: ⁱי.ʼᐧ
                @Override // p305.InterfaceC3718
                /* renamed from: ⁱˊ */
                public final void mo2801(Object obj82) {
                    InterfaceC1487 interfaceC1487 = (InterfaceC1487) obj82;
                    switch (i14) {
                        case 0:
                            C4682 c46824 = c4682;
                            boolean z9 = c46824.f17586;
                            interfaceC1487.getClass();
                            interfaceC1487.mo2837(c46824.f17586);
                            return;
                        case 1:
                            C4682 c46825 = c4682;
                            interfaceC1487.mo2843(c46825.f17583, c46825.f17593);
                            return;
                        case 2:
                            interfaceC1487.mo2828(c4682.f17583);
                            return;
                        case 3:
                            C4682 c46826 = c4682;
                            interfaceC1487.mo2829(c46826.f17580, c46826.f17593);
                            return;
                        case 4:
                            interfaceC1487.mo2863(c4682.f17587);
                            return;
                        case 5:
                            interfaceC1487.mo2824(c4682.m9298());
                            return;
                        case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                            interfaceC1487.mo2845(c4682.f17581);
                            return;
                        case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                            interfaceC1487.mo2862(c4682.f17594);
                            return;
                        case C3056.BYTES_FIELD_NUMBER /* 8 */:
                            interfaceC1487.mo2839(c4682.f17594);
                            return;
                        default:
                            interfaceC1487.mo2851(c4682.f17575.f19028);
                            return;
                    }
                }
            });
        }
        if (z5 || z6) {
            final int i15 = 1;
            this.f17365.ˈ(-1, new InterfaceC3718() { // from class: ⁱי.ʼᐧ
                @Override // p305.InterfaceC3718
                /* renamed from: ⁱˊ */
                public final void mo2801(Object obj82) {
                    InterfaceC1487 interfaceC1487 = (InterfaceC1487) obj82;
                    switch (i15) {
                        case 0:
                            C4682 c46824 = c4682;
                            boolean z9 = c46824.f17586;
                            interfaceC1487.getClass();
                            interfaceC1487.mo2837(c46824.f17586);
                            return;
                        case 1:
                            C4682 c46825 = c4682;
                            interfaceC1487.mo2843(c46825.f17583, c46825.f17593);
                            return;
                        case 2:
                            interfaceC1487.mo2828(c4682.f17583);
                            return;
                        case 3:
                            C4682 c46826 = c4682;
                            interfaceC1487.mo2829(c46826.f17580, c46826.f17593);
                            return;
                        case 4:
                            interfaceC1487.mo2863(c4682.f17587);
                            return;
                        case 5:
                            interfaceC1487.mo2824(c4682.m9298());
                            return;
                        case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                            interfaceC1487.mo2845(c4682.f17581);
                            return;
                        case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                            interfaceC1487.mo2862(c4682.f17594);
                            return;
                        case C3056.BYTES_FIELD_NUMBER /* 8 */:
                            interfaceC1487.mo2839(c4682.f17594);
                            return;
                        default:
                            interfaceC1487.mo2851(c4682.f17575.f19028);
                            return;
                    }
                }
            });
        }
        if (z5) {
            final int i16 = 2;
            this.f17365.ˈ(4, new InterfaceC3718() { // from class: ⁱי.ʼᐧ
                @Override // p305.InterfaceC3718
                /* renamed from: ⁱˊ */
                public final void mo2801(Object obj82) {
                    InterfaceC1487 interfaceC1487 = (InterfaceC1487) obj82;
                    switch (i16) {
                        case 0:
                            C4682 c46824 = c4682;
                            boolean z9 = c46824.f17586;
                            interfaceC1487.getClass();
                            interfaceC1487.mo2837(c46824.f17586);
                            return;
                        case 1:
                            C4682 c46825 = c4682;
                            interfaceC1487.mo2843(c46825.f17583, c46825.f17593);
                            return;
                        case 2:
                            interfaceC1487.mo2828(c4682.f17583);
                            return;
                        case 3:
                            C4682 c46826 = c4682;
                            interfaceC1487.mo2829(c46826.f17580, c46826.f17593);
                            return;
                        case 4:
                            interfaceC1487.mo2863(c4682.f17587);
                            return;
                        case 5:
                            interfaceC1487.mo2824(c4682.m9298());
                            return;
                        case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                            interfaceC1487.mo2845(c4682.f17581);
                            return;
                        case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                            interfaceC1487.mo2862(c4682.f17594);
                            return;
                        case C3056.BYTES_FIELD_NUMBER /* 8 */:
                            interfaceC1487.mo2839(c4682.f17594);
                            return;
                        default:
                            interfaceC1487.mo2851(c4682.f17575.f19028);
                            return;
                    }
                }
            });
        }
        if (z6 || c46822.f17580 != c4682.f17580) {
            final int i17 = 3;
            this.f17365.ˈ(5, new InterfaceC3718() { // from class: ⁱי.ʼᐧ
                @Override // p305.InterfaceC3718
                /* renamed from: ⁱˊ */
                public final void mo2801(Object obj82) {
                    InterfaceC1487 interfaceC1487 = (InterfaceC1487) obj82;
                    switch (i17) {
                        case 0:
                            C4682 c46824 = c4682;
                            boolean z9 = c46824.f17586;
                            interfaceC1487.getClass();
                            interfaceC1487.mo2837(c46824.f17586);
                            return;
                        case 1:
                            C4682 c46825 = c4682;
                            interfaceC1487.mo2843(c46825.f17583, c46825.f17593);
                            return;
                        case 2:
                            interfaceC1487.mo2828(c4682.f17583);
                            return;
                        case 3:
                            C4682 c46826 = c4682;
                            interfaceC1487.mo2829(c46826.f17580, c46826.f17593);
                            return;
                        case 4:
                            interfaceC1487.mo2863(c4682.f17587);
                            return;
                        case 5:
                            interfaceC1487.mo2824(c4682.m9298());
                            return;
                        case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                            interfaceC1487.mo2845(c4682.f17581);
                            return;
                        case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                            interfaceC1487.mo2862(c4682.f17594);
                            return;
                        case C3056.BYTES_FIELD_NUMBER /* 8 */:
                            interfaceC1487.mo2839(c4682.f17594);
                            return;
                        default:
                            interfaceC1487.mo2851(c4682.f17575.f19028);
                            return;
                    }
                }
            });
        }
        if (c46822.f17587 != c4682.f17587) {
            final int i18 = 4;
            this.f17365.ˈ(6, new InterfaceC3718() { // from class: ⁱי.ʼᐧ
                @Override // p305.InterfaceC3718
                /* renamed from: ⁱˊ */
                public final void mo2801(Object obj82) {
                    InterfaceC1487 interfaceC1487 = (InterfaceC1487) obj82;
                    switch (i18) {
                        case 0:
                            C4682 c46824 = c4682;
                            boolean z9 = c46824.f17586;
                            interfaceC1487.getClass();
                            interfaceC1487.mo2837(c46824.f17586);
                            return;
                        case 1:
                            C4682 c46825 = c4682;
                            interfaceC1487.mo2843(c46825.f17583, c46825.f17593);
                            return;
                        case 2:
                            interfaceC1487.mo2828(c4682.f17583);
                            return;
                        case 3:
                            C4682 c46826 = c4682;
                            interfaceC1487.mo2829(c46826.f17580, c46826.f17593);
                            return;
                        case 4:
                            interfaceC1487.mo2863(c4682.f17587);
                            return;
                        case 5:
                            interfaceC1487.mo2824(c4682.m9298());
                            return;
                        case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                            interfaceC1487.mo2845(c4682.f17581);
                            return;
                        case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                            interfaceC1487.mo2862(c4682.f17594);
                            return;
                        case C3056.BYTES_FIELD_NUMBER /* 8 */:
                            interfaceC1487.mo2839(c4682.f17594);
                            return;
                        default:
                            interfaceC1487.mo2851(c4682.f17575.f19028);
                            return;
                    }
                }
            });
        }
        if (c46822.m9298() != c4682.m9298()) {
            final int i19 = 5;
            this.f17365.ˈ(7, new InterfaceC3718() { // from class: ⁱי.ʼᐧ
                @Override // p305.InterfaceC3718
                /* renamed from: ⁱˊ */
                public final void mo2801(Object obj82) {
                    InterfaceC1487 interfaceC1487 = (InterfaceC1487) obj82;
                    switch (i19) {
                        case 0:
                            C4682 c46824 = c4682;
                            boolean z9 = c46824.f17586;
                            interfaceC1487.getClass();
                            interfaceC1487.mo2837(c46824.f17586);
                            return;
                        case 1:
                            C4682 c46825 = c4682;
                            interfaceC1487.mo2843(c46825.f17583, c46825.f17593);
                            return;
                        case 2:
                            interfaceC1487.mo2828(c4682.f17583);
                            return;
                        case 3:
                            C4682 c46826 = c4682;
                            interfaceC1487.mo2829(c46826.f17580, c46826.f17593);
                            return;
                        case 4:
                            interfaceC1487.mo2863(c4682.f17587);
                            return;
                        case 5:
                            interfaceC1487.mo2824(c4682.m9298());
                            return;
                        case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                            interfaceC1487.mo2845(c4682.f17581);
                            return;
                        case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                            interfaceC1487.mo2862(c4682.f17594);
                            return;
                        case C3056.BYTES_FIELD_NUMBER /* 8 */:
                            interfaceC1487.mo2839(c4682.f17594);
                            return;
                        default:
                            interfaceC1487.mo2851(c4682.f17575.f19028);
                            return;
                    }
                }
            });
        }
        if (!c46822.f17581.equals(c4682.f17581)) {
            final int i20 = 6;
            this.f17365.ˈ(12, new InterfaceC3718() { // from class: ⁱי.ʼᐧ
                @Override // p305.InterfaceC3718
                /* renamed from: ⁱˊ */
                public final void mo2801(Object obj82) {
                    InterfaceC1487 interfaceC1487 = (InterfaceC1487) obj82;
                    switch (i20) {
                        case 0:
                            C4682 c46824 = c4682;
                            boolean z9 = c46824.f17586;
                            interfaceC1487.getClass();
                            interfaceC1487.mo2837(c46824.f17586);
                            return;
                        case 1:
                            C4682 c46825 = c4682;
                            interfaceC1487.mo2843(c46825.f17583, c46825.f17593);
                            return;
                        case 2:
                            interfaceC1487.mo2828(c4682.f17583);
                            return;
                        case 3:
                            C4682 c46826 = c4682;
                            interfaceC1487.mo2829(c46826.f17580, c46826.f17593);
                            return;
                        case 4:
                            interfaceC1487.mo2863(c4682.f17587);
                            return;
                        case 5:
                            interfaceC1487.mo2824(c4682.m9298());
                            return;
                        case C3056.STRING_SET_FIELD_NUMBER /* 6 */:
                            interfaceC1487.mo2845(c4682.f17581);
                            return;
                        case C3056.DOUBLE_FIELD_NUMBER /* 7 */:
                            interfaceC1487.mo2862(c4682.f17594);
                            return;
                        case C3056.BYTES_FIELD_NUMBER /* 8 */:
                            interfaceC1487.mo2839(c4682.f17594);
                            return;
                        default:
                            interfaceC1487.mo2851(c4682.f17575.f19028);
                            return;
                    }
                }
            });
        }
        m9249();
        this.f17365.ʽ();
        if (c46822.f17576 != c4682.f17576) {
            Iterator it = this.f17407.iterator();
            while (it.hasNext()) {
                ((SurfaceHolderCallbackC4642) it.next()).f17344.m9222();
            }
        }
    }

    /* renamed from: ˎʾ, reason: contains not printable characters */
    public final int m9238() {
        m9241();
        int m9255 = m9255(this.f17415);
        if (m9255 == -1) {
            return 0;
        }
        return m9255;
    }

    /* renamed from: ˎˉ, reason: contains not printable characters */
    public final long m9239(C4682 c4682) {
        if (c4682.f17591.m4217()) {
            return AbstractC3712.m7757(this.f17375);
        }
        long m9304 = c4682.f17576 ? c4682.m9304() : c4682.f17584;
        if (c4682.f17590.m9838()) {
            return m9304;
        }
        AbstractC1445 abstractC1445 = c4682.f17591;
        Object obj = c4682.f17590.f18631;
        C1467 c1467 = this.f17366;
        abstractC1445.mo4225(obj, c1467);
        return m9304 + c1467.f5746;
    }

    /* renamed from: ˎـ, reason: contains not printable characters */
    public final void m9240() {
        m9241();
        C4682 c4682 = this.f17415;
        if (c4682.f17583 != 1) {
            return;
        }
        C4682 m9305 = c4682.m9305(null);
        C4682 m9220 = m9220(m9305, m9305.f17591.m4217() ? 4 : 2);
        this.f17388++;
        C3711 c3711 = this.f17406.f17615;
        c3711.getClass();
        C3716 m7749 = C3711.m7749();
        m7749.f14491 = c3711.f14471.obtainMessage(29);
        m7749.m7816();
        m9237(m9220, 1, false, 5, -9223372036854775807L, -1, false);
    }

    /* renamed from: ˏʻ, reason: contains not printable characters */
    public final void m9241() {
        this.f17368.m7824();
        Thread currentThread = Thread.currentThread();
        Looper looper = this.f17354;
        if (currentThread != looper.getThread()) {
            String name = Thread.currentThread().getName();
            String name2 = looper.getThread().getName();
            String str = AbstractC3712.f14481;
            Locale locale = Locale.US;
            String str2 = "Player is accessed on the wrong thread.\nCurrent thread: '" + name + "'\nExpected thread: '" + name2 + "'\nSee https://developer.android.com/guide/topics/media/issues/player-accessed-on-wrong-thread";
            if (this.f17409) {
                throw new IllegalStateException(str2);
            }
            AbstractC3731.m7859("ExoPlayerImpl", str2, this.f17350 ? null : new IllegalStateException());
            this.f17350 = true;
        }
    }

    /* renamed from: ˑˆ, reason: contains not printable characters */
    public final long m9242() {
        m9241();
        return AbstractC3712.m7755(m9239(this.f17415));
    }

    /* renamed from: ˑﹶ, reason: contains not printable characters */
    public final void m9243(int i, boolean z) {
        int i2 = this.f17413 ? 4 : (this.f17415.f17587 != 1 || z) ? 0 : 1;
        C4682 c4682 = this.f17415;
        if (c4682.f17593 == z && c4682.f17587 == i2 && c4682.f17580 == i) {
            return;
        }
        this.f17388++;
        if (c4682.f17576) {
            c4682 = c4682.m9303();
        }
        C4682 m9299 = c4682.m9299(i, i2, z);
        int i3 = i | (i2 << 4);
        C3711 c3711 = this.f17406.f17615;
        c3711.getClass();
        C3716 m7749 = C3711.m7749();
        m7749.f14491 = c3711.f14471.obtainMessage(1, z ? 1 : 0, i3);
        m7749.m7816();
        m9237(m9299, 0, false, 5, -9223372036854775807L, -1, false);
    }

    /* renamed from: יʿ, reason: contains not printable characters */
    public final void m9244(ExoPlaybackException exoPlaybackException) {
        C4682 c4682 = this.f17415;
        C4682 m9295 = c4682.m9295(c4682.f17590);
        m9295.f17589 = m9295.f17584;
        m9295.f17592 = 0L;
        C4682 m9220 = m9220(m9295, 1);
        if (exoPlaybackException != null) {
            m9220 = m9220.m9305(exoPlaybackException);
        }
        C4682 c46822 = m9220;
        this.f17388++;
        C3711 c3711 = this.f17406.f17615;
        c3711.getClass();
        C3716 m7749 = C3711.m7749();
        m7749.f14491 = c3711.f14471.obtainMessage(6);
        m7749.m7816();
        m9237(c46822, 0, false, 5, -9223372036854775807L, -1, false);
    }

    /* renamed from: יˉ, reason: contains not printable characters */
    public final long m9245(C4682 c4682) {
        C4987 c4987 = c4682.f17590;
        long j = c4682.f17577;
        AbstractC1445 abstractC1445 = c4682.f17591;
        if (!c4987.m9838()) {
            return AbstractC3712.m7755(m9239(c4682));
        }
        Object obj = c4682.f17590.f18631;
        C1467 c1467 = this.f17366;
        abstractC1445.mo4225(obj, c1467);
        if (j == -9223372036854775807L) {
            return AbstractC3712.m7755(abstractC1445.mo4221(m9255(c4682), (C1466) ((ᵎﹶ) this).ʾˋ, 0L).f5742);
        }
        return AbstractC3712.m7755(j) + AbstractC3712.m7755(c1467.f5746);
    }

    /* renamed from: ـʻ, reason: contains not printable characters */
    public final boolean m9246() {
        m9241();
        return this.f17415.f17590.m9838();
    }

    /* renamed from: ـˊ, reason: contains not printable characters */
    public final void m9247(long j, boolean z, int i) {
        m9241();
        if (i == -1) {
            return;
        }
        AbstractC3731.m7849(i >= 0);
        AbstractC1445 abstractC1445 = this.f17415.f17591;
        if (abstractC1445.m4217() || i < abstractC1445.mo4222()) {
            C0779 c0779 = this.f17373;
            if (!c0779.f3254) {
                C0789 m2849 = c0779.m2849();
                c0779.f3254 = true;
                c0779.m2848(m2849, -1, new ˈ(20));
            }
            this.f17388++;
            if (m9246()) {
                AbstractC3731.m7850("ExoPlayerImpl", "seekTo ignored because an ad is playing");
                C2697 c2697 = new C2697(this.f17415);
                c2697.m6070(1);
                C4644 c4644 = this.f17403.f17521;
                c4644.f17389.m7750(new RunnableC3805(c4644, 3, c2697));
                return;
            }
            C4682 c4682 = this.f17415;
            int i2 = c4682.f17583;
            if (i2 == 3 || (i2 == 4 && !abstractC1445.m4217())) {
                c4682 = this.f17415.m9301(2);
            }
            int m9238 = m9238();
            C4682 m9233 = m9233(c4682, abstractC1445, m9224(abstractC1445, i, j));
            this.f17406.f17615.m7753(3, new C4659(abstractC1445, i, AbstractC3712.m7757(j))).m7816();
            m9237(m9233, 0, true, 1, m9239(m9233), m9238, z);
        }
    }

    /* renamed from: ٴʿ, reason: contains not printable characters */
    public final boolean m9248() {
        m9241();
        return this.f17415.f17593;
    }

    /* renamed from: ᴵٴ, reason: contains not printable characters */
    public final void m9249() {
        int mo4224;
        int mo4223;
        C1475 c1475 = this.f17358;
        String str = AbstractC3712.f14481;
        C4644 c4644 = this.f17372;
        boolean m9246 = c4644.m9246();
        boolean z = c4644.ˑ();
        AbstractC1445 m9254 = c4644.m9254();
        if (m9254.m4217()) {
            mo4224 = -1;
        } else {
            int m9238 = c4644.m9238();
            c4644.m9241();
            int i = c4644.f17353;
            if (i == 1) {
                i = 0;
            }
            c4644.m9241();
            mo4224 = m9254.mo4224(m9238, i, c4644.f17374);
        }
        boolean z2 = mo4224 != -1;
        AbstractC1445 m92542 = c4644.m9254();
        if (m92542.m4217()) {
            mo4223 = -1;
        } else {
            int m92382 = c4644.m9238();
            c4644.m9241();
            int i2 = c4644.f17353;
            if (i2 == 1) {
                i2 = 0;
            }
            c4644.m9241();
            mo4223 = m92542.mo4223(m92382, i2, c4644.f17374);
        }
        boolean z3 = mo4223 != -1;
        boolean z4 = c4644.ʾˊ();
        boolean z5 = c4644.י();
        boolean m4217 = c4644.m9254().m4217();
        ˉˆ r11 = new ˉˆ(10);
        ʽﹳ r13 = (ʽﹳ) r11.ᴵˊ;
        C1447 c1447 = this.f17356.f5771;
        r13.getClass();
        for (int i3 = 0; i3 < c1447.f5639.size(); i3++) {
            r13.ⁱˊ(c1447.m4239(i3));
        }
        boolean z6 = !m9246;
        r11.ʼˎ(4, z6);
        r11.ʼˎ(5, z && !m9246);
        r11.ʼˎ(6, z2 && !m9246);
        r11.ʼˎ(7, !m4217 && (z2 || !z4 || z) && !m9246);
        r11.ʼˎ(8, z3 && !m9246);
        r11.ʼˎ(9, !m4217 && (z3 || (z4 && z5)) && !m9246);
        r11.ʼˎ(10, z6);
        r11.ʼˎ(11, z && !m9246);
        r11.ʼˎ(12, z && !m9246);
        C1475 c14752 = new C1475(r13.ʽ());
        this.f17358 = c14752;
        if (c14752.equals(c1475)) {
            return;
        }
        this.f17365.ˈ(13, new C4672(this));
    }

    /* renamed from: ᵔⁱ, reason: contains not printable characters */
    public final long m9250() {
        m9241();
        if (!m9246()) {
            return ᴵʼ();
        }
        C4682 c4682 = this.f17415;
        C4987 c4987 = c4682.f17590;
        AbstractC1445 abstractC1445 = c4682.f17591;
        Object obj = c4987.f18631;
        C1467 c1467 = this.f17366;
        abstractC1445.mo4225(obj, c1467);
        return AbstractC3712.m7755(c1467.m4274(c4987.f18630, c4987.f18627));
    }

    /* renamed from: ᵢʻ, reason: contains not printable characters */
    public final void m9251(InterfaceC1487 interfaceC1487) {
        m9241();
        interfaceC1487.getClass();
        ˉʿ r0 = this.f17365;
        r0.ᵔᵢ();
        CopyOnWriteArraySet copyOnWriteArraySet = (CopyOnWriteArraySet) r0.ﾞᴵ;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            C3733 c3733 = (C3733) it.next();
            if (c3733.f14538.equals(interfaceC1487)) {
                InterfaceC3725 interfaceC3725 = (InterfaceC3725) r0.ˑﹳ;
                c3733.f14536 = true;
                if (c3733.f14535) {
                    c3733.f14535 = false;
                    interfaceC3725.mo2820(c3733.f14538, c3733.f14537.ʽ());
                }
                copyOnWriteArraySet.remove(c3733);
            }
        }
    }

    /* renamed from: ᵢˋ, reason: contains not printable characters */
    public final C5062 m9252() {
        m9241();
        return new C5062(this.f17415.f17575.f19027);
    }

    /* renamed from: ᵢᐧ, reason: contains not printable characters */
    public final void m9253(int i) {
        m9241();
        if (this.f17353 != i) {
            this.f17353 = i;
            C3711 c3711 = this.f17406.f17615;
            c3711.getClass();
            C3716 m7749 = C3711.m7749();
            m7749.f14491 = c3711.f14471.obtainMessage(11, i, 0);
            m7749.m7816();
            C0782 c0782 = new C0782(i, 1);
            ˉʿ r5 = this.f17365;
            r5.ˈ(8, c0782);
            m9249();
            r5.ʽ();
        }
    }

    /* renamed from: ﹳᵢ, reason: contains not printable characters */
    public final AbstractC1445 m9254() {
        m9241();
        return this.f17415.f17591;
    }

    /* renamed from: ﹶʽ, reason: contains not printable characters */
    public final int m9255(C4682 c4682) {
        return c4682.f17591.m4217() ? this.f17357 : c4682.f17591.mo4225(c4682.f17590.f18631, this.f17366).f5744;
    }

    /* renamed from: ﹶˎ, reason: contains not printable characters */
    public final C1482 m9256() {
        AbstractC1445 m9254 = m9254();
        if (m9254.m4217()) {
            return this.f17410;
        }
        C1480 c1480 = m9254.mo4221(m9238(), (C1466) ((ᵎﹶ) this).ʾˋ, 0L).f5730;
        C1459 m4292 = this.f17410.m4292();
        C1482 c1482 = c1480.f5779;
        if (c1482 != null) {
            AbstractC0993 abstractC0993 = c1482.f5812;
            byte[] bArr = c1482.f5832;
            CharSequence charSequence = c1482.f5829;
            if (charSequence != null) {
                m4292.f5693 = charSequence;
            }
            CharSequence charSequence2 = c1482.f5828;
            if (charSequence2 != null) {
                m4292.f5692 = charSequence2;
            }
            CharSequence charSequence3 = c1482.f5810;
            if (charSequence3 != null) {
                m4292.f5675 = charSequence3;
            }
            CharSequence charSequence4 = c1482.f5815;
            if (charSequence4 != null) {
                m4292.f5679 = charSequence4;
            }
            CharSequence charSequence5 = c1482.f5819;
            if (charSequence5 != null) {
                m4292.f5683 = charSequence5;
            }
            if (bArr != null) {
                Integer num = c1482.f5823;
                m4292.f5696 = bArr == null ? null : (byte[]) bArr.clone();
                m4292.f5687 = num;
            }
            Integer num2 = c1482.f5825;
            if (num2 != null) {
                m4292.f5689 = num2;
            }
            Integer num3 = c1482.f5808;
            if (num3 != null) {
                m4292.f5673 = num3;
            }
            Integer num4 = c1482.f5814;
            if (num4 != null) {
                m4292.f5678 = num4;
            }
            Boolean bool = c1482.f5822;
            if (bool != null) {
                m4292.f5686 = bool;
            }
            Integer num5 = c1482.f5831;
            if (num5 != null) {
                m4292.f5695 = num5;
            }
            Integer num6 = c1482.f5816;
            if (num6 != null) {
                m4292.f5695 = num6;
            }
            Integer num7 = c1482.f5824;
            if (num7 != null) {
                m4292.f5680 = num7;
            }
            Integer num8 = c1482.f5817;
            if (num8 != null) {
                m4292.f5688 = num8;
            }
            Integer num9 = c1482.f5809;
            if (num9 != null) {
                m4292.f5681 = num9;
            }
            Integer num10 = c1482.f5826;
            if (num10 != null) {
                m4292.f5674 = num10;
            }
            Integer num11 = c1482.f5830;
            if (num11 != null) {
                m4292.f5690 = num11;
            }
            CharSequence charSequence6 = c1482.f5820;
            if (charSequence6 != null) {
                m4292.f5694 = charSequence6;
            }
            CharSequence charSequence7 = c1482.f5818;
            if (charSequence7 != null) {
                m4292.f5684 = charSequence7;
            }
            CharSequence charSequence8 = c1482.f5811;
            if (charSequence8 != null) {
                m4292.f5682 = charSequence8;
            }
            Integer num12 = c1482.f5806;
            if (num12 != null) {
                m4292.f5676 = num12;
            }
            Integer num13 = c1482.f5821;
            if (num13 != null) {
                m4292.f5671 = num13;
            }
            CharSequence charSequence9 = c1482.f5813;
            if (charSequence9 != null) {
                m4292.f5685 = charSequence9;
            }
            CharSequence charSequence10 = c1482.f5807;
            if (charSequence10 != null) {
                m4292.f5677 = charSequence10;
            }
            Integer num14 = c1482.f5827;
            if (num14 != null) {
                m4292.f5672 = num14;
            }
            if (!abstractC0993.isEmpty()) {
                m4292.f5691 = AbstractC0993.m3264(abstractC0993);
            }
        }
        return new C1482(m4292);
    }

    /* renamed from: ﾞˊ, reason: contains not printable characters */
    public final void m9257(C1463 c1463) {
        C1463 c14632;
        m9241();
        AbstractC5070 abstractC5070 = this.f17405;
        abstractC5070.getClass();
        C1463 m9234 = m9234();
        if (this.f17413) {
            this.f17351 = c1463.f5706;
            AbstractC0997 abstractC0997 = this.f17380.f17499;
            C1481 mo4249 = c1463.mo4249();
            AbstractC0983 it = abstractC0997.iterator();
            while (it.hasNext()) {
                mo4249.mo4283(((Integer) it.next()).intValue(), true);
            }
            c14632 = mo4249.mo4290();
        } else {
            c14632 = c1463;
        }
        if (!c14632.equals(((C5078) abstractC5070).m9984())) {
            abstractC5070.mo9972(c14632);
        }
        if (m9234.equals(c1463)) {
            return;
        }
        this.f17365.ᵎﹶ(19, new C3569(20, c1463));
    }

    /* renamed from: ﾞˋ, reason: contains not printable characters */
    public final int m9258() {
        m9241();
        if (m9246()) {
            return this.f17415.f17590.f18630;
        }
        return -1;
    }

    /* renamed from: ﾞˏ, reason: contains not printable characters */
    public final int m9259() {
        m9241();
        return this.f17415.f17583;
    }
}
