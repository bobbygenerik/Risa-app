package p078;

import java.io.OutputStream;
import p012.C0881;
import p033.C1184;
import p035.AbstractC1220;
import p410.C4868;
import p449.AbstractC5359;

/* renamed from: ʿʼ.ˑﹳ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C1673 extends AbstractC1669 {

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public final C1674 f6787;

    static {
        AbstractC5359.m10750(C1673.class);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [ʿʼ.ٴﹶ, java.lang.Object] */
    public C1673(C1184 c1184, C1671 c1671, String str) {
        super(c1184, c1671, str);
        ?? obj = new Object();
        obj.f6791 = c1671;
        obj.f6790 = c1184;
        obj.f6789 = str;
        this.f6787 = obj;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("File{fileId=");
        sb.append(this.f6779);
        sb.append(", fileName='");
        return AbstractC1220.m3775(sb, this.f6781, "'}");
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.io.OutputStream, ʿʼ.ᵔᵢ] */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.lang.Object, ʿʼ.ᵎﹶ, ᵢʼ.ⁱˊ] */
    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final C1676 m4563(boolean z) {
        long j = z ? ((C4868) m4553()).f18211 : 0L;
        C1674 c1674 = this.f6787;
        c1674.getClass();
        int i = c1674.f6791.f6809;
        ?? outputStream = new OutputStream();
        outputStream.f6796 = false;
        outputStream.f6795 = c1674;
        ?? obj = new Object();
        C0881 c0881 = new C0881(1);
        c0881.f3738 = new byte[i];
        obj.f6792 = c0881;
        obj.f16854 = j;
        outputStream.f6794 = obj;
        return outputStream;
    }
}
