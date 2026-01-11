package p274;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.media3.exoplayer.dash.DashManifestStaleException;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.io.IOException;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import p003.C0783;
import p012.C0894;
import p055.AbstractC1449;
import p055.C1444;
import p055.C1452;
import p055.C1480;
import p055.C1495;
import p127.C2150;
import p266.C3456;
import p266.InterfaceC3452;
import p266.InterfaceC3457;
import p266.InterfaceC3462;
import p281.AbstractC3560;
import p291.C3612;
import p291.C3622;
import p291.C3625;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p364.C4441;
import p364.C4443;
import p364.C4449;
import p364.InterfaceC4437;
import p364.InterfaceC4442;
import p366.C4472;
import p372.C4523;
import p395.C4715;
import p395.InterfaceC4734;
import p420.AbstractC4990;
import p420.C4987;
import p420.C4991;
import p420.InterfaceC4945;
import ˊⁱ.ˑﹳ;
import ˏˆ.ﹳٴ;
import ﹳˋ.ʼˎ;

/* renamed from: ـᵢ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3496 extends AbstractC4990 {

    /* renamed from: ʻˋ, reason: contains not printable characters */
    public long f13734;

    /* renamed from: ʻᵎ, reason: contains not printable characters */
    public Uri f13735;

    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final C3489 f13736;

    /* renamed from: ʿ, reason: contains not printable characters */
    public final InterfaceC4442 f13737;

    /* renamed from: ʿᵢ, reason: contains not printable characters */
    public InterfaceC3462 f13738;

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final C0894 f13739;

    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final long f13740;

    /* renamed from: ˈˏ, reason: contains not printable characters */
    public boolean f13741;

    /* renamed from: ˈⁱ, reason: contains not printable characters */
    public final RunnableC3487 f13742;

    /* renamed from: ˉـ, reason: contains not printable characters */
    public final C3500 f13743;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final boolean f13744;

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final InterfaceC4437 f13745;

    /* renamed from: ˊᵔ, reason: contains not printable characters */
    public final Uri f13746;

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final ʽﹳ f13747;

    /* renamed from: ˏᵢ, reason: contains not printable characters */
    public Handler f13748;

    /* renamed from: ˑʼ, reason: contains not printable characters */
    public int f13749;

    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final long f13750;

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final Object f13751;

    /* renamed from: ـᵎ, reason: contains not printable characters */
    public C1480 f13752;

    /* renamed from: ـﹶ, reason: contains not printable characters */
    public C3612 f13753;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final ʽﹳ f13754;

    /* renamed from: ٴﹳ, reason: contains not printable characters */
    public long f13755;

    /* renamed from: ᐧᴵ, reason: contains not printable characters */
    public DashManifestStaleException f13756;

    /* renamed from: ᐧﾞ, reason: contains not printable characters */
    public InterfaceC3457 f13757;

    /* renamed from: ᴵʼ, reason: contains not printable characters */
    public C1452 f13758;

    /* renamed from: ᴵˑ, reason: contains not printable characters */
    public final RunnableC3487 f13759;

    /* renamed from: ᵎʻ, reason: contains not printable characters */
    public int f13760;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C4472 f13761;

    /* renamed from: ᵎᵔ, reason: contains not printable characters */
    public C4441 f13762;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final InterfaceC3452 f13763;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final InterfaceC4734 f13764;

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final ﹳٴ f13765;

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final SparseArray f13766;

    /* renamed from: ﹳﹳ, reason: contains not printable characters */
    public long f13767;

    /* renamed from: ﹶᐧ, reason: contains not printable characters */
    public long f13768;

    static {
        AbstractC1449.m4241("media3.exoplayer.dash");
    }

    /* JADX WARN: Type inference failed for: r2v11, types: [ـᵢ.ʽ] */
    /* JADX WARN: Type inference failed for: r2v12, types: [ـᵢ.ʽ] */
    public C3496(C1480 c1480, InterfaceC3452 interfaceC3452, InterfaceC4437 interfaceC4437, ʽﹳ r5, C4472 c4472, InterfaceC4734 interfaceC4734, C0894 c0894, long j, long j2) {
        this.f13752 = c1480;
        this.f13758 = c1480.f5778;
        C1444 c1444 = c1480.f5781;
        c1444.getClass();
        Uri uri = c1444.f5629;
        this.f13735 = uri;
        this.f13746 = uri;
        this.f13753 = null;
        this.f13763 = interfaceC3452;
        this.f13745 = interfaceC4437;
        this.f13754 = r5;
        this.f13764 = interfaceC4734;
        this.f13739 = c0894;
        this.f13740 = j;
        this.f13750 = j2;
        this.f13761 = c4472;
        this.f13765 = new ﹳٴ(24);
        this.f13744 = false;
        this.f13747 = m9841(null);
        this.f13751 = new Object();
        this.f13766 = new SparseArray();
        this.f13743 = new C3500(this);
        this.f13755 = -9223372036854775807L;
        this.f13734 = -9223372036854775807L;
        this.f13736 = new C3489(this, 1);
        this.f13737 = new C3500(this);
        final int i = 0;
        this.f13742 = new Runnable(this) { // from class: ـᵢ.ʽ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ C3496 f13683;

            {
                this.f13683 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i) {
                    case 0:
                        this.f13683.m7434();
                        return;
                    default:
                        this.f13683.m7433(false);
                        return;
                }
            }
        };
        final int i2 = 1;
        this.f13759 = new Runnable(this) { // from class: ـᵢ.ʽ

            /* renamed from: ᴵˊ, reason: contains not printable characters */
            public final /* synthetic */ C3496 f13683;

            {
                this.f13683 = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                switch (i2) {
                    case 0:
                        this.f13683.m7434();
                        return;
                    default:
                        this.f13683.m7433(false);
                        return;
                }
            }
        };
    }

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public static boolean m7430(C3622 c3622) {
        List list = c3622.f14173;
        for (int i = 0; i < list.size(); i++) {
            int i2 = ((C3625) list.get(i)).f14186;
            if (i2 == 1 || i2 == 2) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void m7431(IOException iOException) {
        AbstractC3731.m7863("DashMediaSource", "Failed to resolve time offset.", iOException);
        this.f13734 = System.currentTimeMillis() - SystemClock.elapsedRealtime();
        m7433(true);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void m7432() {
        boolean z;
        C4441 c4441 = this.f13762;
        C3489 c3489 = new C3489(this, 0);
        synchronized (AbstractC3560.f13916) {
            z = AbstractC3560.f13914;
        }
        if (z) {
            c3489.m7427();
            return;
        }
        if (c4441 == null) {
            c4441 = new C4441("SntpClient");
        }
        c4441.m8983(new ʼˎ(26), new ˑﹳ(12, c3489), 1);
    }

    @Override // p420.AbstractC4990
    /* renamed from: ʾᵎ */
    public final void mo5098() {
        this.f13741 = false;
        this.f13738 = null;
        C4441 c4441 = this.f13762;
        if (c4441 != null) {
            c4441.m8980(null);
            this.f13762 = null;
        }
        this.f13768 = 0L;
        this.f13767 = 0L;
        this.f13735 = this.f13746;
        this.f13756 = null;
        Handler handler = this.f13748;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.f13748 = null;
        }
        this.f13734 = -9223372036854775807L;
        this.f13749 = 0;
        this.f13755 = -9223372036854775807L;
        this.f13766.clear();
        ﹳٴ r0 = this.f13765;
        ((HashMap) r0.ᴵˊ).clear();
        ((HashMap) r0.ʽʽ).clear();
        ((HashMap) r0.ˈٴ).clear();
        this.f13764.mo9000();
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ˈ */
    public final void mo5099() {
        this.f13737.mo7443();
    }

    /* JADX WARN: Code restructure failed: missing block: B:186:0x037a, code lost:
    
        if (r15.f5765 == (-9223372036854775807L)) goto L190;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0174, code lost:
    
        r11 = r19;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x01da  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0258  */
    /* JADX WARN: Removed duplicated region for block: B:190:0x03bb  */
    /* JADX WARN: Removed duplicated region for block: B:193:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0403  */
    /* JADX WARN: Removed duplicated region for block: B:248:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:249:0x03f5  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x03c0  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x03c5  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x01d7 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r10v16 */
    /* JADX WARN: Type inference failed for: r10v17, types: [int] */
    /* JADX WARN: Type inference failed for: r10v19 */
    /* JADX WARN: Type inference failed for: r15v10, types: [int] */
    /* JADX WARN: Type inference failed for: r15v12 */
    /* JADX WARN: Type inference failed for: r15v9 */
    /* JADX WARN: Type inference failed for: r5v25, types: [ﹶʽ.ˏי] */
    /* renamed from: ˈٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m7433(boolean r44) {
        /*
            Method dump skipped, instructions count: 1243
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p274.C3496.m7433(boolean):void");
    }

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final void m7434() {
        Uri uri;
        this.f13748.removeCallbacks(this.f13742);
        if (this.f13762.m8981()) {
            return;
        }
        if (this.f13762.m8979()) {
            this.f13741 = true;
            return;
        }
        synchronized (this.f13751) {
            uri = this.f13735;
        }
        this.f13741 = false;
        Map map = Collections.EMPTY_MAP;
        AbstractC3731.m7851(uri, "The uri must be set.");
        C4449 c4449 = new C4449(this.f13738, new C3456(uri, 1, null, map, 0L, -1L, null, 1), 4, this.f13745);
        C3489 c3489 = this.f13736;
        this.f13739.getClass();
        this.f13762.m8983(c4449, c3489, 3);
    }

    @Override // p420.AbstractC4990
    /* renamed from: ˏי */
    public final void mo5100(InterfaceC3457 interfaceC3457) {
        this.f13757 = interfaceC3457;
        Looper myLooper = Looper.myLooper();
        C0783 c0783 = this.f18641;
        AbstractC3731.m7868(c0783);
        InterfaceC4734 interfaceC4734 = this.f13764;
        interfaceC4734.mo8990(myLooper, c0783);
        interfaceC4734.mo8998();
        if (this.f13744) {
            m7433(false);
            return;
        }
        this.f13738 = this.f13763.mo624();
        this.f13762 = new C4441("DashMediaSource");
        this.f13748 = AbstractC3712.m7759(null);
        m7434();
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ˑﹳ */
    public final void mo5101(InterfaceC4945 interfaceC4945) {
        C3497 c3497 = (C3497) interfaceC4945;
        C3491 c3491 = c3497.f13775;
        c3491.f13703 = true;
        c3491.f13697.removeCallbacksAndMessages(null);
        for (C4523 c4523 : c3497.f13782) {
            c4523.m9090(c3497);
        }
        c3497.f13783 = null;
        this.f13766.remove(c3497.f13773);
    }

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void m7435(C4449 c4449, long j) {
        long j2 = c4449.f16659;
        Uri uri = c4449.f16660.f13539;
        C4991 c4991 = new C4991(j);
        this.f13739.getClass();
        this.f13747.ﹳᐧ(c4991, c4449.f16658, -1, (C1495) null, 0, (Object) null, -9223372036854775807L, -9223372036854775807L);
    }

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void m7436(C2150 c2150, InterfaceC4437 interfaceC4437) {
        InterfaceC3462 interfaceC3462 = this.f13738;
        Uri parse = Uri.parse(c2150.f8366);
        Map map = Collections.EMPTY_MAP;
        AbstractC3731.m7851(parse, "The uri must be set.");
        this.f13762.m8983(new C4449(interfaceC3462, new C3456(parse, 1, null, map, 0L, -1L, null, 1), 5, interfaceC4437), new C3489(this, 2), 1);
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ᵔʾ */
    public final synchronized void mo5102(C1480 c1480) {
        this.f13752 = c1480;
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ⁱˊ */
    public final InterfaceC4945 mo5104(C4987 c4987, C4443 c4443, long j) {
        int intValue = ((Integer) c4987.f18631).intValue() - this.f13760;
        ʽﹳ m9841 = m9841(c4987);
        C4715 c4715 = new C4715(this.f18639.f17808, 0, c4987);
        int i = this.f13760 + intValue;
        C3612 c3612 = this.f13753;
        InterfaceC3457 interfaceC3457 = this.f13757;
        long j2 = this.f13734;
        C0783 c0783 = this.f18641;
        AbstractC3731.m7868(c0783);
        C3497 c3497 = new C3497(i, c3612, this.f13765, intValue, this.f13754, interfaceC3457, this.f13764, c4715, this.f13739, m9841, j2, this.f13737, c4443, this.f13761, this.f13743, c0783);
        this.f13766.put(i, c3497);
        return c3497;
    }

    @Override // p420.InterfaceC4975
    /* renamed from: ﹳٴ */
    public final synchronized C1480 mo5105() {
        return this.f13752;
    }
}
