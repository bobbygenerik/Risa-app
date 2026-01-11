package p395;

import androidx.media3.exoplayer.drm.DrmSession$DrmSessionException;
import java.util.UUID;
import p055.AbstractC1489;
import p421.InterfaceC5000;

/* renamed from: ⁱᴵ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4728 implements InterfaceC4735 {

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final DrmSession$DrmSessionException f17874;

    public C4728(DrmSession$DrmSessionException drmSession$DrmSessionException) {
        this.f17874 = drmSession$DrmSessionException;
    }

    @Override // p395.InterfaceC4735
    public final int getState() {
        return 1;
    }

    @Override // p395.InterfaceC4735
    /* renamed from: ʽ */
    public final void mo9460(C4715 c4715) {
    }

    @Override // p395.InterfaceC4735
    /* renamed from: ˈ */
    public final void mo9462(C4715 c4715) {
    }

    @Override // p395.InterfaceC4735
    /* renamed from: ˑﹳ */
    public final boolean mo9465(String str) {
        return false;
    }

    @Override // p395.InterfaceC4735
    /* renamed from: ᵎﹶ */
    public final InterfaceC5000 mo9467() {
        return null;
    }

    @Override // p395.InterfaceC4735
    /* renamed from: ⁱˊ */
    public final UUID mo9470() {
        return AbstractC1489.f5847;
    }

    @Override // p395.InterfaceC4735
    /* renamed from: ﹳٴ */
    public final boolean mo9471() {
        return false;
    }

    @Override // p395.InterfaceC4735
    /* renamed from: ﾞᴵ */
    public final DrmSession$DrmSessionException mo9473() {
        return this.f17874;
    }
}
