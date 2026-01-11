package p392;

import android.os.SystemClock;
import androidx.media3.exoplayer.ExoPlaybackException;
import java.util.List;
import p017.C0956;
import p055.AbstractC1445;
import p055.C1470;
import p055.C1485;
import p305.AbstractC3712;
import p420.C4936;
import p420.C4987;
import p428.C5057;

/* renamed from: ⁱי.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4682 {

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public static final C4987 f17574 = new C4987(new Object());

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C5057 f17575;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final boolean f17576;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f17577;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final List f17578;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long f17579;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final int f17580;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final C1485 f17581;

    /* renamed from: ˏי, reason: contains not printable characters */
    public volatile long f17582;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final int f17583;

    /* renamed from: יـ, reason: contains not printable characters */
    public volatile long f17584;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final C4987 f17585;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean f17586;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final int f17587;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C4936 f17588;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public volatile long f17589;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4987 f17590;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AbstractC1445 f17591;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public volatile long f17592;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final boolean f17593;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final ExoPlaybackException f17594;

    public C4682(AbstractC1445 abstractC1445, C4987 c4987, long j, long j2, int i, ExoPlaybackException exoPlaybackException, boolean z, C4936 c4936, C5057 c5057, List list, C4987 c49872, boolean z2, int i2, int i3, C1485 c1485, long j3, long j4, long j5, long j6, boolean z3) {
        this.f17591 = abstractC1445;
        this.f17590 = c4987;
        this.f17577 = j;
        this.f17579 = j2;
        this.f17583 = i;
        this.f17594 = exoPlaybackException;
        this.f17586 = z;
        this.f17588 = c4936;
        this.f17575 = c5057;
        this.f17578 = list;
        this.f17585 = c49872;
        this.f17593 = z2;
        this.f17580 = i2;
        this.f17587 = i3;
        this.f17581 = c1485;
        this.f17589 = j3;
        this.f17592 = j4;
        this.f17584 = j5;
        this.f17582 = j6;
        this.f17576 = z3;
    }

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public static C4682 m9293(C5057 c5057) {
        C1470 c1470 = AbstractC1445.f5630;
        C4936 c4936 = C4936.f18384;
        C0956 c0956 = C0956.f3901;
        C1485 c1485 = C1485.f5835;
        C4987 c4987 = f17574;
        return new C4682(c1470, c4987, -9223372036854775807L, 0L, 1, null, false, c4936, c5057, c0956, c4987, false, 1, 0, c1485, 0L, 0L, 0L, 0L, false);
    }

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C4682 m9294(boolean z) {
        return new C4682(this.f17591, this.f17590, this.f17577, this.f17579, this.f17583, this.f17594, this.f17586, this.f17588, this.f17575, this.f17578, this.f17585, this.f17593, this.f17580, this.f17587, this.f17581, this.f17589, this.f17592, this.f17584, this.f17582, z);
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4682 m9295(C4987 c4987) {
        return new C4682(this.f17591, this.f17590, this.f17577, this.f17579, this.f17583, this.f17594, this.f17586, this.f17588, this.f17575, this.f17578, c4987, this.f17593, this.f17580, this.f17587, this.f17581, this.f17589, this.f17592, this.f17584, this.f17582, this.f17576);
    }

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final C4682 m9296(AbstractC1445 abstractC1445) {
        return new C4682(abstractC1445, this.f17590, this.f17577, this.f17579, this.f17583, this.f17594, this.f17586, this.f17588, this.f17575, this.f17578, this.f17585, this.f17593, this.f17580, this.f17587, this.f17581, this.f17589, this.f17592, this.f17584, this.f17582, this.f17576);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C4682 m9297(C4987 c4987, long j, long j2, long j3, long j4, C4936 c4936, C5057 c5057, List list) {
        return new C4682(this.f17591, c4987, j2, j3, this.f17583, this.f17594, this.f17586, c4936, c5057, list, this.f17585, this.f17593, this.f17580, this.f17587, this.f17581, this.f17589, j4, j, SystemClock.elapsedRealtime(), this.f17576);
    }

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final boolean m9298() {
        return this.f17583 == 3 && this.f17593 && this.f17587 == 0;
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C4682 m9299(int i, int i2, boolean z) {
        return new C4682(this.f17591, this.f17590, this.f17577, this.f17579, this.f17583, this.f17594, this.f17586, this.f17588, this.f17575, this.f17578, this.f17585, z, i, i2, this.f17581, this.f17589, this.f17592, this.f17584, this.f17582, this.f17576);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C4682 m9300(C1485 c1485) {
        return new C4682(this.f17591, this.f17590, this.f17577, this.f17579, this.f17583, this.f17594, this.f17586, this.f17588, this.f17575, this.f17578, this.f17585, this.f17593, this.f17580, this.f17587, c1485, this.f17589, this.f17592, this.f17584, this.f17582, this.f17576);
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C4682 m9301(int i) {
        return new C4682(this.f17591, this.f17590, this.f17577, this.f17579, i, this.f17594, this.f17586, this.f17588, this.f17575, this.f17578, this.f17585, this.f17593, this.f17580, this.f17587, this.f17581, this.f17589, this.f17592, this.f17584, this.f17582, this.f17576);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C4682 m9302(boolean z) {
        return new C4682(this.f17591, this.f17590, this.f17577, this.f17579, this.f17583, this.f17594, z, this.f17588, this.f17575, this.f17578, this.f17585, this.f17593, this.f17580, this.f17587, this.f17581, this.f17589, this.f17592, this.f17584, this.f17582, this.f17576);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4682 m9303() {
        return new C4682(this.f17591, this.f17590, this.f17577, this.f17579, this.f17583, this.f17594, this.f17586, this.f17588, this.f17575, this.f17578, this.f17585, this.f17593, this.f17580, this.f17587, this.f17581, this.f17589, this.f17592, m9304(), SystemClock.elapsedRealtime(), this.f17576);
    }

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final long m9304() {
        long j;
        long j2;
        if (!m9298()) {
            return this.f17584;
        }
        do {
            j = this.f17582;
            j2 = this.f17584;
        } while (j != this.f17582);
        return AbstractC3712.m7757(AbstractC3712.m7755(j2) + (((float) (SystemClock.elapsedRealtime() - j)) * this.f17581.f5838));
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C4682 m9305(ExoPlaybackException exoPlaybackException) {
        return new C4682(this.f17591, this.f17590, this.f17577, this.f17579, this.f17583, exoPlaybackException, this.f17586, this.f17588, this.f17575, this.f17578, this.f17585, this.f17593, this.f17580, this.f17587, this.f17581, this.f17589, this.f17592, this.f17584, this.f17582, this.f17576);
    }
}
