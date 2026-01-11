package p274;

import android.net.Uri;
import androidx.media3.common.ParserException;
import androidx.media3.exoplayer.dash.DashManifestStaleException;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import j$.util.Objects;
import java.io.IOException;
import p022.C1047;
import p027.C1090;
import p055.C1495;
import p127.C2150;
import p281.AbstractC3560;
import p291.C3612;
import p305.AbstractC3712;
import p305.AbstractC3731;
import p364.C4441;
import p364.C4449;
import p364.InterfaceC4436;
import p364.InterfaceC4445;
import p420.C4991;
import ʼ.ᵎﹶ;
import ـˎ.ˈ;

/* renamed from: ـᵢ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3489 implements InterfaceC4436 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f13691;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C3496 f13692;

    public /* synthetic */ C3489(C3496 c3496, int i) {
        this.f13691 = i;
        this.f13692 = c3496;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    private final /* synthetic */ void m7426(InterfaceC4445 interfaceC4445, long j, long j2, int i) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [ᵔⁱ.ʼᐧ, java.lang.Object] */
    @Override // p364.InterfaceC4436
    /* renamed from: ʼʼ */
    public void mo4020(InterfaceC4445 interfaceC4445, long j, long j2) {
        int i;
        boolean z;
        long j3;
        switch (this.f13691) {
            case 1:
                C4449 c4449 = (C4449) interfaceC4445;
                C3496 c3496 = this.f13692;
                long j4 = c4449.f16659;
                Uri uri = c4449.f16660.f13539;
                C4991 c4991 = new C4991(j2);
                c3496.f13739.getClass();
                c3496.f13747.יـ(c4991, c4449.f16658);
                C3612 c3612 = (C3612) c4449.f16661;
                C3612 c36122 = c3496.f13753;
                int size = c36122 == null ? 0 : c36122.f14128.size();
                long j5 = c3612.m7575(0).f14175;
                int i2 = 0;
                while (i2 < size && c3496.f13753.m7575(i2).f14175 < j5) {
                    i2++;
                }
                if (c3612.f14127) {
                    if (size - i2 > c3612.f14128.size()) {
                        AbstractC3731.m7850("DashMediaSource", "Loaded out of sync manifest");
                    } else {
                        j3 = -9223372036854775807L;
                        long j6 = c3496.f13755;
                        if (j6 != -9223372036854775807L) {
                            i = i2;
                            z = true;
                            if (c3612.f14132 * 1000 <= j6) {
                                AbstractC3731.m7850("DashMediaSource", "Loaded stale dynamic manifest: " + c3612.f14132 + ", " + c3496.f13755);
                            }
                        } else {
                            i = i2;
                            z = true;
                        }
                        c3496.f13749 = 0;
                    }
                    int i3 = c3496.f13749;
                    c3496.f13749 = i3 + 1;
                    if (i3 < c3496.f13739.m3145(c4449.f16658)) {
                        c3496.f13748.postDelayed(c3496.f13742, Math.min((c3496.f13749 - 1) * 1000, 5000));
                        return;
                    } else {
                        c3496.f13756 = new DashManifestStaleException();
                        return;
                    }
                }
                i = i2;
                z = true;
                j3 = -9223372036854775807L;
                c3496.f13753 = c3612;
                c3496.f13741 = c3612.f14127 & c3496.f13741;
                c3496.f13768 = j - j2;
                c3496.f13767 = j;
                c3496.f13760 += i;
                synchronized (c3496.f13751) {
                    if (c4449.f16662.f13577.equals(c3496.f13735)) {
                        Uri uri2 = c3496.f13753.f14130;
                        if (uri2 == null) {
                            uri2 = ᵎﹶ.ᴵᵔ(c4449.f16660.f13539);
                        }
                        c3496.f13735 = uri2;
                    }
                }
                C3612 c36123 = c3496.f13753;
                if (!c36123.f14127 || c3496.f13734 != j3) {
                    c3496.m7433(true);
                    return;
                }
                C2150 c2150 = c36123.f14124;
                if (c2150 == null) {
                    c3496.m7432();
                    return;
                }
                String str = c2150.f8367;
                if (Objects.equals(str, "urn:mpeg:dash:utc:direct:2014") || Objects.equals(str, "urn:mpeg:dash:utc:direct:2012")) {
                    try {
                        c3496.f13734 = AbstractC3712.m7772(c2150.f8366) - c3496.f13767;
                        c3496.m7433(z);
                        return;
                    } catch (ParserException e) {
                        c3496.m7431(e);
                        return;
                    }
                }
                if (Objects.equals(str, "urn:mpeg:dash:utc:http-iso:2014") || Objects.equals(str, "urn:mpeg:dash:utc:http-iso:2012")) {
                    c3496.m7436(c2150, new Object());
                    return;
                }
                if (Objects.equals(str, "urn:mpeg:dash:utc:http-xsdate:2014") || Objects.equals(str, "urn:mpeg:dash:utc:http-xsdate:2012")) {
                    c3496.m7436(c2150, new ˈ(24));
                    return;
                } else if (Objects.equals(str, "urn:mpeg:dash:utc:ntp:2014") || Objects.equals(str, "urn:mpeg:dash:utc:ntp:2012")) {
                    c3496.m7432();
                    return;
                } else {
                    c3496.m7431(new IOException("Unsupported UTC timing scheme"));
                    return;
                }
            default:
                C4449 c44492 = (C4449) interfaceC4445;
                C3496 c34962 = this.f13692;
                long j7 = c44492.f16659;
                Uri uri3 = c44492.f16660.f13539;
                C4991 c49912 = new C4991(j2);
                c34962.f13739.getClass();
                c34962.f13747.יـ(c49912, c44492.f16658);
                c34962.f13734 = ((Long) c44492.f16661).longValue() - j;
                c34962.m7433(true);
                return;
        }
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ʽﹳ */
    public void mo4022(InterfaceC4445 interfaceC4445, long j, long j2, int i) {
        C4991 c4991;
        switch (this.f13691) {
            case 1:
                C4449 c4449 = (C4449) interfaceC4445;
                if (i == 0) {
                    long j3 = c4449.f16659;
                    c4991 = new C4991(c4449.f16662);
                } else {
                    long j4 = c4449.f16659;
                    Uri uri = c4449.f16660.f13539;
                    c4991 = new C4991(j2);
                }
                this.f13692.f13747.ʾᵎ(c4991, c4449.f16658, -1, (C1495) null, 0, (Object) null, -9223372036854775807L, -9223372036854775807L, i);
                return;
            default:
                return;
        }
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ـˆ */
    public C1047 mo4023(InterfaceC4445 interfaceC4445, long j, long j2, IOException iOException, int i) {
        switch (this.f13691) {
            case 1:
                C4449 c4449 = (C4449) interfaceC4445;
                long j3 = c4449.f16659;
                Uri uri = c4449.f16660.f13539;
                C4991 c4991 = new C4991(j2);
                int i2 = c4449.f16658;
                C1090 c1090 = new C1090(i, 11, iOException);
                C3496 c3496 = this.f13692;
                long m3143 = c3496.f13739.m3143(c1090);
                C1047 c1047 = m3143 == -9223372036854775807L ? C4441.f16591 : new C1047(m3143, false, 0);
                c3496.f13747.ʻٴ(c4991, i2, iOException, !c1047.m3386());
                return c1047;
            default:
                C4449 c44492 = (C4449) interfaceC4445;
                C3496 c34962 = this.f13692;
                ʽﹳ r7 = c34962.f13747;
                long j4 = c44492.f16659;
                Uri uri2 = c44492.f16660.f13539;
                r7.ʻٴ(new C4991(j2), c44492.f16658, iOException, true);
                c34962.f13739.getClass();
                c34962.m7431(iOException);
                return C4441.f16592;
        }
    }

    @Override // p364.InterfaceC4436
    /* renamed from: ᵎﹶ */
    public void mo4024(InterfaceC4445 interfaceC4445, long j, long j2, boolean z) {
        switch (this.f13691) {
            case 1:
                this.f13692.m7435((C4449) interfaceC4445, j2);
                return;
            default:
                this.f13692.m7435((C4449) interfaceC4445, j2);
                return;
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m7427() {
        long j;
        C3496 c3496 = this.f13692;
        synchronized (AbstractC3560.f13916) {
            try {
                j = AbstractC3560.f13914 ? AbstractC3560.f13915 : -9223372036854775807L;
            } catch (Throwable th) {
                throw th;
            }
        }
        c3496.f13734 = j;
        c3496.m7433(true);
    }
}
