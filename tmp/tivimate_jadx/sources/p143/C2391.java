package p143;

import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;

/* renamed from: ˉٴ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2391 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final int f9224;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Configuration f9225;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final ColorStateList f9226;

    public C2391(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
        this.f9226 = colorStateList;
        this.f9225 = configuration;
        this.f9224 = theme == null ? 0 : theme.hashCode();
    }
}
