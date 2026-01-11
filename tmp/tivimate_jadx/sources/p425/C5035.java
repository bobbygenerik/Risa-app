package p425;

import android.media.AudioTrack;
import android.os.Build;
import android.os.SystemClock;
import java.lang.reflect.Method;
import java.math.RoundingMode;
import p305.AbstractC3712;
import p305.C3721;
import p384.C4603;
import ᐧﹳ.ʽ;

/* renamed from: ﹶ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5035 {

    /* renamed from: ʻٴ, reason: contains not printable characters */
    public int f18905;

    /* renamed from: ʼʼ, reason: contains not printable characters */
    public long f18906;

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public boolean f18907;

    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public boolean f18908;

    /* renamed from: ʽ, reason: contains not printable characters */
    public AudioTrack f18909;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public long f18910;

    /* renamed from: ʽﹳ, reason: contains not printable characters */
    public long f18911;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public long f18912;

    /* renamed from: ʾᵎ, reason: contains not printable characters */
    public long f18913;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public long f18914;

    /* renamed from: ˈ, reason: contains not printable characters */
    public int f18915;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public long f18916;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public long f18917;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public long f18918;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public long f18919;

    /* renamed from: ˏי, reason: contains not printable characters */
    public long f18920;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public C5052 f18921;

    /* renamed from: יـ, reason: contains not printable characters */
    public long f18922;

    /* renamed from: ـˆ, reason: contains not printable characters */
    public int f18923;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public C3721 f18924;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public int f18925;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f18926;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f18927;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public long f18928;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public Method f18929;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public float f18930;

    /* renamed from: ᵔﹳ, reason: contains not printable characters */
    public boolean f18931;

    /* renamed from: ᵢˏ, reason: contains not printable characters */
    public long f18932;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long[] f18933;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C4603 f18934;

    /* renamed from: ﹳᐧ, reason: contains not printable characters */
    public long f18935;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public long f18936;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public int f18937;

    public C5035(C4603 c4603) {
        this.f18934 = c4603;
        try {
            this.f18929 = AudioTrack.class.getMethod("getLatency", null);
        } catch (NoSuchMethodException unused) {
        }
        this.f18933 = new long[10];
        this.f18916 = -9223372036854775807L;
        this.f18910 = -9223372036854775807L;
        this.f18924 = C3721.f14496;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long m9940(long j) {
        long m7793;
        if (this.f18923 != 0) {
            m7793 = AbstractC3712.m7793(j + this.f18936, this.f18930);
        } else if (this.f18913 != -9223372036854775807L) {
            m7793 = AbstractC3712.m7765(this.f18937, m9941());
        } else {
            m7793 = AbstractC3712.m7765(this.f18937, m9943());
        }
        long max = Math.max(0L, m7793 - this.f18918);
        if (this.f18913 == -9223372036854775807L) {
            return max;
        }
        return Math.min(AbstractC3712.m7765(this.f18937, this.f18912), max);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final long m9941() {
        AudioTrack audioTrack = this.f18909;
        audioTrack.getClass();
        if (audioTrack.getPlayState() == 2) {
            return this.f18932;
        }
        this.f18924.getClass();
        return this.f18932 + AbstractC3712.m7797(AbstractC3712.m7793(AbstractC3712.m7757(SystemClock.elapsedRealtime()) - this.f18913, this.f18930), this.f18937, 1000000L, RoundingMode.UP);
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m9942(long j) {
        if (this.f18926) {
            long j2 = this.f18914;
            if (j2 == -9223372036854775807L || j < j2) {
                return;
            }
            long m7777 = AbstractC3712.m7777(j - j2, this.f18930);
            this.f18924.getClass();
            long currentTimeMillis = System.currentTimeMillis() - AbstractC3712.m7755(m7777);
            this.f18914 = -9223372036854775807L;
            ʽ r6 = ((C5031) this.f18934.f17126).f18870;
            if (r6 != null) {
                r6.ˏי(currentTimeMillis);
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long m9943() {
        if (this.f18913 != -9223372036854775807L) {
            return Math.min(this.f18912, m9941());
        }
        this.f18924.getClass();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        if (elapsedRealtime - this.f18922 >= 5) {
            AudioTrack audioTrack = this.f18909;
            audioTrack.getClass();
            int playState = audioTrack.getPlayState();
            if (playState != 1) {
                long playbackHeadPosition = audioTrack.getPlaybackHeadPosition() & 4294967295L;
                if (Build.VERSION.SDK_INT <= 29) {
                    if (playbackHeadPosition != 0 || this.f18920 <= 0 || playState != 3) {
                        this.f18906 = -9223372036854775807L;
                    } else if (this.f18906 == -9223372036854775807L) {
                        this.f18906 = elapsedRealtime;
                    }
                }
                long j = this.f18920;
                if (j > playbackHeadPosition) {
                    if (this.f18927) {
                        this.f18919 += j;
                        this.f18927 = false;
                    } else {
                        this.f18911++;
                    }
                }
                this.f18920 = playbackHeadPosition;
            }
            this.f18922 = elapsedRealtime;
        }
        return this.f18920 + this.f18919 + (this.f18911 << 32);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x02d6  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x02db  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0302  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x02f6  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x02d8  */
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long m9944() {
        /*
            Method dump skipped, instructions count: 911
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p425.C5035.m9944():long");
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final void m9945() {
        this.f18936 = 0L;
        this.f18923 = 0;
        this.f18905 = 0;
        this.f18917 = 0L;
        this.f18910 = -9223372036854775807L;
        this.f18916 = -9223372036854775807L;
        this.f18907 = false;
    }
}
