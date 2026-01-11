package p076;

import androidx.media3.common.audio.AudioProcessor$UnhandledAudioFormatException;

/* renamed from: ʾﾞ.ﾞʻ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1664 extends AbstractC1655 {
    @Override // p076.AbstractC1655
    /* renamed from: ﹳٴ */
    public final C1661 mo4524(C1661 c1661) {
        int i = c1661.f6758;
        if (i == 3 || i == 2 || i == 268435456 || i == 21 || i == 1342177280 || i == 22 || i == 1610612736 || i == 4) {
            return i != 2 ? new C1661(c1661.f6761, c1661.f6760, 2) : C1661.f6757;
        }
        throw new AudioProcessor$UnhandledAudioFormatException(c1661);
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00e4 A[ADDED_TO_REGION, LOOP:6: B:42:0x00e4->B:43:0x00e6, LOOP_START, PHI: r0
      0x00e4: PHI (r0v1 int) = (r0v0 int), (r0v2 int) binds: [B:13:0x003e, B:43:0x00e6] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // p076.InterfaceC1662
    /* renamed from: ﾞᴵ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo4546(java.nio.ByteBuffer r12) {
        /*
            Method dump skipped, instructions count: 260
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p076.C1664.mo4546(java.nio.ByteBuffer):void");
    }
}
