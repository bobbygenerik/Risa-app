package p137;

import android.content.Context;
import android.view.View;
import ar.tvplayer.tv.R;
import p353.AbstractC4328;
import p353.C4318;
import p353.InterfaceC4316;
import p353.MenuC4312;
import p353.SubMenuC4310;

/* renamed from: ˉˆ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2349 extends C4318 {

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final /* synthetic */ int f9099 = 0;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final /* synthetic */ C2308 f9100;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2349(C2308 c2308, Context context, SubMenuC4310 subMenuC4310, View view) {
        super(R.attr.6dl, 0, context, view, subMenuC4310, false);
        this.f9100 = c2308;
        if ((subMenuC4310.f15946.f16075 & 32) != 32) {
            View view2 = c2308.f9021;
            this.f16017 = view2 == null ? (View) c2308.f9009 : view2;
        }
        InterfaceC4316 interfaceC4316 = c2308.f9018;
        this.f16006 = interfaceC4316;
        AbstractC4328 abstractC4328 = this.f16008;
        if (abstractC4328 != null) {
            abstractC4328.mo5390(interfaceC4316);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2349(C2308 c2308, Context context, MenuC4312 menuC4312, View view) {
        super(R.attr.6dl, 0, context, view, menuC4312, true);
        this.f9100 = c2308;
        this.f16012 = 8388613;
        InterfaceC4316 interfaceC4316 = c2308.f9018;
        this.f16006 = interfaceC4316;
        AbstractC4328 abstractC4328 = this.f16008;
        if (abstractC4328 != null) {
            abstractC4328.mo5390(interfaceC4316);
        }
    }

    @Override // p353.C4318
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void mo5436() {
        switch (this.f9099) {
            case 0:
                C2308 c2308 = this.f9100;
                c2308.f9014 = null;
                c2308.getClass();
                super.mo5436();
                return;
            default:
                C2308 c23082 = this.f9100;
                MenuC4312 menuC4312 = c23082.f9003;
                if (menuC4312 != null) {
                    menuC4312.m8723(true);
                }
                c23082.f9002 = null;
                super.mo5436();
                return;
        }
    }
}
