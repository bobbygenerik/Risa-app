package com.google.android.material.theme;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import ar.tvplayer.tv.R;
import com.google.android.material.button.MaterialButton;
import p044.C1321;
import p129.AbstractC2185;
import p137.C2240;
import p137.C2268;
import p137.C2312;
import p137.C2314;
import p137.C2328;
import p177.C2660;
import p184.AbstractC2764;
import p259.AbstractC3399;
import p363.C4406;
import p381.C4547;
import ˈˋ.ʾˊ;
import ˉᵎ.ⁱˊ;

/* loaded from: classes.dex */
public class MaterialComponentsViewInflater extends C4406 {
    @Override // p363.C4406
    /* renamed from: ʽ, reason: contains not printable characters */
    public final C2328 mo2449(Context context, AttributeSet attributeSet) {
        return new C4547(context, attributeSet);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ˉˆ.ᴵˊ, android.widget.CompoundButton, android.view.View, ᵎʾ.ﹳٴ] */
    @Override // p363.C4406
    /* renamed from: ˈ, reason: contains not printable characters */
    public final C2314 mo2450(Context context, AttributeSet attributeSet) {
        ?? c2314 = new C2314(AbstractC2764.m6163(context, attributeSet, R.attr.53, R.style.f26775117), attributeSet);
        Context context2 = c2314.getContext();
        TypedArray m5186 = AbstractC2185.m5186(context2, attributeSet, AbstractC3399.f13299, R.attr.53, R.style.f26775117, new int[0]);
        if (m5186.hasValue(0)) {
            c2314.setButtonTintList(ⁱˊ.ﹳᐧ(context2, m5186, 0));
        }
        c2314.f15706 = m5186.getBoolean(1, false);
        m5186.recycle();
        return c2314;
    }

    @Override // p363.C4406
    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final C2312 mo2451(Context context, AttributeSet attributeSet) {
        C2312 c2312 = new C2312(AbstractC2764.m6163(context, attributeSet, android.R.attr.textViewStyle, 0), attributeSet, android.R.attr.textViewStyle);
        Context context2 = c2312.getContext();
        if (ʾˊ.ᵢˏ(context2, R.attr.4k4, true)) {
            Resources.Theme theme = context2.getTheme();
            int[] iArr = AbstractC3399.f13270;
            TypedArray obtainStyledAttributes = theme.obtainStyledAttributes(attributeSet, iArr, android.R.attr.textViewStyle, 0);
            int m5941 = C2660.m5941(context2, obtainStyledAttributes, 1, 2);
            obtainStyledAttributes.recycle();
            if (m5941 == -1) {
                TypedArray obtainStyledAttributes2 = theme.obtainStyledAttributes(attributeSet, iArr, android.R.attr.textViewStyle, 0);
                int resourceId = obtainStyledAttributes2.getResourceId(0, -1);
                obtainStyledAttributes2.recycle();
                if (resourceId != -1) {
                    TypedArray obtainStyledAttributes3 = theme.obtainStyledAttributes(resourceId, AbstractC3399.f13276);
                    int m59412 = C2660.m5941(c2312.getContext(), obtainStyledAttributes3, 2, 4);
                    obtainStyledAttributes3.recycle();
                    if (m59412 >= 0) {
                        c2312.setLineHeight(m59412);
                    }
                }
            }
        }
        return c2312;
    }

    @Override // p363.C4406
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C2240 mo2452(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // p363.C4406
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final C2268 mo2453(Context context, AttributeSet attributeSet) {
        return new C1321(context, attributeSet);
    }
}
