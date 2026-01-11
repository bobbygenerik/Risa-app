package p423;

import p052.AbstractC1430;
import p052.C1403;
import p164.C2571;
import p164.InterfaceC2592;
import p208.AbstractC2960;
import p311.InterfaceC3837;
import ٴﾞ.ˆʾ;

/* renamed from: ﹳﹶ.ʽ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C5011 implements InterfaceC3837 {

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public static final C2571 f18751 = ˆʾ.ﹳᐧ("EFBBBF");

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final AbstractC1430 f18752;

    public C5011(AbstractC1430 abstractC1430) {
        this.f18752 = abstractC1430;
    }

    @Override // p311.InterfaceC3837
    /* renamed from: ˆʾ */
    public final Object mo8000(Object obj) {
        AbstractC2960 abstractC2960 = (AbstractC2960) obj;
        InterfaceC2592 mo4067 = abstractC2960.mo4067();
        try {
            if (mo4067.mo5798(f18751)) {
                mo4067.skip(r1.f9767.length);
            }
            C1403 c1403 = new C1403(mo4067);
            Object mo4120 = this.f18752.mo4120(c1403);
            if (c1403.mo4127() != 10) {
                throw new RuntimeException("JSON document was not fully consumed.");
            }
            abstractC2960.close();
            return mo4120;
        } catch (Throwable th) {
            abstractC2960.close();
            throw th;
        }
    }
}
