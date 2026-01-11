package p032;

import android.media.LoudnessCodecController;
import android.media.MediaCodec;
import java.util.HashSet;
import java.util.Iterator;
import p121.EnumC2017;
import p305.AbstractC3731;

/* renamed from: ʼᵢ.ˆʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1155 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public LoudnessCodecController f4428;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final HashSet f4430 = new HashSet();

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C1150 f4429 = C1150.f4414;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m3602(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController;
        if (!this.f4430.remove(mediaCodec) || (loudnessCodecController = this.f4428) == null) {
            return;
        }
        loudnessCodecController.removeMediaCodec(mediaCodec);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m3603(int i) {
        LoudnessCodecController loudnessCodecController = this.f4428;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
            this.f4428 = null;
        }
        LoudnessCodecController create = LoudnessCodecController.create(i, EnumC2017.f7905, new C1166(this));
        this.f4428 = create;
        Iterator it = this.f4430.iterator();
        while (it.hasNext()) {
            if (!create.addMediaCodec((MediaCodec) it.next())) {
                it.remove();
            }
        }
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m3604() {
        this.f4430.clear();
        LoudnessCodecController loudnessCodecController = this.f4428;
        if (loudnessCodecController != null) {
            loudnessCodecController.close();
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m3605(MediaCodec mediaCodec) {
        LoudnessCodecController loudnessCodecController = this.f4428;
        if (loudnessCodecController == null || loudnessCodecController.addMediaCodec(mediaCodec)) {
            AbstractC3731.m7857(this.f4430.add(mediaCodec));
        }
    }
}
