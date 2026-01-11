package p266;

import android.content.Context;
import android.net.Uri;
import android.text.TextUtils;
import j$.util.Objects;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Map;
import p086.C1737;
import p305.AbstractC3712;
import p305.AbstractC3731;

/* renamed from: ـˊ.ʼˎ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C3445 implements InterfaceC3462 {

    /* renamed from: ʽʽ, reason: contains not printable characters */
    public final InterfaceC3462 f13528;

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final Context f13529;

    /* renamed from: ˈٴ, reason: contains not printable characters */
    public C3450 f13530;

    /* renamed from: ˉٴ, reason: contains not printable characters */
    public C3460 f13531;

    /* renamed from: ˊʻ, reason: contains not printable characters */
    public C3447 f13532;

    /* renamed from: ٴʼ, reason: contains not printable characters */
    public C3451 f13533;

    /* renamed from: ٴᵢ, reason: contains not printable characters */
    public InterfaceC3462 f13534;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final ArrayList f13535;

    /* renamed from: ᴵᵔ, reason: contains not printable characters */
    public C3459 f13536;

    /* renamed from: ᵎˊ, reason: contains not printable characters */
    public InterfaceC3462 f13537;

    /* renamed from: ᵎⁱ, reason: contains not printable characters */
    public C3449 f13538;

    public C3445(Context context, InterfaceC3462 interfaceC3462) {
        this.f13529 = context.getApplicationContext();
        interfaceC3462.getClass();
        this.f13528 = interfaceC3462;
        this.f13535 = new ArrayList();
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    public static void m7358(InterfaceC3462 interfaceC3462, InterfaceC3457 interfaceC3457) {
        if (interfaceC3462 != null) {
            interfaceC3462.mo5139(interfaceC3457);
        }
    }

    @Override // p266.InterfaceC3462
    public final void close() {
        InterfaceC3462 interfaceC3462 = this.f13537;
        if (interfaceC3462 != null) {
            try {
                interfaceC3462.close();
            } finally {
                this.f13537 = null;
            }
        }
    }

    @Override // p055.InterfaceC1455
    public final int read(byte[] bArr, int i, int i2) {
        InterfaceC3462 interfaceC3462 = this.f13537;
        interfaceC3462.getClass();
        return interfaceC3462.read(bArr, i, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v33, types: [ـˊ.ⁱˊ, ـˊ.ˈ, ـˊ.ﾞᴵ] */
    /* JADX WARN: Type inference failed for: r0v7, types: [ـˊ.ⁱˊ, ـˊ.ˉʿ, ـˊ.ﾞᴵ] */
    @Override // p266.InterfaceC3462
    /* renamed from: ʽʽ */
    public final long mo4684(C3456 c3456) {
        AbstractC3731.m7857(this.f13537 == null);
        Uri uri = c3456.f13577;
        String scheme = uri.getScheme();
        String str = AbstractC3712.f14481;
        String scheme2 = uri.getScheme();
        boolean isEmpty = TextUtils.isEmpty(scheme2);
        Context context = this.f13529;
        if (isEmpty || Objects.equals(scheme2, "file")) {
            String path = uri.getPath();
            if (path == null || !path.startsWith("/android_asset/")) {
                if (this.f13530 == null) {
                    ?? abstractC3458 = new AbstractC3458(false);
                    this.f13530 = abstractC3458;
                    m7359(abstractC3458);
                }
                this.f13537 = this.f13530;
            } else {
                if (this.f13536 == null) {
                    C3459 c3459 = new C3459(context);
                    this.f13536 = c3459;
                    m7359(c3459);
                }
                this.f13537 = this.f13536;
            }
        } else if ("asset".equals(scheme)) {
            if (this.f13536 == null) {
                C3459 c34592 = new C3459(context);
                this.f13536 = c34592;
                m7359(c34592);
            }
            this.f13537 = this.f13536;
        } else if ("content".equals(scheme)) {
            if (this.f13532 == null) {
                C3447 c3447 = new C3447(context);
                this.f13532 = c3447;
                m7359(c3447);
            }
            this.f13537 = this.f13532;
        } else {
            boolean equals = "rtmp".equals(scheme);
            InterfaceC3462 interfaceC3462 = this.f13528;
            if (equals) {
                if (this.f13534 == null) {
                    try {
                        int i = C1737.f7087;
                        InterfaceC3462 interfaceC34622 = (InterfaceC3462) C1737.class.getConstructor(null).newInstance(null);
                        this.f13534 = interfaceC34622;
                        m7359(interfaceC34622);
                    } catch (ClassNotFoundException unused) {
                        AbstractC3731.m7850("DefaultDataSource", "Attempting to play RTMP stream without depending on the RTMP extension");
                    } catch (Exception e) {
                        throw new RuntimeException("Error instantiating RTMP extension", e);
                    }
                    if (this.f13534 == null) {
                        this.f13534 = interfaceC3462;
                    }
                }
                this.f13537 = this.f13534;
            } else if ("udp".equals(scheme)) {
                if (this.f13531 == null) {
                    C3460 c3460 = new C3460();
                    this.f13531 = c3460;
                    m7359(c3460);
                }
                this.f13537 = this.f13531;
            } else if ("data".equals(scheme)) {
                if (this.f13538 == null) {
                    ?? abstractC34582 = new AbstractC3458(false);
                    this.f13538 = abstractC34582;
                    m7359(abstractC34582);
                }
                this.f13537 = this.f13538;
            } else if ("rawresource".equals(scheme) || "android.resource".equals(scheme)) {
                if (this.f13533 == null) {
                    C3451 c3451 = new C3451(context);
                    this.f13533 = c3451;
                    m7359(c3451);
                }
                this.f13537 = this.f13533;
            } else {
                this.f13537 = interfaceC3462;
            }
        }
        return this.f13537.mo4684(c3456);
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ˉʿ */
    public final void mo5139(InterfaceC3457 interfaceC3457) {
        interfaceC3457.getClass();
        this.f13528.mo5139(interfaceC3457);
        this.f13535.add(interfaceC3457);
        m7358(this.f13530, interfaceC3457);
        m7358(this.f13536, interfaceC3457);
        m7358(this.f13532, interfaceC3457);
        m7358(this.f13534, interfaceC3457);
        m7358(this.f13531, interfaceC3457);
        m7358(this.f13538, interfaceC3457);
        m7358(this.f13533, interfaceC3457);
    }

    @Override // p266.InterfaceC3462
    /* renamed from: יـ */
    public final Uri mo4685() {
        InterfaceC3462 interfaceC3462 = this.f13537;
        if (interfaceC3462 == null) {
            return null;
        }
        return interfaceC3462.mo4685();
    }

    @Override // p266.InterfaceC3462
    /* renamed from: ٴﹶ */
    public final Map mo5140() {
        InterfaceC3462 interfaceC3462 = this.f13537;
        return interfaceC3462 == null ? Collections.EMPTY_MAP : interfaceC3462.mo5140();
    }

    /* renamed from: ﹳٴ, reason: contains not printable characters */
    public final void m7359(InterfaceC3462 interfaceC3462) {
        int i = 0;
        while (true) {
            ArrayList arrayList = this.f13535;
            if (i >= arrayList.size()) {
                return;
            }
            interfaceC3462.mo5139((InterfaceC3457) arrayList.get(i));
            i++;
        }
    }
}
