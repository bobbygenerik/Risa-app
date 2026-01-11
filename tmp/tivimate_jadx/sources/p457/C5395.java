package p457;

import java.util.Arrays;

/* renamed from: ﾞˏ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5395 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public long f20583;

    /* renamed from: ˈ, reason: contains not printable characters */
    public long f20584;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f20585;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final boolean[] f20586 = new boolean[15];

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public int f20587;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public long f20588;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public long f20589;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f20590;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m10827() {
        this.f20584 = 0L;
        this.f20585 = 0L;
        this.f20590 = 0L;
        this.f20587 = 0;
        Arrays.fill(this.f20586, false);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m10828(long j) {
        long j2 = this.f20584;
        if (j2 == 0) {
            this.f20589 = j;
        } else if (j2 == 1) {
            long j3 = j - this.f20589;
            this.f20588 = j3;
            this.f20590 = j3;
            this.f20585 = 1L;
        } else {
            long j4 = j - this.f20583;
            int i = (int) (j2 % 15);
            long abs = Math.abs(j4 - this.f20588);
            boolean[] zArr = this.f20586;
            if (abs <= 1000000) {
                this.f20585++;
                this.f20590 += j4;
                if (zArr[i]) {
                    zArr[i] = false;
                    this.f20587--;
                }
            } else if (!zArr[i]) {
                zArr[i] = true;
                this.f20587++;
            }
        }
        this.f20584++;
        this.f20583 = j;
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final boolean m10829() {
        return this.f20584 > 15 && this.f20587 == 0;
    }
}
