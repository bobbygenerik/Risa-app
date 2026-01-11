package p439;

import android.text.InputFilter;
import android.text.method.TransformationMethod;
import android.widget.TextView;
import p275.C3508;
import ﹳˋ.ٴﹶ;

/* renamed from: ﹶᐧ.ᵎﹶ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5188 extends ٴﹶ {

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final C5192 f19503;

    public C5188(TextView textView) {
        this.f19503 = new C5192(textView);
    }

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final boolean m10160() {
        return this.f19503.f19512;
    }

    /* renamed from: ˆﾞ, reason: contains not printable characters */
    public final TransformationMethod m10161(TransformationMethod transformationMethod) {
        return !(C3508.f13826 != null) ? transformationMethod : this.f19503.m10167(transformationMethod);
    }

    /* renamed from: ـˆ, reason: contains not printable characters */
    public final InputFilter[] m10162(InputFilter[] inputFilterArr) {
        return !(C3508.f13826 != null) ? inputFilterArr : this.f19503.m10168(inputFilterArr);
    }

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final void m10163(boolean z) {
        if (C3508.f13826 != null) {
            this.f19503.m10169(z);
        }
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public final void m10164(boolean z) {
        C5192 c5192 = this.f19503;
        if (C3508.f13826 != null) {
            c5192.m10170(z);
        } else {
            c5192.f19512 = z;
        }
    }
}
