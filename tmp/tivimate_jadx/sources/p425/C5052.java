package p425;

import android.media.AudioTrack;
import p384.C4603;

/* renamed from: ﹶ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5052 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public long f19004;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C4603 f19005;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f19006;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public long f19007;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f19008;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public long f19009;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final int f19010;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C5041 f19011;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public long f19012;

    public C5052(AudioTrack audioTrack, C4603 c4603) {
        this.f19011 = new C5041(audioTrack);
        this.f19010 = audioTrack.getSampleRate();
        this.f19005 = c4603;
        m9958(0);
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m9958(int i) {
        this.f19006 = i;
        if (i == 0) {
            this.f19008 = 0L;
            this.f19009 = -1L;
            this.f19004 = -9223372036854775807L;
            this.f19007 = System.nanoTime() / 1000;
            this.f19012 = 10000L;
            return;
        }
        if (i == 1) {
            this.f19012 = 10000L;
            return;
        }
        if (i == 2 || i == 3) {
            this.f19012 = 10000000L;
        } else {
            if (i != 4) {
                throw new IllegalStateException();
            }
            this.f19012 = 500000L;
        }
    }
}
