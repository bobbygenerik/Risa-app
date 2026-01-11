package p383;

import java.io.File;
import p031.C1144;
import p185.C2765;

/* renamed from: ⁱʼ.ʼʼ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4576 implements InterfaceC4578 {

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public static final C4576 f17066 = new C4576(0);

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f17067;

    public /* synthetic */ C4576(int i) {
        this.f17067 = i;
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ⁱˊ */
    public final boolean mo4899(Object obj) {
        switch (this.f17067) {
            case 0:
                return true;
            case 1:
                return true;
            default:
                return false;
        }
    }

    @Override // p383.InterfaceC4578
    /* renamed from: ﹳٴ */
    public final C4586 mo4900(Object obj, int i, int i2, C1144 c1144) {
        switch (this.f17067) {
            case 0:
                return new C4586(new C2765(obj), new C4584(1, obj));
            case 1:
                File file = (File) obj;
                return new C4586(new C2765(file), new C4584(0, file));
            default:
                return null;
        }
    }
}
