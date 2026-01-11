package p344;

import java.util.ArrayList;
import p134.C2203;
import p134.C2209;
import p146.C2409;
import p234.C3194;
import p237.C3201;
import p404.C4790;
import p449.AbstractC5359;
import p449.InterfaceC5360;
import ˏˆ.ﹳٴ;
import ﹳˋ.ʼˎ;

/* renamed from: ᵎˑ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4269 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final InterfaceC5360 f15841 = AbstractC5359.m10750(C4269.class);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public ﹳٴ f15842;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m8650(AutoCloseable autoCloseable) {
        C3194 c3194 = (C3194) this.f15842.ˈٴ;
        C2409 c2409 = (C2409) c3194.f12215;
        try {
            Class<?> cls = autoCloseable.getClass();
            if (c2409.contains(cls)) {
                return;
            }
            C3201[] m7023 = c3194.m7023(autoCloseable);
            int i = 0;
            if (m7023 != null) {
                int length = m7023.length;
                while (i < length) {
                    m7023[i].m7041(autoCloseable);
                    i++;
                }
                return;
            }
            ArrayList arrayList = ((C2203) c3194.f12214).m5202(cls).f8678;
            C2209[] c2209Arr = (C2209[]) arrayList.toArray(new C2209[arrayList.size()]);
            int length2 = c2209Arr.length;
            if (length2 == 0) {
                c2409.add(cls);
                return;
            }
            C3201[] c3201Arr = new C3201[length2];
            while (i < length2) {
                C2209 c2209 = c2209Arr[i];
                ʼˎ r6 = (ʼˎ) c3194.f12219;
                C4790 c4790 = (C4790) c3194.f12217;
                r6.getClass();
                c3201Arr[i] = ʼˎ.ᴵᵔ(c4790, c2209);
                i++;
            }
            c3194.m7027(autoCloseable, c3201Arr);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }
}
