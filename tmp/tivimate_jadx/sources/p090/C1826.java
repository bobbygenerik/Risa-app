package p090;

import java.io.File;
import java.util.concurrent.atomic.AtomicBoolean;
import p152.AbstractC2452;
import p164.AbstractC2598;
import p164.C2575;
import p314.C3888;
import p436.AbstractC5160;
import p436.C5158;
import ˊⁱ.ˑﹳ;

/* renamed from: ʿᵢ.ᵔי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1826 implements InterfaceC1833 {

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C5158 f7361;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final Object f7362;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final Object f7363;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final Object f7364;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final InterfaceC1804 f7365;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final /* synthetic */ int f7366;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final AbstractC2452 f7367;

    public C1826(File file, InterfaceC1802 interfaceC1802, InterfaceC1804 interfaceC1804, C1796 c1796) {
        this.f7366 = 0;
        this.f7362 = file;
        this.f7363 = interfaceC1802;
        this.f7365 = interfaceC1804;
        this.f7367 = c1796;
        this.f7364 = new AtomicBoolean(false);
        this.f7361 = AbstractC5160.m10154();
    }

    public C1826(AbstractC2598 abstractC2598, C2575 c2575, InterfaceC1804 interfaceC1804, C3888 c3888) {
        this.f7366 = 1;
        this.f7362 = abstractC2598;
        this.f7363 = c2575;
        this.f7365 = interfaceC1804;
        this.f7367 = c3888;
        this.f7364 = new ˑﹳ(18);
        this.f7361 = AbstractC5160.m10154();
    }

    @Override // p090.InterfaceC1833
    public final void close() {
        switch (this.f7366) {
            case 0:
                ((AtomicBoolean) this.f7364).set(true);
                ((C1796) this.f7367).mo716();
                return;
            default:
                ((AtomicBoolean) ((ˑﹳ) this.f7364).ᴵˊ).set(true);
                ((C3888) this.f7367).mo716();
                return;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(10:3|(2:5|(8:7|8|9|(1:(3:12|13|14)(2:35|36))(2:37|(7:39|40|41|43|44|45|(1:48)(1:47))(2:57|58))|16|17|18|(3:(1:21)|22|23)(1:25)))|60|8|9|(0)(0)|16|17|18|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(10:61|(2:63|(8:65|66|67|(1:(3:70|71|72)(2:92|93))(2:94|(7:96|97|98|100|101|102|(1:105)(1:104))(2:114|115))|73|74|75|(3:(1:78)|79|80)(1:81)))|117|66|67|(0)(0)|73|74|75|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x007d, code lost:
    
        r1 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0123, code lost:
    
        r1 = th;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0089 A[Catch: all -> 0x008a, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x008a, blocks: (B:25:0x0089, B:34:0x0096, B:31:0x0099, B:30:0x0091), top: B:9:0x0023, inners: #5 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x003b  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00a1  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x012f A[Catch: all -> 0x0130, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0130, blocks: (B:81:0x012f, B:91:0x013c, B:88:0x013f, B:87:0x0137), top: B:67:0x00cd, inners: #8 }] */
    /* JADX WARN: Removed duplicated region for block: B:94:0x00e5  */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v16, types: [ʿᵢ.ᵔי] */
    /* JADX WARN: Type inference failed for: r0v21, types: [ᐧﾞ.ﾞᴵ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23, types: [ʿᵢ.ᵔי] */
    /* JADX WARN: Type inference failed for: r0v25 */
    /* JADX WARN: Type inference failed for: r0v27 */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, ʿᵢ.ٴʼ] */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v34, types: [ʿᵢ.ᵔי] */
    /* JADX WARN: Type inference failed for: r0v37 */
    /* JADX WARN: Type inference failed for: r0v38 */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v40 */
    /* JADX WARN: Type inference failed for: r0v41 */
    /* JADX WARN: Type inference failed for: r0v5, types: [ʿᵢ.ᵔי] */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r7v0, types: [ʿᵢ.ˉˆ] */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v15, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v16 */
    /* JADX WARN: Type inference failed for: r7v17 */
    /* JADX WARN: Type inference failed for: r7v2 */
    /* JADX WARN: Type inference failed for: r7v21 */
    /* JADX WARN: Type inference failed for: r7v23 */
    /* JADX WARN: Type inference failed for: r7v26 */
    /* JADX WARN: Type inference failed for: r7v30, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* renamed from: ʽ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m4760(p090.C1794 r7, p316.AbstractC3902 r8) {
        /*
            Method dump skipped, instructions count: 348
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1826.m4760(ʿᵢ.ˉˆ, ᴵʾ.ʽ):java.lang.Object");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:102:0x0180  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x023f A[Catch: all -> 0x027e, IOException -> 0x0281, TRY_ENTER, TryCatch #16 {IOException -> 0x0281, all -> 0x027e, blocks: (B:112:0x023f, B:114:0x0245, B:116:0x024f, B:119:0x025b, B:120:0x027d, B:121:0x0254, B:124:0x028a, B:133:0x0294, B:130:0x0297), top: B:100:0x017e }] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0028  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x028a A[Catch: all -> 0x027e, IOException -> 0x0281, TRY_ENTER, TRY_LEAVE, TryCatch #16 {IOException -> 0x0281, all -> 0x027e, blocks: (B:112:0x023f, B:114:0x0245, B:116:0x024f, B:119:0x025b, B:120:0x027d, B:121:0x0254, B:124:0x028a, B:133:0x0294, B:130:0x0297), top: B:100:0x017e }] */
    /* JADX WARN: Removed duplicated region for block: B:145:0x0234  */
    /* JADX WARN: Removed duplicated region for block: B:146:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0100 A[Catch: all -> 0x0116, IOException -> 0x0119, TRY_ENTER, TryCatch #17 {IOException -> 0x0119, all -> 0x0116, blocks: (B:20:0x0100, B:22:0x010a, B:26:0x0123, B:36:0x012e, B:33:0x0131), top: B:9:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0123 A[Catch: all -> 0x0116, IOException -> 0x0119, TRY_ENTER, TRY_LEAVE, TryCatch #17 {IOException -> 0x0119, all -> 0x0116, blocks: (B:20:0x0100, B:22:0x010a, B:26:0x0123, B:36:0x012e, B:33:0x0131), top: B:9:0x0026 }] */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:48:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x005a  */
    /* JADX WARN: Type inference failed for: r0v10, types: [ᴵʾ.ʽ, java.lang.Object, ᐧﾞ.ᵎﹶ] */
    /* JADX WARN: Type inference failed for: r0v12, types: [ˊᐧ.ﾞʻ] */
    /* JADX WARN: Type inference failed for: r0v15, types: [ˊᐧ.ﾞʻ] */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r10v29 */
    /* JADX WARN: Type inference failed for: r10v39, types: [ᴵⁱ.ʼᐧ] */
    /* JADX WARN: Type inference failed for: r10v58 */
    /* JADX WARN: Type inference failed for: r10v62 */
    /* JADX WARN: Type inference failed for: r10v63 */
    /* JADX WARN: Type inference failed for: r10v8, types: [ᴵⁱ.ʼᐧ] */
    /* JADX WARN: Type inference failed for: r11v41, types: [ﹶי.ʽ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v10, types: [ˊᐧ.ʽﹳ] */
    /* JADX WARN: Type inference failed for: r1v13, types: [ˊᐧ.ʽﹳ] */
    /* JADX WARN: Type inference failed for: r1v9, types: [int] */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object, java.io.File] */
    /* JADX WARN: Type inference failed for: r7v2, types: [ʿᵢ.ˊʻ, ʿᵢ.ᵔٴ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v8, types: [ˊᐧ.ﾞʻ] */
    /* renamed from: ˈ, reason: contains not printable characters */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m4761(p090.C1780 r10, p316.AbstractC3902 r11) {
        /*
            Method dump skipped, instructions count: 696
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1826.m4761(ʿᵢ.ʽʽ, ᴵʾ.ʽ):java.lang.Object");
    }
}
