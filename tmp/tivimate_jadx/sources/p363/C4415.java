package p363;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
import p136.AbstractC2228;
import p136.C2226;
import p137.C2308;
import p229.C3125;
import p353.InterfaceC4323;
import p353.MenuC4312;
import ˏˆ.ﹳٴ;

/* renamed from: ᵔᵢ.ˉٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4415 extends AbstractC2228 implements InterfaceC4323 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Context f16426;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final MenuC4312 f16427;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public WeakReference f16428;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ C4425 f16429;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C3125 f16430;

    public C4415(C4425 c4425, Context context, C3125 c3125) {
        this.f16429 = c4425;
        this.f16426 = context;
        this.f16430 = c3125;
        MenuC4312 menuC4312 = new MenuC4312(context);
        menuC4312.f15972 = 1;
        this.f16427 = menuC4312;
        menuC4312.f15961 = this;
    }

    @Override // p136.AbstractC2228
    /* renamed from: ʼˎ */
    public final void mo5210() {
        if (this.f16429.f16456 != this) {
            return;
        }
        MenuC4312 menuC4312 = this.f16427;
        menuC4312.m8727();
        try {
            this.f16430.m6823(this, menuC4312);
        } finally {
            menuC4312.m8720();
        }
    }

    @Override // p136.AbstractC2228
    /* renamed from: ʼᐧ */
    public final void mo5211(boolean z) {
        this.f8752 = z;
        this.f16429.f16468.setTitleOptional(z);
    }

    @Override // p136.AbstractC2228
    /* renamed from: ʽ */
    public final View mo5212() {
        WeakReference weakReference = this.f16428;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // p136.AbstractC2228
    /* renamed from: ˆʾ */
    public final boolean mo5213() {
        return this.f16429.f16468.f79;
    }

    @Override // p353.InterfaceC4323
    /* renamed from: ˈ */
    public final boolean mo5214(MenuC4312 menuC4312, MenuItem menuItem) {
        C3125 c3125 = this.f16430;
        if (c3125 != null) {
            return ((ﹳٴ) c3125.f11943).ʽʽ(this, menuItem);
        }
        return false;
    }

    @Override // p136.AbstractC2228
    /* renamed from: ˉʿ */
    public final void mo5215(CharSequence charSequence) {
        this.f16429.f16468.setSubtitle(charSequence);
    }

    @Override // p136.AbstractC2228
    /* renamed from: ˉˆ */
    public final void mo5216(CharSequence charSequence) {
        this.f16429.f16468.setTitle(charSequence);
    }

    @Override // p136.AbstractC2228
    /* renamed from: ˑﹳ */
    public final MenuC4312 mo5217() {
        return this.f16427;
    }

    @Override // p136.AbstractC2228
    /* renamed from: ٴﹶ */
    public final void mo5218(View view) {
        this.f16429.f16468.setCustomView(view);
        this.f16428 = new WeakReference(view);
    }

    @Override // p136.AbstractC2228
    /* renamed from: ᵎﹶ */
    public final CharSequence mo5219() {
        return this.f16429.f16468.getSubtitle();
    }

    @Override // p136.AbstractC2228
    /* renamed from: ᵔʾ */
    public final void mo5220(int i) {
        mo5216(this.f16429.f16462.getResources().getString(i));
    }

    @Override // p136.AbstractC2228
    /* renamed from: ᵔᵢ */
    public final CharSequence mo5221() {
        return this.f16429.f16468.getTitle();
    }

    @Override // p353.InterfaceC4323
    /* renamed from: ⁱˊ */
    public final void mo5222(MenuC4312 menuC4312) {
        if (this.f16430 == null) {
            return;
        }
        mo5210();
        C2308 c2308 = this.f16429.f16468.f84;
        if (c2308 != null) {
            c2308.m5392();
        }
    }

    @Override // p136.AbstractC2228
    /* renamed from: ﹳٴ */
    public final void mo5223() {
        C4425 c4425 = this.f16429;
        if (c4425.f16456 != this) {
            return;
        }
        if (c4425.f16445) {
            c4425.f16448 = this;
            c4425.f16465 = this.f16430;
        } else {
            this.f16430.m6845(this);
        }
        this.f16430 = null;
        c4425.m8927(false);
        ActionBarContextView actionBarContextView = c4425.f16468;
        if (actionBarContextView.f95 == null) {
            actionBarContextView.m38();
        }
        c4425.f16447.setHideOnContentScrollEnabled(c4425.f16451);
        c4425.f16456 = null;
    }

    @Override // p136.AbstractC2228
    /* renamed from: ﾞʻ */
    public final void mo5224(int i) {
        mo5215(this.f16429.f16462.getResources().getString(i));
    }

    @Override // p136.AbstractC2228
    /* renamed from: ﾞᴵ */
    public final MenuInflater mo5225() {
        return new C2226(this.f16426);
    }
}
