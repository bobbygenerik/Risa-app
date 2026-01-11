package p439;

import android.text.Editable;
import p275.C3506;

/* renamed from: ﹶᐧ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5191 extends Editable.Factory {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static Class f19509;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static volatile C5191 f19510;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static final Object f19511 = new Object();

    @Override // android.text.Editable.Factory
    public final Editable newEditable(CharSequence charSequence) {
        Class cls = f19509;
        return cls != null ? new C3506(cls, charSequence) : super.newEditable(charSequence);
    }
}
