package com.google.android.material.datepicker;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import java.util.Calendar;

/* renamed from: com.google.android.material.datepicker.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC0679 implements View.OnClickListener {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C0678 f2780;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f2781;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C0658 f2782;

    public /* synthetic */ ViewOnClickListenerC0679(C0678 c0678, C0658 c0658, int i) {
        this.f2781 = i;
        this.f2780 = c0678;
        this.f2782 = c0658;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        switch (this.f2781) {
            case 0:
                C0678 c0678 = this.f2780;
                int m895 = ((LinearLayoutManager) c0678.f2767.getLayoutManager()).m895() - 1;
                Calendar m2391 = AbstractC0654.m2391(this.f2782.f2694.f2754.f2746);
                m2391.add(2, m895);
                c0678.m2413(new C0673(m2391));
                return;
            default:
                C0678 c06782 = this.f2780;
                int m893 = ((LinearLayoutManager) c06782.f2767.getLayoutManager()).m893() + 1;
                Calendar m23912 = AbstractC0654.m2391(this.f2782.f2694.f2754.f2746);
                m23912.add(2, m893);
                c06782.m2413(new C0673(m23912));
                return;
        }
    }
}
