package p229;

import android.os.Bundle;
import androidx.lifecycle.C0184;
import androidx.lifecycle.EnumC0174;
import androidx.lifecycle.InterfaceC0162;
import androidx.lifecycle.InterfaceC0183;
import com.bumptech.glide.ˈ;
import java.util.HashMap;
import java.util.Map;
import p036.C1271;
import p242.C3237;
import p242.C3240;
import p242.InterfaceC3239;

/* renamed from: ˑʼ.ˋᵔ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3101 implements InterfaceC0183 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f11813;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f11814;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f11815;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ String f11816;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ Object f11817;

    public /* synthetic */ C3101(Object obj, String str, Object obj2, Object obj3, int i) {
        this.f11814 = i;
        this.f11817 = obj;
        this.f11816 = str;
        this.f11813 = obj2;
        this.f11815 = obj3;
    }

    @Override // androidx.lifecycle.InterfaceC0183
    /* renamed from: ᵎﹶ */
    public final void mo679(InterfaceC0162 interfaceC0162, EnumC0174 enumC0174) {
        Bundle bundle;
        switch (this.f11814) {
            case 0:
                C3085 c3085 = (C3085) this.f11817;
                Map map = c3085.f11735;
                EnumC0174 enumC01742 = EnumC0174.ON_START;
                String str = this.f11816;
                if (enumC0174 == enumC01742 && (bundle = (Bundle) map.get(str)) != null) {
                    ((InterfaceC3117) this.f11813).mo6760(str, bundle);
                    map.remove(str);
                    if (C3085.m6654(2)) {
                        "Clearing fragment result with key ".concat(str);
                    }
                }
                if (enumC0174 == EnumC0174.ON_DESTROY) {
                    ((C0184) this.f11815).m715(this);
                    c3085.f11753.remove(str);
                    return;
                }
                return;
            default:
                ˈ r6 = (ˈ) this.f11815;
                InterfaceC3239 interfaceC3239 = (InterfaceC3239) this.f11813;
                C1271 c1271 = (C1271) this.f11817;
                boolean equals = EnumC0174.ON_START.equals(enumC0174);
                String str2 = this.f11816;
                if (!equals) {
                    if (EnumC0174.ON_STOP.equals(enumC0174)) {
                        c1271.f4931.remove(str2);
                        return;
                    } else {
                        if (EnumC0174.ON_DESTROY.equals(enumC0174)) {
                            c1271.m3867(str2);
                            return;
                        }
                        return;
                    }
                }
                HashMap hashMap = c1271.f4931;
                Bundle bundle2 = c1271.f4932;
                HashMap hashMap2 = c1271.f4936;
                hashMap.put(str2, new C3237(r6, interfaceC3239));
                if (hashMap2.containsKey(str2)) {
                    Object obj = hashMap2.get(str2);
                    hashMap2.remove(str2);
                    interfaceC3239.mo3494(obj);
                }
                C3240 c3240 = (C3240) bundle2.getParcelable(str2);
                if (c3240 != null) {
                    bundle2.remove(str2);
                    interfaceC3239.mo3494(r6.ᴵˊ(c3240.f12368, c3240.f12367));
                    return;
                }
                return;
        }
    }
}
