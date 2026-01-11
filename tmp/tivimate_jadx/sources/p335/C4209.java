package p335;

import p108.C1945;
import p208.C2937;
import p208.InterfaceC2947;
import p383.C4575;
import p383.C4579;
import p383.InterfaceC4578;
import p383.InterfaceC4596;
import ᐧﹳ.ʽ;

/* renamed from: ᵎʼ.ⁱˊ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4209 implements InterfaceC4596 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public static volatile C2937 f15656;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final Object f15657;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f15658;

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public C4209(int i) {
        this(f15656);
        this.f15658 = i;
        switch (i) {
            case 1:
                this.f15657 = new ʽ(9);
                return;
            case 2:
                this.f15657 = new C4579(3);
                return;
            default:
                if (f15656 == null) {
                    synchronized (C4209.class) {
                        try {
                            if (f15656 == null) {
                                f15656 = new C2937();
                            }
                        } finally {
                        }
                    }
                }
                return;
        }
    }

    public C4209(InterfaceC2947 interfaceC2947) {
        this.f15658 = 0;
        this.f15657 = interfaceC2947;
    }

    @Override // p383.InterfaceC4596
    /* renamed from: ﹳٴ */
    public final InterfaceC4578 mo4901(C4575 c4575) {
        switch (this.f15658) {
            case 0:
                return new C4208(0, (InterfaceC2947) this.f15657);
            case 1:
                return new C1945((ʽ) this.f15657);
            default:
                return new C4208(2, (C4579) this.f15657);
        }
    }
}
