package p457;

import android.view.Surface;
import androidx.media3.exoplayer.ExoPlaybackException;
import androidx.media3.exoplayer.video.VideoSink$VideoSinkException;
import com.google.android.material.datepicker.C0671;
import java.util.ArrayDeque;
import java.util.List;
import java.util.concurrent.Executor;
import p004.C0815;
import p028.ExecutorC1119;
import p055.C1469;
import p055.C1490;
import p055.C1495;
import p121.EnumC2017;
import p283.RunnableC3568;
import p305.AbstractC3731;
import p305.C3721;
import p305.C3723;
import p384.C4603;

/* renamed from: ﾞˏ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5390 implements InterfaceC5400 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public InterfaceC5386 f20567;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final ArrayDeque f20568;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Surface f20569;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C1495 f20570;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public InterfaceC5391 f20571;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public Executor f20572;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5387 f20573;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5380 f20574;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f20575;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, ﾞˏ.ʽ] */
    /* JADX WARN: Type inference failed for: r2v6, types: [ﾞˏ.ʽﹳ, java.lang.Object] */
    public C5390(C5380 c5380, C3721 c3721) {
        this.f20574 = c5380;
        c5380.f20496 = c3721;
        ?? obj = new Object();
        obj.f20505 = this;
        this.f20573 = new C5387(obj, c5380);
        this.f20568 = new ArrayDeque();
        this.f20570 = new C1495(new C1490());
        this.f20575 = -9223372036854775807L;
        this.f20571 = InterfaceC5391.f20576;
        this.f20572 = new ExecutorC1119(2);
        this.f20567 = new Object();
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ʻٴ, reason: contains not printable characters */
    public final void mo10802() {
        C5380 c5380 = this.f20574;
        if (c5380.f20489 == 0) {
            c5380.f20489 = 1;
        }
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final boolean mo10803(long j, C5401 c5401) {
        this.f20568.add(c5401);
        C5387 c5387 = this.f20573;
        C0671 c0671 = c5387.f20517;
        int i = c0671.f2738;
        long[] jArr = (long[]) c0671.f2742;
        if (i == jArr.length) {
            int length = jArr.length << 1;
            if (length < 0) {
                throw new IllegalStateException();
            }
            long[] jArr2 = new long[length];
            int length2 = jArr.length;
            int i2 = c0671.f2739;
            int i3 = length2 - i2;
            System.arraycopy(jArr, i2, jArr2, 0, i3);
            System.arraycopy((long[]) c0671.f2742, 0, jArr2, i3, i2);
            c0671.f2739 = 0;
            c0671.f2741 = c0671.f2738 - 1;
            c0671.f2742 = jArr2;
            c0671.f2740 = length - 1;
        }
        int i4 = (c0671.f2741 + 1) & c0671.f2740;
        c0671.f2741 = i4;
        ((long[]) c0671.f2742)[i4] = j;
        c0671.f2738++;
        c5387.f20513 = j;
        c5387.f20507 = -9223372036854775807L;
        this.f20572.execute(new RunnableC3568(18, this));
        return true;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void mo10804() {
        throw new UnsupportedOperationException();
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo10805() {
        this.f20569 = null;
        this.f20574.m10777(null);
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public final void mo10806(C4603 c4603) {
        this.f20571 = c4603;
        this.f20572 = EnumC2017.f7905;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public final void mo10807(float f) {
        this.f20574.m10772(f);
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final void mo10808(long j, long j2) {
        try {
            this.f20573.m10784(j, j2);
        } catch (ExoPlaybackException e) {
            throw new VideoSink$VideoSinkException(e, this.f20570);
        }
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ˈ, reason: contains not printable characters */
    public final void mo10809(InterfaceC5386 interfaceC5386) {
        this.f20567 = interfaceC5386;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void mo10810(boolean z) {
        this.f20574.m10773(z);
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void mo10811() {
        this.f20574.m10774();
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ˏי, reason: contains not printable characters */
    public final boolean mo10812() {
        return true;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Surface mo10813() {
        Surface surface = this.f20569;
        AbstractC3731.m7868(surface);
        return surface;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: יـ, reason: contains not printable characters */
    public final void mo10814() {
        C5387 c5387 = this.f20573;
        if (c5387.f20513 == -9223372036854775807L) {
            c5387.f20513 = Long.MIN_VALUE;
            c5387.f20514 = Long.MIN_VALUE;
        }
        c5387.f20507 = c5387.f20513;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ـˆ, reason: contains not printable characters */
    public final void mo10815(int i) {
        C5405 c5405 = this.f20574.f20494;
        if (c5405.f20633 == i) {
            return;
        }
        c5405.f20633 = i;
        c5405.m10835(true);
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final boolean mo10816(C1495 c1495) {
        return true;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void mo10817(List list) {
        throw new UnsupportedOperationException();
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final boolean mo10818(boolean z) {
        return this.f20574.m10778(z);
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final void mo10819() {
        this.f20574.m10775();
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public final void mo10820(Surface surface, C3723 c3723) {
        this.f20569 = surface;
        this.f20574.m10777(surface);
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final boolean mo10821() {
        C5387 c5387 = this.f20573;
        long j = c5387.f20507;
        return j != -9223372036854775807L && c5387.f20514 == j;
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo10822() {
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public final void mo10823(long j) {
        throw new UnsupportedOperationException();
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void mo10824(C1495 c1495, long j, int i, List list) {
        AbstractC3731.m7857(list.isEmpty());
        int i2 = c1495.f5905;
        int i3 = c1495.f5899;
        C1495 c14952 = this.f20570;
        int i4 = c14952.f5905;
        C5387 c5387 = this.f20573;
        if (i2 != i4 || i3 != c14952.f5899) {
            C0815 c0815 = c5387.f20510;
            long j2 = c5387.f20513;
            c0815.m2966(j2 == -9223372036854775807L ? 0L : j2 + 1, new C1469(i2, i3));
        }
        float f = c1495.f5900;
        if (f != this.f20570.f5900) {
            this.f20574.m10776(f);
        }
        this.f20570 = c1495;
        if (j != this.f20575) {
            if (c5387.f20517.f2738 == 0) {
                c5387.f20515.m10780(i);
                c5387.f20512 = j;
            } else {
                C0815 c08152 = c5387.f20511;
                long j3 = c5387.f20513;
                c08152.m2966(j3 == -9223372036854775807L ? -4611686018427387904L : j3 + 1, Long.valueOf(j));
            }
            this.f20575 = j;
        }
    }

    @Override // p457.InterfaceC5400
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void mo10825(boolean z) {
        if (z) {
            C5380 c5380 = this.f20574;
            C5405 c5405 = c5380.f20494;
            c5405.f20635 = 0L;
            c5405.f20631 = -1L;
            c5405.f20640 = -1L;
            c5380.f20493 = -9223372036854775807L;
            c5380.f20497 = -9223372036854775807L;
            c5380.f20489 = Math.min(c5380.f20489, 1);
            c5380.f20484 = -9223372036854775807L;
        }
        C5387 c5387 = this.f20573;
        C0815 c0815 = c5387.f20510;
        C0671 c0671 = c5387.f20517;
        c0671.f2739 = 0;
        c0671.f2741 = -1;
        c0671.f2738 = 0;
        c5387.f20513 = -9223372036854775807L;
        c5387.f20514 = -9223372036854775807L;
        c5387.f20507 = -9223372036854775807L;
        C0815 c08152 = c5387.f20511;
        if (c08152.m2960() > 0) {
            AbstractC3731.m7849(c08152.m2960() > 0);
            while (c08152.m2960() > 1) {
                c08152.m2963();
            }
            Object m2963 = c08152.m2963();
            m2963.getClass();
            c5387.f20512 = ((Long) m2963).longValue();
        }
        if (c0815.m2960() > 0) {
            AbstractC3731.m7849(c0815.m2960() > 0);
            while (c0815.m2960() > 1) {
                c0815.m2963();
            }
            Object m29632 = c0815.m2963();
            m29632.getClass();
            c0815.m2966(0L, (C1469) m29632);
        }
        this.f20568.clear();
    }
}
