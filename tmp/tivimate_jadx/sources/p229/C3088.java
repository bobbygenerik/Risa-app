package p229;

import java.util.ArrayList;
import java.util.Map;
import p242.C3240;
import p242.InterfaceC3239;

/* renamed from: ˑʼ.ˆﾞ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3088 implements InterfaceC3239 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f11773;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ C3085 f11774;

    public /* synthetic */ C3088(C3085 c3085, int i) {
        this.f11773 = i;
        this.f11774 = c3085;
    }

    @Override // p242.InterfaceC3239
    /* renamed from: ᵔᵢ */
    public final void mo3494(Object obj) {
        switch (this.f11773) {
            case 0:
                Map map = (Map) obj;
                ArrayList arrayList = new ArrayList(map.values());
                int[] iArr = new int[arrayList.size()];
                for (int i = 0; i < arrayList.size(); i++) {
                    iArr[i] = ((Boolean) arrayList.get(i)).booleanValue() ? 0 : -1;
                }
                C3085 c3085 = this.f11774;
                C3110 c3110 = (C3110) c3085.f11746.pollFirst();
                if (c3110 == null) {
                    String str = "No permissions were requested for " + this;
                    return;
                }
                String str2 = c3110.f11842;
                if (c3085.f11725.ﹳᐧ(str2) == null) {
                    String str3 = "Permission request result delivered for unknown Fragment " + str2;
                    return;
                }
                return;
            default:
                C3240 c3240 = (C3240) obj;
                C3085 c30852 = this.f11774;
                C3110 c31102 = (C3110) c30852.f11746.pollFirst();
                if (c31102 == null) {
                    String str4 = "No IntentSenders were started for " + this;
                    return;
                }
                String str5 = c31102.f11842;
                int i2 = c31102.f11843;
                AbstractComponentCallbacksC3123 abstractComponentCallbacksC3123 = c30852.f11725.ﹳᐧ(str5);
                if (abstractComponentCallbacksC3123 != null) {
                    abstractComponentCallbacksC3123.m6799(i2, c3240.f12367, c3240.f12368);
                    return;
                }
                String str6 = "Intent Sender result delivered for unknown Fragment " + str5;
                return;
        }
    }
}
