package p137;

import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.view.View;
import android.view.Window;
import androidx.appcompat.widget.Toolbar;

/* renamed from: ˉˆ.ˏⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2286 implements InterfaceC2341 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public CharSequence f8943;

    /* renamed from: ʽ, reason: contains not printable characters */
    public View f8944;

    /* renamed from: ˆʾ, reason: contains not printable characters */
    public CharSequence f8945;

    /* renamed from: ˈ, reason: contains not printable characters */
    public Drawable f8946;

    /* renamed from: ˉʿ, reason: contains not printable characters */
    public C2308 f8947;

    /* renamed from: ˉˆ, reason: contains not printable characters */
    public Drawable f8948;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public Drawable f8949;

    /* renamed from: ٴﹶ, reason: contains not printable characters */
    public Window.Callback f8950;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public boolean f8951;

    /* renamed from: ᵔʾ, reason: contains not printable characters */
    public int f8952;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public CharSequence f8953;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public int f8954;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public Toolbar f8955;

    /* renamed from: ﾞʻ, reason: contains not printable characters */
    public boolean f8956;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public Drawable f8957;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m5334() {
        Drawable drawable;
        int i = this.f8954;
        if ((i & 2) == 0) {
            drawable = null;
        } else if ((i & 1) != 0) {
            drawable = this.f8949;
            if (drawable == null) {
                drawable = this.f8946;
            }
        } else {
            drawable = this.f8946;
        }
        this.f8955.setLogo(drawable);
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m5335() {
        Toolbar toolbar = this.f8955;
        if ((this.f8954 & 4) != 0) {
            if (TextUtils.isEmpty(this.f8945)) {
                toolbar.setNavigationContentDescription(this.f8952);
            } else {
                toolbar.setNavigationContentDescription(this.f8945);
            }
        }
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m5336(int i) {
        View view;
        Toolbar toolbar = this.f8955;
        int i2 = this.f8954 ^ i;
        this.f8954 = i;
        if (i2 != 0) {
            if ((i2 & 4) != 0) {
                if ((i & 4) != 0) {
                    m5335();
                }
                if ((this.f8954 & 4) != 0) {
                    Drawable drawable = this.f8957;
                    if (drawable == null) {
                        drawable = this.f8948;
                    }
                    toolbar.setNavigationIcon(drawable);
                } else {
                    toolbar.setNavigationIcon((Drawable) null);
                }
            }
            if ((i2 & 3) != 0) {
                m5334();
            }
            if ((i2 & 8) != 0) {
                if ((i & 8) != 0) {
                    toolbar.setTitle(this.f8953);
                    toolbar.setSubtitle(this.f8943);
                } else {
                    toolbar.setTitle((CharSequence) null);
                    toolbar.setSubtitle((CharSequence) null);
                }
            }
            if ((i2 & 16) == 0 || (view = this.f8944) == null) {
                return;
            }
            if ((i & 16) != 0) {
                toolbar.addView(view);
            } else {
                toolbar.removeView(view);
            }
        }
    }
}
