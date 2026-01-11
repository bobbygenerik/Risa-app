package p137;

import android.view.View;
import androidx.appcompat.view.menu.ActionMenuItemView;
import p353.AbstractC4326;
import p353.InterfaceC4305;
import p353.InterfaceC4306;

/* renamed from: ˉˆ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2238 extends AbstractViewOnTouchListenerC2283 {

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public final /* synthetic */ int f8773 = 1;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final /* synthetic */ View f8774;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2238(ActionMenuItemView actionMenuItemView) {
        super(actionMenuItemView);
        this.f8774 = actionMenuItemView;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C2238(C2256 c2256, C2256 c22562) {
        super(c22562);
        this.f8774 = c2256;
    }

    @Override // p137.AbstractViewOnTouchListenerC2283
    /* renamed from: ʽ, reason: contains not printable characters */
    public final boolean mo5239() {
        InterfaceC4305 mo5241;
        switch (this.f8773) {
            case 0:
                ((C2256) this.f8774).f8858.m5392();
                return true;
            default:
                ActionMenuItemView actionMenuItemView = (ActionMenuItemView) this.f8774;
                InterfaceC4306 interfaceC4306 = actionMenuItemView.f47;
                return interfaceC4306 != null && interfaceC4306.mo29(actionMenuItemView.f42) && (mo5241 = mo5241()) != null && mo5241.mo5277();
        }
    }

    @Override // p137.AbstractViewOnTouchListenerC2283
    /* renamed from: ˈ, reason: contains not printable characters */
    public boolean mo5240() {
        switch (this.f8773) {
            case 0:
                C2308 c2308 = ((C2256) this.f8774).f8858;
                if (c2308.f9024 != null) {
                    return false;
                }
                c2308.m5389();
                return true;
            default:
                return super.mo5240();
        }
    }

    @Override // p137.AbstractViewOnTouchListenerC2283
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC4305 mo5241() {
        C2349 c2349;
        switch (this.f8773) {
            case 0:
                C2349 c23492 = ((C2256) this.f8774).f8858.f9002;
                if (c23492 == null) {
                    return null;
                }
                return c23492.m8750();
            default:
                AbstractC4326 abstractC4326 = ((ActionMenuItemView) this.f8774).f40;
                if (abstractC4326 == null || (c2349 = ((C2322) abstractC4326).f9058.f9014) == null) {
                    return null;
                }
                return c2349.m8750();
        }
    }
}
