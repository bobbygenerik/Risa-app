package p036;

import android.os.Bundle;
import androidx.leanback.widget.ʻٴ;
import androidx.lifecycle.EnumC0174;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import p013.C0913;
import p229.C3085;
import p333.InterfaceC4202;
import p340.C4249;
import p340.InterfaceC4258;
import p363.AbstractActivityC4410;
import p430.AbstractC5103;
import ˉᵎ.ⁱˊ;

/* renamed from: ʽ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1256 implements InterfaceC4202 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f4877;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4878;

    public /* synthetic */ C1256(int i, Object obj) {
        this.f4878 = i;
        this.f4877 = obj;
    }

    @Override // p333.InterfaceC4202
    /* renamed from: ﹳٴ */
    public final Bundle mo738() {
        C0913[] c0913Arr;
        switch (this.f4878) {
            case 0:
                AbstractActivityC1262 abstractActivityC1262 = (AbstractActivityC1262) this.f4877;
                Bundle bundle = new Bundle();
                C1271 c1271 = abstractActivityC1262.f4904;
                c1271.getClass();
                HashMap hashMap = c1271.f4934;
                bundle.putIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS", new ArrayList<>(hashMap.values()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS", new ArrayList<>(hashMap.keySet()));
                bundle.putStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS", new ArrayList<>(c1271.f4930));
                bundle.putBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT", (Bundle) c1271.f4932.clone());
                return bundle;
            case 1:
                ʻٴ r0 = (ʻٴ) this.f4877;
                for (Map.Entry entry : AbstractC5103.m10044((LinkedHashMap) r0.ˊʻ).entrySet()) {
                    r0.ـˆ(((C4249) ((InterfaceC4258) entry.getValue())).m8647(), (String) entry.getKey());
                }
                for (Map.Entry entry2 : AbstractC5103.m10044((LinkedHashMap) r0.ˈٴ).entrySet()) {
                    r0.ـˆ(((InterfaceC4202) entry2.getValue()).mo738(), (String) entry2.getKey());
                }
                LinkedHashMap linkedHashMap = (LinkedHashMap) r0.ʽʽ;
                if (linkedHashMap.isEmpty()) {
                    c0913Arr = new C0913[0];
                } else {
                    ArrayList arrayList = new ArrayList(linkedHashMap.size());
                    for (Map.Entry entry3 : linkedHashMap.entrySet()) {
                        arrayList.add(new C0913((String) entry3.getKey(), entry3.getValue()));
                    }
                    c0913Arr = (C0913[]) arrayList.toArray(new C0913[0]);
                }
                return ⁱˊ.ﹳٴ((C0913[]) Arrays.copyOf(c0913Arr, c0913Arr.length));
            case 2:
                AbstractActivityC4410 abstractActivityC4410 = (AbstractActivityC4410) this.f4877;
                do {
                } while (AbstractActivityC4410.m8909(abstractActivityC4410.m8914()));
                abstractActivityC4410.f16401.m710(EnumC0174.ON_STOP);
                return new Bundle();
            default:
                return ((C3085) this.f4877).m6681();
        }
    }
}
