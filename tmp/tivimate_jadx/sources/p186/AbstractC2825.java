package p186;

import android.view.ContentInfo;
import android.view.View;
import j$.util.Objects;
import p003.C0790;

/* renamed from: ˋᵔ.ᵎⁱ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC2825 {
    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static C2826 m6285(View view, C2826 c2826) {
        ContentInfo mo2891 = c2826.f10611.mo2891();
        Objects.requireNonNull(mo2891);
        ContentInfo performReceiveContent = view.performReceiveContent(mo2891);
        if (performReceiveContent == null) {
            return null;
        }
        return performReceiveContent == mo2891 ? c2826 : new C2826(new C0790(performReceiveContent));
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static String[] m6286(View view) {
        return view.getReceiveContentMimeTypes();
    }
}
