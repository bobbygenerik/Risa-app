package androidx.leanback.widget;

import java.util.ArrayList;
import p179.AbstractC2673;

/* renamed from: androidx.leanback.widget.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C0148 extends AbstractC0096 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ AbstractC0145 f1012;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ InterfaceC0112 f1013;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f1014;

    public C0148(VerticalGridView verticalGridView, int i, InterfaceC0112 interfaceC0112) {
        this.f1012 = verticalGridView;
        this.f1014 = i;
        this.f1013 = interfaceC0112;
    }

    @Override // androidx.leanback.widget.AbstractC0096
    /* renamed from: ⁱˊ */
    public final void mo587(AbstractC2673 abstractC2673, int i) {
        if (i == this.f1014) {
            ArrayList arrayList = this.f1012.f1005.f630;
            if (arrayList != null) {
                arrayList.remove(this);
            }
            this.f1013.mo578(abstractC2673);
        }
    }
}
