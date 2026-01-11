package p036;

import android.os.Bundle;
import java.util.ArrayList;
import java.util.HashMap;
import p115.InterfaceC1988;
import p229.C3114;
import p229.C3125;
import p363.AbstractActivityC4410;

/* renamed from: ʽ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C1260 implements InterfaceC1988 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ AbstractActivityC1262 f4885;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f4886;

    public /* synthetic */ C1260(AbstractActivityC1262 abstractActivityC1262, int i) {
        this.f4886 = i;
        this.f4885 = abstractActivityC1262;
    }

    @Override // p115.InterfaceC1988
    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void mo3845() {
        switch (this.f4886) {
            case 0:
                AbstractActivityC1262 abstractActivityC1262 = this.f4885;
                Bundle m6817 = ((C3125) abstractActivityC1262.f4903.f13456).m6817("android:support:activity-result");
                if (m6817 != null) {
                    C1271 c1271 = abstractActivityC1262.f4904;
                    HashMap hashMap = c1271.f4934;
                    HashMap hashMap2 = c1271.f4935;
                    Bundle bundle = c1271.f4932;
                    ArrayList<Integer> integerArrayList = m6817.getIntegerArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_RCS");
                    ArrayList<String> stringArrayList = m6817.getStringArrayList("KEY_COMPONENT_ACTIVITY_REGISTERED_KEYS");
                    if (stringArrayList == null || integerArrayList == null) {
                        return;
                    }
                    c1271.f4930 = m6817.getStringArrayList("KEY_COMPONENT_ACTIVITY_LAUNCHED_KEYS");
                    bundle.putAll(m6817.getBundle("KEY_COMPONENT_ACTIVITY_PENDING_RESULT"));
                    for (int i = 0; i < stringArrayList.size(); i++) {
                        String str = stringArrayList.get(i);
                        if (hashMap.containsKey(str)) {
                            Integer num = (Integer) hashMap.remove(str);
                            if (!bundle.containsKey(str)) {
                                hashMap2.remove(num);
                            }
                        }
                        Integer num2 = integerArrayList.get(i);
                        num2.intValue();
                        String str2 = stringArrayList.get(i);
                        hashMap2.put(num2, str2);
                        c1271.f4934.put(str2, num2);
                    }
                    return;
                }
                return;
            default:
                C3114 c3114 = (C3114) ((AbstractActivityC4410) this.f4885).f16398.ᴵˊ;
                c3114.f11850.m6708(c3114, c3114, null);
                return;
        }
    }
}
