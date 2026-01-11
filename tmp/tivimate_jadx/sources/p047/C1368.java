package p047;

import android.net.Uri;
import android.os.SystemClock;
import androidx.media3.common.ParserException;
import androidx.media3.datasource.HttpDataSource$InvalidResponseCodeException;
import androidx.media3.exoplayer.hls.playlist.HlsPlaylistParser$DeltaUpdateException;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.io.IOException;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import p003.RunnableC0786;
import p012.C0894;
import p017.AbstractC0993;
import p017.AbstractC1004;
import p022.C1047;
import p027.C1090;
import p055.C1495;
import p266.C3456;
import p266.InterfaceC3452;
import p266.InterfaceC3462;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p364.C4441;
import p364.C4449;
import p364.InterfaceC4436;
import p364.InterfaceC4437;
import p364.InterfaceC4445;
import p420.C4991;

/* renamed from: ʽˑ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1368 implements InterfaceC4436 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC3462 f5360;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Uri f5361;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C1371 f5362;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public long f5363;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public long f5364;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public IOException f5365;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public long f5366;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C4441 f5367 = new C4441("DefaultHlsPlaylistTracker:MediaPlaylist");

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public long f5368;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public boolean f5369;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public boolean f5370;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final /* synthetic */ C1356 f5371;

    public C1368(C1356 c1356, Uri uri) {
        this.f5371 = c1356;
        this.f5361 = uri;
        this.f5360 = ((InterfaceC3452) c1356.f5213.ᴵˊ).mo624();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m4044(C1368 c1368, long j) {
        c1368.f5363 = SystemClock.elapsedRealtime() + j;
        Uri uri = c1368.f5361;
        C1356 c1356 = c1368.f5371;
        if (!uri.equals(c1356.f5222)) {
            return false;
        }
        List list = c1356.f5218.f5248;
        int size = list.size();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < size; i++) {
            C1368 c13682 = (C1368) c1356.f5215.get(((C1365) list.get(i)).f5281);
            c13682.getClass();
            if (elapsedRealtime > c13682.f5363) {
                Uri uri2 = c13682.f5361;
                c1356.f5222 = uri2;
                c13682.m4047(c1356.m4025(uri2));
                return false;
            }
        }
        return true;
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ʼʼ */
    public final void mo4020(InterfaceC4445 interfaceC4445, long j, long j2) {
        C4449 c4449 = (C4449) interfaceC4445;
        AbstractC1355 abstractC1355 = (AbstractC1355) c4449.f16661;
        Uri uri = c4449.f16660.f13539;
        C4991 c4991 = new C4991(j2);
        if (abstractC1355 instanceof C1371) {
            m4049((C1371) abstractC1355, c4991);
            this.f5371.f5217.יـ(c4991, 4);
        } else {
            ParserException m740 = ParserException.m740("Loaded playlist has unexpected type.", null);
            this.f5365 = m740;
            this.f5371.f5217.ʻٴ(c4991, 4, m740, true);
        }
        this.f5371.f5212.getClass();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m4045(boolean z) {
        m4047(z ? m4048() : this.f5361);
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ʽﹳ */
    public final void mo4022(InterfaceC4445 interfaceC4445, long j, long j2, int i) {
        C4991 c4991;
        C4449 c4449 = (C4449) interfaceC4445;
        if (i == 0) {
            long j3 = c4449.f16659;
            c4991 = new C4991(c4449.f16662);
        } else {
            long j4 = c4449.f16659;
            Uri uri = c4449.f16660.f13539;
            c4991 = new C4991(j2);
        }
        this.f5371.f5217.ʾᵎ(c4991, c4449.f16658, -1, (C1495) null, 0, (Object) null, -9223372036854775807L, -9223372036854775807L, i);
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    public final void m4046(Uri uri) {
        C1356 c1356 = this.f5371;
        InterfaceC4437 mo4051 = c1356.f5220.mo4051(c1356.f5218, this.f5362);
        Map map = Collections.EMPTY_MAP;
        AbstractC3731.m7851(uri, "The uri must be set.");
        C4449 c4449 = new C4449(this.f5360, new C3456(uri, 1, null, map, 0L, -1L, null, 1), 4, mo4051);
        this.f5367.m8983(c4449, this, c1356.f5212.m3145(c4449.f16658));
    }

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final void m4047(Uri uri) {
        this.f5363 = 0L;
        if (this.f5370) {
            return;
        }
        C4441 c4441 = this.f5367;
        if (c4441.m8979() || c4441.m8981()) {
            return;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime();
        long j = this.f5366;
        if (elapsedRealtime >= j) {
            m4046(uri);
        } else {
            this.f5370 = true;
            this.f5371.f5216.postDelayed(new RunnableC0786(this, 7, uri), j - elapsedRealtime);
        }
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ـˆ */
    public final C1047 mo4023(InterfaceC4445 interfaceC4445, long j, long j2, IOException iOException, int i) {
        C4449 c4449 = (C4449) interfaceC4445;
        long j3 = c4449.f16659;
        int i2 = c4449.f16658;
        Uri uri = c4449.f16660.f13539;
        C4991 c4991 = new C4991(j2);
        boolean z = uri.getQueryParameter("_HLS_msn") != null;
        boolean z2 = iOException instanceof HlsPlaylistParser$DeltaUpdateException;
        C1047 c1047 = C4441.f16592;
        C1356 c1356 = this.f5371;
        if (z || z2) {
            int i3 = iOException instanceof HttpDataSource$InvalidResponseCodeException ? ((HttpDataSource$InvalidResponseCodeException) iOException).f1141 : Integer.MAX_VALUE;
            if (z2 || i3 == 400 || i3 == 503) {
                this.f5366 = SystemClock.elapsedRealtime();
                m4045(false);
                ʽﹳ r6 = c1356.f5217;
                String str = AbstractC3712.f14481;
                r6.ʻٴ(c4991, i2, iOException, true);
                return c1047;
            }
        }
        C1090 c1090 = new C1090(i, 11, iOException);
        Iterator it = c1356.f5221.iterator();
        boolean z3 = false;
        while (it.hasNext()) {
            z3 |= !((InterfaceC1362) it.next()).mo4030(this.f5361, c1090, false);
        }
        C0894 c0894 = c1356.f5212;
        if (z3) {
            long m3143 = c0894.m3143(c1090);
            c1047 = m3143 != -9223372036854775807L ? new C1047(m3143, false, 0) : C4441.f16591;
        }
        boolean m3386 = c1047.m3386();
        c1356.f5217.ʻٴ(c4991, i2, iOException, !m3386);
        if (!m3386) {
            c0894.getClass();
        }
        return c1047;
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ᵎﹶ */
    public final void mo4024(InterfaceC4445 interfaceC4445, long j, long j2, boolean z) {
        C4449 c4449 = (C4449) interfaceC4445;
        long j3 = c4449.f16659;
        Uri uri = c4449.f16660.f13539;
        C4991 c4991 = new C4991(j2);
        C1356 c1356 = this.f5371;
        c1356.f5212.getClass();
        c1356.f5217.ﹳᐧ(c4991, 4, -1, (C1495) null, 0, (Object) null, -9223372036854775807L, -9223372036854775807L);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Uri m4048() {
        C1371 c1371 = this.f5362;
        Uri uri = this.f5361;
        if (c1371 != null) {
            C1363 c1363 = c1371.f5373;
            if (c1363.f5274 != -9223372036854775807L || c1363.f5272) {
                Uri.Builder buildUpon = uri.buildUpon();
                C1371 c13712 = this.f5362;
                if (c13712.f5373.f5272) {
                    buildUpon.appendQueryParameter("_HLS_msn", String.valueOf(c13712.f5385 + c13712.f5390.size()));
                    C1371 c13713 = this.f5362;
                    if (c13713.f5387 != -9223372036854775807L) {
                        AbstractC0993 abstractC0993 = c13713.f5383;
                        int size = abstractC0993.size();
                        if (!abstractC0993.isEmpty() && ((C1364) AbstractC1004.m3281(abstractC0993)).f5275) {
                            size--;
                        }
                        buildUpon.appendQueryParameter("_HLS_part", String.valueOf(size));
                    }
                }
                C1363 c13632 = this.f5362.f5373;
                if (c13632.f5274 != -9223372036854775807L) {
                    buildUpon.appendQueryParameter("_HLS_skip", c13632.f5273 ? "v2" : "YES");
                }
                return buildUpon.build();
            }
        }
        return uri;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x01b9  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x027f  */
    /* JADX WARN: Removed duplicated region for block: B:41:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x025a  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d0  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0057  */
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m4049(p047.C1371 r73, p420.C4991 r74) {
        /*
            Method dump skipped, instructions count: 659
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p047.C1368.m4049(ʽˑ.ﾞʻ, ﹳᵢ.ﹳᐧ):void");
    }
}
