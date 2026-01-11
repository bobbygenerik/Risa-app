package p269;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import p307.AbstractC3740;

/* renamed from: ـˏ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3475 extends View {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ ViewGroup f13643;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C3474 f13644;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C3475(C3474 c3474, Context context, ViewGroup viewGroup) {
        super(context);
        this.f13644 = c3474;
        this.f13643 = viewGroup;
    }

    @Override // android.view.View
    public final void onConfigurationChanged(Configuration configuration) {
        C3474 c3474 = this.f13644;
        ArrayList arrayList = c3474.f13641;
        Drawable background = this.f13643.getBackground();
        int color = background instanceof ColorDrawable ? ((ColorDrawable) background).getColor() : 0;
        if (c3474.f13640 != color) {
            c3474.f13640 = color;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ArrayList arrayList2 = ((C3476) arrayList.get(size)).f13648;
                int size2 = arrayList2.size() - 1;
                if (size2 >= 0) {
                    throw AbstractC3740.m7931(size2, arrayList2);
                }
            }
        }
    }
}
