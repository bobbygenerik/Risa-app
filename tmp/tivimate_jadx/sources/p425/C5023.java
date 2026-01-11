package p425;

import android.media.AudioTrack;
import android.media.AudioTrack$StreamEventCallback;
import ᐧﹳ.ʽ;

/* renamed from: ﹶ.ʻٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5023 extends AudioTrack$StreamEventCallback {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C5040 f18786;

    public C5023(C5040 c5040) {
        this.f18786 = c5040;
    }

    public final void onDataRequest(AudioTrack audioTrack, int i) {
        C5031 c5031;
        ʽ r2;
        if (audioTrack.equals(this.f18786.f18953.f18871) && (r2 = (c5031 = this.f18786.f18953).f18870) != null && c5031.f18881) {
            r2.ʼᐧ();
        }
    }

    public final void onPresentationEnded(AudioTrack audioTrack) {
        if (audioTrack.equals(this.f18786.f18953.f18871)) {
            this.f18786.f18953.f18856 = true;
        }
    }

    public final void onTearDown(AudioTrack audioTrack) {
        C5031 c5031;
        ʽ r0;
        if (audioTrack.equals(this.f18786.f18953.f18871) && (r0 = (c5031 = this.f18786.f18953).f18870) != null && c5031.f18881) {
            r0.ʼᐧ();
        }
    }
}
