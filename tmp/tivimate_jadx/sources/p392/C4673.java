package p392;

import android.media.MediaFormat;
import p055.C1495;
import p157.C2517;
import p157.InterfaceC2521;
import p457.InterfaceC5386;

/* renamed from: ⁱי.ـˆ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4673 implements InterfaceC5386, InterfaceC2521, InterfaceC4653 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public InterfaceC5386 f17522;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public InterfaceC5386 f17523;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public InterfaceC2521 f17524;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public InterfaceC2521 f17525;

    @Override // p457.InterfaceC5386
    /* renamed from: ʽ */
    public final void mo5637(long j, long j2, C1495 c1495, MediaFormat mediaFormat) {
        long j3;
        long j4;
        C1495 c14952;
        MediaFormat mediaFormat2;
        InterfaceC5386 interfaceC5386 = this.f17522;
        if (interfaceC5386 != null) {
            interfaceC5386.mo5637(j, j2, c1495, mediaFormat);
            mediaFormat2 = mediaFormat;
            c14952 = c1495;
            j4 = j2;
            j3 = j;
        } else {
            j3 = j;
            j4 = j2;
            c14952 = c1495;
            mediaFormat2 = mediaFormat;
        }
        InterfaceC5386 interfaceC53862 = this.f17523;
        if (interfaceC53862 != null) {
            interfaceC53862.mo5637(j3, j4, c14952, mediaFormat2);
        }
    }

    @Override // p157.InterfaceC2521
    /* renamed from: ˈ */
    public final void mo5638() {
        InterfaceC2521 interfaceC2521 = this.f17524;
        if (interfaceC2521 != null) {
            interfaceC2521.mo5638();
        }
        InterfaceC2521 interfaceC25212 = this.f17525;
        if (interfaceC25212 != null) {
            interfaceC25212.mo5638();
        }
    }

    @Override // p392.InterfaceC4653
    /* renamed from: ⁱˊ */
    public final void mo780(int i, Object obj) {
        if (i == 7) {
            this.f17523 = (InterfaceC5386) obj;
            return;
        }
        if (i == 8) {
            this.f17525 = (InterfaceC2521) obj;
            return;
        }
        if (i != 10000) {
            return;
        }
        C2517 c2517 = (C2517) obj;
        if (c2517 == null) {
            this.f17522 = null;
            this.f17524 = null;
        } else {
            this.f17522 = c2517.getVideoFrameMetadataListener();
            this.f17524 = c2517.getCameraMotionListener();
        }
    }

    @Override // p157.InterfaceC2521
    /* renamed from: ﹳٴ */
    public final void mo5641(long j, float[] fArr) {
        InterfaceC2521 interfaceC2521 = this.f17524;
        if (interfaceC2521 != null) {
            interfaceC2521.mo5641(j, fArr);
        }
        InterfaceC2521 interfaceC25212 = this.f17525;
        if (interfaceC25212 != null) {
            interfaceC25212.mo5641(j, fArr);
        }
    }
}
