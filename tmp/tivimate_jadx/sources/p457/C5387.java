package p457;

import android.os.SystemClock;
import com.google.android.material.datepicker.C0671;
import java.util.NoSuchElementException;
import p004.C0812;
import p004.C0815;
import p055.AbstractC1464;
import p055.C1469;
import p055.C1490;
import p055.C1495;
import p305.AbstractC3712;
import p311.RunnableC3805;

/* renamed from: ﾞˏ.ʾˋ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5387 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public long f20507;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public C1469 f20509;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public long f20512;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f20513;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public long f20514;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5380 f20515;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5384 f20516;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final C0671 f20517;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C0812 f20508 = new C0812();

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C0815 f20510 = new C0815();

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C0815 f20511 = new C0815();

    /* JADX WARN: Type inference failed for: r4v4, types: [java.lang.Object, com.google.android.material.datepicker.ᵔʾ] */
    public C5387(C5384 c5384, C5380 c5380) {
        this.f20516 = c5384;
        this.f20515 = c5380;
        ?? obj = new Object();
        int highestOneBit = Integer.bitCount(16) != 1 ? Integer.highestOneBit(15) << 1 : 16;
        obj.f2739 = 0;
        obj.f2741 = -1;
        obj.f2738 = 0;
        obj.f2742 = new long[highestOneBit];
        obj.f2740 = highestOneBit - 1;
        this.f20517 = obj;
        this.f20513 = -9223372036854775807L;
        this.f20509 = C1469.f5752;
        this.f20514 = -9223372036854775807L;
        this.f20507 = -9223372036854775807L;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m10784(long j, long j2) {
        final C5384 c5384 = this.f20516;
        C5390 c5390 = (C5390) c5384.f20505;
        while (true) {
            C0671 c0671 = this.f20517;
            int i = c0671.f2738;
            if (i == 0) {
                return;
            }
            if (i == 0) {
                throw new NoSuchElementException();
            }
            long j3 = ((long[]) c0671.f2742)[c0671.f2739];
            Long l = (Long) this.f20511.m2964(j3);
            C5380 c5380 = this.f20515;
            if (l != null && l.longValue() != this.f20512) {
                this.f20512 = l.longValue();
                c5380.m10780(2);
            }
            long j4 = this.f20512;
            C5380 c53802 = this.f20515;
            C0812 c0812 = this.f20508;
            int m10779 = c53802.m10779(j3, j, j2, j4, false, false, c0812);
            if (m10779 == 0 || m10779 == 1) {
                this.f20514 = j3;
                boolean z = m10779 == 0;
                long m2404 = c0671.m2404();
                C1469 c1469 = (C1469) this.f20510.m2964(m2404);
                if (c1469 != null && !c1469.equals(C1469.f5752) && !c1469.equals(this.f20509)) {
                    this.f20509 = c1469;
                    C1490 c1490 = new C1490();
                    c1490.f5865 = c1469.f5755;
                    c1490.f5854 = c1469.f5754;
                    c1490.f5861 = AbstractC1464.m4251("video/raw");
                    c5384.f20506 = new C1495(c1490);
                    c5390.f20572.execute(new RunnableC3805(c5384, 12, c1469));
                }
                long nanoTime = z ? System.nanoTime() : c0812.f3456;
                boolean z2 = c5380.f20489 != 3;
                c5380.f20489 = 3;
                c5380.f20496.getClass();
                c5380.f20491 = AbstractC3712.m7757(SystemClock.elapsedRealtime());
                if (z2 && c5390.f20569 != null) {
                    final int i2 = 0;
                    c5390.f20572.execute(new Runnable() { // from class: ﾞˏ.ⁱˊ
                        @Override // java.lang.Runnable
                        public final void run() {
                            switch (i2) {
                                case 0:
                                    ((C5390) c5384.f20505).f20571.mo9149();
                                    return;
                                default:
                                    ((C5390) c5384.f20505).f20571.mo9155();
                                    return;
                            }
                        }
                    });
                }
                C1495 c1495 = (C1495) c5384.f20506;
                c5390.f20567.mo5637(m2404, nanoTime, c1495 == null ? new C1495(new C1490()) : c1495, null);
                C5401 c5401 = (C5401) c5390.f20568.remove();
                c5401.f20604.m10789(c5401.f20606, c5401.f20605, nanoTime);
            } else if (m10779 == 2 || m10779 == 3) {
                this.f20514 = j3;
                c0671.m2404();
                final int i3 = 1;
                c5390.f20572.execute(new Runnable() { // from class: ﾞˏ.ⁱˊ
                    @Override // java.lang.Runnable
                    public final void run() {
                        switch (i3) {
                            case 0:
                                ((C5390) c5384.f20505).f20571.mo9149();
                                return;
                            default:
                                ((C5390) c5384.f20505).f20571.mo9155();
                                return;
                        }
                    }
                });
                C5401 c54012 = (C5401) c5390.f20568.remove();
                c54012.f20604.m10798(c54012.f20606, c54012.f20605);
            } else {
                if (m10779 != 4) {
                    if (m10779 != 5) {
                        throw new IllegalStateException(String.valueOf(m10779));
                    }
                    return;
                }
                this.f20514 = j3;
            }
        }
    }
}
