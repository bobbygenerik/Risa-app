package p029;

import com.bumptech.glide.ʽ;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import p329.InterfaceC4106;
import p430.C5097;
import ᴵˋ.ˊʻ;

/* renamed from: ʼᴵ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public abstract class AbstractC1127 extends ʽ {
    /* renamed from: ٴʼ, reason: contains not printable characters */
    public static List m3552(InterfaceC1130 interfaceC1130) {
        Iterator it = interfaceC1130.iterator();
        if (!it.hasNext()) {
            return C5097.f19202;
        }
        Object next = it.next();
        if (!it.hasNext()) {
            return Collections.singletonList(next);
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(next);
        while (it.hasNext()) {
            arrayList.add(it.next());
        }
        return arrayList;
    }

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public static String m3553(InterfaceC1130 interfaceC1130, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) "");
        int i = 0;
        for (Object obj : interfaceC1130) {
            i++;
            if (i > 1) {
                sb.append((CharSequence) str);
            }
            ˊʻ.ⁱˊ(sb, obj, (InterfaceC4106) null);
        }
        sb.append((CharSequence) "");
        return sb.toString();
    }
}
