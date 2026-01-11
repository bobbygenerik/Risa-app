package androidx.media3.exoplayer;

import androidx.media3.exoplayer.image.ImageOutput;
import p055.InterfaceC1488;

/* loaded from: classes.dex */
public interface ExoPlayer extends InterfaceC1488 {
    boolean isScrubbingModeEnabled();

    void setImageOutput(ImageOutput imageOutput);

    void setScrubbingModeEnabled(boolean z);
}
