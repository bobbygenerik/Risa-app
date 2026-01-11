package p383;

import android.util.Log;
import com.bumptech.glide.EnumC0235;
import com.bumptech.glide.load.data.InterfaceC0218;
import com.bumptech.glide.load.data.InterfaceC0220;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;
import p087.AbstractC1748;

/* renamed from: ⁱʼ.ˈ, reason: contains not printable characters */
/* loaded from: classes.dex */
public final class C4584 implements InterfaceC0220 {

    /* renamed from: ʾˋ, reason: contains not printable characters */
    public final /* synthetic */ int f17078;

    /* renamed from: ᴵˊ, reason: contains not printable characters */
    public final Object f17079;

    public /* synthetic */ C4584(int i, Object obj) {
        this.f17078 = i;
        this.f17079 = obj;
    }

    /* renamed from: ʽ, reason: contains not printable characters */
    private final void m9129() {
    }

    /* renamed from: ˈ, reason: contains not printable characters */
    private final void m9130() {
    }

    /* renamed from: ᵎﹶ, reason: contains not printable characters */
    private final void m9131() {
    }

    /* renamed from: ᵔᵢ, reason: contains not printable characters */
    private final void m9132() {
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    public final void cancel() {
        int i = this.f17078;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ˑﹳ */
    public final int mo1111() {
        switch (this.f17078) {
            case 0:
                return 1;
            default:
                return 1;
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ⁱˊ */
    public final void mo1112() {
        int i = this.f17078;
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﹳٴ */
    public final Class mo1113() {
        switch (this.f17078) {
            case 0:
                return ByteBuffer.class;
            default:
                return this.f17079.getClass();
        }
    }

    @Override // com.bumptech.glide.load.data.InterfaceC0220
    /* renamed from: ﾞᴵ */
    public final void mo1114(EnumC0235 enumC0235, InterfaceC0218 interfaceC0218) {
        switch (this.f17078) {
            case 0:
                try {
                    interfaceC0218.mo1108(AbstractC1748.m4710((File) this.f17079));
                    return;
                } catch (IOException e) {
                    if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                    }
                    interfaceC0218.mo1107(e);
                    return;
                }
            default:
                interfaceC0218.mo1108(this.f17079);
                return;
        }
    }
}
