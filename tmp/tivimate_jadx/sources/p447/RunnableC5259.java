package p447;

import j$.util.Objects;
import java.io.IOException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import p229.RunnableC3072;
import p296.AbstractC3659;
import ʽⁱ.ᵎﹶ;

/* renamed from: ﹶﾞ.ˉـ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class RunnableC5259 implements Runnable {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final byte[] f19855;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f19856 = 0;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final String f19857;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final Object f19858;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public final /* synthetic */ ᵎﹶ f19859;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final URL f19860;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final Map f19861;

    public RunnableC5259(C5239 c5239, String str, URL url, byte[] bArr, Map map, InterfaceC5319 interfaceC5319) {
        Objects.requireNonNull(c5239);
        this.f19859 = c5239;
        AbstractC3659.m7680(str);
        AbstractC3659.m7687(url);
        this.f19860 = url;
        this.f19855 = bArr;
        this.f19858 = interfaceC5319;
        this.f19857 = str;
        this.f19861 = map;
    }

    public RunnableC5259(C5274 c5274, String str, URL url, byte[] bArr, HashMap hashMap, InterfaceC5284 interfaceC5284) {
        Objects.requireNonNull(c5274);
        this.f19859 = c5274;
        AbstractC3659.m7680(str);
        this.f19860 = url;
        this.f19855 = bArr;
        this.f19858 = interfaceC5284;
        this.f19857 = str;
        this.f19861 = hashMap;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 13, insn: 0x0285: MOVE (r11 I:??[OBJECT, ARRAY]) = (r13 I:??[OBJECT, ARRAY]), block:B:177:0x0283 */
    /* JADX WARN: Not initialized variable reg: 13, insn: 0x0288: MOVE (r12 I:??[OBJECT, ARRAY]) = (r13 I:??[OBJECT, ARRAY]), block:B:174:0x0287 */
    /* JADX WARN: Removed duplicated region for block: B:126:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x02e3 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:139:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x02ae A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0161 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0154  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x013f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r8v25, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r8v26, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r8v35, types: [java.io.OutputStream] */
    /* JADX WARN: Type inference failed for: r8v37 */
    /* JADX WARN: Type inference failed for: r8v38 */
    /* JADX WARN: Type inference failed for: r8v39 */
    /* JADX WARN: Type inference failed for: r8v40 */
    /* JADX WARN: Type inference failed for: r8v42, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v49 */
    /* JADX WARN: Type inference failed for: r8v50 */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void run() {
        /*
            Method dump skipped, instructions count: 792
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p447.RunnableC5259.run():void");
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public void m10453(int i, IOException iOException, byte[] bArr, Map map) {
        C5215 c5215 = ((C5322) ((ᵎﹶ) ((C5274) this.f19859)).ʾˋ).f20200;
        C5322.m10556(c5215);
        c5215.m10200(new RunnableC3072(this, i, iOException, bArr, map));
    }
}
