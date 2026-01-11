package p230;

import java.util.ArrayList;
import p255.C3359;

/* renamed from: ˑʿ.ʾᵎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3151 extends AbstractC3166 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ ViewTreeObserverOnPreDrawListenerC3144 f12068;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ C3359 f12069;

    public C3151(ViewTreeObserverOnPreDrawListenerC3144 viewTreeObserverOnPreDrawListenerC3144, C3359 c3359) {
        this.f12068 = viewTreeObserverOnPreDrawListenerC3144;
        this.f12069 = c3359;
    }

    @Override // p230.AbstractC3166, p230.InterfaceC3165
    /* renamed from: ˑﹳ */
    public final void mo6942(AbstractC3143 abstractC3143) {
        ((ArrayList) this.f12069.get(this.f12068.f12057)).remove(abstractC3143);
        abstractC3143.mo6908(this);
    }
}
