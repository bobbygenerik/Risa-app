package p076;

import android.media.AudioAttributes;
import android.media.AudioFocusRequest;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import j$.util.Objects;
import p055.C1471;

/* renamed from: ʾﾞ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1658 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final Handler f6735;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final C1471 f6736;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final boolean f6737;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AudioManager.OnAudioFocusChangeListener f6738;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final int f6739;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final Object f6740;

    public C1658(int i, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler, C1471 c1471, boolean z) {
        this.f6739 = i;
        this.f6735 = handler;
        this.f6736 = c1471;
        this.f6737 = z;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 26) {
            this.f6738 = new C1656(onAudioFocusChangeListener, handler);
        } else {
            this.f6738 = onAudioFocusChangeListener;
        }
        if (i2 >= 26) {
            this.f6740 = new AudioFocusRequest.Builder(i).setAudioAttributes((AudioAttributes) c1471.m4277().ʾˋ).setWillPauseWhenDucked(z).setOnAudioFocusChangeListener(onAudioFocusChangeListener, handler).build();
        } else {
            this.f6740 = null;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C1658)) {
            return false;
        }
        C1658 c1658 = (C1658) obj;
        return this.f6739 == c1658.f6739 && this.f6737 == c1658.f6737 && Objects.equals(this.f6738, c1658.f6738) && Objects.equals(this.f6735, c1658.f6735) && Objects.equals(this.f6736, c1658.f6736);
    }

    public final int hashCode() {
        return Objects.hash(Integer.valueOf(this.f6739), this.f6738, this.f6735, this.f6736, Boolean.valueOf(this.f6737));
    }
}
