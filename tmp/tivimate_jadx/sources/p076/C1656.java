package p076;

import android.media.AudioManager;
import android.os.Handler;
import android.os.Looper;
import p305.AbstractC3712;

/* renamed from: ʾﾞ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1656 implements AudioManager.OnAudioFocusChangeListener {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AudioManager.OnAudioFocusChangeListener f6710;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Handler f6711;

    public C1656(AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener, Handler handler) {
        this.f6710 = onAudioFocusChangeListener;
        Looper looper = handler.getLooper();
        String str = AbstractC3712.f14481;
        this.f6711 = new Handler(looper, null);
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        AbstractC3712.m7794(this.f6711, new RunnableC1663(i, 0, this));
    }
}
