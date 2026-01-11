package p242;

import com.bumptech.glide.ˈ;
import java.util.HashMap;
import p036.C1271;

/* renamed from: ˑﹳ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3236 extends AbstractC3235 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final /* synthetic */ ˈ f12357;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final /* synthetic */ C1271 f12358;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final /* synthetic */ String f12359;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f12360;

    public /* synthetic */ C3236(C1271 c1271, String str, ˈ r3, int i) {
        this.f12360 = i;
        this.f12358 = c1271;
        this.f12359 = str;
        this.f12357 = r3;
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public void m7063() {
        this.f12358.m3867(this.f12359);
    }

    @Override // p242.AbstractC3235
    /* renamed from: ﹳٴ */
    public final void mo6753(Object obj) {
        switch (this.f12360) {
            case 0:
                C1271 c1271 = this.f12358;
                HashMap hashMap = c1271.f4934;
                String str = this.f12359;
                Integer num = (Integer) hashMap.get(str);
                ˈ r3 = this.f12357;
                if (num != null) {
                    c1271.f4930.add(str);
                    try {
                        c1271.m3865(num.intValue(), r3, obj);
                        return;
                    } catch (Exception e) {
                        c1271.f4930.remove(str);
                        throw e;
                    }
                }
                throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + r3 + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
            default:
                C1271 c12712 = this.f12358;
                HashMap hashMap2 = c12712.f4934;
                String str2 = this.f12359;
                Integer num2 = (Integer) hashMap2.get(str2);
                ˈ r32 = this.f12357;
                if (num2 != null) {
                    c12712.f4930.add(str2);
                    try {
                        c12712.m3865(num2.intValue(), r32, obj);
                        return;
                    } catch (Exception e2) {
                        c12712.f4930.remove(str2);
                        throw e2;
                    }
                }
                throw new IllegalStateException("Attempting to launch an unregistered ActivityResultLauncher with contract " + r32 + " and input " + obj + ". You must ensure the ActivityResultLauncher is registered before calling launch().");
        }
    }
}
