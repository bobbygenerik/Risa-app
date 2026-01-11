package p425;

import android.media.AudioDeviceCallback;
import android.media.AudioDeviceInfo;
import p305.AbstractC3712;

/* renamed from: ﹶ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5027 extends AudioDeviceCallback {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C5038 f18801;

    public C5027(C5038 c5038) {
        this.f18801 = c5038;
    }

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesAdded(AudioDeviceInfo[] audioDeviceInfoArr) {
        C5038 c5038 = this.f18801;
        c5038.m9949(C5049.m9954(c5038.f18950, c5038.f18942, c5038.f18948));
    }

    @Override // android.media.AudioDeviceCallback
    public final void onAudioDevicesRemoved(AudioDeviceInfo[] audioDeviceInfoArr) {
        C5038 c5038 = this.f18801;
        if (AbstractC3712.m7810(audioDeviceInfoArr, c5038.f18948)) {
            c5038.f18948 = null;
        }
        c5038.m9949(C5049.m9954(c5038.f18950, c5038.f18942, c5038.f18948));
    }
}
