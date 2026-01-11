package p136;

import android.content.Context;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.View;
import p353.MenuC4311;

/* renamed from: ˉʿ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2223 extends ActionMode {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final AbstractC2228 f8712;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final Context f8713;

    public C2223(Context context, AbstractC2228 abstractC2228) {
        this.f8713 = context;
        this.f8712 = abstractC2228;
    }

    @Override // android.view.ActionMode
    public final void finish() {
        this.f8712.mo5223();
    }

    @Override // android.view.ActionMode
    public final View getCustomView() {
        return this.f8712.mo5212();
    }

    @Override // android.view.ActionMode
    public final Menu getMenu() {
        return new MenuC4311(this.f8713, this.f8712.mo5217());
    }

    @Override // android.view.ActionMode
    public final MenuInflater getMenuInflater() {
        return this.f8712.mo5225();
    }

    @Override // android.view.ActionMode
    public final CharSequence getSubtitle() {
        return this.f8712.mo5219();
    }

    @Override // android.view.ActionMode
    public final Object getTag() {
        return this.f8712.f8751;
    }

    @Override // android.view.ActionMode
    public final CharSequence getTitle() {
        return this.f8712.mo5221();
    }

    @Override // android.view.ActionMode
    public final boolean getTitleOptionalHint() {
        return this.f8712.f8752;
    }

    @Override // android.view.ActionMode
    public final void invalidate() {
        this.f8712.mo5210();
    }

    @Override // android.view.ActionMode
    public final boolean isTitleOptional() {
        return this.f8712.mo5213();
    }

    @Override // android.view.ActionMode
    public final void setCustomView(View view) {
        this.f8712.mo5218(view);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(int i) {
        this.f8712.mo5224(i);
    }

    @Override // android.view.ActionMode
    public final void setSubtitle(CharSequence charSequence) {
        this.f8712.mo5215(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTag(Object obj) {
        this.f8712.f8751 = obj;
    }

    @Override // android.view.ActionMode
    public final void setTitle(int i) {
        this.f8712.mo5220(i);
    }

    @Override // android.view.ActionMode
    public final void setTitle(CharSequence charSequence) {
        this.f8712.mo5216(charSequence);
    }

    @Override // android.view.ActionMode
    public final void setTitleOptionalHint(boolean z) {
        this.f8712.mo5211(z);
    }
}
