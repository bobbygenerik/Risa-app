package p127;

import j$.util.DesugarCollections;
import java.io.Closeable;
import java.net.Socket;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.Map;
import p003.RunnableC0786;
import p012.C0902;
import p017.C0956;
import p305.AbstractC3731;
import p364.C4441;
import ﹶﾞ.ⁱי;

/* renamed from: ˈـ.ᵢˏ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C2173 implements Closeable {

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public static final Charset f8501 = StandardCharsets.UTF_8;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final ⁱי f8503;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C2144 f8504;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public volatile boolean f8505;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public Socket f8507;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final C4441 f8506 = new C4441("ExoPlayer:RtspMessageChannel:ReceiverLoader");

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final Map f8502 = DesugarCollections.synchronizedMap(new HashMap());

    public C2173(ⁱי r2) {
        this.f8503 = r2;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.f8505) {
            return;
        }
        try {
            C2144 c2144 = this.f8504;
            if (c2144 != null) {
                c2144.close();
            }
            this.f8506.m8980(null);
            Socket socket = this.f8507;
            if (socket != null) {
                socket.close();
            }
            this.f8505 = true;
        } catch (Throwable th) {
            this.f8505 = true;
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Object, ᵔⁱ.ʼˎ] */
    /* renamed from: ʽ, reason: contains not printable characters */
    public final void m5160(Socket socket) {
        this.f8507 = socket;
        this.f8504 = new C2144(this, socket.getOutputStream());
        this.f8506.m8983(new C2151(this, socket.getInputStream()), new Object(), 0);
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    public final void m5161(C0956 c0956) {
        AbstractC3731.m7868(this.f8504);
        C2144 c2144 = this.f8504;
        c2144.getClass();
        c2144.f8331.post(new RunnableC0786(c2144, new C0902(AbstractC2166.f8448).m3154(c0956).getBytes(f8501), c0956));
    }
}
