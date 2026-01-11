package p090;

import java.util.ArrayList;
import java.util.List;
import p013.C0907;
import p033.C1182;
import p126.InterfaceC2136;
import p240.C3231;
import p316.AbstractC3906;
import p322.AbstractC3967;
import p324.InterfaceC4023;
import p329.InterfaceC4087;

/* renamed from: ʿᵢ.ﾞᴵ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1838 extends AbstractC3906 implements InterfaceC4087 {

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public Object f7394;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public int f7395;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public /* synthetic */ Object f7396;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public Object f7397;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final /* synthetic */ int f7398 = 0;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public final /* synthetic */ Object f7399;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public Object f7400;

    /* renamed from: ᵔי, reason: contains not printable characters */
    public final /* synthetic */ Object f7401;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1838(List list, ArrayList arrayList, InterfaceC2136 interfaceC2136) {
        super(2, interfaceC2136);
        this.f7399 = list;
        this.f7401 = arrayList;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1838(AbstractC3967 abstractC3967, C1182 c1182, C3231 c3231, InterfaceC2136 interfaceC2136) {
        super(2, interfaceC2136);
        this.f7396 = abstractC3967;
        this.f7399 = c1182;
        this.f7401 = c3231;
    }

    @Override // p329.InterfaceC4087
    /* renamed from: ʼˎ */
    public final Object mo3749(Object obj, Object obj2) {
        switch (this.f7398) {
            case 0:
                return ((C1838) mo3750(obj, (InterfaceC2136) obj2)).mo3389(C0907.f3832);
            default:
                return ((C1838) mo3750((InterfaceC4023) obj, (InterfaceC2136) obj2)).mo3389(C0907.f3832);
        }
    }

    @Override // p316.AbstractC3908
    /* renamed from: ˉˆ */
    public final InterfaceC2136 mo3750(Object obj, InterfaceC2136 interfaceC2136) {
        switch (this.f7398) {
            case 0:
                C1838 c1838 = new C1838((List) this.f7399, (ArrayList) this.f7401, interfaceC2136);
                c1838.f7396 = obj;
                return c1838;
            default:
                C1838 c18382 = new C1838((AbstractC3967) this.f7396, (C1182) this.f7399, (C3231) this.f7401, interfaceC2136);
                c18382.f7397 = obj;
                return c18382;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x00cc  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00d8 A[Catch: all -> 0x009d, TRY_LEAVE, TryCatch #3 {all -> 0x009d, blocks: (B:41:0x007e, B:42:0x009c, B:17:0x00a0, B:20:0x00c6, B:23:0x00ce, B:24:0x00d7, B:26:0x00d8, B:9:0x0025, B:10:0x0072, B:32:0x005f), top: B:4:0x0012, inners: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:27:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x0129  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x014d  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x017d  */
    @Override // p316.AbstractC3908
    /* renamed from: ᵔﹳ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo3389(java.lang.Object r15) {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1838.mo3389(java.lang.Object):java.lang.Object");
    }
}
