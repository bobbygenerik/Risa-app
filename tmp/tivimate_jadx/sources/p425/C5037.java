package p425;

import android.media.AudioDeviceInfo;
import android.media.AudioRouting;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;

/* renamed from: ﹶ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5037 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public C5039 f18939 = new AudioRouting.OnRoutingChangedListener() { // from class: ﹶ.יـ
        @Override // android.media.AudioRouting.OnRoutingChangedListener
        public final void onRoutingChanged(AudioRouting audioRouting) {
            C5037.m9946(C5037.this, audioRouting);
        }
    };

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5038 f18940;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AudioTrack f18941;

    /* JADX WARN: Type inference failed for: r3v1, types: [ﹶ.יـ] */
    public C5037(AudioTrack audioTrack, C5038 c5038) {
        this.f18941 = audioTrack;
        this.f18940 = c5038;
        audioTrack.addOnRoutingChangedListener(this.f18939, new Handler(Looper.myLooper()));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static void m9946(C5037 c5037, AudioRouting audioRouting) {
        AudioDeviceInfo routedDevice;
        if (c5037.f18939 == null || (routedDevice = audioRouting.getRoutedDevice()) == null) {
            return;
        }
        c5037.f18940.m9948(routedDevice);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m9947() {
        C5039 c5039 = this.f18939;
        c5039.getClass();
        this.f18941.removeOnRoutingChangedListener(c5039);
        this.f18939 = null;
    }
}
