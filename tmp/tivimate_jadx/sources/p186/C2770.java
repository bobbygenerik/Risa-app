package p186;

import android.text.TextUtils;
import android.view.View;
import p124.AbstractC2128;

/* renamed from: ˋᵔ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2770 extends AbstractC2128 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f10530;

    public C2770(int i, Class cls, int i2, int i3, int i4) {
        this.f10530 = i4;
        this.f8313 = i;
        this.f8314 = cls;
        this.f8312 = i2;
        this.f8315 = i3;
    }

    @Override // p124.AbstractC2128
    /* renamed from: ʽ */
    public final Object mo5087(View view) {
        switch (this.f10530) {
            case 0:
                return Boolean.valueOf(AbstractC2795.m6210(view));
            case 1:
                return AbstractC2795.m6214(view);
            case 2:
                return AbstractC2794.m6208(view);
            default:
                return Boolean.valueOf(AbstractC2795.m6213(view));
        }
    }

    @Override // p124.AbstractC2128
    /* renamed from: ˈ */
    public final void mo5088(View view, Object obj) {
        switch (this.f10530) {
            case 0:
                AbstractC2795.m6215(view, ((Boolean) obj).booleanValue());
                return;
            case 1:
                AbstractC2795.m6212(view, (CharSequence) obj);
                return;
            case 2:
                AbstractC2794.m6207(view, (CharSequence) obj);
                return;
            default:
                AbstractC2795.m6211(view, ((Boolean) obj).booleanValue());
                return;
        }
    }

    @Override // p124.AbstractC2128
    /* renamed from: ᵎﹶ */
    public final boolean mo5090(Object obj, Object obj2) {
        boolean equals;
        switch (this.f10530) {
            case 0:
                Boolean bool = (Boolean) obj;
                Boolean bool2 = (Boolean) obj2;
                return !((bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue()));
            case 1:
                equals = TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
                break;
            case 2:
                equals = TextUtils.equals((CharSequence) obj, (CharSequence) obj2);
                break;
            default:
                Boolean bool3 = (Boolean) obj;
                Boolean bool4 = (Boolean) obj2;
                return !((bool3 != null && bool3.booleanValue()) == (bool4 != null && bool4.booleanValue()));
        }
        return !equals;
    }
}
