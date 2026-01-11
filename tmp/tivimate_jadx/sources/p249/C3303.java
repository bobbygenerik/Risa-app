package p249;

import android.support.v4.media.session.AbstractC0001;
import j$.util.DesugarCollections;
import java.util.List;
import p305.C3732;

/* renamed from: יʿ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3303 extends AbstractC3302 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final long f12702;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final long f12703;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f12704;

    public C3303(int i, long j, long j2) {
        this.f12704 = i;
        switch (i) {
            case 2:
                this.f12703 = j;
                this.f12702 = j2;
                return;
            default:
                this.f12703 = j2;
                this.f12702 = j;
                return;
        }
    }

    public C3303(long j, long j2, List list) {
        this.f12704 = 1;
        this.f12703 = j;
        this.f12702 = j2;
        DesugarCollections.unmodifiableList(list);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public static long m7110(long j, C3732 c3732) {
        long m7874 = c3732.m7874();
        if ((128 & m7874) != 0) {
            return 8589934591L & ((((m7874 & 1) << 32) | c3732.m7880()) + j);
        }
        return -9223372036854775807L;
    }

    @Override // p249.AbstractC3302
    public final String toString() {
        switch (this.f12704) {
            case 0:
                StringBuilder sb = new StringBuilder("SCTE-35 PrivateCommand { ptsAdjustment=");
                sb.append(this.f12703);
                sb.append(", identifier= ");
                return AbstractC0001.m8(sb, this.f12702, " }");
            case 1:
                StringBuilder sb2 = new StringBuilder("SCTE-35 SpliceInsertCommand { programSplicePts=");
                sb2.append(this.f12703);
                sb2.append(", programSplicePlaybackPositionUs= ");
                return AbstractC0001.m8(sb2, this.f12702, " }");
            default:
                StringBuilder sb3 = new StringBuilder("SCTE-35 TimeSignalCommand { ptsTime=");
                sb3.append(this.f12703);
                sb3.append(", playbackPositionUs= ");
                return AbstractC0001.m8(sb3, this.f12702, " }");
        }
    }
}
