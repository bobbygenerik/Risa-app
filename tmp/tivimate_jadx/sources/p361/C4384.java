package p361;

import java.util.TimeZone;
import p164.C2580;
import p164.C2599;
import p164.InterfaceC2588;
import p394.AbstractC4712;

/* renamed from: ᵔᐧ.ˏי, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4384 implements InterfaceC2588 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final long f16283;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public final /* synthetic */ C4373 f16285;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public boolean f16286;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public boolean f16287;

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final C2599 f16282 = new Object();

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public final C2599 f16284 = new Object();

    /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, ˊᐧ.ﾞᴵ] */
    public C4384(C4373 c4373, long j, boolean z) {
        this.f16285 = c4373;
        this.f16283 = j;
        this.f16286 = z;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        long j;
        C4373 c4373 = this.f16285;
        synchronized (c4373) {
            this.f16287 = true;
            C2599 c2599 = this.f16284;
            j = c2599.f9835;
            c2599.m5836();
            c4373.notifyAll();
        }
        if (j > 0) {
            C4373 c43732 = this.f16285;
            TimeZone timeZone = AbstractC4712.f17804;
            c43732.f16241.m8880(j);
        }
        this.f16285.m8852();
    }

    @Override // p164.InterfaceC2588
    /* renamed from: ˑﹳ */
    public final C2580 mo5762() {
        return this.f16285.f16234;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0024 A[Catch: all -> 0x002a, TRY_LEAVE, TryCatch #1 {, blocks: (B:6:0x000d, B:8:0x001a, B:13:0x0024, B:33:0x00b8, B:63:0x00e0, B:64:0x00e5, B:15:0x002d, B:17:0x0033, B:19:0x0037, B:21:0x003b, B:22:0x0049, B:24:0x004d, B:26:0x0057, B:28:0x0074, B:30:0x0083, B:46:0x0099, B:50:0x00a1, B:53:0x00a7, B:54:0x00b3, B:57:0x00d6, B:58:0x00dd), top: B:5:0x000d, inners: #0 }] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x004d A[Catch: all -> 0x0045, TryCatch #0 {all -> 0x0045, blocks: (B:15:0x002d, B:17:0x0033, B:19:0x0037, B:21:0x003b, B:22:0x0049, B:24:0x004d, B:26:0x0057, B:28:0x0074, B:30:0x0083, B:46:0x0099, B:50:0x00a1, B:53:0x00a7, B:54:0x00b3, B:57:0x00d6, B:58:0x00dd), top: B:14:0x002d, outer: #1, inners: #2 }] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x00d6 A[SYNTHETIC] */
    @Override // p164.InterfaceC2588
    /* renamed from: ٴﹶ */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final long mo5763(p164.C2599 r26, long r27) {
        /*
            Method dump skipped, instructions count: 248
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p361.C4384.mo5763(ˊᐧ.ﾞᴵ, long):long");
    }
}
