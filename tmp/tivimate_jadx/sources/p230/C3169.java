package p230;

import android.view.View;
import java.util.ArrayList;

/* renamed from: ˑʿ.ٴﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3169 implements InterfaceC3165 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ ArrayList f12106;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ View f12107;

    public C3169(View view, ArrayList arrayList) {
        this.f12107 = view;
        this.f12106 = arrayList;
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ʽ */
    public final void mo6946(AbstractC3143 abstractC3143) {
        abstractC3143.mo6908(this);
        abstractC3143.m6932(this);
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ˈ */
    public final void mo6941(AbstractC3143 abstractC3143) {
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ˑﹳ */
    public final void mo6942(AbstractC3143 abstractC3143) {
        abstractC3143.mo6908(this);
        this.f12107.setVisibility(8);
        ArrayList arrayList = this.f12106;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ((View) arrayList.get(i)).setVisibility(0);
        }
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ᵎﹶ */
    public final void mo6950(AbstractC3143 abstractC3143) {
        mo6946(abstractC3143);
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ⁱˊ */
    public final void mo6943() {
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ﹳٴ */
    public final void mo6944() {
    }

    @Override // p230.InterfaceC3165
    /* renamed from: ﾞᴵ */
    public final void mo6952(AbstractC3143 abstractC3143) {
        mo6942(abstractC3143);
    }
}
