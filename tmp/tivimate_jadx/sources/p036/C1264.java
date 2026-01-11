package p036;

import java.util.ListIterator;
import p013.C0907;
import p152.AbstractC2452;
import p229.C3131;
import p329.InterfaceC4104;
import p430.C5109;

/* renamed from: ʽ.ᵔʾ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1264 extends AbstractC2452 implements InterfaceC4104 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final /* synthetic */ C1254 f4914;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final /* synthetic */ int f4915;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public /* synthetic */ C1264(C1254 c1254, int i) {
        super(0);
        this.f4915 = i;
        this.f4914 = c1254;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object] */
    @Override // p329.InterfaceC4104
    /* renamed from: ʽ */
    public final Object mo716() {
        C3131 c3131;
        switch (this.f4915) {
            case 0:
                this.f4914.m3842();
                return C0907.f3832;
            case 1:
                C1254 c1254 = this.f4914;
                C3131 c31312 = c1254.f4866;
                if (c31312 == null) {
                    C5109 c5109 = c1254.f4870;
                    ListIterator listIterator = c5109.listIterator(c5109.size());
                    while (true) {
                        if (listIterator.hasPrevious()) {
                            c3131 = listIterator.previous();
                            if (((C3131) c3131).f11965) {
                            }
                        } else {
                            c3131 = 0;
                        }
                    }
                    c31312 = c3131;
                }
                c1254.f4866 = null;
                if (c31312 != null) {
                    c31312.m6863();
                }
                return C0907.f3832;
            default:
                this.f4914.m3842();
                return C0907.f3832;
        }
    }
}
