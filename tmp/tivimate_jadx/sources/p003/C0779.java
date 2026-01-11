package p003;

import android.os.Looper;
import android.os.SystemClock;
import android.util.SparseArray;
import androidx.media3.common.PlaybackException;
import androidx.media3.exoplayer.ExoPlaybackException;
import ar.tvplayer.core.data.api.parse.ˈ;
import java.io.IOException;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0982;
import p017.C0987;
import p055.AbstractC1445;
import p055.C1454;
import p055.C1456;
import p055.C1463;
import p055.C1466;
import p055.C1467;
import p055.C1469;
import p055.C1471;
import p055.C1475;
import p055.C1476;
import p055.C1480;
import p055.C1482;
import p055.C1483;
import p055.C1485;
import p055.InterfaceC1487;
import p055.InterfaceC1488;
import p196.C2895;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p305.C3711;
import p305.C3721;
import p305.InterfaceC3718;
import p388.C4620;
import p392.C4644;
import p395.InterfaceC4719;
import p404.C4799;
import p420.C4987;
import p420.C4991;
import p420.InterfaceC4970;
import ᐧˎ.ˉʿ;

/* renamed from: ʻʿ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0779 implements InterfaceC1487, InterfaceC4970, InterfaceC4719 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C1466 f3246;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C3721 f3247;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C4799 f3248;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public C3711 f3249;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public ˉʿ f3250;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public InterfaceC1488 f3251;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C1467 f3252;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final SparseArray f3253;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f3254;

    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, ﹳʽ.ᴵᵔ] */
    public C0779(C3721 c3721) {
        c3721.getClass();
        this.f3247 = c3721;
        String str = AbstractC3712.f14481;
        Looper myLooper = Looper.myLooper();
        this.f3250 = new ˉʿ(myLooper == null ? Looper.getMainLooper() : myLooper, c3721, new ˈ(18));
        C1467 c1467 = new C1467();
        this.f3252 = c1467;
        this.f3246 = new C1466();
        ?? obj = new Object();
        obj.f18050 = c1467;
        C0982 c0982 = AbstractC0993.f3977;
        obj.f18053 = C0956.f3901;
        obj.f18049 = C0987.f3963;
        this.f3248 = obj;
        this.f3253 = new SparseArray();
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void mo2822(float f) {
        m2848(m2841(), 22, new C0792(28));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʼʼ, reason: contains not printable characters */
    public final void mo2823(int i) {
        m2848(m2841(), 21, new C0792(14));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʼˈ, reason: contains not printable characters */
    public final void mo2824(boolean z) {
        m2848(m2849(), 7, new ˈ(9));
    }

    @Override // p395.InterfaceC4719
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo2825(int i, C4987 c4987) {
        m2848(m2842(i, c4987), 1025, new C0792(22));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void mo2826(C1463 c1463) {
        m2848(m2849(), 19, new ˈ(28));
    }

    @Override // p395.InterfaceC4719
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo2827(int i, C4987 c4987, int i2) {
        m2848(m2842(i, c4987), 1022, new C0792(8));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final void mo2828(int i) {
        m2848(m2849(), 4, new ˈ(19));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void mo2829(int i, boolean z) {
        m2848(m2849(), 5, new ˈ(15));
    }

    @Override // p395.InterfaceC4719
    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final void mo2830(int i, C4987 c4987) {
        m2848(m2842(i, c4987), 1027, new C0792(18));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void mo2831(C1475 c1475) {
        m2848(m2849(), 13, new C0792(25));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void mo2832(int i) {
        m2848(m2849(), 8, new ˈ(21));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final void mo2833(int i, C1456 c1456, C1456 c14562) {
        if (i == 1) {
            this.f3254 = false;
        }
        InterfaceC1488 interfaceC1488 = this.f3251;
        interfaceC1488.getClass();
        C4799 c4799 = this.f3248;
        c4799.f18051 = C4799.m9580(interfaceC1488, (AbstractC0993) c4799.f18053, (C4987) c4799.f18054, (C1467) c4799.f18050);
        C0789 m2849 = m2849();
        m2848(m2849, 11, new C0782(m2849, i, c1456, c14562));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo2834(int i) {
        InterfaceC1488 interfaceC1488 = this.f3251;
        interfaceC1488.getClass();
        C4799 c4799 = this.f3248;
        c4799.f18051 = C4799.m9580(interfaceC1488, (AbstractC0993) c4799.f18053, (C4987) c4799.f18054, (C1467) c4799.f18050);
        c4799.m9593(((C4644) interfaceC1488).m9254());
        m2848(m2849(), 0, new C0792(26));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˈʿ, reason: contains not printable characters */
    public final void mo2835(C1482 c1482) {
        m2848(m2849(), 14, new C0792(1));
    }

    @Override // p420.InterfaceC4970
    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final void mo2836(int i, C4987 c4987, C4991 c4991, C2895 c2895, int i2) {
        m2848(m2842(i, c4987), 1000, new ˈ(27));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void mo2837(boolean z) {
        m2848(m2849(), 3, new C0792(11));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void mo2838(boolean z) {
        m2848(m2841(), 23, new C0792(21));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˉٴ, reason: contains not printable characters */
    public final void mo2839(PlaybackException playbackException) {
        C4987 c4987;
        C0789 m2849 = (!(playbackException instanceof ExoPlaybackException) || (c4987 = ((ExoPlaybackException) playbackException).f1208) == null) ? m2849() : m2859(c4987);
        m2848(m2849, 10, new ˈ(m2849, playbackException, 0));
    }

    @Override // p395.InterfaceC4719
    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final void mo2840(int i, C4987 c4987) {
        m2848(m2842(i, c4987), 1023, new C0792(23));
    }

    /* renamed from: ˊˋ, reason: contains not printable characters */
    public final C0789 m2841() {
        return m2859((C4987) this.f3248.f18052);
    }

    /* renamed from: ˋᵔ, reason: contains not printable characters */
    public final C0789 m2842(int i, C4987 c4987) {
        this.f3251.getClass();
        if (c4987 != null) {
            return ((AbstractC1445) ((C0987) this.f3248.f18049).get(c4987)) != null ? m2859(c4987) : m2858(AbstractC1445.f5630, i, c4987);
        }
        AbstractC1445 m9254 = ((C4644) this.f3251).m9254();
        if (i >= m9254.mo4222()) {
            m9254 = AbstractC1445.f5630;
        }
        return m2858(m9254, i, null);
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˏי, reason: contains not printable characters */
    public final void mo2843(int i, boolean z) {
        m2848(m2849(), -1, new ˈ(6));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˑٴ, reason: contains not printable characters */
    public final void mo2844(C4620 c4620) {
        m2848(m2849(), 27, new ˈ(22));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void mo2845(C1485 c1485) {
        m2848(m2849(), 12, new ˈ(4));
    }

    @Override // p420.InterfaceC4970
    /* renamed from: יـ, reason: contains not printable characters */
    public final void mo2846(int i, C4987 c4987, C2895 c2895) {
        C0789 m2842 = m2842(i, c4987);
        m2848(m2842, 1004, new C0778(m2842, 1, c2895));
    }

    @Override // p420.InterfaceC4970
    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void mo2847(int i, C4987 c4987, C2895 c2895) {
        m2848(m2842(i, c4987), 1005, new C0792(17));
    }

    /* renamed from: ـˏ, reason: contains not printable characters */
    public final void m2848(C0789 c0789, int i, InterfaceC3718 interfaceC3718) {
        this.f3253.put(i, c0789);
        this.f3250.ᵎﹶ(i, interfaceC3718);
    }

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final C0789 m2849() {
        return m2859((C4987) this.f3248.f18051);
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void mo2850(C1483 c1483) {
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void mo2851(C1454 c1454) {
        m2848(m2849(), 2, new ˈ(14));
    }

    @Override // p420.InterfaceC4970
    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final void mo2852(int i, C4987 c4987, C4991 c4991, C2895 c2895, IOException iOException, boolean z) {
        C0789 m2842 = m2842(i, c4987);
        m2848(m2842, 1003, new ˈ(m2842, c4991, c2895, iOException, z));
    }

    @Override // p395.InterfaceC4719
    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final void mo2853(int i, C4987 c4987, Exception exc) {
        m2848(m2842(i, c4987), 1024, new C0792(9));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final void mo2854(int i, int i2) {
        m2848(m2841(), 24, new ˈ(26));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void mo2855(boolean z) {
        m2848(m2849(), 9, new ˈ(25));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo2856(C1480 c1480, int i) {
        m2848(m2849(), 1, new C0792(27));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void mo2857() {
    }

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final C0789 m2858(AbstractC1445 abstractC1445, int i, C4987 c4987) {
        C4987 c49872 = abstractC1445.m4217() ? null : c4987;
        this.f3247.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        boolean z = abstractC1445.equals(((C4644) this.f3251).m9254()) && i == ((C4644) this.f3251).m9238();
        long j = 0;
        if (c49872 == null || !c49872.m9838()) {
            if (z) {
                C4644 c4644 = (C4644) this.f3251;
                c4644.m9241();
                j = c4644.m9245(c4644.f17415);
            } else if (!abstractC1445.m4217()) {
                j = AbstractC3712.m7755(abstractC1445.mo4221(i, this.f3246, 0L).f5742);
            }
        } else if (z && ((C4644) this.f3251).m9258() == c49872.f18630 && ((C4644) this.f3251).m9231() == c49872.f18627) {
            j = ((C4644) this.f3251).m9242();
        }
        C4987 c49873 = (C4987) this.f3248.f18051;
        AbstractC1445 m9254 = ((C4644) this.f3251).m9254();
        int m9238 = ((C4644) this.f3251).m9238();
        long m9242 = ((C4644) this.f3251).m9242();
        C4644 c46442 = (C4644) this.f3251;
        c46442.m9241();
        return new C0789(elapsedRealtime, abstractC1445, i, c49872, j, m9254, m9238, c49873, m9242, AbstractC3712.m7755(c46442.f17415.f17592));
    }

    /* renamed from: ᵔٴ, reason: contains not printable characters */
    public final C0789 m2859(C4987 c4987) {
        this.f3251.getClass();
        AbstractC1445 abstractC1445 = c4987 == null ? null : (AbstractC1445) ((C0987) this.f3248.f18049).get(c4987);
        if (c4987 != null && abstractC1445 != null) {
            return m2858(abstractC1445, abstractC1445.mo4225(c4987.f18631, this.f3252).f5744, c4987);
        }
        int m9238 = ((C4644) this.f3251).m9238();
        AbstractC1445 m9254 = ((C4644) this.f3251).m9254();
        if (m9238 >= m9254.mo4222()) {
            m9254 = AbstractC1445.f5630;
        }
        return m2858(m9254, m9238, null);
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo2860(C1476 c1476) {
        m2848(m2849(), 28, new ˈ(8));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void mo2861(C1471 c1471) {
        m2848(m2841(), 20, new ˈ(7));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public final void mo2862(PlaybackException playbackException) {
        C4987 c4987;
        m2848((!(playbackException instanceof ExoPlaybackException) || (c4987 = ((ExoPlaybackException) playbackException).f1208) == null) ? m2849() : m2859(c4987), 10, new ˈ(13));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo2863(int i) {
        m2848(m2849(), 6, new ˈ(11));
    }

    /* renamed from: ﹳـ, reason: contains not printable characters */
    public final void m2864(C4644 c4644, Looper looper) {
        AbstractC3731.m7857(this.f3251 == null || ((AbstractC0993) this.f3248.f18053).isEmpty());
        c4644.getClass();
        this.f3251 = c4644;
        this.f3249 = this.f3247.m7820(looper, null);
        ˉʿ r0 = this.f3250;
        this.f3250 = new ˉʿ((CopyOnWriteArraySet) r0.ﾞᴵ, looper, (C3721) r0.ʽ, new C0778(this, 0, c4644), r0.ⁱˊ);
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo2865(C1469 c1469) {
        C0789 m2841 = m2841();
        m2848(m2841, 25, new C0785(m2841, c1469));
    }

    @Override // p055.InterfaceC1487
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void mo2866(List list) {
        m2848(m2849(), 27, new ˈ(17));
    }

    @Override // p420.InterfaceC4970
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void mo2867(int i, C4987 c4987, C4991 c4991, C2895 c2895) {
        m2848(m2842(i, c4987), 1002, new C0792(6));
    }

    @Override // p420.InterfaceC4970
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo2868(int i, C4987 c4987, C4991 c4991, C2895 c2895) {
        m2848(m2842(i, c4987), 1001, new C0792(10));
    }
}
