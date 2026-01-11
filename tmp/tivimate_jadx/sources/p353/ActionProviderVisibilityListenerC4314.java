package p353;

import android.view.ActionProvider;
import ˊⁱ.ˑﹳ;

/* renamed from: ᵔʾ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ActionProviderVisibilityListenerC4314 implements ActionProvider.VisibilityListener {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final ActionProvider f16000;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ˑﹳ f16001;

    public ActionProviderVisibilityListenerC4314(MenuItemC4324 menuItemC4324, ActionProvider actionProvider) {
        this.f16000 = actionProvider;
    }

    @Override // android.view.ActionProvider.VisibilityListener
    public final void onActionProviderVisibilityChanged(boolean z) {
        ˑﹳ r2 = this.f16001;
        if (r2 != null) {
            MenuC4312 menuC4312 = ((C4329) r2.ᴵˊ).f16087;
            menuC4312.f15967 = true;
            menuC4312.m8722(true);
        }
    }
}
