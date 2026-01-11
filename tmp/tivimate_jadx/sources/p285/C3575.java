package p285;

import java.util.Collection;
import java.util.Iterator;
import p134.C2209;
import p134.InterfaceC2206;
import p175.C2658;
import ˏˆ.ﹳٴ;
import ˑי.ʽ;

/* renamed from: ٴˏ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3575 implements InterfaceC2206 {
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public static boolean m7528(String str, C3574 c3574, ʽ r4, Object obj) {
        try {
            return ((Boolean) AbstractC3576.f13965.createValueExpression(c3574, str, Boolean.class).getValue(c3574)).booleanValue();
        } catch (Throwable th) {
            ﹳٴ r3 = new ﹳٴ(14, false);
            r3.ᴵˊ = th;
            r3.ʽʽ = "Error while evaluating EL expression on message";
            r3.ˈٴ = ((C2209) r4.ʾˋ).f8676;
            r3.ᴵᵔ = obj;
            Iterator it = ((Collection) r4.ᴵˊ).iterator();
            while (it.hasNext()) {
                ((C2658) it.next()).m5940(r3);
            }
            return false;
        }
    }
}
