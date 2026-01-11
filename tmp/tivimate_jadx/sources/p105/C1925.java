package p105;

import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.Locale;
import p411.AbstractC4901;

/* renamed from: ˆי.ˉʿ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1925 implements InterfaceC1922 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public static final Charset f7658 = Charset.forName("UTF-8");

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final File f7659;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public C1928 f7660;

    public C1925(File file) {
        this.f7659 = file;
    }

    @Override // p105.InterfaceC1922
    /* renamed from: ʾᵎ */
    public final void mo4861(String str, long j) {
        m4869();
        if (this.f7660 == null) {
            return;
        }
        if (str == null) {
            str = "null";
        }
        try {
            if (str.length() > 16384) {
                str = "..." + str.substring(str.length() - 16384);
            }
            this.f7660.m4872(String.format(Locale.US, "%d %s%n", Long.valueOf(j), str.replaceAll("\r", " ").replaceAll("\n", " ")).getBytes(f7658));
            while (!this.f7660.m4878() && this.f7660.m4874() > 65536) {
                this.f7660.m4881();
            }
        } catch (IOException e) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004d A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0045  */
    @Override // p105.InterfaceC1922
    /* renamed from: ᵔᵢ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.String mo4862() {
        /*
            r7 = this;
            java.io.File r0 = r7.f7659
            boolean r0 = r0.exists()
            r1 = 0
            r2 = 0
            if (r0 != 0) goto Lc
        La:
            r4 = r2
            goto L36
        Lc:
            r7.m4869()
            ˆי.ٴﹶ r0 = r7.f7660
            if (r0 != 0) goto L14
            goto La
        L14:
            int[] r3 = new int[]{r1}
            int r0 = r0.m4874()
            byte[] r0 = new byte[r0]
            ˆי.ٴﹶ r4 = r7.f7660     // Catch: java.io.IOException -> L29
            ˆי.ˑﹳ r5 = new ˆי.ˑﹳ     // Catch: java.io.IOException -> L29
            r5.<init>(r0, r3)     // Catch: java.io.IOException -> L29
            r4.m4883(r5)     // Catch: java.io.IOException -> L29
            goto L2f
        L29:
            r4 = move-exception
            java.lang.String r5 = "A problem occurred while reading the Crashlytics log file."
            java.lang.String r6 = "FirebaseCrashlytics"
        L2f:
            ˆי.ﾞʻ r4 = new ˆי.ﾞʻ
            r3 = r3[r1]
            r4.<init>(r3, r0)
        L36:
            if (r4 != 0) goto L3a
            r3 = r2
            goto L43
        L3a:
            int r0 = r4.f7694
            byte[] r3 = new byte[r0]
            byte[] r4 = r4.f7693
            java.lang.System.arraycopy(r4, r1, r3, r1, r0)
        L43:
            if (r3 == 0) goto L4d
            java.lang.String r0 = new java.lang.String
            java.nio.charset.Charset r1 = p105.C1925.f7658
            r0.<init>(r3, r1)
            return r0
        L4d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: p105.C1925.mo4862():java.lang.String");
    }

    /* renamed from: ⁱˊ, reason: contains not printable characters */
    public final void m4869() {
        File file = this.f7659;
        if (this.f7660 == null) {
            try {
                this.f7660 = new C1928(file);
            } catch (IOException e) {
                String str = "Could not open log file: " + file;
            }
        }
    }

    @Override // p105.InterfaceC1922
    /* renamed from: ﹳٴ */
    public final void mo4863() {
        AbstractC4901.m9704(this.f7660, "There was a problem closing the Crashlytics log file.");
        this.f7660 = null;
    }
}
