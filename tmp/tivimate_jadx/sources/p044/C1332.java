package p044;

import android.text.Editable;
import p129.AbstractC2182;

/* renamed from: ʽˊ.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1332 extends AbstractC2182 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ C1324 f5125;

    public C1332(C1324 c1324) {
        this.f5125 = c1324;
    }

    @Override // android.text.TextWatcher
    public final void afterTextChanged(Editable editable) {
        this.f5125.m3962().mo3974();
    }

    @Override // p129.AbstractC2182, android.text.TextWatcher
    public final void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        this.f5125.m3962().mo4002();
    }
}
