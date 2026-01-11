package p274;

import androidx.media3.exoplayer.dash.DashManifestStaleException;
import p364.InterfaceC4442;

/* renamed from: ـᵢ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3500 implements InterfaceC4442 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C3496 f13812;

    @Override // p364.InterfaceC4442
    /* renamed from: ʽ, reason: contains not printable characters */
    public void mo7443() {
        C3496 c3496 = this.f13812;
        c3496.f13762.mo7443();
        DashManifestStaleException dashManifestStaleException = c3496.f13756;
        if (dashManifestStaleException != null) {
            throw dashManifestStaleException;
        }
    }
}
