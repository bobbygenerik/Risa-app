package p425;

import android.content.Context;
import android.media.AudioAttributes;
import android.media.AudioFormat;
import android.media.AudioTrack;
import android.os.Build;
import p055.C1471;
import p305.AbstractC3712;

/* renamed from: ﹶ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5048 implements InterfaceC5036 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final AudioTrack m9953(C5025 c5025, C1471 c1471, int i, Context context) {
        int i2 = Build.VERSION.SDK_INT;
        int i3 = c5025.f18791;
        int i4 = c5025.f18788;
        int i5 = c5025.f18792;
        String str = AbstractC3712.f14481;
        AudioTrack.Builder sessionId = new AudioTrack.Builder().setAudioAttributes(c5025.f18789 ? new AudioAttributes.Builder().setContentType(3).setFlags(16).setUsage(1).build() : (AudioAttributes) c1471.m4277().ʾˋ).setAudioFormat(new AudioFormat.Builder().setSampleRate(i3).setChannelMask(i4).setEncoding(i5).build()).setTransferMode(1).setBufferSizeInBytes(c5025.f18793).setSessionId(i);
        if (i2 >= 29) {
            sessionId.setOffloadedPlayback(c5025.f18790);
        }
        if (i2 >= 34 && context != null) {
            sessionId.setContext(context);
        }
        return sessionId.build();
    }
}
