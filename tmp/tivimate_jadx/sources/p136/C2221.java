package p136;

import android.content.Context;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
import p137.C2308;
import p229.C3125;
import p353.InterfaceC4323;
import p353.MenuC4312;
import ˏˆ.ﹳٴ;

/* renamed from: ˉʿ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2221 extends AbstractC2228 implements InterfaceC4323 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public Context f8706;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public ActionBarContextView f8707;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public MenuC4312 f8708;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public WeakReference f8709;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public boolean f8710;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C3125 f8711;

    @Override // p136.AbstractC2228
    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final void mo5210() {
        this.f8711.m6823(this, this.f8708);
    }

    @Override // p136.AbstractC2228
    /* renamed from: ʼᐧ, reason: contains not printable characters */
    public final void mo5211(boolean z) {
        this.f8752 = z;
        this.f8707.setTitleOptional(z);
    }

    @Override // p136.AbstractC2228
    /* renamed from: ʽ, reason: contains not printable characters */
    public final View mo5212() {
        WeakReference weakReference = this.f8709;
        if (weakReference != null) {
            return (View) weakReference.get();
        }
        return null;
    }

    @Override // p136.AbstractC2228
    /* renamed from: ˆʾ, reason: contains not printable characters */
    public final boolean mo5213() {
        return this.f8707.f79;
    }

    @Override // p353.InterfaceC4323
    /* renamed from: ˈ, reason: contains not printable characters */
    public final boolean mo5214(MenuC4312 menuC4312, MenuItem menuItem) {
        return ((ﹳٴ) this.f8711.f11943).ʽʽ(this, menuItem);
    }

    @Override // p136.AbstractC2228
    /* renamed from: ˉʿ, reason: contains not printable characters */
    public final void mo5215(CharSequence charSequence) {
        this.f8707.setSubtitle(charSequence);
    }

    @Override // p136.AbstractC2228
    /* renamed from: ˉˆ, reason: contains not printable characters */
    public final void mo5216(CharSequence charSequence) {
        this.f8707.setTitle(charSequence);
    }

    @Override // p136.AbstractC2228
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final MenuC4312 mo5217() {
        return this.f8708;
    }

    @Override // p136.AbstractC2228
    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public final void mo5218(View view) {
        this.f8707.setCustomView(view);
        this.f8709 = view != null ? new WeakReference(view) : null;
    }

    @Override // p136.AbstractC2228
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final CharSequence mo5219() {
        return this.f8707.getSubtitle();
    }

    @Override // p136.AbstractC2228
    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public final void mo5220(int i) {
        mo5216(this.f8706.getString(i));
    }

    @Override // p136.AbstractC2228
    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final CharSequence mo5221() {
        return this.f8707.getTitle();
    }

    @Override // p353.InterfaceC4323
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void mo5222(MenuC4312 menuC4312) {
        mo5210();
        C2308 c2308 = this.f8707.f84;
        if (c2308 != null) {
            c2308.m5392();
        }
    }

    @Override // p136.AbstractC2228
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo5223() {
        if (this.f8710) {
            return;
        }
        this.f8710 = true;
        this.f8711.m6845(this);
    }

    @Override // p136.AbstractC2228
    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public final void mo5224(int i) {
        mo5215(this.f8706.getString(i));
    }

    @Override // p136.AbstractC2228
    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final MenuInflater mo5225() {
        return new C2226(this.f8707.getContext());
    }
}
