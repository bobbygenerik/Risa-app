package p438;

import android.support.v4.media.session.AbstractC0001;
import com.parse.ʽˑ;
import java.util.LinkedHashMap;
import java.util.Map;
import p000.C0754;
import p150.AbstractC2416;
import p150.InterfaceC2417;
import p246.InterfaceC3291;
import p430.AbstractC5103;

/* renamed from: ﹶٴ.ᵔᵢ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5179 implements InterfaceC3291 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final C5177 f19488;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC3291 f19489;

    public C5179(InterfaceC3291 interfaceC3291) {
        C5169 c5169 = C5169.f19463;
        this.f19489 = interfaceC3291;
        this.f19488 = new C5177(C5169.f19462, interfaceC3291.mo4337());
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ʽ */
    public Object mo4336(ʽˑ r10) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int size = linkedHashMap.size() * 2;
        ʽˑ r102 = r10.ᵎﹶ(mo4337());
        while (true) {
            int i = r102.ˉˆ(mo4337());
            if (i == -1) {
                r102.ʾˋ(mo4337());
                return linkedHashMap;
            }
            int i2 = i + size;
            LinkedHashMap linkedHashMap2 = linkedHashMap;
            C5169 c5169 = C5169.f19463;
            C5177 c5177 = this.f19488;
            Object obj = r102.ʻٴ(c5177, i2, c5169, (Object) null);
            int i3 = r102.ˉˆ(c5177);
            if (i3 != i2 + 1) {
                throw new IllegalArgumentException(AbstractC0001.m14(i2, i3, "Value must follow key in a map, index for key: ", ", returned index for value: ").toString());
            }
            boolean containsKey = linkedHashMap2.containsKey(obj);
            InterfaceC3291 interfaceC3291 = this.f19489;
            linkedHashMap2.put(obj, (!containsKey || (interfaceC3291.mo4337().mo5520() instanceof AbstractC2416)) ? r102.ʻٴ(c5177, i3, interfaceC3291, (Object) null) : r102.ʻٴ(c5177, i3, interfaceC3291, AbstractC5103.m10043(linkedHashMap2, obj)));
        }
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ˈ */
    public final InterfaceC2417 mo4337() {
        return this.f19488;
    }

    @Override // p246.InterfaceC3291
    /* renamed from: ﹳٴ */
    public final void mo4339(C0754 c0754, Object obj) {
        ((Map) obj).size();
        C5177 c5177 = this.f19488;
        C0754 m2754 = c0754.m2754(c5177);
        int i = 0;
        for (Map.Entry entry : ((Map) obj).entrySet()) {
            Object key = entry.getKey();
            Object value = entry.getValue();
            int i2 = i + 1;
            m2754.m2750(c5177, i, C5169.f19463, key);
            i += 2;
            m2754.m2750(c5177, i2, this.f19489, value);
        }
        m2754.m2745();
    }
}
