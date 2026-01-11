package p131;

import android.util.Log;
import com.google.android.gms.internal.measurement.ᵎ;
import com.google.android.gms.internal.play_billing.ʽﹳ;
import java.util.concurrent.atomic.AtomicBoolean;
import p007.InterfaceC0836;
import p017.AbstractC0993;
import p017.C0956;
import p017.C0968;
import p055.C1474;
import p139.C2356;
import p139.C2367;
import p189.C2871;
import p196.C2895;
import p220.C3029;
import p220.C3032;
import p220.InterfaceC3035;
import p305.InterfaceC3734;
import p318.EnumC3916;
import p359.C4360;
import p359.InterfaceC4363;
import p420.C4987;
import p420.InterfaceC4970;
import p428.C5063;
import p428.C5073;
import p428.InterfaceC5066;
import ˉˆ.ʿ;
import ˉᵎ.ⁱˊ;
import ˊⁱ.ˑﹳ;

/* renamed from: ˈᵔ.ﹳٴ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final /* synthetic */ class C2196 implements InterfaceC3035, InterfaceC0836, InterfaceC4363, InterfaceC3734, InterfaceC5066 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ Object f8653;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f8654;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final /* synthetic */ Object f8655;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f8656;

    public /* synthetic */ C2196(Object obj, Object obj2, Object obj3, int i) {
        this.f8654 = i;
        this.f8656 = obj;
        this.f8653 = obj2;
        this.f8655 = obj3;
    }

    @Override // p305.InterfaceC3734
    public void accept(Object obj) {
        ʽﹳ r0 = (ʽﹳ) this.f8656;
        ((InterfaceC4970) obj).mo2847(r0.ᴵˊ, (C4987) this.f8653, (C2895) this.f8655);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x007f A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r6v6, types: [ʼי.ﹳٴ, java.lang.Object] */
    @Override // p359.InterfaceC4363
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object apply(java.lang.Object r27) {
        /*
            Method dump skipped, instructions count: 1062
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131.C2196.apply(java.lang.Object):java.lang.Object");
    }

    @Override // p007.InterfaceC0836
    /* renamed from: ʽ */
    public Object mo2817() {
        C2871 c2871 = (C2871) this.f8656;
        C2356 c2356 = (C2356) this.f8653;
        C2367 c2367 = (C2367) this.f8655;
        C4360 c4360 = (C4360) c2871.f10783;
        c4360.getClass();
        EnumC3916 enumC3916 = c2356.f9110;
        String str = c2367.f9147;
        String str2 = c2356.f9112;
        if (Log.isLoggable(ⁱˊ.ʼʼ("SQLiteEventStore"), 3)) {
            String str3 = "Storing event with priority=" + enumC3916 + ", name=" + str + " for destination " + str2;
        }
        ((Long) c4360.m8835(new C2196(c4360, c2367, c2356, 3))).getClass();
        c2871.f10786.ʻᵎ(c2356, 1, false);
        return null;
    }

    @Override // p220.InterfaceC3035
    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public Object mo5197(C3029 c3029) {
        C3032 c3032 = (C3032) this.f8656;
        AtomicBoolean atomicBoolean = (AtomicBoolean) this.f8653;
        ʿ r2 = (ʿ) this.f8655;
        if (c3029.m6567()) {
            c3032.m6577(c3029.m6565());
        } else if (c3029.m6563() != null) {
            c3032.m6578(c3029.m6563());
        } else if (atomicBoolean.getAndSet(true)) {
            ((C3029) ((ˑﹳ) r2.ᴵˊ).ᴵˊ).m6572(null);
        }
        return ᵎ.ᵔᵢ((Object) null);
    }

    @Override // p428.InterfaceC5066
    /* renamed from: ﾞᴵ */
    public C0956 mo3946(int i, C1474 c1474, int[] iArr) {
        C5063 c5063 = (C5063) this.f8656;
        String str = (String) this.f8653;
        String str2 = (String) this.f8655;
        C0968 m3261 = AbstractC0993.m3261();
        for (int i2 = 0; i2 < c1474.f5770; i2++) {
            m3261.m3239(new C5073(i, c1474, i2, c5063, iArr[i2], str, str2));
        }
        return m3261.m3249();
    }
}
