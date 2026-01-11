package p090;

import java.io.File;
import java.io.IOException;
import p013.C0906;
import p089.C1759;
import p126.C2134;
import p126.InterfaceC2136;
import p126.InterfaceC2139;
import p316.AbstractC3902;
import p324.AbstractC3999;
import p340.InterfaceC4254;
import p436.AbstractC5160;
import p436.C5158;
import ʼˋ.ᵔʾ;

/* renamed from: ʿᵢ.ᴵˑ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1818 implements InterfaceC1804 {

    /* renamed from: ʼˎ, reason: contains not printable characters */
    public final C0906 f7332;

    /* renamed from: ʽ, reason: contains not printable characters */
    public final C1759 f7333;

    /* renamed from: ˈ, reason: contains not printable characters */
    public final String f7334;

    /* renamed from: ˑﹳ, reason: contains not printable characters */
    public final String f7335;

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final C5158 f7336;

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    public final C0906 f7337;

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final File f7338;

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final InterfaceC2139 f7339;

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public final String f7340;

    public C1818(InterfaceC2139 interfaceC2139, File file) {
        this.f7339 = interfaceC2139;
        this.f7338 = file;
        Object obj = FileObserverC1785.f7214;
        this.f7333 = new C1759(new ᵔʾ(file, (InterfaceC2136) null, 10), C2134.f8324, -2, 1);
        this.f7334 = ".lock";
        this.f7335 = ".version";
        this.f7340 = "fcntl failed: EAGAIN";
        this.f7336 = AbstractC5160.m10154();
        this.f7337 = new C0906(new C1808(this, 1));
        this.f7332 = new C0906(new C1808(this, 0));
    }

    /* renamed from: ﾞᴵ, reason: contains not printable characters */
    public static final void m4757(C1818 c1818, File file) {
        File parentFile = file.getCanonicalFile().getParentFile();
        if (parentFile != null) {
            parentFile.mkdirs();
            if (!parentFile.isDirectory()) {
                throw new IOException("Unable to create parent directories of " + file);
            }
        }
        if (file.exists()) {
            return;
        }
        file.createNewFile();
    }

    @Override // p090.InterfaceC1804
    /* renamed from: ʽ */
    public final InterfaceC4254 mo4751() {
        return this.f7333;
    }

    @Override // p090.InterfaceC1804
    /* renamed from: ˈ */
    public final Object mo4752(AbstractC3902 abstractC3902) {
        C0906 c0906 = this.f7332;
        if (c0906.m3185()) {
            return new Integer(C1816.f7326.nativeGetCounterValue(((C1816) c0906.getValue()).f7327));
        }
        return AbstractC3999.m8164(this.f7339, new C1776(this, null, 0), abstractC3902);
    }

    @Override // p090.InterfaceC1804
    /* renamed from: ˑﹳ */
    public final Object mo4753(C1780 c1780) {
        C0906 c0906 = this.f7332;
        if (c0906.m3185()) {
            return new Integer(C1816.f7326.nativeIncrementAndGetCounterValue(((C1816) c0906.getValue()).f7327));
        }
        return AbstractC3999.m8164(this.f7339, new C1776(this, null, 1), c1780);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00de A[Catch: all -> 0x00e2, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x00e2, blocks: (B:15:0x00de, B:24:0x00f9, B:25:0x00fc), top: B:7:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:18:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f9 A[Catch: all -> 0x00e2, TRY_ENTER, TryCatch #1 {all -> 0x00e2, blocks: (B:15:0x00de, B:24:0x00f9, B:25:0x00fc), top: B:7:0x0025 }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x006f  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0027  */
    /* JADX WARN: Type inference failed for: r2v0, types: [ᴵⁱ.ʼᐧ] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    /* JADX WARN: Type inference failed for: r3v17 */
    /* JADX WARN: Type inference failed for: r3v18 */
    /* JADX WARN: Type inference failed for: r3v2, types: [ʿᵢ.ˈⁱ, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [ﹶי.ﹳٴ] */
    /* JADX WARN: Type inference failed for: r3v6 */
    @Override // p090.InterfaceC1804
    /* renamed from: ⁱˊ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo4754(p329.InterfaceC4087 r19, p316.AbstractC3902 r20) {
        /*
            Method dump skipped, instructions count: 268
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1818.mo4754(ᴵⁱ.ʼᐧ, ᴵʾ.ʽ):java.lang.Object");
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:16:0x00ba A[Catch: all -> 0x00be, TRY_ENTER, TRY_LEAVE, TryCatch #7 {all -> 0x00be, blocks: (B:16:0x00ba, B:30:0x00d7, B:31:0x00da), top: B:7:0x0022, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00d7 A[Catch: all -> 0x00be, TRY_ENTER, TryCatch #7 {all -> 0x00be, blocks: (B:16:0x00ba, B:30:0x00d7, B:31:0x00da), top: B:7:0x0022, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00b4  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0024  */
    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r10v17 */
    /* JADX WARN: Type inference failed for: r10v18 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v23 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v4, types: [ﹶי.ﹳٴ] */
    /* JADX WARN: Type inference failed for: r10v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.io.Closeable, int] */
    /* JADX WARN: Type inference failed for: r1v10, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r1v8, types: [java.io.Closeable] */
    @Override // p090.InterfaceC1804
    /* renamed from: ﹳٴ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object mo4755(p329.InterfaceC4106 r9, p316.AbstractC3902 r10) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p090.C1818.mo4755(ᴵⁱ.ﾞʻ, ᴵʾ.ʽ):java.lang.Object");
    }
}
